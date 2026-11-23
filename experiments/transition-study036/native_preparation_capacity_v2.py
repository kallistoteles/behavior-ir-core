"""Reuse the current declared storage envelope for fresh bounded preparation.

No old clock or successful gate is inherited. Original NATIVE/ENV stage clocks,
CPU, memory, Lean ceiling and volume floors remain explicit and unchanged.
"""

from artifact_io import RootRegistry, read
from artifact_registration_v2 import guard_reference
from records import MANIFEST

DECISION = "specs/036-core-transition-feasibility/inputs/v2/native-preparation-capacity-001.json"
GIB = 1024**3


def preparation_limits(previous, candidate):
    if (
        previous.get("stage") != "Q"
        or candidate.get("stage") not in {"NATIVE", "ENV"}
        or any(
            previous.get(k) != candidate.get(k)
            for k in ["work_id", "roots", "native_profile", "specification_ref"]
        )
        or (
            previous["limits"].get("evidence_bytes"),
            previous["limits"].get("new_shared_store_bytes"),
        )
        not in {(9 * GIB, 6 * GIB), (9 * GIB + 128 * 1024**2, 6 * GIB - 128 * 1024**2)}
        or any(
            previous["limits"].get(k) != v
            for k, v in {
                "attempt_seconds": 7200,
                "extended_child_seconds": 3600,
                "cache_bytes": 34 * GIB,
                "temporary_bytes": 5 * GIB,
                "combined_bytes": 48 * GIB,
                "closure_reserve_seconds": 300,
                "lean_address_space_bytes": 4 * GIB,
                "cpu_workers": 1,
            }.items()
        )
    ):
        raise ValueError("NativePreparationExactCurrentEnvelope")
    expected = dict(previous["limits"])
    if candidate["stage"] == "NATIVE":
        expected.update(attempt_seconds=14400, extended_child_seconds=7200)
    if candidate["limits"] != expected or any(
        type(v) is not int for p in [previous, candidate] for v in p["limits"].values()
    ):
        raise ValueError("NativePreparationOnlyOriginalStageClocks")
    return expected


