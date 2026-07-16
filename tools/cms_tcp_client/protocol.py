"""Bounded parsing for the current CMS terminator-framed protocol."""

from dataclasses import dataclass
from enum import Enum
import hashlib
import re
import socket
import time

TERM = b"!#\n"
NO_EVENT = b"#NO_EVENT"
DMA_ERROR = b"#DMA_ERROR:"
V2_EVENT_HEADER = b"#EVENT:"
V2_MAX_LENGTH_DIGITS = 10  # u32 payload length has at most 10 decimal digits


class ResponseKind(Enum):
    TEXT = "text"
    EVENT = "event"
    NO_EVENT = "no_event"
    DMA_ERROR = "dma_error"
    EMPTY = "empty"


@dataclass(frozen=True)
class CmsResponse:
    kind: ResponseKind
    payload: bytes
    dma_error_code: int | None = None

    @property
    def sha256(self):
        return hashlib.sha256(self.payload).hexdigest()

    @property
    def length(self):
        return len(self.payload)


def classify_response(payload, expected_event=False):
    """Classify one terminator-free response without decoding its bytes."""
    if not isinstance(payload, bytes):
        raise TypeError("payload must be bytes")
    if not payload:
        return CmsResponse(ResponseKind.EMPTY, payload)
    if payload == NO_EVENT:
        return CmsResponse(ResponseKind.NO_EVENT, payload)
    if payload.startswith(DMA_ERROR):
        code = payload[len(DMA_ERROR):]
        if not re.fullmatch(rb"[+-]?\d+", code):
            raise ValueError("malformed DMA error response")
        return CmsResponse(ResponseKind.DMA_ERROR, payload, int(code))
    kind = ResponseKind.EVENT if expected_event else ResponseKind.TEXT
    return CmsResponse(kind, payload)


def read_response(sock, *, remainder=b"", timeout=10.0,
                  max_response_bytes=2 * 1024 * 1024,
                  expected_event=False):
    """Read the first complete response and preserve any following bytes."""
    if timeout <= 0:
        raise ValueError("timeout must be greater than zero")
    if max_response_bytes < len(TERM):
        raise ValueError("max_response_bytes must fit the terminator")

    deadline = time.monotonic() + timeout
    data = bytearray(remainder)
    while True:
        end = data.find(TERM)
        if end >= 0:
            response_size = end + len(TERM)
            if response_size > max_response_bytes:
                raise ValueError(
                    "response exceeds %d bytes" % max_response_bytes)
            response = classify_response(bytes(data[:end]), expected_event)
            return response, bytes(data[response_size:])

        if len(data) >= max_response_bytes:
            raise ValueError("response exceeds %d bytes" % max_response_bytes)

        remaining = deadline - time.monotonic()
        if remaining <= 0:
            raise TimeoutError("response deadline expired")
        sock.settimeout(remaining)
        try:
            chunk = sock.recv(65536)
        except socket.timeout as exc:
            raise TimeoutError("response deadline expired") from exc
        if not chunk:
            raise ConnectionError("EOF before terminator")
        data.extend(chunk)


def read_response_v2(sock, *, remainder=b"", timeout=10.0,
                     max_response_bytes=2 * 1024 * 1024):
    """Read one -get_event_v2 response and preserve any following bytes.

    Event responses are length-framed: b"#EVENT:<decimal_length>\\n" followed
    by exactly that many payload bytes and the trailing b"!#\\n" terminator.
    The declared length is authoritative, so payloads containing NUL or the
    legacy terminator pass through intact and are never decoded. Control
    responses (#NO_EVENT, #DMA_ERROR:<code>) keep legacy terminator framing.
    """
    if timeout <= 0:
        raise ValueError("timeout must be greater than zero")
    if max_response_bytes < len(TERM):
        raise ValueError("max_response_bytes must fit the terminator")

    deadline = time.monotonic() + timeout
    data = bytearray(remainder)

    def fill():
        remaining = deadline - time.monotonic()
        if remaining <= 0:
            raise TimeoutError("response deadline expired")
        sock.settimeout(remaining)
        try:
            chunk = sock.recv(65536)
        except socket.timeout as exc:
            raise TimeoutError("response deadline expired") from exc
        if not chunk:
            raise ConnectionError("EOF inside v2 response")
        data.extend(chunk)

    # Decide event vs control from the response prefix.
    while not data.startswith(V2_EVENT_HEADER):
        if V2_EVENT_HEADER.startswith(bytes(data)):
            fill()  # still a proper prefix of the event header
            continue
        remaining = deadline - time.monotonic()
        if remaining <= 0:
            raise TimeoutError("response deadline expired")
        response, rest = read_response(
            sock, remainder=bytes(data), timeout=remaining,
            max_response_bytes=max_response_bytes, expected_event=True)
        if response.kind not in (ResponseKind.NO_EVENT,
                                 ResponseKind.DMA_ERROR):
            raise ValueError(
                "unexpected v2 response: %r" % response.payload[:32])
        return response, rest

    # Bounded read of the length line.
    header_limit = len(V2_EVENT_HEADER) + V2_MAX_LENGTH_DIGITS + 1
    while True:
        newline = data.find(b"\n", len(V2_EVENT_HEADER), header_limit)
        if newline >= 0:
            break
        if len(data) >= header_limit:
            raise ValueError("malformed v2 length header")
        fill()
    digits = bytes(data[len(V2_EVENT_HEADER):newline])
    if not digits.isdigit():  # rejects empty, signs, and non-digit bytes
        raise ValueError("malformed v2 payload length: %r" % digits)
    declared = int(digits)
    total = newline + 1 + declared + len(TERM)
    if total > max_response_bytes:
        raise ValueError("response exceeds %d bytes" % max_response_bytes)

    # The declared length is authoritative: read exactly that many payload
    # bytes plus the trailing terminator before validating anything else.
    while len(data) < total:
        fill()
    body_start = newline + 1
    if bytes(data[body_start + declared:total]) != TERM:
        raise ValueError("v2 terminator missing after declared payload")
    payload = bytes(data[body_start:body_start + declared])
    return CmsResponse(ResponseKind.EVENT, payload), bytes(data[total:])
