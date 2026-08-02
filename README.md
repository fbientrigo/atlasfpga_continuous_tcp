# TGC-Charge Monitoring System

## Description
This is the official repository to store useful files for the ATLAS TGC charge monitoring system update. 
The main system consist of a mother board (MB) that can read up to 5 mezzanines. Each each mezzanine can read up to 8 analog channels, we call this: 40 channel MB or "MB40ch". there are smaller versions of these MB, for instance the MB16ch, a simplified version, that help us to develop firmware and test modules before the inserting them into the MB40ch.
The MB40ch is controlled by a Zynq SoC embedded in a board from the Trenz company (**TE0715-04**, vivado board file ->**TE0715_15_1I**) and a CPLD from lattice (**LCMXO3D-9400HC-6CABGA484**) that serves as a multiplexer for the mezzanines ADCs.   

## altium
Altium desing files to help guide through the different boards developed for the project, speciañly the 40ch mother borad and the readout mezzanines.

## cpld_lattice
Firmware for the CPLD, it has to be programmed separately from the trenz firmware and with a different jtag.

## zynq
Firmware and software to program the zynq embedded in the Trenz SoM.

## tools
Firmware for the MB16ch, for mezzanine and trenz SoM tests

## CMS host console

The supported host path is deliberately single-owner:

```text
TypeScript browser UI -> localhost HTTP -> Python bridge -> CmsClient -> raw TCP -> mock/Zynq
```

`CmsClient` is the only component that serializes commands, owns sockets,
applies deadlines, reconnects explicitly, accumulates responses, and parses
legacy/v2 framing. The browser never connects to the board directly.

Build the checked-in browser runtime after changing TypeScript:

```powershell
cd tools/cms_tcp_client/web
npm ci
npm run build
cd ../../..
```

Run a local transport fixture and the console in separate terminals (use the
port printed by the mock):

```powershell
python -m tools.cms_tcp_client.mock_server --port 6543
python -m tools.cms_tcp_client.web_launcher --target-mode mock --target-host 127.0.0.1 --target-port 6543
```

Then open `http://127.0.0.1:8765/`. The HTTP listener is always loopback-only,
does not enable CORS, and defaults to not opening a browser automatically.
Board mode must be declared explicitly:

```powershell
python -m tools.cms_tcp_client.web_launcher --target-mode board --target-host 192.168.1.10
```

`MOCK LOCAL — NOT HARDWARE VALIDATION` and `BOARD HARDWARE — PHYSICAL TARGET`
are safety boundaries, not inferred address labels. No physical validation has
been performed yet; local success does not prove that an ELF is loaded or that
DMA/lwIP behavior is valid on the board.

The CLI remains supported. Event output reserves a same-directory temporary
file before connecting, then flushes, fsyncs, and atomically replaces the
requested destination only after a complete event. `NO_EVENT` exits 0;
DMA, empty, transport, protocol, and persistence failures exit 1; argument
errors exit 2. If an interactive PowerShell prompt later displays 0, inspect
the direct subprocess return code: successful profile/prompt Git commands can
overwrite `$LASTEXITCODE`, but the CLI itself still returned 1.

Troubleshooting: connect before commands; use preflight for active liveness;
use explicit reconnect after a 502/transport failure; choose v2 for arbitrary
binary event bytes; lower `--max-response-bytes` only if it still fits the
largest response. See `tools/cms_tcp_client/README.md` and
`tools/cms_tcp_client/WEB_CONNECTION_AUDIT.md` for protocol details and evidence boundaries.