def planned_preparation_limits(profile):
    from controller_v2 import artifact_context_for
    from continued_capacity_v2 import continued_headroom
    from current_quality_capacity_v2 import planned_cache_limits
    from native_suite_capacity_v2 import _closed_receipt

    allocation = profile["allocation"]
    for reference in [
        *profile["inputs"],
        allocation["predecessor"],
        allocation["correction"],
    ]:
        guard_reference(reference)
    if (
        allocation["correction"]["root_id"] != "repository"
        or allocation["correction"]["path"] != DECISION
        or any(
            allocation[k] not in profile["inputs"]
            for k in ["predecessor", "correction"]
        )
    ):
        raise ValueError("NativePreparationNamedBoundDecision")
    refs, store = artifact_context_for(profile["work_id"])
    if store.active_root_id != "future_evidence":
        raise ValueError("NativePreparationRegisteredStore")
    decision = refs.read(allocation["correction"])
    expected = {
        "previous_profile_ref": (
            "repository",
            "specs/036-core-transition-feasibility/inputs/v2/profiles/quality-combined-continuation-001.json",
        ),
        "checkpoint_ref": ("future_evidence", "attempts/a0571/checkpoint.json"),
        "declaration_ref": ("future_evidence", "attempts/a0571/declaration.json"),
        "receipt_ref": ("future_evidence", "attempts/a0571/child/receipt.json"),
        "diagnosis_result_ref": (
            "future_evidence",
            "bootstrap-runs/quality-timeout-diagnosis-003/result.json",
        ),
        "diagnosis_receipt_ref": (
            "private",
            "bootstrap/quality-timeout-diagnosis-003/receipt.json",
        ),
        "diagnosis_observations_ref": (
            "private",
            "quality-diagnostics/quality-timeout-diagnosis-003/result.json",
        ),
        "campaign_contract_ref": (
            "repository",
            "specs/036-core-transition-feasibility/contracts/campaign.md",
        ),
    }
    if (
        set(decision) != {*expected, "format", "reason", "planned_build_bytes"}
        or decision["format"] != "core036.native-preparation-capacity.v2"
        or not isinstance(decision["reason"], str)
        or not decision["reason"].strip()
        or type(decision["planned_build_bytes"]) is not int
        or decision["planned_build_bytes"] != 1200 * 1024**2
        or allocation["predecessor"] != decision["checkpoint_ref"]
    ):
        raise ValueError("NativePreparationDecision")
    paths = {}
    for key, (root, name) in expected.items():
        reference = decision[key]
        guard_reference(reference)
        if (
            reference not in profile["inputs"]
            or refs.verify(reference) != refs.roots[root] / name
        ):
            raise ValueError("NativePreparationExactRecordedInputs")
        paths[key] = refs.verify(reference)
    previous = refs.read(decision["previous_profile_ref"])
    # Recheck the actual numerical allocation's original stopped570 basis.
    if planned_cache_limits(previous) != previous["limits"]:
        raise ValueError("NativePreparationCurrentAllocation")
    limits = preparation_limits(previous, profile)
    RootRegistry({"attempt": paths["checkpoint_ref"].parent}).verify_closed("attempt")
    cp = refs.read(decision["checkpoint_ref"])
    declared = read(paths["declaration_ref"], limit=MANIFEST)
    rc = refs.read(decision["receipt_ref"], limit=MANIFEST)
    if (
        cp.get("stage_outcome") != "failed"
        or cp.get("source_validation_error") is not None
        or cp.get("outcome", {}).get("operational") != "closed"
        or rc.get("source_subject_ref") != cp.get("source_subject_ref")
        or declared.get("profile") != previous
        or declared.get("slots") != ["canonical-quality"]
        or rc.get("format") != "core036.resource.v2"
        or rc.get("stage") != "Q"
        or rc.get("work_id") != profile["work_id"]
        or type(rc.get("exit_code")) is not int
        or rc["exit_code"] != 1
        or rc.get("stop_reason") is not None
        or rc.get("controller_error") is not None
        or rc.get("tree_empty") is not True
        or rc.get("group_empty") is not True
        or rc.get("final_storage_inventory_error") is not None
        or rc.get("final_incremental_storage_bytes")
        != rc["final_resource_observation"]["growth_apparent_unique_inode_bytes"]
    ):
        raise ValueError("NativePreparationClosedQualityFailure")
    diagnostic = refs.read(decision["diagnosis_result_ref"])
    receipt = refs.read(decision["diagnosis_receipt_ref"], limit=MANIFEST)
    _closed_receipt(receipt, "Q", profile["work_id"])
    if (
        type(diagnostic.get("actual_exit")) is not int
        or diagnostic["actual_exit"] != 0
        or diagnostic.get("stop_reason") is not None
        or diagnostic.get("tree_empty") is not True
        or diagnostic.get("group_empty") is not True
        or diagnostic.get("all_source_bytes_equal_after") is not True
        or diagnostic.get("receipt_ref") != decision["diagnosis_receipt_ref"]
        or receipt.get("controller_error") is not None
    ):
        raise ValueError("NativePreparationClosedDiagnosis")
    observations = refs.read(decision["diagnosis_observations_ref"])
    rows = observations.get("rows")
    required = {
        (replicate, helper, mode)
        for replicate in range(3)
        for helper in ["original_python", "candidate_shell"]
        for mode in ["timeout", "transport", "prefix_timeout", "prefix_transport"]
    }
    if (
        not isinstance(rows, list)
        or len(rows) != 24
        or {(r.get("replicate"), r.get("helper"), r.get("mode")) for r in rows}
        != required
        or any(r.get("original_assertions_hold") is not True for r in rows)
        or observations.get("canonical_quality_established") is not False
        or observations.get("feature_complete") is not False
    ):
        raise ValueError("NativePreparationAllDiagnosticCases")
    observed = receipt["final_resource_observation"]
    continued_headroom(
        observed["growth_apparent_unique_inode_bytes"],
        limits,
        observed["free_volume_bytes"],
    )
    usage = observed["growth_apparent_unique_inode_bytes"]
    reserve = decision["planned_build_bytes"]
    if (
        limits["cache_bytes"] - usage["cache"] < reserve
        or limits["combined_bytes"] - sum(usage.values()) < reserve + 32 * 1024**2
        or limits["evidence_bytes"] - usage["artifacts"] < 32 * 1024**2
    ):
        raise ValueError("NativePreparationBuildAndClosureHeadroom")
    return limits
