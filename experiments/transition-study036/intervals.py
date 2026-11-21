"""Exact operation-local interval arithmetic; no cross-sample estimates."""

PHASES = frozenset(
    {
        "complete",
        "unclassified",
        "semantic",
        "commit",
        "output",
        "encoding",
        "acquisition",
        "property",
        "history",
        "versions",
        "views",
        "maintenance",
        "comparison",
        "cleanup",
    }
)
FIELDS = frozenset(
    {"span_id", "parent_id", "start_ns", "end_ns", "phase", "execution_scope"}
)
MAX_U64 = 2**64 - 1


def reconcile_interval_tree_v2(spans, *, complete_ns, execution_scope):
    if type(complete_ns) is not int or not 0 <= complete_ns <= MAX_U64:
        raise ValueError("IntervalTotalUnitOrRange")
    if not isinstance(execution_scope, str) or not execution_scope:
        raise ValueError("IntervalExecutionScope")
    if not isinstance(spans, list) or not spans or len(spans) > 100_000:
        raise ValueError("IntervalTreeBound")
    nodes = {}
    for row in spans:
        if not isinstance(row, dict) or set(row) != FIELDS:
            raise ValueError("IntervalFields")
        identifier = row["span_id"]
        if (
            not isinstance(identifier, str)
            or not identifier
            or identifier in nodes
            or row["execution_scope"] != execution_scope
            or not isinstance(row["phase"], str)
            or row["phase"] not in PHASES
            or (
                row["parent_id"] is not None
                and (not isinstance(row["parent_id"], str) or not row["parent_id"])
            )
            or any(
                type(row[k]) is not int or not 0 <= row[k] <= MAX_U64
                for k in ("start_ns", "end_ns")
            )
            or row["start_ns"] > row["end_ns"]
        ):
            raise ValueError("IntervalValueOrClock")
        nodes[identifier] = row
    roots = [r for r in spans if r["parent_id"] is None]
    if (
        len(roots) != 1
        or roots[0]["phase"] != "complete"
        or roots[0]["start_ns"] != 0
        or roots[0]["end_ns"] != complete_ns
    ):
        raise ValueError("IntervalRoot")
    root = roots[0]["span_id"]
    children = {key: [] for key in nodes}
    for key, row in nodes.items():
        if key == root:
            continue
        parent = nodes.get(row["parent_id"])
        if (
            parent is None
            or row["phase"] == "complete"
            or row["start_ns"] < parent["start_ns"]
            or row["end_ns"] > parent["end_ns"]
        ):
            raise ValueError("IntervalParentOrContainment")
        children[parent["span_id"]].append(key)
    seen, pending = set(), [root]
    while pending:
        key = pending.pop()
        if key in seen:
            raise ValueError("IntervalCycle")
        seen.add(key)
        pending.extend(children[key])
    if len(seen) != len(nodes):
        raise ValueError("IntervalDisconnectedCycle")
    exclusive = {}
    totals = {}
    for key in sorted(nodes):
        row = nodes[key]
        ordered = sorted(
            (nodes[c] for c in children[key]),
            key=lambda r: (r["start_ns"], r["end_ns"], r["span_id"]),
        )
        boundary, used = row["start_ns"], 0
        for child in ordered:
            if child["start_ns"] < boundary:
                raise ValueError("IntervalOverlappingSiblings")
            boundary = child["end_ns"]
            used += child["end_ns"] - child["start_ns"]
        duration = row["end_ns"] - row["start_ns"] - used
        if duration < 0:
            raise ValueError("IntervalNegativeExclusive")
        exclusive[key] = duration
        if row["phase"] not in {"complete", "unclassified"}:
            totals[row["phase"]] = totals.get(row["phase"], 0) + duration
    classified = sum(totals.values())
    if sum(exclusive.values()) != complete_ns or classified > complete_ns:
        raise ValueError("IntervalReconciliation")
    return dict(
        complete_ns=complete_ns,
        classified_ns=classified,
        remainder_ns=complete_ns - classified,
        exclusive_ns=exclusive,
        per_phase_ns=dict(sorted(totals.items())),
    )
