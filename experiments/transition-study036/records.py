"""Bounded strict036 evidence records, never execution authority."""

import json
import math
import re
from pathlib import PurePosixPath

CONTROL = 4 * 1024**2
DOCUMENT = 64 * 1024**2
MANIFEST = 32 * 1024**2
REQUIRED = {
    "format",
    "campaign_id",
    "revision_id",
    "case_id",
    "role",
    "outcome",
    "product_adoption",
    "input_refs",
}
OPTIONAL = {
    "reason",
    "blocking_ref",
    "evidence_refs",
    "details",
    "obligations",
    "measurements",
    "prerequisites",
    "clock",
    "source_context",
    "assessment",
    "status",
    "requirements",
    "criteria",
}
FORMATS = {
    "core036.gate.v1",
    "core036.assessment.v1",
    "core036.operation.v1",
    "core036.session.v1",
    "core036.correspondence.v1",
    "core036.reconstruction.v1",
}
OUTCOMES = {
    "met",
    "unmet",
    "blocked",
    "completed",
    "failed",
    "resource_stopped",
    "not_run",
    "equal",
    "mismatch",
    "not_evaluated",
    "proved_for_declared_subject",
    "checked_conformance_only",
    "explicit_external_premise",
    "unestablished",
    "refuted",
}


def pairs(items):
    d = {}
    for k, v in items:
        if k in d:
            raise ValueError("DuplicateKey")
        d[k] = v
    return d


def loads(raw, limit=CONTROL):
    if (
        not isinstance(raw, (bytes, str))
        or len(raw.encode() if isinstance(raw, str) else raw) > limit
    ):
        raise ValueError("ByteBound")
    try:
        return json.loads(
            raw,
            object_pairs_hook=pairs,
            parse_constant=lambda _: (_ for _ in ()).throw(
                ValueError("NonfiniteNumber")
            ),
        )
    except (UnicodeError, json.JSONDecodeError, RecursionError) as e:
        raise ValueError("InvalidJSON") from e


def validate_ref(ref):
    if (
        not isinstance(ref, dict)
        or set(ref) != {"path", "bytes", "sha256"}
        or type(ref["bytes"]) is not int
        or ref["bytes"] < 0
        or not isinstance(ref["sha256"], str)
        or not re.fullmatch("[a-f0-9]{64}", ref["sha256"])
    ):
        raise ValueError("ReferenceFields")
    name = ref["path"]
    if (
        not isinstance(name, str)
        or not name
        or len(name.encode()) > 1024
        or "\\" in name
    ):
        raise ValueError("ReferencePath")
    p = PurePosixPath(name)
    if p.is_absolute() or ".." in p.parts or str(p) != name:
        raise ValueError("ReferencePath")
    return ref


def validate_record(d):
    if (
        not isinstance(d, dict)
        or not REQUIRED <= d.keys()
        or d.keys() - REQUIRED - OPTIONAL
    ):
        raise ValueError("RecordFields")
    if (
        d["format"] not in FORMATS
        or d["outcome"] not in OUTCOMES
        or d["product_adoption"] != "unactivated"
    ):
        raise ValueError("RecordVersionOrOutcome")
    for k in ["campaign_id", "revision_id", "case_id", "role"]:
        if not isinstance(d[k], str) or not 0 < len(d[k].encode()) <= 256:
            raise ValueError("IDBound")
    if not isinstance(d["input_refs"], list) or len(d["input_refs"]) > 20000:
        raise ValueError("ReferenceBound")
    for ref in d["input_refs"]:
        validate_ref(ref)
    if "blocking_ref" in d:
        validate_ref(d["blocking_ref"])
    if d["outcome"] in {"blocked", "not_run", "resource_stopped", "unestablished"} and (
        not isinstance(d.get("reason"), str)
        or not d["reason"]
        or not d.get("blocking_ref")
    ):
        raise ValueError("MissingBlocker")
    return d


def validate_workload(d):
    if (
        set(d) != {"N", "H", "requests"}
        or type(d["N"]) is not int
        or not 2 <= d["N"] <= 256
        or type(d["H"]) is not int
        or not 0 <= d["H"] <= 128
        or not isinstance(d["requests"], list)
        or len(d["requests"]) > 128
    ):
        raise ValueError("WorkloadBound")
    return d


def quantity(value, unit, reason="", scope="declared", method="direct"):
    if value is None and not reason:
        raise ValueError("UnavailableReason")
    if value is not None and (
        type(value) not in {int, float} or value < 0 or not math.isfinite(value)
    ):
        raise ValueError("Quantity")
    return {
        "value": value,
        "unit": unit,
        "scope": scope,
        "method": method,
        "reason_if_unavailable": reason if value is None else None,
    }


U64_MAX = 2**64 - 1
V2_COMMON = {
    "format",
    "work_id",
    "record_id",
    "specification_ref",
    "source_subject_ref",
    "inputs",
    "product_adoption",
    "outcome",
}
V2_FORMATS = {
    f"core036.{kind}.v2"
    for kind in (
        "gate",
        "assessment",
        "operation",
        "session",
        "correspondence",
        "reconstruction",
        "work",
        "attempt",
        "checkpoint",
        "source",
        "build",
        "request",
        "profile",
        "baseline",
        "workload",
        "validation",
        "completion",
        "resource",
        "event",
    )
}
V2_OPERATIONAL = {
    "declared",
    "running",
    "completed",
    "succeeded",
    "failed",
    "resource_stopped",
    "interrupted",
    "closed",
    "not_run",
}
V2_ACCEPTANCE = {"met", "unmet", "blocked"}


