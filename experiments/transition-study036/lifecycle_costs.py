"""Strict descriptive lifecycle summaries. Admission requires separate real gates."""

from statistics import median

FAMILIES = ("F-change", "F-unchanged", "F-invalidated")
LENGTHS = (1, 8, 32, 128)
ROLES = ("R", "GV")
ENDPOINT = "legacy-full-synchronized-memory"
FIELDS = {
    "family",
    "length",
    "role",
    "mode",
    "replicate",
    "subject",
    "endpoint",
    "session_id",
    "fresh_ground_id",
    "completed_operations",
    "invalidation_before",
    "reacquisition_ns",
    "offsets",
    "cold_worker",
    "original_equal",
    "treatment_checked",
    "partial",
    "retained_bytes",
}
OFFSETS = {
    "worker_start",
    "session_start",
    "acquisition_end",
    "last_output_end",
    "audit_end",
}
QUANTITY = {"value", "unit", "scope", "method", "reason_if_unavailable"}


def _u64(value):
    return type(value) is int and 0 <= value < 2**64


def _text(value, limit=256):
    return isinstance(value, str) and 0 < len(value.encode("utf8")) <= limit


def lifecycle_role_order_v2(cell_index, replicate):
    if (
        type(cell_index) is not int
        or cell_index not in range(12)
        or type(replicate) is not int
        or replicate not in range(3)
    ):
        raise ValueError("LifecycleRoleOrder")
    reverse = replicate == 1 or (replicate == 2 and cell_index % 2 == 1)
    return tuple(reversed(ROLES)) if reverse else ROLES


def _retained_quantity(quantity):
    if (
        not isinstance(quantity, dict)
        or set(quantity) != QUANTITY
        or quantity["unit"] != "bytes"
        or quantity["scope"] != "session-retained-owned"
    ):
        raise ValueError("LifecycleRetainedQuantity")
    if quantity["value"] is None:
        if quantity["method"] != "not-measured" or not _text(
            quantity["reason_if_unavailable"], 1024
        ):
            raise ValueError("LifecycleUnavailableReason")
    elif (
        not _u64(quantity["value"])
        or quantity["method"] != "streamed-owned-inventory"
        or quantity["reason_if_unavailable"] is not None
    ):
        raise ValueError("LifecycleRetainedMethod")


def _raw_totals(row):
    offsets = row["offsets"]
    if (
        not isinstance(offsets, dict)
        or set(offsets) != OFFSETS
        or not all(_u64(v) for v in offsets.values())
    ):
        raise ValueError("LifecycleOffsets")
    worker, start, acquired, output, audit = [
        offsets[key]
        for key in [
            "worker_start",
            "session_start",
            "acquisition_end",
            "last_output_end",
            "audit_end",
        ]
    ]
    if not worker <= start <= acquired <= output <= audit or output == start:
        raise ValueError("LifecycleEnclosingOffsets")
    if row["reacquisition_ns"] > output - start:
        raise ValueError("LifecycleReacquisitionOutsideSession")
    return dict(
        acquisition_ns=acquired - start,
        session_ns=output - start,
        session_with_audit_ns=audit - start,
        cold_first_session_ns=output - worker,
        cold_first_session_with_audit_ns=audit - worker,
        reacquisition_ns=row["reacquisition_ns"],
    )


def _distribution(values):
    return dict(median=median(values), minimum=min(values), maximum=max(values))


def _retention_summary(rows):
    quantities = [row["retained_bytes"] for row in rows]
    values = [q["value"] for q in quantities]
    if any(value is None for value in values):
        return dict(
            median=None,
            minimum=None,
            maximum=None,
            unit="bytes",
            scope="session-retained-owned",
            reason="At least one timing sample has no retained-owned inventory.",
            unavailable_reasons=sorted(
                {q["reason_if_unavailable"] for q in quantities if q["value"] is None}
            ),
        )
    return {
        **_distribution(values),
        "unit": "bytes",
        "scope": "session-retained-owned",
        "reason": None,
    }


