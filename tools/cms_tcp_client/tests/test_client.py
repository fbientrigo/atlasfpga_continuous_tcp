import gc
import tracemalloc
import unittest

from tools.cms_tcp_client import CmsClient, ResponseKind, TERM
from tools.cms_tcp_client.mock_server import (
    EVENT_PATTERN_V2,
    MockZynqServer,
)


def v2_payload(size):
    repeats = (size + len(EVENT_PATTERN_V2) - 1) // len(EVENT_PATTERN_V2)
    return (EVENT_PATTERN_V2 * repeats)[:size]


class ClientTests(unittest.TestCase):
    @staticmethod
    def client(server, timeout=1):
        return CmsClient(*server.address, timeout=timeout,
                         max_response_bytes=2 * 1024 * 1024)

    def test_context_manager(self):
        with MockZynqServer() as server:
            cms = self.client(server)
            with cms as connected:
                self.assertIs(connected, cms)
                self.assertTrue(cms.is_connected)
            self.assertFalse(cms.is_connected)

    def test_connect_and_close(self):
        with MockZynqServer() as server:
            cms = self.client(server)
            self.assertIs(cms.connect(), cms)
            self.assertTrue(cms.is_connected)
            cms.close()
            self.assertFalse(cms.is_connected)

    def test_close_is_idempotent(self):
        with MockZynqServer() as server:
            cms = self.client(server).connect()
            cms.close()
            cms.close()
            self.assertFalse(cms.is_connected)

    def test_preflight_success(self):
        with MockZynqServer() as server:
            with self.client(server) as cms:
                self.assertEqual(cms.preflight().kind, ResponseKind.TEXT)

    def test_preflight_failure(self):
        with MockZynqServer(scenario="eof") as server:
            cms = self.client(server)
            with self.assertRaises(ConnectionError):
                cms.preflight()
            self.assertFalse(cms.is_connected)

    def test_sequential_commands(self):
        with MockZynqServer() as server:
            with self.client(server) as cms:
                self.assertEqual(cms.check().kind, ResponseKind.TEXT)
                self.assertEqual(cms.get_help().kind, ResponseKind.TEXT)
                self.assertEqual(cms.get_drs4_state().kind,
                                 ResponseKind.TEXT)

    def test_response_remainder(self):
        with MockZynqServer(scenario="two-responses") as server:
            with self.client(server) as cms:
                self.assertIn(b"event buffer", cms.check().payload)
                self.assertEqual(cms.get_drs4_state().payload,
                                 b"DRS4 state is 3\n")

    def test_real_event(self):
        with MockZynqServer(event_size=257) as server:
            with self.client(server) as cms:
                response = cms.get_event()
                self.assertEqual(response.kind, ResponseKind.EVENT)
                self.assertEqual(response.length, 257)
                self.assertIn(b"\x00", response.payload)

    def test_no_event(self):
        with MockZynqServer(scenario="no-event") as server:
            with self.client(server) as cms:
                self.assertEqual(cms.get_event().kind,
                                 ResponseKind.NO_EVENT)

    def test_dma_error(self):
        with MockZynqServer(scenario="dma-error",
                            dma_error_code=-9) as server:
            with self.client(server) as cms:
                response = cms.get_event()
                self.assertEqual(response.kind, ResponseKind.DMA_ERROR)
                self.assertEqual(response.dma_error_code, -9)

    def test_fragmented_event(self):
        with MockZynqServer(scenario="fragmented",
                            event_size=8193) as server:
            with self.client(server) as cms:
                self.assertEqual(cms.get_event().length, 8193)

    def test_terminator_split_across_writes(self):
        with MockZynqServer(scenario="split-terminator",
                            event_size=33) as server:
            with self.client(server) as cms:
                self.assertEqual(cms.get_event().length, 33)

    def test_slow_response(self):
        with MockZynqServer(scenario="delayed", delay=0.05) as server:
            with self.client(server) as cms:
                self.assertEqual(cms.get_event().kind, ResponseKind.EVENT)

    def test_rst_during_payload(self):
        with MockZynqServer(scenario="rst", event_size=4096) as server:
            cms = self.client(server)
            cms.connect()
            with self.assertRaises(ConnectionError):
                cms.get_event()
            self.assertFalse(cms.is_connected)

    def test_explicit_reconnect(self):
        with MockZynqServer(scenario="rst", event_size=4096) as server:
            cms = self.client(server).connect()
            with self.assertRaises(ConnectionError):
                cms.get_event()
            with self.assertRaises(ConnectionError):
                cms.check()
            cms.reconnect()
            self.assertEqual(cms.check().kind, ResponseKind.TEXT)
            cms.close()

    def test_read_only_command_allowlist(self):
        with MockZynqServer() as server:
            with self.client(server) as cms:
                with self.assertRaises(ValueError):
                    cms.send_command("-VETO 0")
                self.assertTrue(cms.is_connected)

    def test_1000_sequential_mock_events(self):
        with MockZynqServer(event_size=128, event_count=1000) as server:
            with self.client(server) as cms:
                for _ in range(1000):
                    self.assertEqual(cms.get_event().length, 128)
                self.assertEqual(cms.get_event().kind,
                                 ResponseKind.NO_EVENT)

    def test_bounded_memory(self):
        with MockZynqServer(event_size=128, event_count=1000) as server:
            with self.client(server) as cms:
                gc.collect()
                tracemalloc.start()
                baseline = tracemalloc.get_traced_memory()[0]
                try:
                    for _ in range(1000):
                        self.assertEqual(cms.get_event().length, 128)
                    gc.collect()
                    current, peak = tracemalloc.get_traced_memory()
                finally:
                    tracemalloc.stop()
                self.assertLess(current - baseline, 2 * 1024 * 1024)
                self.assertLess(peak - baseline, 8 * 1024 * 1024)


