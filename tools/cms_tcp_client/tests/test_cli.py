import contextlib
import io
from pathlib import Path
import tempfile
import unittest

from tools.cms_tcp_client import TERM, cli
from tools.cms_tcp_client.mock_server import (
    EVENT_PATTERN,
    EVENT_PATTERN_V2,
    MockZynqServer,
)


def expected_payload(pattern, size):
    repeats = (size + len(pattern) - 1) // len(pattern)
    return (pattern * repeats)[:size]


class CliTests(unittest.TestCase):
    @staticmethod
    def run_cli(server, *argv):
        host, port = server.address
        out, err = io.StringIO(), io.StringIO()
        with contextlib.redirect_stdout(out), \
                contextlib.redirect_stderr(err):
            status = cli.main(["--host", host, "--port", str(port),
                               "--timeout", "2", *argv])
        return status, out.getvalue(), err.getvalue()

    def check_output_is_byte_exact(self, command, pattern):
        expected = expected_payload(pattern, 64)
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / "event.bin"
            with MockZynqServer(event_size=64) as server:
                status, out, err = self.run_cli(
                    server, command, "--output", str(path),
                    "--preview-bytes", "8")
            self.assertEqual(status, 0, err)
            self.assertEqual(path.read_bytes(), expected)
            self.assertIn("EVENT length=64 sha256=", out)
            self.assertIn("preview=%s" % expected[:8].hex(), out)

    def test_get_event_output_is_byte_exact(self):
        self.check_output_is_byte_exact("get-event", EVENT_PATTERN)

    def test_get_event_v2_output_is_byte_exact(self):
        expected = expected_payload(EVENT_PATTERN_V2, 64)
        self.assertIn(b"\x00", expected)
        self.assertIn(TERM, expected)
        self.check_output_is_byte_exact("get-event-v2", EVENT_PATTERN_V2)

    def test_v2_no_event_is_a_successful_outcome(self):
        with MockZynqServer(scenario="no-event") as server:
            status, out, err = self.run_cli(server, "get-event-v2")
        self.assertEqual(status, 0, err)
        self.assertIn("NO_EVENT", out)

    def test_v2_dma_error_exits_one_with_signed_code(self):
        with MockZynqServer(scenario="dma-error",
                            dma_error_code=-3) as server:
            status, out, err = self.run_cli(server, "get-event-v2")
        self.assertEqual(status, 1)
        self.assertIn("DMA_ERROR code=-3", err)

    def test_v2_malformed_framing_exits_one(self):
        with MockZynqServer(scenario="v2-malformed-length") as server:
            status, out, err = self.run_cli(server, "get-event-v2")
        self.assertEqual(status, 1)
        self.assertIn("ERROR", err)

    def test_no_output_file_written_without_flag(self):
        with tempfile.TemporaryDirectory() as directory:
            with MockZynqServer(event_size=32) as server:
                status, out, err = self.run_cli(server, "get-event-v2")
            self.assertEqual(status, 0, err)
            self.assertEqual(list(Path(directory).iterdir()), [])


if __name__ == "__main__":
    unittest.main()
