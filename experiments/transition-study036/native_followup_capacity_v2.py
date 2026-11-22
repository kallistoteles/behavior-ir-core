"""A fixed prospective128MiB evidence step after actual closed482."""

from artifact_io import RootRegistry, digest
from artifact_registration_v2 import guard_reference
from records import MANIFEST, u64

GIB = 1024**3
MIB = 1024**2
STEP = 128 * MIB
OLD_EVIDENCE = 7 * GIB + 640 * MIB


def followup_limits(previous, candidate):
    if (
        previous.get("stage") != "NATIVE"
        or candidate.get("stage") != "NATIVE"
        or any(
            previous.get(k) != candidate.get(k)
            for k in ("work_id", "roots", "native_profile", "specification_ref")
        )
        or previous["limits"]["evidence_bytes"] != OLD_EVIDENCE
        or candidate["limits"]
        != {**previous["limits"], "evidence_bytes": OLD_EVIDENCE + STEP}
        or any(type(v) is not int for v in candidate["limits"].values())
    ):
        raise ValueError("NativeFollowupOnlyFixedEvidenceStep")
    return dict(candidate["limits"])


def followup_headroom(usage, limits, free):
    if set(usage) != {"cache", "temporary", "artifacts", "shared_store"} or set(
        free
    ) != {"root", "data"}:
        raise ValueError("NativeFollowupResourceFields")
    for value in [*usage.values(), *free.values()]:
        u64(value)
    for role, field in [
        ("cache", "cache_bytes"),
        ("temporary", "temporary_bytes"),
        ("artifacts", "evidence_bytes"),
        ("shared_store", "new_shared_store_bytes"),
    ]:
        if usage[role] > limits[field]:
            raise ValueError("NativeFollowupCurrentOverflow")
    remaining = limits["evidence_bytes"] - usage["artifacts"]
    legacy = 16 * MIB
    if remaining < legacy:
        raise ValueError("NativeFollowupClosureReserve")
    root_reserve = (
        remaining
        - legacy
        + limits["cache_bytes"]
        - usage["cache"]
        + limits["temporary_bytes"]
        - usage["temporary"]
    )
    if (
        sum(usage.values()) + root_reserve + legacy > limits["combined_bytes"]
        or free["root"] - root_reserve < limits["root_stop_bytes"]
        or free["data"] - legacy < limits["data_stop_bytes"]
    ):
        raise ValueError("NativeFollowupCombinedOrVolumeHeadroom")


def planned_followup_limits(profile):
    from bootstrap import validate_v2_profile
    from controller_v2 import artifact_context_for
    from campaign import WorkLedger

    refs, store = artifact_context_for(profile["work_id"])
    if store.active_root_id != "future_evidence":
        raise ValueError("NativeFollowupRegisteredStore")
    allocation = profile["allocation"]
    for key in ("predecessor", "correction"):
        guard_reference(allocation.get(key))
        if allocation[key] not in profile["inputs"]:
            raise ValueError("NativeFollowupProfileInputs")
    cp_path = refs.verify(allocation["predecessor"])
    if cp_path != refs.roots["future_evidence"] / "attempts/a0482/checkpoint.json":
        raise ValueError("NativeFollowupActual482")
    RootRegistry({"attempt": cp_path.parent}).verify_closed("attempt")
    cp = refs.read(allocation["predecessor"])
    decision = refs.read(allocation["correction"])
    if (
        set(decision)
        != {
            "format",
            "scope",
            "reason",
            "previous_profile_ref",
            "cause_refs",
            "resource_receipt_ref",
            "planned_growth_bytes",
            "work_plan_refs",
        }
        or decision["format"] != "core036.resource-correction-decision.v2"
        or decision["scope"]
        != "prospective registered native evidence continuation only"
        or not isinstance(decision["reason"], str)
        or not decision["reason"].strip()
        or decision["cause_refs"] != [allocation["predecessor"]]
        or type(decision["planned_growth_bytes"]) is not int
        or decision["planned_growth_bytes"] != STEP
        or decision["previous_profile_ref"] not in profile["inputs"]
        or not isinstance(decision["work_plan_refs"], list)
        or not decision["work_plan_refs"]
    ):
        raise ValueError("NativeFollowupDecision")
    for ref in [
        decision["previous_profile_ref"],
        decision["resource_receipt_ref"],
        *decision["work_plan_refs"],
    ]:
        guard_reference(ref)
        if ref not in profile["inputs"]:
            raise ValueError("NativeFollowupMissingBoundInput")
        refs.verify(ref)
    previous = refs.read(decision["previous_profile_ref"])
    limits = followup_limits(previous, profile)
    validate_v2_profile(previous)
    declaration_ref = refs.reference(
        "future_evidence", "attempts/a0482/declaration.json"
    )
    declaration = refs.read(declaration_ref)
    receipt_path = refs.verify(decision["resource_receipt_ref"])
    receipt = refs.read(decision["resource_receipt_ref"], limit=MANIFEST)
    if (
        previous != declaration["profile"]
        or declaration_ref not in cp["inputs"]
        or cp["stage_outcome"] != "succeeded"
        or cp["source_validation_error"] is not None
        or receipt_path != cp_path.parent / "child/receipt.json"
        or decision["resource_receipt_ref"] not in cp["inputs"]
        or receipt["source_subject_ref"] != cp["source_subject_ref"]
        or receipt["exit_code"] != 0
        or receipt["stop_reason"] is not None
        or receipt["tree_empty"] is not True
        or receipt["group_empty"] is not True
        or receipt["growth_observer_scope"] != "registered_actual_roots"
        or receipt["free_volume_observer_scope"] != "actual_registered_volumes"
        or receipt["final_storage_inventory_error"] is not None
        or receipt["final_growth_violation"] is not None
        or receipt["final_incremental_storage_bytes"]
        != receipt["final_resource_observation"]["growth_apparent_unique_inode_bytes"]
    ):
        raise ValueError("NativeFollowupClosedActualObservation")
    for filename, key in [
        ("stdout.txt", "stdout_sha256"),
        ("stderr.txt", "stderr_sha256"),
    ]:
        if digest(receipt_path.parent / filename) != receipt[key]:
            raise ValueError("NativeFollowupActualLogBytes")
    ledger = WorkLedger(
        refs.roots["work"], profile["work_id"], registry=refs, artifact_store=store
    )
    actual = ledger.attempts.get("a0482")
    if (
        actual is None
        or actual["state"] != "closed"
        or actual["outcome"] != "succeeded"
        or refs.verify(actual["declaration_ref"]) != refs.verify(declaration_ref)
    ):
        raise ValueError("NativeFollowupActualJournal")
    observed = receipt["final_resource_observation"]
    followup_headroom(
        observed["growth_apparent_unique_inode_bytes"],
        limits,
        observed["free_volume_bytes"],
    )
    return limits