class ClientV2Tests(unittest.TestCase):
    client = staticmethod(ClientTests.client)

    def test_v2_event_exact_bytes_with_nul_and_terminator(self):
        expected = v2_payload(64)
        self.assertIn(b"\x00", expected)
        self.assertIn(TERM, expected)
        with MockZynqServer(event_size=64) as server:
            with self.client(server) as cms:
                response = cms.get_event_v2()
                self.assertEqual(response.kind, ResponseKind.EVENT)
                self.assertEqual(response.payload, expected)

    def test_v2_zero_length_event(self):
        with MockZynqServer(scenario="empty") as server:
            with self.client(server) as cms:
                response = cms.get_event_v2()
                self.assertEqual(response.kind, ResponseKind.EVENT)
                self.assertEqual(response.payload, b"")

    def test_v2_no_event_and_dma_error(self):
        with MockZynqServer(scenario="no-event") as server:
            with self.client(server) as cms:
                self.assertEqual(cms.get_event_v2().kind,
                                 ResponseKind.NO_EVENT)
        with MockZynqServer(scenario="dma-error",
                            dma_error_code=-2) as server:
            with self.client(server) as cms:
                response = cms.get_event_v2()
                self.assertEqual(response.kind, ResponseKind.DMA_ERROR)
                self.assertEqual(response.dma_error_code, -2)

    def test_v2_fragmented_and_split_terminator(self):
        for scenario in ("fragmented", "split-terminator"):
            with self.subTest(scenario=scenario):
                with MockZynqServer(scenario=scenario,
                                    event_size=8193) as server:
                    with self.client(server) as cms:
                        response = cms.get_event_v2()
                        self.assertEqual(response.payload,
                                         v2_payload(8193))

    def test_v2_delayed(self):
        with MockZynqServer(scenario="delayed", delay=0.05) as server:
            with self.client(server) as cms:
                self.assertEqual(cms.get_event_v2().kind,
                                 ResponseKind.EVENT)

    def test_v2_two_responses_preserve_remainder(self):
        with MockZynqServer(scenario="two-responses") as server:
            with self.client(server) as cms:
                self.assertEqual(cms.get_event_v2().payload,
                                 v2_payload(4096))
                self.assertEqual(cms.get_drs4_state().payload,
                                 b"DRS4 state is 3\n")

    def test_v2_sequential_with_legacy_commands(self):
        with MockZynqServer(event_size=48, event_count=4) as server:
            with self.client(server) as cms:
                self.assertEqual(cms.get_event().length, 48)
                self.assertEqual(cms.get_event_v2().payload, v2_payload(48))
                self.assertEqual(cms.check().kind, ResponseKind.TEXT)
                self.assertEqual(cms.get_event_v2().payload, v2_payload(48))
                self.assertEqual(cms.get_event().length, 48)
                self.assertEqual(cms.get_event_v2().kind,
                                 ResponseKind.NO_EVENT)

    def test_v2_framing_failures_close_connection(self):
        cases = (
            ("v2-short-length", ValueError),
            ("v2-negative-length", ValueError),
            ("v2-malformed-length", ValueError),
            ("v2-long-length", ConnectionError),
            ("v2-eof-payload", ConnectionError),
            ("v2-eof-term", ConnectionError),
        )
        for scenario, exception in cases:
            with self.subTest(scenario=scenario):
                with MockZynqServer(scenario=scenario) as server:
                    cms = self.client(server).connect()
                    with self.assertRaises(exception):
                        cms.get_event_v2()
                    self.assertFalse(cms.is_connected)

    def test_v2_oversized_declared_length_closes_connection(self):
        with MockZynqServer(event_size=4096) as server:
            cms = CmsClient(*server.address, timeout=1,
                            max_response_bytes=64)
            cms.connect()
            with self.assertRaisesRegex(ValueError, "exceeds"):
                cms.get_event_v2()
            self.assertFalse(cms.is_connected)

    def test_v2_explicit_reconnect_after_failure(self):
        with MockZynqServer(scenario="v2-malformed-length") as server:
            cms = self.client(server).connect()
            with self.assertRaises(ValueError):
                cms.get_event_v2()
            self.assertFalse(cms.is_connected)
            with self.assertRaises(ConnectionError):
                cms.check()
            cms.reconnect()
            self.assertEqual(cms.check().kind, ResponseKind.TEXT)
            cms.close()

    def test_v2_1000_sequential_events(self):
        with MockZynqServer(event_size=128, event_count=1000) as server:
            with self.client(server) as cms:
                for _ in range(1000):
                    self.assertEqual(cms.get_event_v2().length, 128)
                self.assertEqual(cms.get_event_v2().kind,
                                 ResponseKind.NO_EVENT)

    def test_v2_bounded_memory(self):
        with MockZynqServer(event_size=128, event_count=1000) as server:
            with self.client(server) as cms:
                gc.collect()
                tracemalloc.start()
                baseline = tracemalloc.get_traced_memory()[0]
                try:
                    for _ in range(1000):
                        self.assertEqual(cms.get_event_v2().length, 128)
                    gc.collect()
                    current, peak = tracemalloc.get_traced_memory()
                finally:
                    tracemalloc.stop()
                self.assertLess(current - baseline, 2 * 1024 * 1024)
                self.assertLess(peak - baseline, 8 * 1024 * 1024)


if __name__ == "__main__":
    unittest.main()
