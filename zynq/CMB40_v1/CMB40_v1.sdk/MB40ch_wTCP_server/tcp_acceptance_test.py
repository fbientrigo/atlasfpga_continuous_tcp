#!/usr/bin/env python3
"""Bounded acceptance tests for the MB40ch TCP server."""
import argparse
import hashlib
from pathlib import Path
import socket
import struct
import sys
import tempfile
import threading
import time

TERM = b"!#\n"
NO_EVENT = b"#NO_EVENT"
DMA_ERROR = b"#DMA_ERROR:"
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


def connect():
    return socket.create_connection((HOST, PORT), timeout=RESPONSE_TIMEOUT)


def read_response(s, timeout=None, max_bytes=None, remainder=b""):
    """Return (payload, bytes_after_first_terminator) within one deadline."""
    timeout = RESPONSE_TIMEOUT if timeout is None else timeout
    max_bytes = MAX_RESPONSE_BYTES if max_bytes is None else max_bytes
    deadline = time.monotonic() + timeout
    data = bytearray(remainder)
    while True:
        end = data.find(TERM)
        if end >= 0:
            response_size = end + len(TERM)
            if response_size > max_bytes:
                raise ValueError("response exceeds %d bytes" % max_bytes)
            return bytes(data[:end]), bytes(data[response_size:])
        if len(data) >= max_bytes:
            raise ValueError("response exceeds %d bytes" % max_bytes)
        remaining = deadline - time.monotonic()
        if remaining <= 0:
            raise TimeoutError("response deadline expired")
        s.settimeout(remaining)
        try:
            chunk = s.recv(min(65536, max_bytes - len(data) + len(TERM)))
        except socket.timeout as exc:
            raise TimeoutError("response deadline expired") from exc
        if not chunk:
            raise ConnectionError("EOF before terminator")
        data.extend(chunk)


def command(s, value, remainder=b"", timeout=None):
    s.sendall(value)
    return read_response(s, timeout=timeout, remainder=remainder)


def classify_response(payload, event_command=False):
    if not payload:
        return "empty"
    if payload == NO_EVENT:
        return "no-event"
    if payload.startswith(DMA_ERROR):
        return "dma-error"
    return "real-event" if event_command else "text"


def require_real_event(payload):
    kind = classify_response(payload, event_command=True)
    assert kind == "real-event", "expected real event, got %s: %r" % (kind, payload)
    digest = hashlib.sha256(payload).hexdigest()
    print("    real-event bytes: %d sha256: %s" % (len(payload), digest))
    return digest


def require_text(payload):
    assert classify_response(payload) == "text", "expected textual response: %r" % payload


def t1_single_event():
    with connect() as s:
        payload, remainder = command(s, b"-get_event")
        require_real_event(payload)
        payload, remainder = command(s, b"-check", remainder)
        require_text(payload)
        assert not remainder, "unexpected bytes after -check response"


def t2_large_payload():
    with connect() as s:
        payload, _ = command(s, b"-get_event")
        require_real_event(payload)


def t3_no_event():
    with connect() as s:
        payload, _ = command(s, b"-get_event")
        assert payload == NO_EVENT, "expected exactly #NO_EVENT, got %r" % payload


def t4_slow_receiver():
    with connect() as s:
        s.sendall(b"-get_event")
        time.sleep(SLOW_READER_DELAY)
        payload, _ = read_response(s)
        require_real_event(payload)


def t5_mid_transfer_rst():
    s = connect()
    try:
        s.sendall(b"-get_event")
        deadline = time.monotonic() + RESPONSE_TIMEOUT
        data = bytearray()
        while len(data) < 4096 and TERM not in data:
            remaining = deadline - time.monotonic()
            if remaining <= 0:
                break
            s.settimeout(remaining)
            try:
                chunk = s.recv(min(4096, 4096 - len(data)))
            except socket.timeout:
                break
            if not chunk:
                break
            data.extend(chunk)
        s.setsockopt(socket.SOL_SOCKET, socket.SO_LINGER, struct.pack("ii", 1, 0))
    finally:
        s.close()
    time.sleep(min(2, RESPONSE_TIMEOUT))
    with connect() as s:
        payload, _ = command(s, b"-check")
        require_text(payload)


