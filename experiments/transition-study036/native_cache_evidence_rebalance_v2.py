"""Transfer a fixed128MiB of freed cache quota to retained evidence."""

from artifact_io import RootRegistry, digest, read
from artifact_registration_v2 import guard_reference, guard_protected_components
from native_followup_capacity_v2 import followup_headroom
from backend_ir_retention_v2 import _verify_archive
from records import MANIFEST

STEP = 128 * 1024**2


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
