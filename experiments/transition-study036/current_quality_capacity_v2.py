"""Apply the existing conserved30/5/9/44GiB allocation to current ENV/Q.

The closed native admission binds the old numerical profile. This grants only
prospective operational space, never proof, quality, cache or completion status.
"""

from artifact_io import RootRegistry
from artifact_registration_v2 import guard_reference
from records import MANIFEST

DECISION = (
    "specs/036-core-transition-feasibility/inputs/v2/current-quality-capacity-001.json"
)


def current_limits(previous, candidate):
    gib = 1024**3
    if (
        previous.get("stage") != "NATIVE"
        or candidate.get("stage") not in {"ENV", "Q"}
        or any(
            previous.get(key) != candidate.get(key)
            for key in ["work_id", "roots", "native_profile", "specification_ref"]
        )
        or any(
            previous["limits"].get(key) != value
            for key, value in {
                "attempt_seconds": 14400,
                "extended_child_seconds": 7200,
                "cache_bytes": 30 * gib,
                "temporary_bytes": 5 * gib,
                "evidence_bytes": 9 * gib,
                "combined_bytes": 44 * gib,
            }.items()
        )
    ):
        raise ValueError("CurrentQualityExactOperationalSubject")
    expected = {
        **previous["limits"],
        "attempt_seconds": 7200,
        "extended_child_seconds": 3600,
        "lean_address_space_bytes": 4 * gib,
    }
    if candidate["limits"] != expected or any(
        type(value) is not int for value in candidate["limits"].values()
    ):
        raise ValueError("CurrentQualityOnlyStageClocksAndConservedStorage")
    return expected


def planned_current_limits(profile):
    from controller_v2 import artifact_context_for
    from continued_capacity_v2 import continued_headroom
    from native_suite_capacity_v2 import _closed_receipt

    refs, store = artifact_context_for(profile["work_id"])
    if store.active_root_id != "future_evidence":
        raise ValueError("CurrentQualityRegisteredStore")
    allocation = profile["allocation"]
    for key in ["predecessor", "correction"]:
        guard_reference(allocation[key])
        if allocation[key] not in profile["inputs"]:
            raise ValueError("CurrentQualityBoundAllocation")
    if (
        allocation["correction"]["root_id"] != "repository"
        or allocation["correction"]["path"] != DECISION
    ):
        raise ValueError("CurrentQualityNamedDecision")
    decision = refs.read(allocation["correction"])
    expected = {
        "previous_profile_ref": (
            "repository",
            "specs/036-core-transition-feasibility/inputs/v2/profiles/native-suite-capacity-001.json",
        ),
        "native_checkpoint_ref": ("future_evidence", "attempts/a0565/checkpoint.json"),
        "native_declaration_ref": (
            "future_evidence",
            "attempts/a0565/declaration.json",
        ),
        "native_receipt_ref": ("future_evidence", "attempts/a0565/child/receipt.json"),
        "maintenance_result_ref": (
            "future_evidence",
            "bootstrap-runs/native-cache-maintenance-002/result.json",
        ),
        "maintenance_receipt_ref": (
            "private",
            "bootstrap/native-cache-maintenance-002/receipt.json",
        ),
        "maintenance_payload_ref": (
            "future_evidence",
            "native-cache-maintenance/native-cache-maintenance-002/result.json",
        ),
    }
    if (
        set(decision) != {*expected, "format", "reason", "planned_build_bytes"}
        or decision["format"] != "core036.current-quality-capacity.v2"
        or not isinstance(decision["reason"], str)
        or not decision["reason"].strip()
        or type(decision["planned_build_bytes"]) is not int
        or decision["planned_build_bytes"] != 1200 * 1024**2
        or allocation["predecessor"] != decision["maintenance_result_ref"]
    ):
        raise ValueError("CurrentQualityDecision")
    paths = {}
    for key, (root, relative) in expected.items():
        reference = decision[key]
        guard_reference(reference)
        if (
            reference not in profile["inputs"]
            or refs.verify(reference) != refs.roots[root] / relative
        ):
            raise ValueError("CurrentQualityExactSourceAndResourceBasis")
        paths[key] = refs.verify(reference)
    previous = refs.read(decision["previous_profile_ref"])
    limits = current_limits(previous, profile)
    cp = refs.read(decision["native_checkpoint_ref"])
    RootRegistry({"attempt": paths["native_checkpoint_ref"].parent}).verify_closed(
        "attempt"
    )
    declaration = refs.read(decision["native_declaration_ref"])
    native = refs.read(decision["native_receipt_ref"], limit=MANIFEST)
    _closed_receipt(native, "NATIVE", profile["work_id"])
    if (
        cp["stage_outcome"] != "succeeded"
        or cp["source_validation_error"] is not None
        or cp["outcome"]["operational"] != "closed"
        or decision["native_receipt_ref"] not in cp["inputs"]
        or cp["source_subject_ref"] != native["source_subject_ref"]
        or declaration["profile"] != previous
    ):
        raise ValueError("CurrentQualityClosedNativeProfile")
    # Use the exact profile actually admitted by the now-sealed565 operation.
    # Old admissions/receipts remain intact; no old proof/quality is imported.
    result = refs.read(decision["maintenance_result_ref"])
    receipt = refs.read(decision["maintenance_receipt_ref"], limit=MANIFEST)
    _closed_receipt(receipt, "NATIVE", profile["work_id"])
    payload = refs.read(decision["maintenance_payload_ref"])
    if (
        type(result.get("actual_exit")) is not int
        or result["actual_exit"] != 0
        or result.get("stop_reason") is not None
        or result.get("tree_empty") is not True
        or result.get("group_empty") is not True
        or result.get("all_source_bytes_equal_after") is not True
        or result.get("receipt_ref") != decision["maintenance_receipt_ref"]
        or payload.get("format") != "core036.native-cache-maintenance.v2"
        or [row.get("removed") for row in payload["results"]]
        != [
            str(refs.roots["private"] / "disposable" / ("native-" + a) / "target")
            for a in ["a0545", "a0565"]
        ]
        or any(
            row.get("all_original_files_modes_and_bytes_retained") is not True
            for row in payload["results"]
        )
        or receipt.get("growth_observer_scope") != "registered_actual_roots"
        or receipt.get("free_volume_observer_scope") != "actual_registered_volumes"
    ):
        raise ValueError("CurrentQualityClosedLosslessMaintenance")
    observed = receipt["final_resource_observation"]
    continued_headroom(
        observed["growth_apparent_unique_inode_bytes"],
        limits,
        observed["free_volume_bytes"],
    )
    if (
        limits["cache_bytes"] - observed["growth_apparent_unique_inode_bytes"]["cache"]
        < decision["planned_build_bytes"]
        or limits["evidence_bytes"]
        - observed["growth_apparent_unique_inode_bytes"]["artifacts"]
        < 32 * 1024**2
    ):
        raise ValueError("CurrentQualityBuildAndClosureHeadroom")
    return limits
