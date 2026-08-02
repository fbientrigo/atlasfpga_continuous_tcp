# CMS TCP client

This directory contains host-side software for the Charge Monitoring System.
It is not compiled into the FPGA image or Zynq ELF and does not change board
acquisition, DMA, VETO, trigger, or continuous-streaming behavior.

The legacy firmware protocol ends each response with `!#\n`. The client
extracts the first terminator and preserves later bytes for the next command.
Consequently, a legacy `-get_event` payload containing the complete terminator
byte sequence cannot be represented unambiguously. Autonomous production
streaming is not supported; the bounded host-pull mode below is a validation
and operational mode, not firmware streaming.

Every host command is serialized as ASCII followed by one newline byte
(`command.encode("ascii") + b"\n"`). This intentional framing transition lets
the receiver parse exact commands across arbitrary TCP receive boundaries and
handle multiple commands from one receive without prefix dispatch.
During the firmware transition, a complete unframed static command may still
be accepted when it is fully contained in one callback. Bare `-get_event` is
intentionally excluded because it is a prefix of `-get_event_v2`; parameterized
commands also require the newline. This client always sends the newline.

## v2 event framing

`-get_event_v2` removes the sentinel ambiguity with a length-framed event
response:

```
#EVENT:<decimal_payload_length>\n
<exactly that many payload bytes>
!#\n
```

The declared length is authoritative: the client reads exactly that many
payload bytes before checking the trailing terminator, so embedded NUL bytes
and embedded `!#\n` sequences pass through intact and are never decoded.
Control responses keep legacy framing: `#NO_EVENT!#\n` and
`#DMA_ERROR:<signed_decimal_code>!#\n`. Malformed, negative, oversized, or
inconsistent lengths are rejected and close the connection.

## Command line

Run from the repository root:

```powershell
python -m tools.cms_tcp_client.cli --host 192.168.1.10 preflight
python -m tools.cms_tcp_client.cli --host 192.168.1.10 check
python -m tools.cms_tcp_client.cli --host 192.168.1.10 state
python -m tools.cms_tcp_client.cli --host 192.168.1.10 get-event
python -m tools.cms_tcp_client.cli --host 192.168.1.10 get-event --output event.bin --preview-bytes 16
python -m tools.cms_tcp_client.cli --host 192.168.1.10 get-event-v2 --output event.bin --preview-bytes 16
python -m tools.cms_tcp_client.host_pull_soak --host 192.168.1.10 --interval-ms 250 --max-events 100 --max-duration-seconds 60
```

`get-event` and `get-event-v2` report `NO_EVENT` and DMA errors separately.
Binary event data is never printed in full. A payload file is created only
when `--output` is given and a real event is received; it contains exactly
the declared event payload, byte for byte. `host_pull_soak` runs a bounded
host-pull soak loop over a single TCP connection and prints a human-readable
and optional atomic JSON summary.

## Python API

```python
from tools.cms_tcp_client import CmsClient, ResponseKind

with CmsClient("192.168.1.10") as cms:
    cms.preflight()
    response = cms.get_event()
    if response.kind is ResponseKind.EVENT:
        print(response.length, response.sha256)
```

The public v0.1 API permits only `-check`, `-h`, `-DRS4GetState`,
`-get_event`, and `-get_event_v2`. It never reconnects silently. Call
`reconnect()` explicitly after a failed connection.

## Liveness contract

`is_connected` means only that this client still owns an open local socket
object. It does not — and cannot — prove the board is alive: a dead peer, a
lost link, or a takeover by another client all leave `is_connected` True
until the next command fails. `preflight()` is the explicit active liveness
check; it round-trips a `-check` command. Every transport or protocol
failure (timeout, EOF, reset, malformed framing, length mismatch) closes the
socket and clears the connection state, after which commands raise
`ConnectionError` until an explicit `reconnect()`.

## Local mock

```powershell
python -m tools.cms_tcp_client.mock_server --event-count 1000
```

The server prints its localhost port. It is deterministic transport test
infrastructure, not a physical Zynq, lwIP, DMA, acquisition, or network
simulator.

