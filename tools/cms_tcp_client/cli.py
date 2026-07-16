"""Command-line interface for the host-side CMS TCP client."""

import argparse
from pathlib import Path
import sys

from .client import CmsClient
from .protocol import ResponseKind


def positive_int(value):
    value = int(value)
    if value <= 0:
        raise argparse.ArgumentTypeError("must be greater than zero")
    return value


def nonnegative_int(value):
    value = int(value)
    if value < 0:
        raise argparse.ArgumentTypeError("must not be negative")
    return value


def positive_float(value):
    value = float(value)
    if value <= 0:
        raise argparse.ArgumentTypeError("must be greater than zero")
    return value


def parse_args(argv=None):
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--host", default="192.168.1.10")
    parser.add_argument("--port", type=positive_int, default=6543)
    parser.add_argument("--timeout", type=positive_float, default=10.0)
    parser.add_argument("--max-response-bytes", type=positive_int,
                        default=2 * 1024 * 1024)
    commands = parser.add_subparsers(dest="command", required=True)
    for name in ("preflight", "check", "help", "state"):
        commands.add_parser(name)
    for name in ("get-event", "get-event-v2"):
        event = commands.add_parser(name)
        event.add_argument("--output", type=Path)
        event.add_argument("--preview-bytes", type=nonnegative_int,
                           default=0)
    args = parser.parse_args(argv)
    if args.port > 65535:
        parser.error("--port must be at most 65535")
    return args


def print_text(response):
    if response.kind is not ResponseKind.TEXT:
        raise ValueError("expected text, got %s" % response.kind.value)
    print(response.payload.decode("utf-8", errors="replace"), end="")
    if response.payload and not response.payload.endswith(b"\n"):
        print()


def main(argv=None):
    args = parse_args(argv)
    client = CmsClient(args.host, args.port, args.timeout,
                       args.max_response_bytes)
    try:
        with client:
            if args.command == "preflight":
                client.preflight()
                print("PRECHECK OK %s:%d" % (args.host, args.port))
                return 0
            if args.command == "check":
                print_text(client.check())
                return 0
            if args.command == "help":
                print_text(client.get_help())
                return 0
            if args.command == "state":
                print_text(client.get_drs4_state())
                return 0

            if args.command == "get-event-v2":
                response = client.get_event_v2()
            else:
                response = client.get_event()
            if response.kind is ResponseKind.NO_EVENT:
                print("NO_EVENT")
                return 0
            if response.kind is ResponseKind.DMA_ERROR:
                print("DMA_ERROR code=%d" % response.dma_error_code,
                      file=sys.stderr)
                return 1
            if response.kind is ResponseKind.EMPTY:
                print("EMPTY", file=sys.stderr)
                return 1
            print("EVENT length=%d sha256=%s" %
                  (response.length, response.sha256))
            if args.preview_bytes:
                print("preview=%s" %
                      response.payload[:args.preview_bytes].hex())
            if args.output:
                args.output.write_bytes(response.payload)
                print("output=%s" % args.output)
            return 0
    except Exception as exc:
        prefix = "PRECHECK FAILED" if args.command == "preflight" else "ERROR"
        print("%s: %s" % (prefix, exc), file=sys.stderr)
        return 1


if __name__ == "__main__":
    sys.exit(main())
