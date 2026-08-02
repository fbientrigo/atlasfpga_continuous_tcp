"""Deterministic localhost transport fixture for the CMS host client."""

import argparse
import socket
import struct
import sys
import threading
import time

try:
    from .protocol import TERM
except ImportError:
    from protocol import TERM

COMMANDS = {
    b"-check",
    b"-h",
    b"-DRS4GetState",
    b"-get_event",
    b"-get_event_v2",
}
MAX_COMMAND_BYTES = max(map(len, COMMANDS))
SCENARIOS = {
    "normal",
    "binary",
    "no-event",
    "dma-error",
    "empty",
    "fragmented",
    "split-terminator",
    "delayed",
    "eof",
    "rst",
    "two-responses",
    "v2-short-length",
    "v2-long-length",
    "v2-negative-length",
    "v2-malformed-length",
    "v2-eof-payload",
    "v2-eof-term",
}
CHECK_RESPONSE = b"\n# event buffer = 0\n"
STATE_RESPONSE = b"DRS4 state is 3\n"
HELP_RESPONSE = (
    b"\nList of available commands:\n"
    b"-check\n-h\n-DRS4GetState\n-get_event\n-get_event_v2\n"
)
EVENT_PATTERN = b"\x00\x01CMS-event!middle#bytes\xff"
# v2 events are length-framed, so the pattern deliberately embeds both a
# NUL and the full legacy terminator to prove neither truncates a payload.
EVENT_PATTERN_V2 = b"\x00v2!#\nevent\xff"
CONTROL_PREFIXES = (b"#NO_EVENT", b"#DMA_ERROR:")