def t6_reconnect_endurance():
    for i in range(RECONNECT_ITERATIONS):
        with connect() as s:
            payload, _ = command(s, b"-DRS4GetState")
            assert classify_response(payload) == "text", "iteration %d failed" % i


def t7_takeover():
    a = connect()
    b = connect()
    try:
        payload, _ = command(b, b"-check")
        require_text(payload)
        a.settimeout(RESPONSE_TIMEOUT)
        try:
            dead = a.recv(1024) == b""
        except (ConnectionResetError, ConnectionAbortedError):
            dead = True
        assert dead, "old connection still alive after takeover"
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
    with connect() as s:
        payload, _ = command(s, b"-h")
    require_text(payload)
    return check_golden(payload, capture=CAPTURE_GOLDEN)


TESTS = [t1_single_event, t2_large_payload, t4_slow_receiver,
         t5_mid_transfer_rst, t6_reconnect_endurance, t7_takeover,
         t8_wire_compat]


def _mock_connection(fragments, delay=0.02):
    listener = socket.socket()
    listener.bind(("127.0.0.1", 0))
    listener.listen(1)
    errors = []

    def serve():
        try:
            conn, _ = listener.accept()
            with conn:
                for fragment in fragments:
                    if delay:
                        time.sleep(delay)
                    conn.sendall(fragment)
        except OSError as exc:
            errors.append(exc)
        finally:
            listener.close()

    thread = threading.Thread(target=serve)
    thread.start()
    client = socket.create_connection(listener.getsockname())
    return client, thread, errors


def self_test():
    client, thread, errors = _mock_connection([b"abc", b"def!#", b"\nnext!#\n"])
    with client:
        payload, remainder = read_response(client, timeout=1, max_bytes=64)
        assert payload == b"abcdef"
        payload, remainder = read_response(client, timeout=1, max_bytes=64,
                                           remainder=remainder)
        assert payload == b"next" and remainder == b""
    thread.join(1)
    assert not thread.is_alive() and not errors

    assert classify_response(NO_EVENT, True) == "no-event"
    assert classify_response(b"#DMA_ERROR:-2", True) == "dma-error"
    assert classify_response(b"", True) == "empty"
    for control in (b"", NO_EVENT, b"#DMA_ERROR:-2"):
        try:
            require_real_event(control)
            raise AssertionError("control response was accepted as an event")
        except AssertionError as exc:
            assert "expected real event" in str(exc)
    event = b"\x00\x01event"
    assert classify_response(event, True) == "real-event"
    assert require_real_event(event) == hashlib.sha256(event).hexdigest()
    assert classify_response(b"DRS4 state is 3\n") == "text"

    client, thread, _ = _mock_connection([b"unterminated"], delay=0)
    with client:
        try:
            read_response(client, timeout=1, max_bytes=64)
            raise AssertionError("EOF before terminator was accepted")
        except ConnectionError:
            pass
    thread.join(1)

    client, thread, _ = _mock_connection([b"123456789"], delay=0)
    with client:
        try:
            read_response(client, timeout=1, max_bytes=8)
            raise AssertionError("oversized response was accepted")
        except ValueError:
            pass
    thread.join(1)

    client, thread, _ = _mock_connection([b"late!#\n"], delay=0.2)
    with client:
        try:
            read_response(client, timeout=0.05, max_bytes=64)
            raise AssertionError("expired response was accepted")
        except TimeoutError:
            pass
    thread.join(1)

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


def parse_args():
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
                        help="run no-event test; board must have no completed DMA event pending")
    parser.add_argument("--self-test", action="store_true",
                        help="run local mock validation without a board")
    args = parser.parse_args()
    if args.port > 65535:
        parser.error("--port must be at most 65535")
    return args


def main():
    global HOST, PORT, RESPONSE_TIMEOUT, MAX_RESPONSE_BYTES
    global SLOW_READER_DELAY, RECONNECT_ITERATIONS, CAPTURE_GOLDEN
    args = parse_args()
    if args.self_test:
        return self_test()
    HOST, PORT = args.board_ip, args.port
    RESPONSE_TIMEOUT, MAX_RESPONSE_BYTES = args.response_timeout, args.max_response_bytes
    SLOW_READER_DELAY = args.slow_reader_delay
    RECONNECT_ITERATIONS = args.reconnect_iterations
    CAPTURE_GOLDEN = args.capture_golden

    tests = TESTS + ([t3_no_event] if args.include_no_event else [])
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
