#!/usr/bin/env python3
"""Bounded acceptance tests for the MB40ch TCP server."""

import argparse
import contextlib
import io
from pathlib import Path
import socket
import sys
import tempfile
import time

from .client import CmsClient
from .mock_server import MockZynqServer
from .protocol import CmsResponse, ResponseKind, TERM

DEFAULT_HOST = "192.168.1.10"
DEFAULT_PORT = 6543
DEFAULT_TIMEOUT = 10.0
DEFAULT_MAX_BYTES = 2 * 1024 * 1024
DEFAULT_SLOW_DELAY = 10.0
DEFAULT_RECONNECTS = 50
GOLDEN_H = Path(__file__).with_name("golden_h_reply.bin")

HOST = DEFAULT_HOST
PORT = DEFAULT_PORT
RESPONSE_TIMEOUT = DEFAULT_TIMEOUT
MAX_RESPONSE_BYTES = DEFAULT_MAX_BYTES
SLOW_READER_DELAY = DEFAULT_SLOW_DELAY
RECONNECT_ITERATIONS = DEFAULT_RECONNECTS
CAPTURE_GOLDEN = False


def client():
    return CmsClient(HOST, PORT, RESPONSE_TIMEOUT, MAX_RESPONSE_BYTES)


def require_real_event(response):
    assert response.kind is ResponseKind.EVENT, (
        "expected real event, got %s: %r" %
        (response.kind.value, response.payload))
    print("    real-event bytes: %d sha256: %s" %
          (response.length, response.sha256))
    return response.sha256


def require_text(response):
    assert response.kind is ResponseKind.TEXT and response.payload, (
        "expected non-empty text response: %r" % response.payload)


def t1_single_event():
    with client() as cms:
        require_real_event(cms.get_event())
        require_text(cms.check())


def t2_large_payload():
    with client() as cms:
        require_real_event(cms.get_event())


def t3_no_event():
    with client() as cms:
        response = cms.get_event()
        assert response.kind is ResponseKind.NO_EVENT, (
            "expected #NO_EVENT, got %r" % response.payload)


def t4_slow_receiver():
    with client() as cms:
        response = cms._acceptance_exchange(
            "-get_event", expected_event=True,
            read_delay=SLOW_READER_DELAY)
        require_real_event(response)


def t5_mid_transfer_rst():
    with client() as cms:
        cms._acceptance_exchange("-get_event", abort_after_bytes=4096)
        time.sleep(min(2, RESPONSE_TIMEOUT))
        cms.reconnect()
        require_text(cms.check())


def t6_reconnect_endurance():
    for iteration in range(RECONNECT_ITERATIONS):
        with client() as cms:
            response = cms.get_drs4_state()
            assert response.kind is ResponseKind.TEXT, (
                "iteration %d failed" % iteration)


def t7_takeover():
    a, b = client(), client()
    try:
        a.connect()
        b.connect()
        require_text(b.check())
        try:
            a.check()
        except (ConnectionError, OSError, TimeoutError):
            pass
        else:
            raise AssertionError("old connection still usable after takeover")
    finally:
        a.close()
        b.close()


def check_golden(payload, path=GOLDEN_H, capture=False):
    if capture:
        path.write_bytes(payload)
        return "captured golden: %s" % path
    try:
        golden = path.read_bytes()
    except FileNotFoundError:
        return "SKIP missing golden: %s" % path
    assert payload == golden, "-h reply differs from golden capture"
    return None


def t8_wire_compat():
    with client() as cms:
        response = cms.get_help()
    require_text(response)
    return check_golden(response.payload, capture=CAPTURE_GOLDEN)


def t9_v2_event():
    """Opt-in: consumes one pending event through -get_event_v2."""
    with client() as cms:
        response = cms.get_event_v2()
        if response.kind is ResponseKind.NO_EVENT:
            result = "v2 returned #NO_EVENT (no event was pending)"
        else:
            require_real_event(response)
            result = None
        require_text(cms.check())  # legacy command still works after v2
        return result


TESTS = [
    t1_single_event,
    t2_large_payload,
    t4_slow_receiver,
    t5_mid_transfer_rst,
    t6_reconnect_endurance,
    t7_takeover,
    t8_wire_compat,
]


