"""Transfer a fixed128MiB of freed cache quota to retained evidence."""

from artifact_io import RootRegistry, digest, read
from artifact_registration_v2 import guard_reference, guard_protected_components
from native_followup_capacity_v2 import followup_headroom
from backend_ir_retention_v2 import _verify_archive
from records import MANIFEST

STEP = 128 * 1024**2


def instrumentation_rebalance_limits(previous, candidate):
    """One fixed reverse transfer inside the existing44GiB total allocation."""
    gib = 1024**3
    if (
        previous.get("stage") != "NATIVE"
        or candidate.get("stage") != "NATIVE"
        or any(
            previous.get(key) != candidate.get(key)
            for key in ("work_id", "roots", "native_profile", "specification_ref")
        )
        or previous["limits"]["cache_bytes"] != 28 * gib
        or previous["limits"]["temporary_bytes"] != 5 * gib
        or previous["limits"]["evidence_bytes"] != 11 * gib
        or previous["limits"]["combined_bytes"] != 44 * gib
        or candidate["limits"]
        != {
            **previous["limits"],
            "cache_bytes": 30 * gib,
            "evidence_bytes": 9 * gib,
        }
        or any(type(value) is not int for value in candidate["limits"].values())
    ):
        raise ValueError("CoreInstrumentationOnlyConservedTransfer")
    return dict(candidate["limits"])


def instrumentation_headroom(usage, limits, free):
    from continued_capacity_v2 import continued_headroom

    planned = 1200 * 1024**2
    reserve = 16 * 1024**2
    plan = continued_headroom(usage, limits, free)
    if (
        limits["cache_bytes"] - usage["cache"] < planned
        or limits["evidence_bytes"] - usage["artifacts"] < reserve
        or limits["temporary_bytes"] - usage["temporary"] < reserve
        or sum(usage.values()) + planned + reserve > limits["combined_bytes"]
    ):
        raise ValueError("CoreInstrumentationBuildAndClosureReserve")
    return {
        **plan,
        "planned_build_bytes": planned,
        "evidence_closure_reserve_bytes": reserve,
    }


def rebalance_limits(previous, candidate):
    if (
        previous.get("stage") != "NATIVE"
        or candidate.get("stage") != "NATIVE"
        or any(
            previous.get(k) != candidate.get(k)
            for k in ("work_id", "roots", "native_profile", "specification_ref")
        )
        or previous["limits"]["cache_bytes"] != 24 * 1024**3
        or previous["limits"]["evidence_bytes"] != 8 * 1024**3
        or candidate["limits"]
        != {
            **previous["limits"],
            "cache_bytes": previous["limits"]["cache_bytes"] - STEP,
            "evidence_bytes": previous["limits"]["evidence_bytes"] + STEP,
        }
        or any(type(value) is not int for value in candidate["limits"].values())
    ):
        raise ValueError("NativeCacheEvidenceOnlyFixedTransfer")
    return dict(candidate["limits"])


