import socket
import unittest
from unittest.mock import patch

from tools.cms_tcp_client.protocol import (
    ResponseKind,
    TERM,
    V2_EVENT_HEADER,
    read_response,
    read_response_v2,
)


class FakeSocket:
    def __init__(self, chunks):
        self.chunks = list(chunks)
        self.timeouts = []

    def settimeout(self, timeout):
        self.timeouts.append(timeout)

    def recv(self, size):
        if not self.chunks:
            return b""
        chunk = self.chunks.pop(0)
        if isinstance(chunk, BaseException):
            raise chunk
        if len(chunk) > size:
            self.chunks.insert(0, chunk[size:])
            return chunk[:size]
        return chunk


class ProtocolTests(unittest.TestCase):
    def read(self, chunks, **kwargs):
        return read_response(
            FakeSocket(chunks), timeout=1, max_response_bytes=128,
            **kwargs)

    def test_terminator_at_every_split_position(self):
        for split in range(len(TERM) + 1):
            with self.subTest(split=split):
                chunks = [part for part in
                          (b"payload" + TERM[:split], TERM[split:])
                          if part]
                response, remainder = self.read(chunks)
                self.assertEqual(response.payload, b"payload")
                self.assertEqual(remainder, b"")

    def test_payload_containing_nul(self):
        response, _ = self.read([b"a\x00b" + TERM], expected_event=True)
        self.assertEqual(response.kind, ResponseKind.EVENT)
        self.assertEqual(response.payload, b"a\x00b")

    def test_payload_containing_ordinary_marker_bytes(self):
        response, _ = self.read([b"a!b#c" + TERM])
        self.assertEqual(response.payload, b"a!b#c")

    def test_two_complete_responses_preserve_remainder(self):
        response, remainder = self.read([b"one" + TERM + b"two" + TERM])
        self.assertEqual(response.payload, b"one")
        response, remainder = read_response(
            FakeSocket([]), remainder=remainder, timeout=1,
            max_response_bytes=128)
        self.assertEqual(response.payload, b"two")
        self.assertEqual(remainder, b"")

    def test_empty_response(self):
        response, _ = self.read([TERM])
        self.assertEqual(response.kind, ResponseKind.EMPTY)

    def test_no_event(self):
        response, _ = self.read([b"#NO_EVENT" + TERM], expected_event=True)
        self.assertEqual(response.kind, ResponseKind.NO_EVENT)

    def test_positive_and_negative_dma_error_codes(self):
        for code in (7, -2):
            with self.subTest(code=code):
                response, _ = self.read(
                    [(b"#DMA_ERROR:%d" % code) + TERM],
                    expected_event=True)
                self.assertEqual(response.kind, ResponseKind.DMA_ERROR)
                self.assertEqual(response.dma_error_code, code)

    def test_exact_maximum_size(self):
        maximum = 12
        payload = b"x" * (maximum - len(TERM))
        response, _ = read_response(
            FakeSocket([payload + TERM]), timeout=1,
            max_response_bytes=maximum)
        self.assertEqual(response.payload, payload)

    def test_maximum_plus_one_byte(self):
        maximum = 12
        payload = b"x" * (maximum - len(TERM) + 1)
        with self.assertRaises(ValueError):
            read_response(FakeSocket([payload + TERM]), timeout=1,
                          max_response_bytes=maximum)

    def test_eof_before_terminator(self):
        with self.assertRaisesRegex(ConnectionError, "EOF"):
            self.read([b"unterminated", b""])

    def test_monotonic_total_deadline(self):
        sock = FakeSocket([b"partial"])
        with patch("tools.cms_tcp_client.protocol.time.monotonic",
                   side_effect=[0.0, 0.25, 1.01]):
            with self.assertRaisesRegex(TimeoutError, "deadline"):
                read_response(sock, timeout=1, max_response_bytes=128)
        self.assertEqual(sock.timeouts, [0.75])

    def test_socket_timeout_is_normalized(self):
        with self.assertRaises(TimeoutError):
            self.read([socket.timeout("late")])


def v2_wire(payload, declared=None):
    if declared is None:
        declared = b"%d" % len(payload)
    return V2_EVENT_HEADER + declared + b"\n" + payload + TERM


