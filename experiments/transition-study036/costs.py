"""Descriptive complete-operation tables. These do not establish native proof."""

from statistics import median

ROLES = ("R", "GV", "B")
CELLS = ("D1", "D2", "D3", "D4", "D5")
ENDPOINT = "legacy-full-synchronized-memory"
FIELDS = {
    "cell",
    "role",
    "mode",
    "replicate",
    "subject",
    "endpoint",
    "primary_ns",
    "continuation_ns",
    "cycle_ns",
    "original_equal",
    "treatment_checked",
}


def operation_role_order_v2(replicate):
    if type(replicate) is not int or replicate not in range(3):
        raise ValueError("OperationReplicate")
    return ROLES[replicate:] + ROLES[:replicate]


def _distribution(values):
    return dict(median=median(values), minimum=min(values), maximum=max(values))


def operation_summary_v2(records, *, subject):
    if not isinstance(subject, str) or not subject or not isinstance(records, list):
        raise ValueError("OperationSummarySubject")
    expected = {
        (c, r, m, n)
        for c in CELLS
        for r in ROLES
        for m, ns in [("timing", range(3)), ("diagnostic", [0])]
        for n in ns
    }
    indexed = {}
    for row in records:
        if not isinstance(row, dict) or set(row) != FIELDS:
            raise ValueError("OperationSummaryFields")
        if (
            not all(isinstance(row[k], str) for k in ("cell", "role", "mode"))
            or type(row["replicate"]) is not int
        ):
            raise ValueError("OperationSummarySlotType")
        key = (row["cell"], row["role"], row["mode"], row["replicate"])
        if (
            key not in expected
            or key in indexed
            or row["subject"] != subject
            or row["endpoint"] != ENDPOINT
            or row["original_equal"] is not True
            or row["treatment_checked"] is not True
            or any(
                type(row[k]) is not int or not 0 < row[k] < 2**64
                for k in ("primary_ns", "continuation_ns", "cycle_ns")
            )
            or row["cycle_ns"] < row["primary_ns"] + row["continuation_ns"]
        ):
            raise ValueError("OperationSummarySlotOrRawTotal")
        indexed[key] = row
    if set(indexed) != expected:
        raise ValueError("OperationSummaryMissingSlots")
    cells = {}
    for cell in CELLS:
        roles = {}
        for role in ROLES:
            raw = [indexed[cell, role, "timing", n] for n in range(3)]
            roles[role] = {
                key: _distribution([row[key] for row in raw])
                for key in ("primary_ns", "continuation_ns", "cycle_ns")
            }
        reference = roles["R"]["primary_ns"]
        for role in ROLES:
            current = roles[role]["primary_ns"]
            roles[role]["primary_ratio_to_R"] = current["median"] / reference["median"]
            roles[role]["range_relation_to_R"] = (
                "strictly_lower"
                if current["maximum"] < reference["minimum"]
                else "strictly_higher"
                if current["minimum"] > reference["maximum"]
                else "overlap_inconclusive"
            )
        cells[cell] = roles
    return dict(
        timing_count=45,
        diagnostic_count=15,
        cells=cells,
        endpoint=ENDPOINT,
        subject=subject,
        statistical_scope="descriptive_three_observations",
    )


def select_legacy_v2(summary):
    """Prospective exact-tie rule; callers must first validate the raw evidence."""
    gv = summary["cells"]["D3"]["GV"]["primary_ns"]["median"]
    buffered = summary["cells"]["D3"]["B"]["primary_ns"]["median"]
    return "GV" if gv <= buffered else "B"