def planned_rebalance_limits(profile):
    correction = profile["allocation"]["correction"]
    guard_reference(correction)
    if (
        correction["root_id"] == "repository"
        and correction["path"]
        == "specs/036-core-transition-feasibility/inputs/v2/core-instrumentation-cache-rebalance-001.json"
    ):
        return planned_instrumentation_rebalance(profile)

    from bootstrap import validate_v2_profile
    from controller_v2 import artifact_context_for

    refs, store = artifact_context_for(profile["work_id"])
    if store.active_root_id != "future_evidence":
        raise ValueError("NativeCacheEvidenceRegisteredStore")
    allocation = profile["allocation"]
    for key in ("predecessor", "correction"):
        guard_reference(allocation[key])
        if allocation[key] not in profile["inputs"]:
            raise ValueError("NativeCacheEvidenceBoundInput")
    cp_path = refs.verify(allocation["predecessor"])
    if cp_path != refs.roots["future_evidence"] / "attempts/a0523/checkpoint.json":
        raise ValueError("NativeCacheEvidenceExactCleanup")
    RootRegistry({"attempt": cp_path.parent}).verify_closed("attempt")
    cp = refs.read(allocation["predecessor"])
    decision = refs.read(allocation["correction"])
    if (
        set(decision)
        != {
            "format",
            "reason",
            "previous_profile_ref",
            "cleanup_result_ref",
            "resource_receipt_ref",
            "transfer_bytes",
        }
        or decision["format"] != "core036.native-cache-evidence-rebalance.v2"
        or not isinstance(decision["reason"], str)
        or not decision["reason"].strip()
        or type(decision["transfer_bytes"]) is not int
        or decision["transfer_bytes"] != STEP
    ):
        raise ValueError("NativeCacheEvidenceDecision")
    for key in ("previous_profile_ref", "cleanup_result_ref", "resource_receipt_ref"):
        guard_reference(decision[key])
        if decision[key] not in profile["inputs"]:
            raise ValueError("NativeCacheEvidenceBoundInput")
        refs.verify(decision[key])
    if (
        refs.verify(decision["previous_profile_ref"])
        != refs.roots["repository"]
        / "specs/036-core-transition-feasibility/inputs/v2/profiles/native-accessor-evidence-003.json"
    ):
        raise ValueError("NativeCacheEvidencePreviousProfile")
    previous = refs.read(decision["previous_profile_ref"])
    limits = rebalance_limits(previous, profile)
    validate_v2_profile(previous)
    receipt_path = refs.verify(decision["resource_receipt_ref"])
    receipt = refs.read(decision["resource_receipt_ref"], limit=MANIFEST)
    base = refs.roots["private"] / "native-cache-retention/a0523"
    result_path = refs.verify(decision["cleanup_result_ref"])
    result = refs.read(decision["cleanup_result_ref"])
    if (
        cp["stage_outcome"] != "succeeded"
        or cp["source_validation_error"] is not None
        or cp["outcome"]["operational"] != "closed"
        or receipt_path != cp_path.parent / "child/receipt.json"
        or receipt["source_subject_ref"] != cp["source_subject_ref"]
        or receipt["exit_code"] != 0
        or receipt["stop_reason"] is not None
        or receipt["tree_empty"] is not True
        or receipt["group_empty"] is not True
        or receipt["final_storage_inventory_error"] is not None
        or receipt["final_incremental_storage_bytes"]
        != receipt["final_resource_observation"]["growth_apparent_unique_inode_bytes"]
        or result_path != base / "result.json"
        or result["format"] != "core036.native-analysis-cache-retention-result.v2"
        or result["source_subject_ref"] != cp["source_subject_ref"]
        or result["net_reclaimed_bytes"] < STEP
        or result["net_reclaimed_bytes"]
        != result["raw_bytes"] - result["archive_bytes"]
    ):
        raise ValueError("NativeCacheEvidenceClosedReclaimedCache")
    guard_reference(result["retained_current_cache_ref"])
    if (
        refs.verify(result["retained_current_cache_ref"])
        != base / "retained-current-cache/result.json"
    ):
        raise ValueError("NativeCacheEvidenceArchiveResult")
    retained = refs.read(result["retained_current_cache_ref"])
    archive = base / "retained-current-cache/all-files.tar.gz"
    guard_protected_components(archive)
    if (
        retained["archive_bytes"] != result["archive_bytes"]
        or archive.stat().st_size != result["archive_bytes"]
        or digest(archive) != retained["archive_sha256"]
    ):
        raise ValueError("NativeCacheEvidenceArchiveChanged")
    _verify_archive(archive, read(base / "retained-current-cache/inventory.json"))
    observed = receipt["final_resource_observation"]
    followup_headroom(
        observed["growth_apparent_unique_inode_bytes"],
        limits,
        observed["free_volume_bytes"],
    )
    return limits


