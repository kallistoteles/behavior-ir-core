"""Descriptive native session snapshots, without allocation or peak authority."""

COMPONENTS = ("state", "views", "history", "results")
QUANTITY_FIELDS = {"value", "unit", "scope", "method", "reason_if_unavailable"}
OFFSET_FIELDS = {
    "worker_start",
    "session_start",
    "acquisition_end",
    "last_output_end",
    "audit_end",
}
EVENT_FIELDS = {"boundary", "operation", "at_ns", "process_rss", "retained_components"}


def _u64(value):
    return type(value) is int and 0 <= value < 2**64


def _reason(value):
    return (
        isinstance(value, str)
        and 0 < len(value.encode("utf8")) <= 1024
        and bool(value.strip())
    )


def _quantity(value, scope, *, retained=False):
    if (
        not isinstance(value, dict)
        or set(value) != QUANTITY_FIELDS
        or value["unit"] != "bytes"
        or value["scope"] != scope
    ):
        raise ValueError("SessionResourceQuantity")
    if value["value"] is None:
        if value["method"] != "not-measured" or not _reason(
            value["reason_if_unavailable"]
        ):
            raise ValueError("SessionResourceUnavailableReason")
    elif (
        retained
        or not _u64(value["value"])
        or value["method"] != "proc-self-status-snapshot"
        or value["reason_if_unavailable"] is not None
    ):
        raise ValueError("SessionResourceMethodOrAllocationProxy")
    return value["value"]


def session_resource_summary_v2(report):
    """Validate complete boundaries; source/proof/measurement admission is separate."""
    if not isinstance(report, dict):
        raise ValueError("SessionResourceReport")
    required = {
        "completed_operations",
        "invalidation_before",
        "offsets",
        "resource_observations",
    }
    if not required.issubset(report):
        raise ValueError("SessionResourceMissingFields")
    length, invalidation = report["completed_operations"], report["invalidation_before"]
    if (
        type(length) is not int
        or not 1 <= length <= 128
        or (
            invalidation is not None
            and (type(invalidation) is not int or invalidation != length // 2 + 1)
        )
    ):
        raise ValueError("SessionResourceLengthOrInvalidation")
    offsets = report["offsets"]
    if (
        not isinstance(offsets, dict)
        or set(offsets) != OFFSET_FIELDS
        or not all(_u64(v) for v in offsets.values())
    ):
        raise ValueError("SessionResourceOffsets")
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
    if not worker <= start <= acquired <= output <= audit or start == output:
        raise ValueError("SessionResourceClockOrder")
    expected = [("acquisition", None)]
    for operation in range(1, length + 1):
        if operation == invalidation:
            expected.append(("reacquired", operation))
        expected.append(("operation", operation))
    expected += [("audit", None), ("released", None)]
    rows = report["resource_observations"]
    if not isinstance(rows, list) or len(rows) != len(expected):
        raise ValueError("SessionResourceBoundaryCount")
    previous = start
    observed, missing = [], set()
    for row, (boundary, operation) in zip(rows, expected, strict=True):
        if (
            not isinstance(row, dict)
            or set(row) != EVENT_FIELDS
            or row["boundary"] != boundary
            or row["operation"] != operation
            or (operation is not None and type(row["operation"]) is not int)
        ):
            raise ValueError("SessionResourceBoundaryOrder")
        at = row["at_ns"]
        if not _u64(at) or not previous <= at <= audit:
            raise ValueError("SessionResourceBoundaryClock")
        if (
            (boundary == "acquisition" and at > acquired)
            or (
                boundary in {"operation", "reacquired"} and not acquired <= at <= output
            )
            or (boundary in {"audit", "released"} and at < output)
        ):
            raise ValueError("SessionResourceBoundaryOutsideEndpoint")
        previous = at
        rss = _quantity(row["process_rss"], "worker-process-resident")
        if rss is None:
            missing.add(row["process_rss"]["reason_if_unavailable"])
        else:
            observed.append(rss)
        components = row["retained_components"]
        if not isinstance(components, dict) or set(components) != set(COMPONENTS):
            raise ValueError("SessionResourceComponents")
        for name in COMPONENTS:
            _quantity(components[name], f"session-retained-{name}", retained=True)
    return {
        "sample_count": len(rows),
        "observed_rss_sample_count": len(observed),
        "maximum_observed_process_rss_bytes": max(observed) if observed else None,
        "unavailable_reasons": sorted(missing),
        "exact_retained_allocation_bytes": None,
        "retained_allocation_reason_if_unavailable": "No exact per-component owned-allocation hook is installed; worker RSS includes other allocations and is not a substitute",
        "scope": "worker-process-resident boundary snapshots; not an exact peak or retained allocation",
    }
