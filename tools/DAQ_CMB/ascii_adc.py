#!/usr/bin/env python3
"""Read Charge Monitoring System waveforms stored as ASCII text.

Each data row has one sample index and eight ADC channels, separated by spaces:
    800 111 EA8 44F 11A 322 2A2 26E 157

The serial/TCP bytes contain ASCII characters. For example, b"03F".hex()
is "303346": these are the *encoding bytes*, not the ADC measurement.
After decoding ASCII, "03F" represents the hexadecimal ADC code 0x03F
(63 counts). Never convert the packed ASCII bytes 0x303346 to a voltage.

Some VERDAQ8 acquisition files prepend a decimal Unix timestamp.
"""
from pathlib import Path
import re

import pandas as pd


_HEX3 = re.compile(r"[0-9a-fA-F]{3}\Z")
CHANNELS = 8
COLUMNS = ["Nsample"] + [f"ch{i}" for i in range(CHANNELS)]


def parse_adc_line(line):
    """Return [sample_index, ch0, ..., ch7], or None for non-data lines.

    Tokens are textual ASCII representations of 3-digit hexadecimal ADC
    codes; spaces separate fields, not bytes inside a channel.
    """
    fields = line.strip().split()
    if not fields or fields[0].startswith("#"):
        return None

    # VERDAQ8 recorder prepends a decimal timestamp to each data row.
    if len(fields) == CHANNELS + 2:
        try:
            float(fields[0])
        except ValueError:
            return None
        fields = fields[1:]

    if len(fields) != CHANNELS + 1:
        return None
    if not all(_HEX3.fullmatch(field) for field in fields):
        return None

    return [int(field, 16) for field in fields]


def load_adc_ascii(filename):
    """Load an ASCII acquisition file without pandas type inference."""
    rows = []
    skipped = 0
    # Strict ASCII ensures we never reinterpret arbitrary binary as text.
    with Path(filename).open("r", encoding="ascii", errors="strict") as stream:
        for line in stream:
            parsed = parse_adc_line(line)
            if parsed is not None:
                rows.append(parsed)
            elif line.strip() and not line.lstrip().startswith("#"):
                skipped += 1

    if not rows:
        raise ValueError(f"No valid ASCII ADC rows found in {filename}")
    if skipped:
        print(f"Warning: ignored {skipped} incomplete/non-ADC lines in {filename}")

    return pd.DataFrame(rows, columns=COLUMNS, dtype="int64")