class ProtocolV2Tests(unittest.TestCase):
    def read(self, chunks, **kwargs):
        kwargs.setdefault("timeout", 1)
        kwargs.setdefault("max_response_bytes", 128)
        return read_response_v2(FakeSocket(chunks), **kwargs)

    def test_exact_declared_length(self):
        response, remainder = self.read([v2_wire(b"abcde")])
        self.assertEqual(response.kind, ResponseKind.EVENT)
        self.assertEqual(response.payload, b"abcde")
        self.assertEqual(remainder, b"")

    def test_payload_with_embedded_nul(self):
        response, _ = self.read([v2_wire(b"a\x00\x00b")])
        self.assertEqual(response.payload, b"a\x00\x00b")

    def test_payload_with_embedded_legacy_terminator(self):
        payload = b"ab" + TERM + b"cd" + TERM
        response, remainder = self.read([v2_wire(payload)])
        self.assertEqual(response.payload, payload)
        self.assertEqual(remainder, b"")

    def test_zero_length_event(self):
        response, remainder = self.read([v2_wire(b"")])
        self.assertEqual(response.kind, ResponseKind.EVENT)
        self.assertEqual(response.payload, b"")
        self.assertEqual(remainder, b"")

    def test_exact_maximum_size(self):
        payload = b"x" * 16
        wire = v2_wire(payload)
        response, _ = self.read([wire], max_response_bytes=len(wire))
        self.assertEqual(response.payload, payload)

    def test_maximum_plus_one_byte(self):
        payload = b"x" * 16
        maximum = len(v2_wire(payload)) - 1
        with self.assertRaisesRegex(ValueError, "exceeds"):
            self.read([v2_wire(payload)], max_response_bytes=maximum)

    def test_oversized_length_rejected_before_payload_read(self):
        with self.assertRaisesRegex(ValueError, "exceeds"):
            self.read([V2_EVENT_HEADER + b"1000000000\n"])

    def test_every_fragmentation_boundary(self):
        payload = b"\x00" + TERM + b"z"
        wire = v2_wire(payload)
        for split in range(len(wire) + 1):
            with self.subTest(split=split):
                chunks = [part for part in (wire[:split], wire[split:])
                          if part]
                response, remainder = self.read(chunks)
                self.assertEqual(response.payload, payload)
                self.assertEqual(remainder, b"")

    def test_byte_by_byte_delivery(self):
        payload = b"\x00ab" + TERM
        wire = v2_wire(payload)
        chunks = [wire[i:i + 1] for i in range(len(wire))]
        response, remainder = self.read(chunks)
        self.assertEqual(response.payload, payload)
        self.assertEqual(remainder, b"")

    def test_malformed_and_signed_lengths(self):
        for declared in (b"", b"-1", b"-12345", b"+5", b"12x", b"0x10",
                         b" 5", b"5 "):
            with self.subTest(declared=declared):
                with self.assertRaisesRegex(ValueError, "malformed"):
                    self.read([v2_wire(b"abcde", declared=declared)])

    def test_length_header_without_newline(self):
        with self.assertRaisesRegex(ValueError, "malformed"):
            self.read([V2_EVENT_HEADER + b"123456789012345"])

    def test_declared_length_too_small(self):
        with self.assertRaisesRegex(ValueError, "terminator"):
            self.read([v2_wire(b"abcdefgh", declared=b"4")])

    def test_declared_length_too_large_hits_eof(self):
        with self.assertRaisesRegex(ConnectionError, "EOF"):
            self.read([v2_wire(b"abcd", declared=b"8"), b""])

    def test_control_responses(self):
        response, _ = self.read([b"#NO_EVENT" + TERM])
        self.assertEqual(response.kind, ResponseKind.NO_EVENT)
        response, _ = self.read([b"#DMA_ERROR:-3" + TERM])
        self.assertEqual(response.kind, ResponseKind.DMA_ERROR)
        self.assertEqual(response.dma_error_code, -3)

    def test_unexpected_text_response(self):
        with self.assertRaisesRegex(ValueError, "unexpected"):
            self.read([b"DRS4 state is 3\n" + TERM])

    def test_eof_positions(self):
        wire = v2_wire(b"abcdef")
        for cut in (3, len(V2_EVENT_HEADER) + 2, len(wire) - 4,
                    len(wire) - 2):
            with self.subTest(cut=cut):
                with self.assertRaises(ConnectionError):
                    self.read([wire[:cut], b""])

    def test_monotonic_total_deadline(self):
        sock = FakeSocket([V2_EVENT_HEADER + b"5\nab"])
        with patch("tools.cms_tcp_client.protocol.time.monotonic",
                   side_effect=[0.0, 0.25, 1.01]):
            with self.assertRaisesRegex(TimeoutError, "deadline"):
                read_response_v2(sock, timeout=1, max_response_bytes=128)
        self.assertEqual(sock.timeouts, [0.75])

    def test_remainder_preserved(self):
        first = v2_wire(b"one" + TERM)
        second = v2_wire(b"two\x00two")
        response, remainder = self.read([first + second + b"#NO"])
        self.assertEqual(response.payload, b"one" + TERM)
        response, remainder = read_response_v2(
            FakeSocket([]), remainder=remainder,
            timeout=1, max_response_bytes=128)
        self.assertEqual(response.payload, b"two\x00two")
        response, remainder = read_response_v2(
            FakeSocket([b"_EVENT" + TERM]), remainder=remainder,
            timeout=1, max_response_bytes=128)
        self.assertEqual(response.kind, ResponseKind.NO_EVENT)
        self.assertEqual(remainder, b"")


if __name__ == "__main__":
    unittest.main()
