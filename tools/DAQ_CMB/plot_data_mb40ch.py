#!/usr/bin/env python3
"""ASCII waveform oscilloscope for the Charge Monitoring System.

Example:
    python plot_data_mb40ch.py data_run_test0/VERDAQ8_data/data.txt
    python plot_data_mb40ch.py capture.dat --vref 2.5 --adc-bits 12
    python plot_data_mb40ch.py                # monitor newest .dat file

Voltage mode assumes *unsigned, unipolar* ADC codes and a known full-scale
voltage. If the hardware uses an offset or different coding, calibrate first.
"""
import argparse
from pathlib import Path

import matplotlib
import matplotlib.pyplot as plt
import numpy as np

from ascii_adc import load_adc_ascii


matplotlib.style.use("fast")
DEFAULT_DIRECTORY = Path(__file__).resolve().parent / "data_run_test0" / "VERDAQ8_data"


class DATA_MONITOR:
    def __init__(self, fname, vref=None, adc_bits=12, npts=2000):
        if vref is not None and vref <= 0:
            raise ValueError("--vref must be positive")
        if adc_bits < 1 or adc_bits > 32:
            raise ValueError("--adc-bits must be between 1 and 32")
        if npts < 1:
            raise ValueError("--npts must be positive")

        self.vref = vref
        self.adc_bits = adc_bits
        self.NPTS = npts
        self.figWF = self.axsWF = None
        self.figH = self.axsH = None
        self.load(fname)

    def load(self, fname):
        self.fname = str(fname)
        self.dfint = load_adc_ascii(fname)
        print(f"Loaded {len(self.dfint)} ASCII ADC rows: {fname}")

    def _channel_data(self, frame, channel):
        counts = frame[f"ch{channel}"].to_numpy(dtype=float)
        if self.vref is None:
            return counts
        return counts * self.vref / ((1 << self.adc_bits) - 1)

    def plot(self):
        frame = self.dfint.tail(self.NPTS)
        sample_order = np.arange(len(frame))
        units = "V" if self.vref is not None else "ADC counts"
        y_max = self.vref if self.vref is not None else (1 << self.adc_bits) - 1

        if self.figWF is None:
            self.figWF, self.axsWF = plt.subplots(
                8, 1, figsize=(11, 10), sharex=True
            )
        if self.figH is None:
            self.figH, hist_axes = plt.subplots(2, 4, figsize=(11, 6))
            self.axsH = hist_axes.ravel()

        for ch, (wave_axis, hist_axis) in enumerate(zip(self.axsWF, self.axsH)):
            values = self._channel_data(frame, ch)
            wave_axis.clear()
            wave_axis.plot(sample_order, values, linewidth=0.8)
            wave_axis.set_ylabel(f"CH{ch}")
            wave_axis.set_ylim(0, y_max)
            wave_axis.grid(alpha=0.2)

            hist_axis.clear()
            hist_axis.hist(values, bins=50)
            hist_axis.set_title(f"CH{ch}")
            hist_axis.set_xlabel(units)

        self.axsWF[-1].set_xlabel("Sample order in file")
        self.figWF.suptitle(f"{Path(self.fname).name} — {units}")
        self.figH.suptitle(f"ADC distributions — {units}")
        self.figWF.tight_layout()
        self.figH.tight_layout()
        self.figWF.canvas.draw_idle()
        self.figH.canvas.draw_idle()

    def draw(self):
        plt.draw()
        plt.pause(0.1)

    def show(self):
        plt.show()


def latest_capture(directory):
    files = list(directory.glob("*.dat"))
    if not files:
        files = list(directory.glob("*.txt"))
    if not files:
        raise FileNotFoundError(f"No .dat or .txt captures in {directory}")
    return max(files, key=lambda file: file.stat().st_mtime_ns)


def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("file", nargs="?", type=Path, help="ASCII capture to plot")
    parser.add_argument("--directory", type=Path, default=DEFAULT_DIRECTORY,
                        help="Directory to monitor if no file is supplied")
    parser.add_argument("--npts", type=int, default=2000,
                        help="Latest samples to show (default: 2000)")
    parser.add_argument("--refresh", type=float, default=10.0,
                        help="Monitor refresh interval in seconds")
    parser.add_argument("--adc-bits", type=int, default=12,
                        help="ADC resolution (default: 12)")
    parser.add_argument("--vref", type=float, default=None,
                        help="Unipolar full-scale voltage; omit to plot raw counts")
    args = parser.parse_args(argv)
    if args.refresh <= 0:
        parser.error("--refresh must be positive")

    if args.file is not None:
        monitor = DATA_MONITOR(args.file, args.vref, args.adc_bits, args.npts)
        monitor.plot()
        monitor.show()
        return

    plt.ion()
    monitor = None
    previous = None
    while True:
        latest = latest_capture(args.directory)
        signature = (latest, latest.stat().st_mtime_ns, latest.stat().st_size)
        if signature != previous:
            if monitor is None:
                monitor = DATA_MONITOR(latest, args.vref, args.adc_bits, args.npts)
            else:
                monitor.load(latest)
            monitor.plot()
            previous = signature

        plt.pause(args.refresh)
        if monitor is not None and not plt.fignum_exists(monitor.figWF.number):
            break


if __name__ == "__main__":
    main()
