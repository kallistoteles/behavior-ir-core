"""Prospective evidence allocation from actual closed work/volume observations."""

from pathlib import Path

from artifact_io import RootRegistry
from records import MANIFEST, u64

R = Path(__file__).resolve().parents[2]


def validate_capacity_step_v2(old_bytes, new_bytes):
    old, new = u64(old_bytes), u64(new_bytes)
    if (old, new) not in {
        (4 * 1024**3, 6 * 1024**3),
        (6 * 1024**3, 7 * 1024**3),
        (7 * 1024**3, 7 * 1024**3 + 128 * 1024**2),
    }:
        raise ValueError("V2EvidenceCapacityDeclaredStep")


def check_capacity_headroom_v2(free_bytes, used_bytes, capacity_bytes, stop_bytes):
    for value in (free_bytes, used_bytes, capacity_bytes, stop_bytes):
        u64(value)
    if capacity_bytes < used_bytes or free_bytes < stop_bytes:
        raise ValueError("V2EvidenceCapacityObservation")
    if free_bytes - (capacity_bytes - used_bytes) < stop_bytes:
        raise ValueError("V2EvidenceCapacityHeadroom")


def extended_evidence_limits_v2(profile):
    from bootstrap import validate_v2_profile

    refs = RootRegistry({"repository": R}, readonly=["repository"])
    allocation = profile["allocation"]
    for key in ("predecessor", "correction"):
        ref = allocation.get(key)
        if (
            not isinstance(ref, dict)
            or ref.get("root_id") != "repository"
            or ref not in profile["inputs"]
        ):
            raise ValueError("V2EvidenceCapacityReference")
        refs.verify(ref)
    checkpoint_path = refs.verify(allocation["predecessor"])
    expected_root = (
        R / "specs/036-core-transition-feasibility/evidence/v2" / profile["work_id"]
    )
    if (
        checkpoint_path.name != "checkpoint.json"
        or checkpoint_path.parent.parent != expected_root / "attempts"
    ):
        raise ValueError("V2EvidenceCapacityPredecessor")
    RootRegistry({"attempt": checkpoint_path.parent}).verify_closed("attempt")
    checkpoint = refs.read(allocation["predecessor"])
    decision = refs.read(allocation["correction"])
    required = {
        "format",
        "scope",
        "reason",
        "previous_profile_ref",
        "cause_refs",
        "resource_receipt_ref",
        "old_evidence_bytes",
        "new_evidence_bytes",
        "admission_scope",
    }
    if (
        set(decision) != required
        or decision["format"] != "core036.resource-correction-decision.v2"
        or decision["scope"] != "owned v2 evidence capacity only"
        or not isinstance(decision["reason"], str)
        or not decision["reason"].strip()
        or not isinstance(decision["admission_scope"], str)
        or not decision["admission_scope"].strip()
        or decision["cause_refs"] != [allocation["predecessor"]]
    ):
        raise ValueError("V2EvidenceCapacityDecision")
    if (
        not isinstance(decision["previous_profile_ref"], dict)
        or decision["previous_profile_ref"].get("root_id") != "repository"
    ):
        raise ValueError("V2EvidenceCapacityOriginalProfileRoot")
    previous = refs.read(decision["previous_profile_ref"])
    old, new = u64(decision["old_evidence_bytes"]), u64(decision["new_evidence_bytes"])
    validate_capacity_step_v2(old, new)
    # Check the decreasing prior capacity before recursion. The supported
    # chain retains4→6→7GiB and one observed128MiB successor. No self-cycle,
    # skipped origin or further/open-ended extension can be accepted.
    if previous["limits"]["evidence_bytes"] != old:
        raise ValueError("V2EvidenceCapacityPriorLimit")
    validate_v2_profile(previous)
    if (
        previous["work_id"] != profile["work_id"]
        or previous["stage"] != profile["stage"]
    ):
        raise ValueError("V2EvidenceCapacityStageOrWork")
    receipt_path = refs.verify(decision["resource_receipt_ref"])
    receipt = refs.read(decision["resource_receipt_ref"], limit=MANIFEST)
    declaration = refs.read(
        refs.reference(
            "repository",
            str((checkpoint_path.parent / "declaration.json").relative_to(R)),
        )
    )
    if (
        receipt_path != checkpoint_path.parent / "child/receipt.json"
        or decision["resource_receipt_ref"] not in checkpoint["inputs"]
        or checkpoint["stage_outcome"] != "succeeded"
        or checkpoint["source_validation_error"] is not None
        or receipt["format"] != "core036.resource.v2"
        or receipt["work_id"] != profile["work_id"]
        or receipt["exit_code"] != 0
        or receipt["stop_reason"] is not None
        or receipt["tree_empty"] is not True
        or receipt["group_empty"] is not True
        or receipt["source_subject_ref"] != checkpoint["source_subject_ref"]
        or receipt["final_growth_violation"] is not None
        or receipt["final_storage_inventory_error"] is not None
    ):
        raise ValueError("V2EvidenceCapacityActualObservation")
    from controller_v2 import load_work

    _, journal_refs, ledger = load_work(expected_root / "context.json")
    actual = ledger.attempts.get(checkpoint["attempt_id"])
    if (
        actual is None
        or actual["state"] != "closed"
        or actual["outcome"] != "succeeded"
        or actual["subject"] != checkpoint["source_subject_ref"]["sha256"]
        or journal_refs.verify(actual["declaration_ref"])
        != checkpoint_path.parent / "declaration.json"
        or not any(
            journal_refs.verify(ref) == checkpoint_path.parent / "declaration.json"
            for ref in checkpoint["inputs"]
        )
    ):
        raise ValueError("V2EvidenceCapacityNotActualJournalAttempt")
    if (
        old != previous["limits"]["evidence_bytes"]
        or old != declaration["profile"]["limits"]["evidence_bytes"]
        or new <= old
        or previous["roots"] != profile["roots"]
    ):
        raise ValueError("V2EvidenceCapacityDeclaredAllocation")
    observation = receipt["final_resource_observation"]
    used = observation["growth_apparent_unique_inode_bytes"]["artifacts"]
    if used > old or used != receipt["final_incremental_storage_bytes"]["artifacts"]:
        raise ValueError("V2EvidenceCapacityPriorAccounting")
    check_capacity_headroom_v2(
        observation["free_volume_bytes"]["data"],
        used,
        new,
        previous["limits"]["data_stop_bytes"],
    )
    limits = dict(previous["limits"])
    limits["evidence_bytes"] = new
    return limits
