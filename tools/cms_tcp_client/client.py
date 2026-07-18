"""Synchronous host client for the read-only CMS TCP commands."""

import socket
import struct
import threading
import time

from .protocol import ResponseKind, TERM, read_response, read_response_v2

READ_ONLY_COMMANDS = frozenset({
    "-check",
    "-h",
    "-DRS4GetState",
    "-get_event",
    "-get_event_v2",
})


class CmsClient:
    def __init__(self, host, port=6543, timeout=10.0,
                 max_response_bytes=2 * 1024 * 1024):
        if not host:
            raise ValueError("host must not be empty")
        if not 1 <= port <= 65535:
            raise ValueError("port must be between 1 and 65535")
        if timeout <= 0:
            raise ValueError("timeout must be greater than zero")
        if max_response_bytes < len(TERM):
            raise ValueError("max_response_bytes must fit the terminator")
        self.host = host
        self.port = port
        self.timeout = timeout
        self.max_response_bytes = max_response_bytes
        self._socket = None
        self._remainder = b""
        self._command_lock = threading.Lock()

    @property
    def is_connected(self):
        """Local socket ownership only; it never proves remote liveness.

        A True value means this client holds an open socket object. The
        board may still have dropped, reset, or replaced the connection.
        Use preflight() for an active round-trip liveness check.
        """
        return self._socket is not None

    def connect(self):
        if not self.is_connected:
            sock = socket.create_connection(
                (self.host, self.port), timeout=self.timeout)
            sock.settimeout(self.timeout)
            self._socket = sock
            self._remainder = b""
        return self

    def close(self):
        sock, self._socket = self._socket, None
        self._remainder = b""
        if sock is not None:
            sock.close()

    def __enter__(self):
        return self.connect()

    def __exit__(self, exc_type, exc, traceback):
        self.close()
        return False

    def reconnect(self):
        self.close()
        return self.connect()

    @staticmethod
    def _serialize_command(command):
        if not isinstance(command, str):
            raise TypeError("command must be a string")
        if command not in READ_ONLY_COMMANDS:
            raise ValueError("command is not allowed by the read-only API")
        return command.encode("ascii") + b"\n"

    def send_command(self, command, expected_event=False):
        wire_command = self._serialize_command(command)
        return self._exchange(wire_command, expected_event=expected_event)

    def _exchange(self, wire_command, *, expected_event=False,
                  read_delay=0.0, abort_after_bytes=None, v2=False):
        if not self.is_connected:
            raise ConnectionError("client is not connected")
        if read_delay < 0:
            raise ValueError("read_delay must not be negative")
        if abort_after_bytes is not None and abort_after_bytes <= 0:
            raise ValueError("abort_after_bytes must be greater than zero")
        if not self._command_lock.acquire(blocking=False):
            raise RuntimeError("another command is already in flight")

        try:
            self._socket.sendall(wire_command)
            if read_delay:
                time.sleep(read_delay)
            if abort_after_bytes is not None:
                self._abort_during_response(abort_after_bytes)
                return None
            if v2:
                response, self._remainder = read_response_v2(
                    self._socket,
                    remainder=self._remainder,
                    timeout=self.timeout,
                    max_response_bytes=self.max_response_bytes,
                )
            else:
                response, self._remainder = read_response(
                    self._socket,
                    remainder=self._remainder,
                    timeout=self.timeout,
                    max_response_bytes=self.max_response_bytes,
                    expected_event=expected_event,
                )
            return response
        except (OSError, TimeoutError, ValueError, RuntimeError):
            self.close()
            raise
        finally:
            self._command_lock.release()

    def _abort_during_response(self, byte_count):
        if self._remainder:
            raise RuntimeError("cannot abort with a buffered response")
        deadline = time.monotonic() + self.timeout
        received = 0
        tail = b""
        while received < byte_count:
            remaining = deadline - time.monotonic()
            if remaining <= 0:
                raise TimeoutError("response deadline expired")
            self._socket.settimeout(remaining)
            chunk = self._socket.recv(min(4096, byte_count - received))
            if not chunk:
                raise ConnectionError("EOF before abort threshold")
            received += len(chunk)
            combined = tail + chunk
            if TERM in combined:
                raise RuntimeError("response completed before abort threshold")
            tail = combined[-(len(TERM) - 1):]
        self._socket.setsockopt(
            socket.SOL_SOCKET, socket.SO_LINGER, struct.pack("ii", 1, 0))
        self.close()

    def _acceptance_exchange(self, command, *, expected_event=False,
                             read_delay=0.0, abort_after_bytes=None):
        """Private transport perturbation hook for board acceptance tests."""
        wire_command = self._serialize_command(command)
        return self._exchange(
            wire_command,
            expected_event=expected_event,
            read_delay=read_delay,
            abort_after_bytes=abort_after_bytes,
        )

    def preflight(self):
        """Active liveness check: round-trip a -check command.

        This is the only supported way to prove the board is reachable and
        responding; is_connected cannot. Any transport or protocol failure
        closes the client and clears connection state.
        """
        if not self.is_connected:
            self.connect()
        response = self.check()
        if response.kind is not ResponseKind.TEXT or not response.payload:
            self.close()
            raise ValueError("preflight expected a non-empty text response")
        return response

    def check(self):
        return self.send_command("-check")

    def get_help(self):
        return self.send_command("-h")

    def get_drs4_state(self):
        return self.send_command("-DRS4GetState")

    def get_event(self):
        return self.send_command("-get_event", expected_event=True)

    def get_event_v2(self):
        wire_command = self._serialize_command("-get_event_v2")
        return self._exchange(wire_command, v2=True)
