#!/usr/bin/env python3
"""Acceptance tests T1-T7 for TCP stabilization patch #1.

Usage: python tcp_acceptance_test.py [board_ip]   (default 192.168.1.10)
Board must be flashed and running MB40ch_wTCP_server.
T8 (no busy-wait) is structural: verified by code inspection + board
console staying responsive during T3; it is not automated here.
"""
import socket
import struct
import sys
import time

HOST = sys.argv[1] if len(sys.argv) > 1 else "192.168.1.10"
PORT = 6543
TERM = b"!#\n"
GOLDEN_H = "golden_h_reply.bin"  # created on first run, compared afterwards


def connect(timeout=10):
    return socket.create_connection((HOST, PORT), timeout=timeout)


def read_until_term(s, timeout=10):
    s.settimeout(timeout)
    data = b""
    while TERM not in data:
        chunk = s.recv(65536)
        if not chunk:
            raise ConnectionError("EOF before terminator")
        data += chunk
    return data


def cmd(s, c, timeout=10):
    s.sendall(c)
    return read_until_term(s, timeout)


def t1_single_event():
    with connect() as s:
        r = cmd(s, b"-get_event", timeout=5)
        assert r.count(TERM) == 1, "terminator not exactly once"
        r2 = cmd(s, b"-check")
        assert r2.endswith(TERM), "-check after event failed"


def t2_large_payload():
    with connect() as s:
        r = cmd(s, b"-get_event", timeout=10)
        assert r.endswith(TERM) and r.count(TERM) == 1
        print("    payload bytes: %d" % (len(r) - len(TERM)))


def t3_slow_receiver():
    with connect() as s:
        s.sendall(b"-get_event")
        time.sleep(10)  # do not read: receive window fills to zero
        r = read_until_term(s, timeout=15)
        assert r.endswith(TERM) and r.count(TERM) == 1


def t4_mid_transfer_rst():
    s = connect()
    s.sendall(b"-get_event")
    s.settimeout(10)
    got = 0
    while got < 4096:
        got += len(s.recv(4096))
    s.setsockopt(socket.SOL_SOCKET, socket.SO_LINGER, struct.pack("ii", 1, 0))
    s.close()  # RST
    time.sleep(2)
    with connect() as s2:
        r = cmd(s2, b"-check")
        assert r.endswith(TERM), "reconnect after RST failed"


def t5_reconnect_endurance():
    for i in range(50):
        with connect() as s:
            r = cmd(s, b"-DRS4GetState")
            assert r.endswith(TERM), "iteration %d failed" % i


def t6_takeover():
    a = connect()
    b = connect()
    r = cmd(b, b"-check")
    assert r.endswith(TERM), "commands on new connection failed"
    a.settimeout(5)
    try:
        dead = a.recv(1024) == b""  # EOF
    except (ConnectionResetError, ConnectionAbortedError):
        dead = True  # RST also acceptable
    assert dead, "old connection still alive after takeover"
    a.close()
    b.close()


def t7_wire_compat():
    with connect() as s:
        r = cmd(s, b"-h")
    try:
        golden = open(GOLDEN_H, "rb").read()
        assert r == golden, "-h reply differs from golden capture"
    except FileNotFoundError:
        open(GOLDEN_H, "wb").write(r)
        print("    golden captured (run pre-patch build first for a real compare)")


TESTS = [t1_single_event, t2_large_payload, t3_slow_receiver,
         t4_mid_transfer_rst, t5_reconnect_endurance, t6_takeover,
         t7_wire_compat]

if __name__ == "__main__":
    failed = 0
    for t in TESTS:
        name = t.__name__
        try:
            t()
            print("PASS %s" % name)
        except Exception as e:
            failed += 1
            print("FAIL %s: %s" % (name, e))
        time.sleep(0.5)
    print("\n%d/%d passed" % (len(TESTS) - failed, len(TESTS)))
    sys.exit(1 if failed else 0)
