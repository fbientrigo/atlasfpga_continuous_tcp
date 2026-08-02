import contextlib
import io
from pathlib import Path
import subprocess
import sys
import tempfile
import unittest
from unittest import mock

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
                status, out, err = CliTests.run_cli(
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


class CliSubprocessTests(unittest.TestCase):
    @staticmethod
    def run_subprocess(server, *args):
        host, port = server.address
        return subprocess.run(
            [sys.executable, "-m", "tools.cms_tcp_client.cli", "--host", host,
             "--port", str(port), "--timeout", "0.5", *args],
            cwd=Path(__file__).parents[3], capture_output=True, text=True,
            timeout=5)

    def test_real_module_success_classes(self):
        with MockZynqServer(event_size=32, event_count=5) as server:
            for command in ("preflight", "check", "help", "state", "get-event-v2"):
                with self.subTest(command=command):
                    result = self.run_subprocess(server, command)
                    self.assertEqual(result.returncode, 0, result.stderr)

    def test_real_module_no_event(self):
        with MockZynqServer(scenario="no-event") as server:
            result = self.run_subprocess(server, "get-event-v2")
        self.assertEqual(result.returncode, 0); self.assertIn("NO_EVENT", result.stdout)

    def test_real_module_dma_and_empty(self):
        for scenario, expected in (("dma-error", "DMA_ERROR"), ("empty", "EMPTY")):
            with self.subTest(scenario=scenario), MockZynqServer(scenario=scenario) as server:
                result = self.run_subprocess(server, "get-event")
                self.assertEqual(result.returncode, 1); self.assertIn(expected, result.stderr)

    def test_real_module_malformed_and_transport_failure(self):
        with MockZynqServer(scenario="v2-malformed-length") as server:
            result = self.run_subprocess(server, "get-event-v2")
        self.assertEqual(result.returncode, 1); self.assertIn("ERROR", result.stderr)
        with MockZynqServer() as server:
            host, port = server.address
        result = subprocess.run(
            [sys.executable, "-m", "tools.cms_tcp_client.cli", "--host", host,
             "--port", str(port), "--timeout", "0.1", "check"],
            cwd=Path(__file__).parents[3], capture_output=True, text=True)
        self.assertEqual(result.returncode, 1)

    def test_real_module_output_and_argument_failures(self):
        with tempfile.TemporaryDirectory() as directory, MockZynqServer() as server:
            result = self.run_subprocess(server, "get-event-v2", "--output", directory)
            self.assertEqual(result.returncode, 1); self.assertEqual(server.commands_received, [])
        result = subprocess.run(
            [sys.executable, "-m", "tools.cms_tcp_client.cli", "--port", "0", "check"],
            cwd=Path(__file__).parents[3], capture_output=True, text=True)
        self.assertEqual(result.returncode, 2)

    def test_nested_output_parent_is_created_before_request(self):
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / "new" / "nested" / "event.bin"
            with MockZynqServer(event_size=17) as server:
                status, out, err = CliTests.run_cli(
                    server, "get-event-v2", "--output", str(path))
            self.assertEqual(status, 0, err)
            self.assertEqual(path.read_bytes(), expected_payload(EVENT_PATTERN_V2, 17))

    def test_directory_destination_fails_without_consuming_event(self):
        with tempfile.TemporaryDirectory() as directory:
            with MockZynqServer() as server:
                status, out, err = CliTests.run_cli(
                    server, "get-event-v2", "--output", directory)
                self.assertEqual(server.commands_received, [])
            self.assertEqual(status, 1)
            self.assertNotIn("EVENT", out)

    def test_no_event_and_dma_error_remove_reserved_file(self):
        for scenario in ("no-event", "dma-error"):
            with self.subTest(scenario=scenario), tempfile.TemporaryDirectory() as directory:
                path = Path(directory) / "event.bin"
                with MockZynqServer(scenario=scenario) as server:
                    CliTests.run_cli(server, "get-event-v2", "--output", str(path))
                self.assertEqual(list(Path(directory).iterdir()), [])

    def test_existing_output_is_atomically_replaced(self):
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / "event.bin"
            path.write_bytes(b"old")
            with MockZynqServer(event_size=19) as server:
                status, out, err = CliTests.run_cli(server, "get-event-v2", "--output", str(path))
            self.assertEqual(status, 0, err)
            self.assertEqual(path.read_bytes(), expected_payload(EVENT_PATTERN_V2, 19))
            self.assertEqual(list(Path(directory).glob(".*.tmp")), [])

    def test_replace_failure_prints_no_event_and_cleans_temporary(self):
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / "event.bin"
            with MockZynqServer(event_size=19) as server, \
                    mock.patch("tools.cms_tcp_client.atomic_output.os.replace",
                               side_effect=PermissionError("denied")):
                status, out, err = CliTests.run_cli(server, "get-event-v2", "--output", str(path))
            self.assertEqual(status, 1)
            self.assertNotIn("EVENT", out)
            self.assertEqual(list(Path(directory).iterdir()), [])


if __name__ == "__main__":
    unittest.main()