def u64(value):
    if type(value) is not int or not 0 <= value <= U64_MAX:
        raise ValueError("Unsigned64")
    return value


def identifier(value):
    if not isinstance(value, str) or not 0 < len(value.encode("utf-8")) <= 256:
        raise ValueError("V2IDBound")
    return value


def validate_ref_v2(ref):
    if not isinstance(ref, dict) or set(ref) != {"root_id", "path", "bytes", "sha256"}:
        raise ValueError("V2ReferenceFields")
    identifier(ref["root_id"])
    validate_ref({k: ref[k] for k in ("path", "bytes", "sha256")})
    u64(ref["bytes"])
    if "\0" in ref["path"]:
        raise ValueError("V2ReferencePath")
    return ref


def loads_v2(raw, limit=CONTROL):
    """Bound bytes/depth before allocation; preserve finite original numbers."""
    if type(limit) is not int or not 0 < limit <= DOCUMENT:
        raise ValueError("V2DocumentLimit")
    if not isinstance(raw, (bytes, str)):
        raise ValueError("V2JSONType")
    try:
        data = raw.encode("utf-8") if isinstance(raw, str) else raw
        if len(data) > limit:
            raise ValueError("ByteBound")
        text = data.decode("utf-8")
        depth = 0
        quoted = escaped = False
        for character in text:
            if quoted:
                if escaped:
                    escaped = False
                elif character == "\\":
                    escaped = True
                elif character == '"':
                    quoted = False
            elif character == '"':
                quoted = True
            elif character in "[{":
                depth += 1
                if depth > 128:
                    raise ValueError("V2DepthBound")
            elif character in "]}":
                depth -= 1
                if depth < 0:
                    raise ValueError("V2JSONDepth")

        def finite_float(token):
            value = float(token)
            if not math.isfinite(value):
                raise ValueError("NonfiniteNumber")
            return value

        def reject_constant(_):
            raise ValueError("NonfiniteNumber")

        return json.loads(
            text,
            object_pairs_hook=pairs,
            parse_constant=reject_constant,
            parse_float=finite_float,
        )
    except (UnicodeError, json.JSONDecodeError, RecursionError) as exc:
        raise ValueError("InvalidJSON") from exc


def validate_v2_record(data, *, extra_fields=frozenset(), source_required=True):
    """Validate the envelope; callers own the typed extra-field schema.

    Parsing a gate's claims never yields a checked gate or semantic authority.
    Source-specific modules validate their explicitly declared extra fields.
    """
    required = V2_COMMON if source_required else V2_COMMON - {"source_subject_ref"}
    allowed = required | {"reason", "blocking_ref"} | set(extra_fields)
    if (
        not isinstance(data, dict)
        or not required <= data.keys()
        or data.keys() - allowed
    ):
        raise ValueError("V2RecordFields")
    if (
        not isinstance(data["format"], str)
        or data["format"] not in V2_FORMATS
        or data["product_adoption"] != "unactivated"
    ):
        raise ValueError("V2RecordVersion")
    for key in ("work_id", "record_id"):
        identifier(data[key])
    for key in ("specification_ref", "source_subject_ref", "blocking_ref"):
        if key in data:
            validate_ref_v2(data[key])
    refs = data["inputs"]
    if not isinstance(refs, list) or len(refs) > 20000:
        raise ValueError("V2ReferenceBound")
    for ref in refs:
        validate_ref_v2(ref)
    outcome = data["outcome"]
    if (
        not isinstance(outcome, dict)
        or set(outcome) != {"operational", "acceptance"}
        or not isinstance(outcome["operational"], str)
        or not isinstance(outcome["acceptance"], str)
        or outcome["operational"] not in V2_OPERATIONAL
        or outcome["acceptance"] not in V2_ACCEPTANCE
    ):
        raise ValueError("V2Outcome")
    unfinished = outcome["acceptance"] != "met" or outcome["operational"] not in {
        "completed",
        "succeeded",
        "closed",
    }
    if unfinished and (
        not isinstance(data.get("reason"), str)
        or not data["reason"].strip()
        or "blocking_ref" not in data
    ):
        raise ValueError("V2MissingBlocker")
    return data


def validate_v2_workload(data):
    validate_workload(data)
    if not data["requests"]:
        raise ValueError("V2EmptyRequestStream")
    return data


def quantity_v2(value, unit, *, scope, method, reason=""):
    if not all(isinstance(x, str) and x.strip() for x in (unit, scope, method)):
        raise ValueError("V2QuantityScope")
    if value is None:
        if not isinstance(reason, str) or not reason.strip():
            raise ValueError("V2UnavailableReason")
    elif unit in {"bytes", "ns", "rows", "records", "write_calls", "visits"}:
        u64(value)
    elif type(value) not in {int, float} or value < 0 or not math.isfinite(value):
        raise ValueError("V2Quantity")
    return {
        "value": value,
        "unit": unit,
        "scope": scope,
        "method": method,
        "reason_if_unavailable": reason if value is None else None,
    }
