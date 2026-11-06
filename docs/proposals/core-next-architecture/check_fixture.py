#!/usr/bin/env python3
"""Independent expected outcomes and from-inventory root reconstruction, not K."""
import hashlib
import json
import struct
from pathlib import Path

HERE = Path(__file__).resolve().parent
MAGIC = b"core033.semantic.v1\0"

def head(tag):
    return MAGIC + struct.pack("<H", tag)

def text(value):
    raw = value.encode()
    return struct.pack("<I", len(raw)) + raw

def key(identifier):
    return head(1) + text("E") + text(identifier)

def leaf(kind, identifier="", x=0, occupied=False):
    raw = head(80) + bytes([kind]) + key(identifier)
    if kind == 1:
        raw += head(2) + struct.pack("<q", x) + text("")
    positive = not occupied or kind == 2 or x > 0
    raw += struct.pack("<Q", int(occupied)) + bytes([positive])
    return hashlib.sha256(raw).digest(), int(occupied), positive, True

def branch(kind, depth, left, right):
    count = left[1] + right[1]
    positive = left[2] and right[2]
    covered = left[3] and right[3]
    raw = (head(81) + bytes([kind]) + struct.pack("<H", depth)
           + left[0] + right[0] + struct.pack("<QQQ", left[1], right[1], count)
           + bytes([positive, covered]))
    return hashlib.sha256(raw).digest(), count, positive, covered

def root(kind, inventory):
    empty = {256: leaf(kind)}
    for depth in reversed(range(256)):
        empty[depth] = branch(kind, depth, empty[depth+1], empty[depth+1])
    entries = [(int.from_bytes(hashlib.sha256(key(k)).digest(), "big"), k, v)
               for k, v in inventory.items()]
    def descend(depth, rows):
        if not rows:
            return empty[depth]
        if depth == 256:
            assert len(rows) == 1, "address collision"
            _, identifier, value = rows[0]
            return leaf(kind, identifier, value, True)
        mask = 1 << (255-depth)
        return branch(kind, depth,
                      descend(depth+1, [r for r in rows if not r[0] & mask]),
                      descend(depth+1, [r for r in rows if r[0] & mask]))
    return descend(0, entries)[0].hex()

def check():
    rows = [json.loads(line) for line in (HERE / "reference-fixture.jsonl").read_text().splitlines()]
    assert rows[0]["kind"] == "module"
    cases = rows[1:]
    assert len(cases) == 6
    expected = [
        ("create-b", "ALLOW", None), ("set-a-3", "ALLOW", None),
        ("emit", "ALLOW", None), ("create-c-at-cap", "DENY", "INVARIANT_VIOLATED"),
        ("set-a-0", "DENY", "CONSTRAINT_VIOLATED"),
        ("reuse-b-at-cap", "ENTITY_ID_ALREADY_USED", "ENTITY_ID_ALREADY_USED"),
    ]
    live, used = {"a": 1}, {"a": 0}
    for case, (name, verdict, reason) in zip(cases, expected):
        assert case["name"] == name
        assert case["before_live"] == root(1, live)
        assert case["before_used"] == root(2, used)
        decision = case["reference_decision"]
        assert decision["result"] == case["expected_verdict"] == verdict
        assert decision["reasons"] == ([] if reason is None else [{"code": reason}])
        intents = decision["commands"]["intents"]
        if verdict == "ALLOW":
            assert len(intents) == 2 and intents[0] == intents[1]
            assert intents[0]["payload"] == {"kind": "process"}
        else:
            assert intents == [] and decision["changes"] == []
            assert decision.get("lifecycle", []) == []
        if name == "create-b":
            assert decision["lifecycle"] == [{"entity":"E", "id":"b", "op":"create", "value":{"id":"b", "padding":"", "x":1}}]
            live["b"], used["b"] = 1, 0
        elif name == "set-a-3":
            assert decision["changes"] == [{"entity":"E", "field":"x", "id":"a", "old":1, "new":3, "param":"e"}]
            live["a"] = 3
        elif name == "emit":
            assert decision["changes"] == [] and decision.get("lifecycle", []) == []
        assert case["after_live"] == root(1, live)
        assert case["after_used"] == root(2, used)
        assert case["count"] == len(live) == 2
    print("PASS: six reference results, ordered duplicate commands, refusal precedence, and 24 independent full-depth roots")
    print("NOT ESTABLISHED: authenticated origin, K/circuit correspondence, history certificate, prefix verification, durability or latency")

if __name__ == "__main__":
    check()
