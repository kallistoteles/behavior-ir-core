"""One named 22→24 GiB completion allocation; total work remains capped."""

from artifact_io import RootRegistry, digest
from artifact_registration_v2 import guard_reference
from records import MANIFEST, u64

GIB = 1024**3
PLANNED = 2 * GIB


def completion_limits(previous, candidate):
    if (
        previous.get("stage") != "NATIVE"
        or candidate.get("stage") != "NATIVE"
        or any(
            previous.get(key) != candidate.get(key)
            for key in ("work_id", "roots", "specification_ref", "native_profile")
        )
        or previous["limits"]["cache_bytes"] != 22 * GIB
        or candidate["limits"] != {**previous["limits"], "cache_bytes": 24 * GIB}
        or any(type(value) is not int for value in candidate["limits"].values())
    ):
        raise ValueError("V2CompletionOnlyNamedCacheStep")
    return dict(candidate["limits"])


def completion_headroom(usage, limits, free):
    if set(usage) != {"cache", "temporary", "artifacts", "shared_store"} or set(
        free
    ) != {"root", "data"}:
        raise ValueError("V2CompletionResourceFields")
    for value in [*usage.values(), *free.values()]:
        u64(value)
    if (
        usage["cache"] + PLANNED > limits["cache_bytes"]
        or usage["temporary"] > limits["temporary_bytes"]
        or usage["artifacts"] > limits["evidence_bytes"]
        or usage["shared_store"] > limits["new_shared_store_bytes"]
        or sum(usage.values()) + PLANNED > limits["combined_bytes"]
        or free["root"] - PLANNED < limits["root_stop_bytes"]
        or free["data"] - 16 * 1024**2 < limits["data_stop_bytes"]
    ):
        raise ValueError("V2CompletionActualHeadroom")


def planned_completion_limits(profile):
    from bootstrap import validate_v2_profile
    from controller_v2 import artifact_context_for
    from campaign import WorkLedger

    refs, store = artifact_context_for(profile["work_id"])
    if store.active_root_id != "future_evidence" or "future_evidence" not in refs.roots:
        raise ValueError("V2CompletionRegisteredStoreRequired")
    allocation = profile["allocation"]
    for key in ("predecessor", "correction"):
        guard_reference(allocation.get(key))
        if allocation[key] not in profile["inputs"]:
            raise ValueError("V2CompletionProfileInput")
        refs.verify(allocation[key])
    checkpoint_path = refs.verify(allocation["predecessor"])
    if (
        checkpoint_path
        != refs.roots["future_evidence"] / "attempts/a0479/checkpoint.json"
    ):
        raise ValueError("V2CompletionActualPredecessor")
    RootRegistry({"attempt": checkpoint_path.parent}).verify_closed("attempt")
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
        or decision["scope"] != "prospective source-bound native completion cache only"
        or not isinstance(decision["reason"], str)
        or not decision["reason"].strip()
        or decision["cause_refs"] != [allocation["predecessor"]]
        or type(decision["planned_growth_bytes"]) is not int
        or decision["planned_growth_bytes"] != PLANNED
        or decision["previous_profile_ref"] not in profile["inputs"]
        or not isinstance(decision["work_plan_refs"], list)
        or not decision["work_plan_refs"]
    ):
        raise ValueError("V2CompletionDecision")
    for reference in [
        decision["previous_profile_ref"],
        decision["resource_receipt_ref"],
        *decision["work_plan_refs"],
    ]:
        guard_reference(reference)
        refs.verify(reference)
    previous = refs.read(decision["previous_profile_ref"])
    limits = completion_limits(previous, profile)
    validate_v2_profile(previous)
    declaration_ref = refs.reference(
        "future_evidence", "attempts/a0479/declaration.json"
    )
    declaration = refs.read(declaration_ref)
    receipt_path = refs.verify(decision["resource_receipt_ref"])
    receipt = refs.read(decision["resource_receipt_ref"], limit=MANIFEST)
    if (
        previous != declaration["profile"]
        or cp["stage_outcome"] != "succeeded"
        or cp["source_validation_error"] is not None
        or declaration_ref not in cp["inputs"]
        or receipt_path != checkpoint_path.parent / "child/receipt.json"
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
        or store.active_root_id != "future_evidence"
    ):
        raise ValueError("V2CompletionClosedActualObservation")
    for filename, key in (
        ("stdout.txt", "stdout_sha256"),
        ("stderr.txt", "stderr_sha256"),
    ):
        if digest(receipt_path.parent / filename) != receipt[key]:
            raise ValueError("V2CompletionObservationLogBytes")
    ledger = WorkLedger(
        refs.roots["work"], profile["work_id"], registry=refs, artifact_store=store
    )
    actual = ledger.attempts.get("a0479")
    if (
        actual is None
        or actual["state"] != "closed"
        or actual["outcome"] != "succeeded"
        or refs.verify(actual["declaration_ref"]) != refs.verify(declaration_ref)
    ):
        raise ValueError("V2CompletionActualJournalBinding")
    observation = receipt["final_resource_observation"]
    completion_headroom(
        observation["growth_apparent_unique_inode_bytes"],
        limits,
        observation["free_volume_bytes"],
    )
    return limits