class MockZynqServer:
    """Small socket fixture; it does not simulate Zynq hardware."""

    def __init__(self, *, scenario="normal", event_size=4096,
                 event_count=1, delay=0.05, dma_error_code=-2,
                 fault_after=0, dma_error_every=0,
                 host="127.0.0.1", port=0):
        if scenario not in SCENARIOS:
            raise ValueError("unknown scenario: %s" % scenario)
        if (event_size < 0 or event_count < 0 or delay < 0
                or fault_after < 0 or dma_error_every < 0):
            raise ValueError("size, count, delay, and fault controls must not be negative")
        self.scenario = scenario
        self.event_size = event_size
        self.event_count = event_count
        self.delay = delay
        self.dma_error_code = dma_error_code
        self.fault_after = fault_after
        self.dma_error_every = dma_error_every
        self.host = host
        self.port = port
        self.commands_received = []
        self.errors = []
        self._events_sent = 0
        self._listener = None
        self._thread = None
        self._stop = threading.Event()

    @property
    def address(self):
        if self._listener is None:
            raise RuntimeError("server is not running")
        return self.host, self.port

    def start(self):
        if self._listener is not None:
            return self
        listener = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        listener.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
        listener.bind((self.host, self.port))
        listener.listen()
        listener.settimeout(0.1)
        self.port = listener.getsockname()[1]
        self._listener = listener
        self._stop.clear()
        self._thread = threading.Thread(target=self._serve, daemon=True)
        self._thread.start()
        return self

    def stop(self):
        self._stop.set()
        listener = self._listener
        if listener is not None:
            listener.close()
        if self._thread is not None:
            self._thread.join(2)
            self._thread = None
        self._listener = None

    def __enter__(self):
        return self.start()

    def __exit__(self, exc_type, exc, traceback):
        self.stop()
        return False

    def _serve(self):
        while not self._stop.is_set():
            try:
                conn, _ = self._listener.accept()
            except socket.timeout:
                continue
            except OSError:
                break
            try:
                with conn:
                    self._serve_connection(conn)
            except OSError as exc:
                if not self._stop.is_set():
                    self.errors.append(exc)

    def _serve_connection(self, conn):
        conn.settimeout(0.1)
        incoming = bytearray()
        prefetched = 0
        discarding = False
        while not self._stop.is_set():
            try:
                chunk = conn.recv(64)
            except socket.timeout:
                continue
            if not chunk:
                return
            incoming.extend(chunk)
            while True:
                if discarding:
                    newline = incoming.find(b"\n")
                    if newline < 0:
                        incoming.clear()
                        break
                    del incoming[:newline + 1]
                    discarding = False
                    continue
                newline = incoming.find(b"\n")
                if newline < 0:
                    if len(incoming) > MAX_COMMAND_BYTES:
                        incoming.clear()
                        discarding = True
                    break
                command = bytes(incoming[:newline])
                del incoming[:newline + 1]
                if len(command) > MAX_COMMAND_BYTES or command not in COMMANDS:
                    continue
                self.commands_received.append(command)
                if prefetched:
                    prefetched -= 1
                    continue
                payload = self._response(command)
                if self.scenario == "two-responses":
                    conn.sendall(self._wire(command, payload) +
                                 STATE_RESPONSE + TERM)
                    prefetched = 1
                    continue
                if not self._send(conn, command, payload):
                    return

    def _response(self, command):
        if command == b"-check":
            return CHECK_RESPONSE
        if command == b"-h":
            return HELP_RESPONSE
        if command == b"-DRS4GetState":
            return STATE_RESPONSE
        if self.scenario == "no-event":
            return b"#NO_EVENT"
        if self.scenario == "dma-error" or (
                self.dma_error_every and command in (b"-get_event", b"-get_event_v2")
                and (self._events_sent + 1) % self.dma_error_every == 0):
            return b"#DMA_ERROR:%d" % self.dma_error_code
        if self.scenario == "empty":
            return b""
        if self._events_sent >= self.event_count:
            return b"#NO_EVENT"
        self._events_sent += 1
        pattern = (EVENT_PATTERN_V2 if command == b"-get_event_v2"
                   else EVENT_PATTERN)
        repeats = (self.event_size + len(pattern) - 1) // len(pattern)
        return (pattern * repeats)[:self.event_size]

    def _v2_header(self, payload):
        if self._fault_applies() and self.scenario == "v2-short-length":
            return b"#EVENT:%d\n" % max(0, len(payload) - 4)
        if self._fault_applies() and self.scenario == "v2-long-length":
            return b"#EVENT:%d\n" % (len(payload) + 4)
        if self._fault_applies() and self.scenario == "v2-negative-length":
            return b"#EVENT:-1\n"
        if self._fault_applies() and self.scenario == "v2-malformed-length":
            return b"#EVENT:12x\n"
        return b"#EVENT:%d\n" % len(payload)

    def _fault_applies(self):
        return self._events_sent > self.fault_after

    def _wire(self, command, payload):
        if (command != b"-get_event_v2"
                or payload.startswith(CONTROL_PREFIXES)):
            return payload + TERM
        return self._v2_header(payload) + payload + TERM

    def _send(self, conn, command, payload):
        wire = self._wire(command, payload)
        is_v2_event = wire.startswith(b"#EVENT:")
        if self.scenario == "delayed":
            time.sleep(self.delay)
        if (self.scenario == "eof"
                and ((command not in (b"-get_event", b"-get_event_v2")
                      and self.fault_after == 0)
                     or self._fault_applies())):
            conn.sendall(wire[:-len(TERM)] if is_v2_event else payload)
            return False
        if is_v2_event and self._fault_applies() and self.scenario == "v2-eof-payload":
            conn.sendall(self._v2_header(payload) +
                         payload[:len(payload) // 2])
            return False
        if is_v2_event and self._fault_applies() and self.scenario == "v2-eof-term":
            conn.sendall(self._v2_header(payload) + payload)
            return False
        if is_v2_event and self._fault_applies() and self.scenario == "v2-long-length":
            conn.sendall(wire)  # declared > sent: client hits EOF next
            return False
        if (self.scenario == "rst" and self._fault_applies()
                and command in (b"-get_event", b"-get_event_v2")):
            conn.sendall(wire[:min(32, len(payload))])
            conn.setsockopt(
                socket.SOL_SOCKET, socket.SO_LINGER, struct.pack("ii", 1, 0))
            return False
        if self.scenario == "fragmented":
            for offset in range(0, len(wire), 7):
                conn.sendall(wire[offset:offset + 7])
            return True
        if self.scenario == "split-terminator":
            conn.sendall(wire[:-2])
            conn.sendall(wire[-2:-1])
            conn.sendall(wire[-1:])
            return True
        conn.sendall(wire)
        return True


def nonnegative_int(value):
    value = int(value)
    if value < 0:
        raise argparse.ArgumentTypeError("must not be negative")
    return value


def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--host", default="127.0.0.1")
    parser.add_argument("--port", type=int, default=0)
    parser.add_argument("--scenario", choices=sorted(SCENARIOS),
                        default="normal")
    parser.add_argument("--event-size", type=nonnegative_int, default=4096)
    parser.add_argument("--event-count", type=nonnegative_int, default=1)
    parser.add_argument("--delay", type=float, default=0.05)
    parser.add_argument("--fault-after", type=nonnegative_int, default=0,
                        help="normal events before an EOF/RST/malformed-v2 fault")
    parser.add_argument("--dma-error-every", type=nonnegative_int, default=0,
                        help="return DMA_ERROR on every Nth event request; zero disables it")
    args = parser.parse_args(argv)
    if not 0 <= args.port <= 65535:
        parser.error("--port must be between 0 and 65535")
    with MockZynqServer(
            host=args.host, port=args.port, scenario=args.scenario,
            event_size=args.event_size, event_count=args.event_count,
            delay=args.delay, fault_after=args.fault_after,
            dma_error_every=args.dma_error_every) as server:
        print("MOCK_ZYNQ %s:%d" % server.address, flush=True)
        try:
            while True:
                time.sleep(1)
        except KeyboardInterrupt:
            return 0


if __name__ == "__main__":
    sys.exit(main())
