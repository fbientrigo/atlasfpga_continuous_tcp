# CMS TCP client

This directory contains host-side software for the Charge Monitoring System.
It is not compiled into the FPGA image or Zynq ELF and does not change board
acquisition, DMA, VETO, trigger, or continuous-streaming behavior.

The legacy firmware protocol ends each response with `!#\n`. The client
extracts the first terminator and preserves later bytes for the next command.
Consequently, a legacy `-get_event` payload containing the complete terminator
byte sequence cannot be represented unambiguously. Production continuous
streaming is not supported.

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
```

`get-event` and `get-event-v2` report `NO_EVENT` and DMA errors separately.
Binary event data is never printed in full. A payload file is created only
when `--output` is given and a real event is received; it contains exactly
the declared event payload, byte for byte.

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