Physical board validation remains pending. A future GUI or notebook must use
`CmsClient`; it must not duplicate socket or framing logic.

## Acquisition modes

- **One-shot request-response:** one host command requests one event and waits
  for its complete v2 response. Existing CLI and console one-shot actions use
  this path unchanged.
- **Continuous acquisition — host pull:** the web console performs a bounded
  loop of `request one v2 event -> await the complete response -> register
  metadata -> wait -> request the next event`. Exactly one HTTP/TCP operation
  is outstanding at a time. It requires an explicit successful preflight,
  finite count and duration limits, and is disabled until the operator starts
  it. Its conservative 100 ms interval floor prevents a tight host request
  loop. Payload saving is opt-in and uses deterministic, atomic, no-overwrite
  files; no default output directory is selected. Host request indices are not
  firmware sequence numbers and cannot detect events dropped before TCP
  transmission. DMA errors and transport errors fault the run; NO_EVENT follows
  the selected stop policy. No automatic reconnect occurs.
- **Future autonomous firmware streaming:** not implemented. That future mode
  would require a firmware protocol/state-machine mission and must not be
  confused with host pull.

The localhost mock remains request-response only. Its finite event count,
fragmentation/delay, configurable event size, DMA-error cadence, and EOF/RST/
malformed-v2 fault-after controls model repeated host requests, not
board-autonomous acquisition or streaming.

## Web console

```powershell
python -m tools.cms_tcp_client.mock_server --host 127.0.0.1 --port 65430 --scenario normal --event-size 4096 --event-count 20
python -m tools.cms_tcp_client.web_launcher --target-mode mock --target-host 127.0.0.1 --target-port 65430 --http-port 8765 --open-browser
```

`web_launcher.py` serves a loopback-only HTTP bridge (`web_api.py`) that
proxies to `CmsClient`; the browser never opens a raw TCP socket. Build the
frontend once (or after editing `web/src/*.ts`) with:

```powershell
cd tools/cms_tcp_client/web
npm install
npm run build
```

The console follows the operator workflow: **Configure → Connect →
Preflight → Commands → Event acquisition → Inspect → Visualize → Export**.

- The left workflow rail orders **Target configuration** (Step 1) before
  **Connection** (Step 2) and **Liveness** (Step 3); controls are disabled
  until their prerequisite step is satisfied.
- Socket connection state and liveness (preflight) are tracked and displayed
  separately — a connected socket does not imply a verified-live target.
- The inspector (right/bottom pane) has four tabs: **Summary** (structured
  result fields, full SHA-256 with copy-to-clipboard, exact download),
  **Visualizer**, **Raw bytes** (bounded hex dump), and **Operation log**
  (bounded to the most recent 500 rows, exportable as CSV or JSON —
  metadata only, payload bytes are never exported).
- Event bytes for the Raw bytes / Visualizer tabs are fetched on demand
  (only when that tab is opened for the current event), not automatically
  for every acquisition; at most 3 recent event buffers are cached
  in-memory and never persisted to `localStorage`.
- The rail and inspector panes are resized with the browser's native
  `resize` handles; pane widths/heights, the collapsed state of the
  inspector, and the active inspector tab persist to `localStorage` (with a
  **Reset layout** action) and degrade gracefully when storage is
  unavailable.
- **Visualizer boundaries:** the event payload's internal structure
  (channel count, sample width, endianness, header layout) is not verified
  anywhere in this codebase — only the outer length-framing is verified.
  Implemented visualizers therefore operate on raw bytes only: a bounded
  hex dump, a byte-value histogram, and a raw byte-value-by-index plot
  (explicitly labelled as raw bytes, not a waveform). A disabled
  "Channel waveform" entry documents the unsupported state
  ("Event decoding schema not yet verified.") rather than fabricating a
  decoded graph. New visualizers register in
  `web/src/visualizers/registry.ts` without touching the application shell.
- Continuous acquisition — host pull is explicit, bounded, and disabled by
  default. It does not add firmware sequence numbers, and the console never
  performs automatic reconnect or repeated preflight.
- Physical board validation is pending; the console has only been
  exercised against `MockZynqServer`.
