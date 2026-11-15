"""Exact raw diagnostic medians; no percentiles, imputation or mixed scopes."""


def _ns(value, name):
    if type(value) is not int or value < 0:
        raise ValueError("UnavailableOrInvalidNanoseconds:" + name)
    return value


def summarize_group(rows):
    if not isinstance(rows, list) or len(rows) != 3:
        raise ValueError("ExactlyThreeTimingObservationsRequired")
    if any(r.get("mode") != "timing" for r in rows):
        raise ValueError("MixedTimingAndWork")
    for field in ["parent", "treatment"]:
        if len({r.get(field) for r in rows}) != 1 or rows[0].get(field) is None:
            raise ValueError("MixedOrMissing:" + field)
    if len({r.get("sample_id") for r in rows}) != 3:
        raise ValueError("DuplicateSample")
    for r in rows:
        if (
            r.get("operational") != "completed"
            or r.get("semantic") != "equal"
            or r.get("required_output_complete") is not True
        ):
            raise ValueError("PartialOrUncomparedEndpoint")
        complete = _ns(r.get("complete_ns"), "complete_ns")
        semantic = _ns(r.get("semantic_ns"), "semantic_ns")
        _ns(r.get("reestablish_ns"), "reestablish_ns")
        if complete == 0 or semantic > complete:
            raise ValueError("EndpointScope")
        if "primary_phases" in r:
            accounted = _ns(r["primary_phases"].get("accounted_ns"), "accounted_ns")
            discard = _ns(r.get("initial_discard_ns"), "initial_discard_ns")
            if accounted + discard > complete:
                raise ValueError("OverlappingExclusiveAccounting")
        if r.get("format") == "core035.observation.v1":
            validate_operation_accounting(r)
        cycle = _ns(r.get("cycle_ns"), "direct_cycle_ns")
        if cycle < complete + _ns(r.get("drain_ns", 0), "drain_ns"):
            raise ValueError("CycleScope")
        last = 0
        for p in r.get("phases", []):
            start = _ns(p.get("start_ns"), "phase_start")
            end = _ns(p.get("end_ns"), "phase_end")
            if start < last or end < start or end > complete:
                raise ValueError("OverlappingOrOutsidePhase")
            last = end

    def median(field):
        return sorted(r[field] for r in rows)[1]

    return {
        "observations": 3,
        "mode": "timing",
        "median_ns": median("complete_ns"),
        "range_ns": [
            min(r["complete_ns"] for r in rows),
            max(r["complete_ns"] for r in rows),
        ],
        "cycle_median_ns": median("cycle_ns"),
        "semantic_median_ns": median("semantic_ns"),
        "reestablish_median_ns": median("reestablish_ns"),
        "acquisition_median_ns": median("acquisition_ns")
        if all(type(r.get("acquisition_ns")) is int for r in rows)
        else None,
        "audit_median_ns": median("independent_audit_ns")
        if all(type(r.get("independent_audit_ns")) is int for r in rows)
        else None,
        "view_seed_ns": None,
        "view_seed_ns_reason": "Included in actual independently repeated basis acquisition; no separate interval recorded",
        "recovery_ns": None,
        "recovery_ns_reason": "Correctness controls execute recovery; no separate recovery latency experiment",
        "statistical_scope": "three raw observations; diagnostic median/range only",
    }


def discriminate(reference, combined):
    for row in [reference, combined]:
        for key in [
            "median_ns",
            "cycle_median_ns",
            "semantic_median_ns",
            "reestablish_median_ns",
        ]:
            _ns(row.get(key), key)
    return {
        "strong_local": combined["semantic_median_ns"] <= 50_000_000
        and combined["semantic_median_ns"] * 4 <= reference["semantic_median_ns"],
        "complete_material": combined["median_ns"] * 5 <= reference["median_ns"] * 4,
        "integration_no_regression": combined["median_ns"] * 10
        <= reference["median_ns"] * 11
        and combined["cycle_median_ns"] * 10 <= reference["cycle_median_ns"] * 11,
        "ground_phase_2x": None
        if reference["reestablish_median_ns"] == 0
        else combined["reestablish_median_ns"] * 2
        <= reference["reestablish_median_ns"],
        "ground_phase_2x_reason": "reference phase is zero"
        if reference["reestablish_median_ns"] == 0
        else "actual same-scope timing medians",
    }


SEMANTIC_KEYS = (
    "reestablish_ns",
    "frame_ns",
    "native_semantic_ns",
    "property_ns",
    "affected_maintenance_ns",
    "outer_mandatory_maintenance_ns",
)
OUTPUT_KEYS = ("canonical_output_identity_ns", "commit_other_ns", "reconstruction_ns")


def validate_operation_accounting(row):
    for field, elapsed_field in [
        ("primary_phases", "execution_ns"),
        ("drain_phases", "drain_execution_ns"),
    ]:
        p = row[field]
        exclusive = p["exclusive"]
        semantic = sum(_ns(exclusive.get(k), k) for k in SEMANTIC_KEYS)
        total = semantic + sum(_ns(exclusive.get(k), k) for k in OUTPUT_KEYS)
        if type(p.get("invalid_intervals")) is not int or p["invalid_intervals"] != 0:
            raise ValueError("InvalidNativeClockInterval")
        if (
            p["semantic_ns"] != semantic
            or p["accounted_ns"] != total
            or row[elapsed_field] != total
        ):
            raise ValueError("RawPhaseArithmeticMismatch")
    discard = _ns(row.get("initial_discard_ns"), "initial_discard_ns")
    if (
        row["semantic_ns"] != row["primary_phases"]["semantic_ns"] + discard
        or row["reestablish_ns"] != row["primary_phases"]["reestablish_ns"] + discard
    ):
        raise ValueError("SemanticScopeArithmeticMismatch")
    if row["drain_ns"] < row["drain_execution_ns"] + _ns(
        row.get("drain_discard_ns"), "drain_discard_ns"
    ):
        raise ValueError("DrainScopeArithmeticMismatch")
    return True
