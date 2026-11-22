"""Use the remaining quarter GiB for evidence; total/other limits stay fixed."""

from artifact_io import digest
from artifact_registration_v2 import guard_reference
from native_followup_capacity_v2 import followup_headroom
from records import MANIFEST

GIB = 1024**3
STEP = 256 * 1024**2


def accessor_evidence_limits(previous, candidate):
    if (
        previous.get("stage") != "NATIVE" or candidate.get("stage") != "NATIVE"
        or any(previous.get(k) != candidate.get(k) for k in (
            "work_id", "roots", "native_profile", "specification_ref"))
        or previous["limits"]["evidence_bytes"] != 8 * GIB - STEP
        or candidate["limits"] != {**previous["limits"], "evidence_bytes": 8 * GIB}
        or any(type(v) is not int for v in candidate["limits"].values())
    ):
        raise ValueError("NativeAccessorOnlyFixedEvidenceStep")
    return dict(candidate["limits"])


def planned_accessor_evidence_limits(profile):
    from bootstrap import validate_v2_profile
    from controller_v2 import artifact_context_for

    refs, store = artifact_context_for(profile["work_id"])
    if store.active_root_id != "future_evidence":
        raise ValueError("NativeAccessorEvidenceRegisteredStore")
    allocation = profile["allocation"]
    for key in ("predecessor", "correction"):
        guard_reference(allocation.get(key))
        if allocation[key] not in profile["inputs"]:
            raise ValueError("NativeAccessorEvidenceBoundInput")
    parent = refs.read(allocation["predecessor"])
    expected = refs.roots["future_evidence"] / "bootstrap-runs/native-accessor-rfl-recheck-freeze-498-001/result.json"
    if refs.verify(allocation["predecessor"]) != expected:
        raise ValueError("NativeAccessorEvidenceActualFreeze")
    decision = refs.read(allocation["correction"])
    if (
        set(decision) != {"format", "scope", "reason", "previous_profile_ref", "cause_refs", "resource_receipt_ref", "metadata_declaration_ref", "metadata_source_ref", "planned_growth_bytes", "work_plan_refs"}
        or decision["format"] != "core036.resource-correction-decision.v2"
        or decision["scope"] != "prospective registered native evidence continuation only"
        or not isinstance(decision["reason"], str) or not decision["reason"].strip()
        or decision["cause_refs"] != [allocation["predecessor"]]
        or type(decision["planned_growth_bytes"]) is not int
        or decision["planned_growth_bytes"] != STEP
        or not isinstance(decision["work_plan_refs"], list) or not decision["work_plan_refs"]
    ):
        raise ValueError("NativeAccessorEvidenceDecision")
    for reference in [decision[k] for k in (
        "previous_profile_ref", "resource_receipt_ref", "metadata_declaration_ref", "metadata_source_ref"
    )] + decision["work_plan_refs"]:
        guard_reference(reference)
        if reference not in profile["inputs"]:
            raise ValueError("NativeAccessorEvidenceBoundInput")
        refs.verify(reference)
    previous = refs.read(decision["previous_profile_ref"])
    if refs.verify(decision["previous_profile_ref"]) != refs.roots["repository"] / "specs/036-core-transition-feasibility/inputs/v2/profiles/native-followup-evidence-002.json":
        raise ValueError("NativeAccessorEvidencePreviousProfile")
    limits = accessor_evidence_limits(previous, profile)
    validate_v2_profile(previous)
    declaration = refs.read(decision["metadata_declaration_ref"])
    source = refs.read(decision["metadata_source_ref"])
    if (
        declaration["profile_ref"] != decision["previous_profile_ref"]
        or declaration["source_subject_ref"] != decision["metadata_source_ref"]
        or declaration["work_id"] != profile["work_id"]
        or source["format"] != "core036.metadata-source.v1"
        or not source.get("files")
        or parent.get("actual_exit") != 0
        or parent.get("stop_reason") != "ArtifactGrowthLimit"
        or parent.get("all_source_bytes_equal_after") is not True
        or parent.get("tree_empty") is not True or parent.get("group_empty") is not True
        or parent.get("scientific_acceptance") is not False
        or parent.get("receipt_ref") != decision["resource_receipt_ref"]
    ):
        raise ValueError("NativeAccessorEvidenceClosedMetadata")
    for row in source["files"]:
        guard_reference(row["snapshot_ref"])
        refs.verify(row["snapshot_ref"])
    receipt_path = refs.verify(decision["resource_receipt_ref"])
    receipt = refs.read(decision["resource_receipt_ref"], limit=MANIFEST)
    if (
        receipt_path != refs.roots["future_evidence"] / "development/native-accessor-rfl-recheck-freeze-498-001/receipt.json"
        or receipt["exit_code"] != 0 or receipt["stop_reason"] != "ArtifactGrowthLimit"
        or receipt["tree_empty"] is not True or receipt["group_empty"] is not True
        or receipt["growth_observer_scope"] != "registered_actual_roots"
        or receipt["free_volume_observer_scope"] != "actual_registered_volumes"
        or receipt["final_storage_inventory_error"] is not None
        or receipt["final_growth_violation"] != "ArtifactGrowthLimit"
        or receipt["final_incremental_storage_bytes"] != receipt["final_resource_observation"]["growth_apparent_unique_inode_bytes"]
    ):
        raise ValueError("NativeAccessorEvidenceActualObservation")
    for name, key in [("stdout.txt", "stdout_sha256"), ("stderr.txt", "stderr_sha256")]:
        if digest(receipt_path.parent / name) != receipt[key]:
            raise ValueError("NativeAccessorEvidenceActualLogs")
    observed = receipt["final_resource_observation"]
    if observed["growth_apparent_unique_inode_bytes"]["artifacts"] <= previous["limits"]["evidence_bytes"]:
        raise ValueError("NativeAccessorEvidenceActualOverflow")
    followup_headroom(observed["growth_apparent_unique_inode_bytes"], limits, observed["free_volume_bytes"])
    return limits
