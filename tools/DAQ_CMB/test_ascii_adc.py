#!/usr/bin/env python3
"""Regression tests for ASCII-to-ADC decoding."""
from pathlib import Path
import sys
import tempfile
import unittest

sys.path.insert(0, str(Path(__file__).resolve().parent))
from ascii_adc import load_adc_ascii, parse_adc_line


class TestAsciiAdc(unittest.TestCase):
    def test_ascii_bytes_and_adc_value_are_different(self):
        self.assertEqual(b"03F".hex().upper(), "303346")
        self.assertEqual(int("03F", 16), 63)

    def test_eight_ascii_channels(self):
        row = parse_adc_line("800 03F 111 EA8 44F 11A 322 2A2 26E")
        self.assertEqual(row, [2048, 63, 273, 3752, 1103, 282, 802, 674, 622])

    def test_recorder_timestamp_is_not_adc_sample(self):
        row = parse_adc_line(
            "1729101779.179202 800 111 EA8 44F 11A 322 2A2 26E 157"
        )
        self.assertEqual(row[0], 2048)
        self.assertEqual(row[1:], [273, 3752, 1103, 282, 802, 674, 622, 343])

    def test_skips_headers_and_partial_rows(self):
        self.assertIsNone(parse_adc_line("#-"))
        self.assertIsNone(parse_adc_line("#21B#288"))
        self.assertIsNone(parse_adc_line("800 03F 111"))
        self.assertIsNone(parse_adc_line("800 03G 111 EA8 44F 11A 322 2A2 26E"))

    def test_load_ascii_file(self):
        with tempfile.TemporaryDirectory() as tmp:
            filename = Path(tmp) / "capture.dat"
            filename.write_text(
                "#-\n800 03F 111 EA8 44F 11A 322 2A2 26E\n"
                "1729101779.179202 801 000 001 002 003 004 005 006 FFF\n",
                encoding="ascii"
            )
            df = load_adc_ascii(filename)
            self.assertEqual(df.shape, (2, 9))
            self.assertEqual(df["ch0"].tolist(), [63, 0])
            self.assertEqual(df["ch7"].tolist(), [622, 4095])

    def test_non_ascii_bytes_are_not_silently_interpreted(self):
        with tempfile.TemporaryDirectory() as tmp:
            filename = Path(tmp) / "bad.dat"
            filename.write_bytes(b"800 03F 111 EA8 44F 11A 322 2A2 26E\n\xff")
            with self.assertRaises(UnicodeDecodeError):
                load_adc_ascii(filename)


if __name__ == "__main__":
    unittest.main()
