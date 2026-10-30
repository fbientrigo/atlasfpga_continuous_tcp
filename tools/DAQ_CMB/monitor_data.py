#!/usr/bin/env python3
"""Compatibility entry point for the Charge Monitoring ASCII oscilloscope.

Both monitor_data.py and plot_data_mb40ch.py now use the same ASCII parser.
"""
from plot_data_mb40ch import DATA_MONITOR, main


if __name__ == "__main__":
    main()