def self_test():
    with MockZynqServer(event_size=64, event_count=2) as server:
        with CmsClient(*server.address, timeout=1) as cms:
            require_text(cms.preflight())
            response = cms.get_event()
            assert response.kind is ResponseKind.EVENT
            assert b"\x00" in response.payload

    with MockZynqServer(scenario="fragmented", event_size=73) as server:
        with CmsClient(*server.address, timeout=1) as cms:
            assert cms.get_event().length == 73

    with MockZynqServer(scenario="two-responses") as server:
        with CmsClient(*server.address, timeout=1) as cms:
            require_text(cms.check())
            state = cms.get_drs4_state()
            assert state.payload == b"DRS4 state is 3\n"

    for scenario, kind in (
            ("no-event", ResponseKind.NO_EVENT),
            ("dma-error", ResponseKind.DMA_ERROR),
            ("empty", ResponseKind.EMPTY)):
        with MockZynqServer(scenario=scenario) as server:
            with CmsClient(*server.address, timeout=1) as cms:
                assert cms.get_event().kind is kind

    with MockZynqServer(scenario="eof") as server:
        with CmsClient(*server.address, timeout=1) as cms:
            try:
                cms.get_event()
            except ConnectionError:
                pass
            else:
                raise AssertionError("EOF before terminator was accepted")

    with MockZynqServer(event_size=64, event_count=1) as server:
        with CmsClient(*server.address, timeout=1) as cms:
            response = cms.get_event_v2()
            assert response.kind is ResponseKind.EVENT
            assert response.length == 64
            assert b"\x00" in response.payload
            assert TERM in response.payload
            assert cms.get_event_v2().kind is ResponseKind.NO_EVENT

    with MockZynqServer(scenario="v2-malformed-length") as server:
        cms = CmsClient(*server.address, timeout=1).connect()
        try:
            cms.get_event_v2()
        except ValueError:
            pass
        else:
            raise AssertionError("malformed v2 length was accepted")
        assert not cms.is_connected

    # A missing board must emit exactly one PRECHECK FAILED result and
    # run zero board tests, including with the v2 test opted in.
    probe = socket.socket()
    probe.bind(("127.0.0.1", 0))
    free_port = probe.getsockname()[1]
    probe.close()
    captured = io.StringIO()
    with contextlib.redirect_stdout(captured):
        status = main(["127.0.0.1", "--port", str(free_port),
                       "--response-timeout", "0.5", "--include-v2"])
    lines = captured.getvalue().splitlines()
    assert status == 1
    assert sum(line.startswith("PRECHECK FAILED") for line in lines) == 1
    assert not any(line.startswith(("PASS", "FAIL", "SKIP"))
                   for line in lines)

    with tempfile.TemporaryDirectory() as directory:
        golden = Path(directory) / "golden_h_reply.bin"
        assert check_golden(b"help", golden, False).startswith("SKIP")
        assert not golden.exists()
        assert check_golden(b"help", golden, True).startswith("captured")
        assert golden.read_bytes() == b"help"
    print("PASS self-test")
    return 0


def positive_float(value):
    value = float(value)
    if value <= 0:
        raise argparse.ArgumentTypeError("must be greater than zero")
    return value


def positive_int(value):
    value = int(value)
    if value <= 0:
        raise argparse.ArgumentTypeError("must be greater than zero")
    return value


def parse_args(argv=None):
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("board_ip", nargs="?", default=DEFAULT_HOST)
    parser.add_argument("--port", type=positive_int, default=DEFAULT_PORT)
    parser.add_argument("--response-timeout", type=positive_float,
                        default=DEFAULT_TIMEOUT)
    parser.add_argument("--max-response-bytes", type=positive_int,
                        default=DEFAULT_MAX_BYTES)
    parser.add_argument("--slow-reader-delay", type=positive_float,
                        default=DEFAULT_SLOW_DELAY)
    parser.add_argument("--reconnect-iterations", type=positive_int,
                        default=DEFAULT_RECONNECTS)
    parser.add_argument("--capture-golden", action="store_true")
    parser.add_argument("--include-no-event", action="store_true",
                        help="board must have no completed event pending")
    parser.add_argument("--include-v2", action="store_true",
                        help="also consume one event via -get_event_v2")
    mode = parser.add_mutually_exclusive_group()
    mode.add_argument("--self-test", action="store_true",
                      help="run local validation without a board")
    mode.add_argument("--preflight-only", action="store_true")
    mode.add_argument("--smoke", action="store_true",
                      help="run read-only check, help, and state controls")
    args = parser.parse_args(argv)
    if args.port > 65535:
        parser.error("--port must be at most 65535")
    return args


def precheck(args):
    with CmsClient(args.board_ip, args.port, args.response_timeout,
                   args.max_response_bytes) as cms:
        response = cms.preflight()
        if args.smoke:
            require_text(response)
            require_text(cms.get_help())
            require_text(cms.get_drs4_state())
        return response


def main(argv=None):
    global HOST, PORT, RESPONSE_TIMEOUT, MAX_RESPONSE_BYTES
    global SLOW_READER_DELAY, RECONNECT_ITERATIONS, CAPTURE_GOLDEN
    args = parse_args(argv)
    if args.self_test:
        return self_test()

    try:
        precheck(args)
    except Exception as exc:
        print("PRECHECK FAILED: %s" % exc)
        return 1
    print("PRECHECK PASSED: %s:%d" % (args.board_ip, args.port))
    if args.preflight_only:
        return 0
    if args.smoke:
        print("PASS smoke")
        return 0

    HOST, PORT = args.board_ip, args.port
    RESPONSE_TIMEOUT = args.response_timeout
    MAX_RESPONSE_BYTES = args.max_response_bytes
    SLOW_READER_DELAY = args.slow_reader_delay
    RECONNECT_ITERATIONS = args.reconnect_iterations
    CAPTURE_GOLDEN = args.capture_golden

    tests = (TESTS + ([t3_no_event] if args.include_no_event else [])
             + ([t9_v2_event] if args.include_v2 else []))
    failed = skipped = 0
    for test in tests:
        try:
            result = test()
            if result and result.startswith("SKIP"):
                skipped += 1
                print("SKIP %s: %s" % (test.__name__, result[5:]))
            else:
                if result:
                    print("    %s" % result)
                print("PASS %s" % test.__name__)
        except Exception as exc:
            failed += 1
            print("FAIL %s: %s" % (test.__name__, exc))
        time.sleep(0.5)
    print("\n%d passed, %d skipped, %d failed" %
          (len(tests) - failed - skipped, skipped, failed))
    return 1 if failed else 0


if __name__ == "__main__":
    sys.exit(main())