def planned_instrumentation_rebalance(profile):
    """Admit one prospective allocation from the closed actual span run."""
    from bootstrap import validate_v2_profile
    from controller_v2 import artifact_context_for

    allocation = profile["allocation"]
    for reference in [
        *profile["inputs"],
        allocation["predecessor"],
        allocation["correction"],
    ]:
        guard_reference(reference)
    if any(
        allocation[key] not in profile["inputs"]
        for key in ("predecessor", "correction")
    ):
        raise ValueError("CoreInstrumentationBoundInput")
    refs, store = artifact_context_for(profile["work_id"])
    if store.active_root_id != "future_evidence":
        raise ValueError("CoreInstrumentationRegisteredStore")
    for reference in profile["inputs"]:
        refs.verify(reference)
    decision = refs.read(allocation["correction"])
    if (
        set(decision)
        != {
            "format",
            "scope",
            "reason",
            "previous_profile_ref",
            "resource_result_ref",
            "resource_receipt_ref",
            "transfer_bytes",
            "planned_build_bytes",
        }
        or decision["format"] != "core036.core-instrumentation-cache-rebalance.v2"
        or decision["scope"]
        != "prospective2GiB evidence-to-cache transfer; total44GiB unchanged"
        or not isinstance(decision["reason"], str)
        or not decision["reason"].strip()
        or type(decision["transfer_bytes"]) is not int
        or decision["transfer_bytes"] != 2 * 1024**3
        or type(decision["planned_build_bytes"]) is not int
        or decision["planned_build_bytes"] != 1200 * 1024**2
    ):
        raise ValueError("CoreInstrumentationDecision")
    expected = {
        "previous_profile_ref": (
            "repository",
            "specs/036-core-transition-feasibility/inputs/v2/profiles/native-continued-capacity-001.json",
        ),
        "resource_result_ref": (
            "future_evidence",
            "bootstrap-runs/native-spans-development-001/result.json",
        ),
        "resource_receipt_ref": (
            "private",
            "bootstrap/native-spans-development-001/receipt.json",
        ),
    }
    for key, (root, relative) in expected.items():
        guard_reference(decision[key])
        if (
            decision[key] not in profile["inputs"]
            or refs.verify(decision[key]) != refs.roots[root] / relative
        ):
            raise ValueError("CoreInstrumentationExactInput")
    if allocation["predecessor"] != decision["resource_result_ref"]:
        raise ValueError("CoreInstrumentationExactPredecessor")
    previous = refs.read(decision["previous_profile_ref"])
    limits = instrumentation_rebalance_limits(previous, profile)
    validate_v2_profile(previous)
    result = refs.read(decision["resource_result_ref"])
    receipt = refs.read(decision["resource_receipt_ref"], limit=MANIFEST)
    if (
        result.get("receipt_ref") != decision["resource_receipt_ref"]
        or type(result.get("actual_exit")) is not int
        or result.get("actual_exit") != 0
        or result.get("stop_reason") is not None
        or result.get("all_source_bytes_equal_after") is not True
        or result.get("tree_empty") is not True
        or result.get("group_empty") is not True
        or type(receipt.get("exit_code")) is not int
        or receipt.get("exit_code") != 0
        or receipt.get("stop_reason") is not None
        or receipt.get("tree_empty") is not True
        or receipt.get("group_empty") is not True
        or receipt.get("final_storage_inventory_error") is not None
        or receipt.get("growth_observer_scope") != "registered_actual_roots"
        or receipt.get("free_volume_observer_scope") != "actual_registered_volumes"
        or receipt.get("final_incremental_storage_bytes")
        != receipt["final_resource_observation"]["growth_apparent_unique_inode_bytes"]
    ):
        raise ValueError("CoreInstrumentationClosedResourceBasis")
    observed = receipt["final_resource_observation"]
    instrumentation_headroom(
        observed["growth_apparent_unique_inode_bytes"],
        limits,
        observed["free_volume_bytes"],
    )
    return limits
