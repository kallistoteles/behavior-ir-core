"""Untrusted research metadata. Parsing/hashing does not confer proof authority."""

import hashlib
import json
import os
from pathlib import Path
import re

DOCUMENT_BOUND = 16 * 1024**2
PACKET_BOUND = 64 * 1024**2
CORE_RECORD_BOUND = 8 * 1024**2
DEPTH_BOUND = 128
ID_BOUND = 128
CASE_BOUND = 4096
OBSERVATION_BOUND = 16384


def _unique(pairs):
    out = {}
    for key, value in pairs:
        if key in out:
            raise ValueError("DuplicateKey")
        out[key] = value
    return out


def _number(_):
    raise ValueError("NonIntegerNumber")


def _integer(raw):
    if len(raw) > 21 or raw == "-0":
        raise ValueError("IntegerWireBound")
    value = int(raw)
    if not -(2**63) <= value < 2**64:
        raise ValueError("IntegerWireBound")
    return value


def strict_loads(raw, limit=DOCUMENT_BOUND):
    if isinstance(raw, str):
        raw = raw.encode("utf-8")
    if len(raw) > limit:
        raise ValueError("ByteBound")
    depth = 0
    string = False
    escaped = False
    for b in raw:
        if string:
            if escaped:
                escaped = False
            elif b == 92:
                escaped = True
            elif b == 34:
                string = False
        elif b == 34:
            string = True
        elif b in (91, 123):
            depth += 1
            if depth > DEPTH_BOUND:
                raise ValueError("DepthBound")
        elif b in (93, 125):
            depth = max(0, depth - 1)
    value = json.loads(
        raw.decode("utf-8"),
        object_pairs_hook=_unique,
        parse_float=_number,
        parse_constant=_number,
        parse_int=_integer,
    )
    pending = [value]
    while pending:
        v = pending.pop()
        if isinstance(v, str):
            v.encode("utf-8", errors="strict")
        elif isinstance(v, list):
            pending.extend(v)
        elif isinstance(v, dict):
            pending.extend(v)
            pending.extend(v.values())
    return value


OUTCOMES = {
    "format": ["core035.observation.v1"],
    "semantic": ["equal", "mismatch", "not_evaluated"],
    "mathematical": [
        "checked_for_fragment",
        "refuted",
        "unsupported",
        "unestablished",
        "not_run",
    ],
    "operational": [
        "completed",
        "build_failed",
        "tool_failed",
        "resource_stopped",
        "interrupted",
        "invalid_archive",
        "not_run",
    ],
    "cost": ["measured", "not_measured", "not_comparable", "confounded"],
    "candidate": ["supported_for_fragment", "conditional", "rejected", "undetermined"],
    "product_adoption": ["unactivated"],
}
OPTIONAL = {
    "case_id",
    "sample_id",
    "attempt_id",
    "role",
    "treatment",
    "mode",
    "input_manifest",
    "prepared_manifest",
    "subject",
    "resources",
    "claim_refs",
    "premise_refs",
    "artifact_refs",
    "proof_refs",
    "correspondence_refs",
    "diagnostics",
    "stop_reason",
    "control_result",
}


def validate_outcomes(record):
    if not isinstance(record, dict) or set(record) - set(OUTCOMES) - OPTIONAL:
        raise ValueError("UnknownField")
    for k, values in OUTCOMES.items():
        if record.get(k) not in values:
            raise ValueError("OutcomeEnum:" + k)
    resources = record.get("resources")
    if not isinstance(resources, dict):
        raise ValueError("ResourcesRequired")
    for k, v in resources.items():
        if v is None and (
            not isinstance(resources.get(k + "_reason"), str)
            or not resources[k + "_reason"]
        ):
            raise ValueError("UnknownResourceReason")
    for k in ["case_id", "sample_id", "attempt_id", "role"]:
        if k in record and (
            not isinstance(record[k], str)
            or not 0 < len(record[k].encode()) <= ID_BOUND
        ):
            raise ValueError("IdentifierBound")
    for k, values in [
        ("treatment", ["R", "G", "V", "GV"]),
        ("mode", ["timing", "work"]),
        (
            "control_result",
            [
                "targeted_rejection",
                "unexpected_acceptance",
                "unexpected_rejection",
                "operationally_unresolved",
                "not_applicable",
            ],
        ),
    ]:
        if k in record and record[k] not in values:
            raise ValueError("OutcomeEnum:" + k)
    if (
        record["mathematical"] in ["checked_for_fragment", "refuted"]
        and record["operational"] != "completed"
    ):
        raise ValueError("ProofOperationalMismatch")
    if record["mathematical"] == "checked_for_fragment":
        for k in ["proof_refs", "premise_refs", "artifact_refs"]:
            if not isinstance(record.get(k), list) or not record[k]:
                raise ValueError("EvidenceRequired")
    for k in ["artifact_refs", "proof_refs", "claim_refs", "premise_refs"]:
        if k in record and (
            not isinstance(record[k], list) or len(record[k]) > OBSERVATION_BOUND
        ):
            raise ValueError("ObservationBound")


def validate_graph(records):
    colors = {}
    for root in records:
        stack = [(root, False)]
        while stack:
            key, leaving = stack.pop()
            if not isinstance(key, str) or not 0 < len(key.encode()) <= ID_BOUND:
                raise ValueError("IdentifierBound")
            if key not in records:
                raise ValueError("DanglingReference")
            if leaving:
                colors[key] = 2
                continue
            if colors.get(key) == 1:
                raise ValueError("ReferenceCycle")
            if colors.get(key) == 2:
                continue
            colors[key] = 1
            stack.append((key, True))
            stack.extend((k, False) for k in reversed(records[key]))


def semantic_digest(record):
    if not isinstance(record, dict):
        raise ValueError("ObjectRequired")
    semantic = {
        k: v
        for k, v in record.items()
        if k
        not in {"diagnostics", "treatment", "mode", "resources", "timings", "worker"}
    }
    raw = json.dumps(
        semantic,
        sort_keys=True,
        ensure_ascii=False,
        separators=(",", ":"),
        allow_nan=False,
    ).encode()
    strict_loads(raw)
    return hashlib.sha256(b"core035.research.v1\0" + raw).hexdigest()