def lifecycle_summary_v2(records, *, subject):
    """Require the entire frozen matrix; never stitch partial session durations."""
    if not isinstance(records, list) or not _text(subject):
        raise ValueError("LifecycleSubject")
    expected = {
        (family, length, role, mode, replicate)
        for family in FAMILIES
        for length in LENGTHS
        for role in ROLES
        for mode, replicates in [("timing", range(3)), ("diagnostic", [0])]
        for replicate in replicates
    }
    indexed, totals = {}, {}
    session_ids, ground_ids = set(), set()
    for row in records:
        if not isinstance(row, dict) or set(row) != FIELDS:
            raise ValueError("LifecycleFields")
        if (
            not all(
                _text(row[key])
                for key in ["family", "role", "mode", "session_id", "fresh_ground_id"]
            )
            or type(row["length"]) is not int
            or type(row["replicate"]) is not int
        ):
            raise ValueError("LifecycleSlotTypes")
        key = tuple(
            row[field] for field in ["family", "length", "role", "mode", "replicate"]
        )
        if (
            key not in expected
            or key in indexed
            or row["subject"] != subject
            or row["endpoint"] != ENDPOINT
            or row["session_id"] in session_ids
            or row["fresh_ground_id"] in ground_ids
            or type(row["completed_operations"]) is not int
            or row["completed_operations"] != row["length"]
            or row["cold_worker"] is not True
            or row["partial"] is not False
            or row["original_equal"] is not True
            or row["treatment_checked"] is not True
            or not _u64(row["reacquisition_ns"])
        ):
            raise ValueError("LifecycleSlotOrIncompleteSession")
        if row["family"] == "F-invalidated":
            if (
                type(row["invalidation_before"]) is not int
                or row["invalidation_before"] != row["length"] // 2 + 1
                or row["reacquisition_ns"] == 0
            ):
                raise ValueError("LifecycleInvalidation")
        elif row["invalidation_before"] is not None or row["reacquisition_ns"] != 0:
            raise ValueError("LifecycleUnexpectedInvalidation")
        _retained_quantity(row["retained_bytes"])
        totals[key] = _raw_totals(row)
        indexed[key] = row
        session_ids.add(row["session_id"])
        ground_ids.add(row["fresh_ground_id"])
    if set(indexed) != expected:
        raise ValueError("LifecycleMissingSlots")
    cells = {}
    for family in FAMILIES:
        for length in LENGTHS:
            roles = {}
            for role in ROLES:
                keys = [(family, length, role, "timing", n) for n in range(3)]
                roles[role] = {
                    field: _distribution([totals[key][field] for key in keys])
                    for field in totals[keys[0]]
                }
                roles[role]["retained_bytes"] = _retention_summary(
                    [indexed[key] for key in keys]
                )
            reference = roles["R"]["session_with_audit_ns"]
            candidate = roles["GV"]["session_with_audit_ns"]
            roles["GV"]["with_audit_ratio_to_R"] = (
                candidate["median"] / reference["median"]
            )
            roles["GV"]["with_audit_range_relation_to_R"] = (
                "strictly_lower"
                if candidate["maximum"] < reference["minimum"]
                else "strictly_higher"
                if candidate["minimum"] > reference["maximum"]
                else "overlap_inconclusive"
            )
            cells[f"{family}/L{length}"] = roles
    payback = {}
    for family in FAMILIES:
        observed = [
            length
            for length in LENGTHS
            if cells[f"{family}/L{length}"]["GV"]["session_with_audit_ns"]["median"]
            < cells[f"{family}/L{length}"]["R"]["session_with_audit_ns"]["median"]
        ]
        payback[family] = dict(
            first_observed_length=observed[0] if observed else None,
            status="observed_at_tested_length" if observed else "not_observed",
            scope="tested_lengths_only",
            endpoint="direct_session_with_required_original_audit",
        )
    return dict(
        timing_count=72,
        diagnostic_count=24,
        cells=cells,
        observed_payback=payback,
        endpoint=ENDPOINT,
        subject=subject,
        statistical_scope="descriptive_three_observations",
    )
