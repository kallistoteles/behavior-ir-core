"""One prospective future-store allocation, preserving all whole-work limits."""

from artifact_io import RootRegistry, digest
from artifact_registration_v2 import guard_reference
from records import MANIFEST, u64

GIB = 1024**3
MIB = 1024**2
OLD_EVIDENCE = 7 * GIB + 128 * MIB
NEW_EVIDENCE = OLD_EVIDENCE + 512 * MIB


def future_capacity_limits(previous, candidate):
    if (
        previous.get("stage") != "NATIVE"
        or candidate.get("stage") != "NATIVE"
        or any(
            previous.get(key) != candidate.get(key)
            for key in ("work_id", "roots", "native_profile", "specification_ref")
        )
        or previous["limits"]["evidence_bytes"] != OLD_EVIDENCE
        or candidate["limits"] != {**previous["limits"], "evidence_bytes": NEW_EVIDENCE}
        or any(type(value) is not int for value in candidate["limits"].values())
    ):
        raise ValueError("V2FutureEvidenceOnlyNamedStep")
    return dict(candidate["limits"])


def check_future_headroom(usage, limits, free):
    if set(usage) != {"cache", "temporary", "artifacts", "shared_store"} or set(
        free
    ) != {"root", "data"}:
        raise ValueError("V2FutureEvidenceObservationFields")
    for value in [*usage.values(), *free.values()]:
        u64(value)
    for role, field in (
        ("cache", "cache_bytes"),
        ("temporary", "temporary_bytes"),
        ("artifacts", "evidence_bytes"),
        ("shared_store", "new_shared_store_bytes"),
    ):
        if usage[role] > limits[field]:
            raise ValueError("V2FutureEvidenceExistingOverflow")
    remaining = limits["evidence_bytes"] - usage["artifacts"]
    legacy_tail = 16 * MIB
    if remaining < legacy_tail:
        raise ValueError("V2FutureEvidenceClosureReserve")
    root_reservation = (
        remaining
        - legacy_tail
        + limits["cache_bytes"]
        - usage["cache"]
        + limits["temporary_bytes"]
        - usage["temporary"]
    )
    if (
        sum(usage.values()) + root_reservation + legacy_tail > limits["combined_bytes"]
        or free["root"] - root_reservation < limits["root_stop_bytes"]
        or free["data"] - legacy_tail < limits["data_stop_bytes"]
    ):
        raise ValueError("V2FutureEvidenceVolumeOrCombinedHeadroom")


def planned_future_limits(profile):
    from bootstrap import validate_v2_profile
    from controller_v2 import artifact_context_for

    refs, store = artifact_context_for(profile["work_id"])
    if store.active_root_id != "future_evidence":
        raise ValueError("V2FutureEvidenceRegisteredStoreRequired")
    allocation = profile["allocation"]
    for key in ("predecessor", "correction"):
        guard_reference(allocation.get(key))
        if allocation.get(key) not in profile["inputs"]:
            raise ValueError("V2FutureEvidenceProfileInput")
        refs.verify(allocation[key])
    checkpoint_path = refs.verify(allocation["predecessor"])
    if checkpoint_path != refs.roots["work"] / "attempts/a0476/checkpoint.json":
        raise ValueError("V2FutureEvidenceActualPredecessor")
    RootRegistry({"attempt": checkpoint_path.parent}).verify_closed("attempt")
    checkpoint = refs.read(allocation["predecessor"])
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
            "store_selection_ref",
            "legacy_tail_reserve_bytes",
        }
        or decision["format"] != "core036.resource-correction-decision.v2"
        or decision["scope"] != "prospective registered future evidence only"
        or not isinstance(decision["reason"], str)
        or not decision["reason"].strip()
        or decision["cause_refs"] != [allocation["predecessor"]]
        or type(decision["legacy_tail_reserve_bytes"]) is not int
        or decision["legacy_tail_reserve_bytes"] != 16 * MIB
        or decision["previous_profile_ref"] not in profile["inputs"]
        or decision["store_selection_ref"] not in store.configuration_refs
    ):
        raise ValueError("V2FutureEvidenceDecision")
    for key in ("previous_profile_ref", "resource_receipt_ref", "store_selection_ref"):
        guard_reference(decision[key])
    previous = refs.read(decision["previous_profile_ref"])
    limits = future_capacity_limits(previous, profile)
    validate_v2_profile(previous)
    declaration = refs.read(refs.reference("work", "attempts/a0476/declaration.json"))
    if (
        previous != declaration["profile"]
        or checkpoint["stage_outcome"] != "succeeded"
        or checkpoint["source_validation_error"] is not None
    ):
        raise ValueError("V2FutureEvidenceClosedBaseline")
    receipt_path = refs.verify(decision["resource_receipt_ref"])
    if (
        receipt_path
        != refs.roots["future_evidence"]
        / "development/future-resource-observation-001/receipt.json"
    ):
        raise ValueError("V2FutureEvidenceObservationPath")
    receipt = refs.read(decision["resource_receipt_ref"], limit=MANIFEST)
    if (
        receipt["format"] != "core036.resource.v2"
        or receipt["work_id"] != profile["work_id"]
        or receipt["stop_reason"] != "ArtifactGrowthLimit"
        or receipt["exit_code"] is not None
        or receipt["tree_empty"] is not True
        or receipt["group_empty"] is not True
        or receipt["final_storage_inventory_error"] is not None
        or receipt["growth_observer_scope"] != "registered_actual_roots"
        or receipt["free_volume_observer_scope"] != "actual_registered_volumes"
        or receipt["final_incremental_storage_bytes"]
        != receipt["final_resource_observation"]["growth_apparent_unique_inode_bytes"]
    ):
        raise ValueError("V2FutureEvidenceActualFullObservation")
    for role, path in previous["roots"].items():
        if not any(
            entry["role"] == role and entry["resolved_path"] == path
            for entry in receipt["registered_roots"]
        ):
            raise ValueError("V2FutureEvidenceObservedRoots")
    for required in (
        refs.roots["future_evidence"],
        refs.roots["repository"] / "specs/036-core-transition-feasibility/inputs/v2",
    ):
        if not any(
            entry["resolved_path"] == str(required) and entry["role"] == "artifacts"
            for entry in receipt["registered_control_paths"]
        ):
            raise ValueError("V2FutureEvidenceObservedControls")
    for key in ("monitor_source_ref", "monitor_storage_dependency_ref"):
        guard_reference(receipt[key])
    monitor = refs.verify(receipt["monitor_source_ref"])
    if (
        digest(monitor)
        != "356ff1cdd38f15bf88c1dbc53ab30f5433ba562a8c635f6bf5a18483141aaeab"
    ):
        raise ValueError("V2FutureEvidenceObservedMonitorSource")
    refs.verify(receipt["monitor_storage_dependency_ref"])
    if any(
        reference not in receipt["inputs"] for reference in store.configuration_refs
    ):
        raise ValueError("V2FutureEvidenceObservedSelection")
    for filename, key in (
        ("stdout.txt", "stdout_sha256"),
        ("stderr.txt", "stderr_sha256"),
    ):
        if digest(receipt_path.parent / filename) != receipt[key]:
            raise ValueError("V2FutureEvidenceObservationLogBytes")
    observation = receipt["final_resource_observation"]
    check_future_headroom(
        observation["growth_apparent_unique_inode_bytes"],
        limits,
        observation["free_volume_bytes"],
    )
    return limits
