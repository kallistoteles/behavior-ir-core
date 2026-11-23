"""One prospective completion allocation; old receipts and budgets remain fixed."""

from artifact_io import RootRegistry, read
from artifact_registration_v2 import guard_reference
from records import MANIFEST, u64

GIB = 1024**3
DATA_RESERVE = 16 * 1024**2


def continued_limits(previous, candidate):
    if (
        previous.get("stage") != "NATIVE"
        or candidate.get("stage") not in {"NATIVE", "Q", "SESSIONS", "DIAG"}
        or any(
            previous.get(key) != candidate.get(key)
            for key in ("work_id", "roots", "native_profile", "specification_ref")
        )
        or previous["limits"]["combined_bytes"] != 36 * GIB
        or previous["limits"]["cache_bytes"] != 24 * GIB - 128 * 1024**2
        or previous["limits"]["temporary_bytes"] != 4 * GIB
        or previous["limits"]["evidence_bytes"] != 8 * GIB + 128 * 1024**2
    ):
        raise ValueError("ContinuedCapacityExactPredecessor")
    expected = {
        **previous["limits"],
        "cache_bytes": 28 * GIB,
        "temporary_bytes": 5 * GIB,
        "evidence_bytes": 11 * GIB,
        "combined_bytes": 44 * GIB,
    }
    if candidate["stage"] == "Q":
        expected.update(attempt_seconds=7200, lean_address_space_bytes=4 * GIB)
    if candidate["stage"] == "SESSIONS":
        # The original session-stage clock is21600s. Storage is the existing
        # completion allocation; ordinary analysis Lean stays at4GiB.
        expected.update(attempt_seconds=21600, lean_address_space_bytes=4 * GIB)
    if candidate["stage"] == "DIAG":
        # Preserve the original diagnostic clock and900s child ceiling.
        expected.update(
            attempt_seconds=7200,
            extended_child_seconds=900,
            lean_address_space_bytes=4 * GIB,
        )
    if candidate["limits"] != expected or any(
        type(v) is not int for v in candidate["limits"].values()
    ):
        raise ValueError("ContinuedCapacityOtherLimitChanged")
    return dict(expected)


def continued_headroom(usage, limits, free):
    if set(usage) != {"cache", "temporary", "artifacts", "shared_store"} or set(
        free
    ) != {"root", "data"}:
        raise ValueError("ContinuedCapacityResourceFields")
    for value in [*usage.values(), *free.values()]:
        u64(value)
    for role, field in (
        ("cache", "cache_bytes"),
        ("temporary", "temporary_bytes"),
        ("artifacts", "evidence_bytes"),
        ("shared_store", "new_shared_store_bytes"),
    ):
        if usage[role] > limits[field]:
            raise ValueError("ContinuedCapacityCurrentOverflow")
    available = limits["combined_bytes"] - sum(usage.values())
    if available < DATA_RESERVE:
        raise ValueError("ContinuedCapacityClosureReserve")
    root_remaining = free["root"] - (available - DATA_RESERVE)
    data_remaining = free["data"] - DATA_RESERVE
    if (
        root_remaining < limits["root_stop_bytes"]
        or data_remaining < limits["data_stop_bytes"]
    ):
        raise ValueError("ContinuedCapacityVolumeHeadroom")
    return dict(
        remaining_combined_bytes=available,
        data_reserve_bytes=DATA_RESERVE,
        root_remaining_after_allocation=root_remaining,
        data_remaining_after_reserve=data_remaining,
    )


def planned_continued_limits(profile):
    correction = profile['allocation']['correction']
    guard_reference(correction)
    if (correction['root_id'] == 'repository'
        and correction['path'] == 'specs/036-core-transition-feasibility/inputs/v2/native-preparation-capacity-001.json'):
        from native_preparation_capacity_v2 import planned_preparation_limits

        return planned_preparation_limits(profile)
    if (correction['root_id'] == 'repository'
        and correction['path'] in {
            'specs/036-core-transition-feasibility/inputs/v2/quality-cache-continuation-001.json',
            'specs/036-core-transition-feasibility/inputs/v2/quality-combined-continuation-001.json',
        }):
        from current_quality_capacity_v2 import planned_cache_limits

        return planned_cache_limits(profile)
    if (correction['root_id'] == 'repository'
        and correction['path'] == 'specs/036-core-transition-feasibility/inputs/v2/current-quality-capacity-001.json'):
        from current_quality_capacity_v2 import planned_current_limits

        return planned_current_limits(profile)

    from bootstrap import validate_v2_profile
    from controller_v2 import artifact_context_for

    refs, store = artifact_context_for(profile["work_id"])
    if store.active_root_id != "future_evidence":
        raise ValueError("ContinuedCapacityRegisteredStore")
    allocation = profile["allocation"]
    for key in ("predecessor", "correction"):
        guard_reference(allocation[key])
        if allocation[key] not in profile["inputs"]:
            raise ValueError("ContinuedCapacityBoundInput")
    cp_path = refs.verify(allocation["predecessor"])
    if cp_path != refs.roots["future_evidence"] / "attempts/a0529/checkpoint.json":
        raise ValueError("ContinuedCapacityActualClosedBasis")
    RootRegistry({"attempt": cp_path.parent}).verify_closed("attempt")
    cp = refs.read(allocation["predecessor"])
    decision = refs.read(allocation["correction"])
    if (
        set(decision)
        != {
            "format",
            "reason",
            "previous_profile_ref",
            "resource_receipt_ref",
            "maintenance_result_ref",
            "campaign_contract_ref",
            "planned_limits",
        }
        or decision["format"] != "core036.continued-capacity-decision.v2"
        or not isinstance(decision["reason"], str)
        or not decision["reason"].strip()
        or decision["planned_limits"]
        != dict(
            cache_bytes=28 * GIB,
            temporary_bytes=5 * GIB,
            evidence_bytes=11 * GIB,
            combined_bytes=44 * GIB,
        )
    ):
        raise ValueError("ContinuedCapacityDecision")
    for key in (
        "previous_profile_ref",
        "resource_receipt_ref",
        "maintenance_result_ref",
        "campaign_contract_ref",
    ):
        guard_reference(decision[key])
        if decision[key] not in profile["inputs"]:
            raise ValueError("ContinuedCapacityBoundInput")
        refs.verify(decision[key])
    previous_path = refs.verify(decision["previous_profile_ref"])
    if (
        previous_path
        != refs.roots["repository"]
        / "specs/036-core-transition-feasibility/inputs/v2/profiles/native-cache-evidence-rebalance-001.json"
    ):
        raise ValueError("ContinuedCapacityPreviousProfile")
    previous = refs.read(decision["previous_profile_ref"])
    limits = continued_limits(previous, profile)
    validate_v2_profile(previous)
    receipt_path = refs.verify(decision["resource_receipt_ref"])
    receipt = refs.read(decision["resource_receipt_ref"], limit=MANIFEST)
    parent = read(cp_path.parent / "declaration.json", limit=MANIFEST)
    result = refs.read(decision["maintenance_result_ref"])
    if (
        cp["stage_outcome"] != "succeeded"
        or cp["source_validation_error"] is not None
        or cp["outcome"]["operational"] != "closed"
        or parent["profile"] != previous
        or receipt_path != cp_path.parent / "child/receipt.json"
        or receipt["source_subject_ref"] != cp["source_subject_ref"]
        or receipt["exit_code"] != 0
        or receipt["stop_reason"] is not None
        or receipt["tree_empty"] is not True
        or receipt["group_empty"] is not True
        or receipt["final_storage_inventory_error"] is not None
        or receipt["growth_observer_scope"] != "registered_actual_roots"
        or receipt["free_volume_observer_scope"] != "actual_registered_volumes"
        or receipt["final_incremental_storage_bytes"]
        != receipt["final_resource_observation"]["growth_apparent_unique_inode_bytes"]
        or refs.verify(decision["maintenance_result_ref"])
        != refs.roots["private"] / "native-cache-retention/a0529/result.json"
        or result["format"] != "core036.native-worker-cache-retention-result.v2"
        or result["source_subject_ref"] != cp["source_subject_ref"]
        or result["retained_executables_unchanged"] is not True
        or result["source_bindings_unchanged"] is not True
        or result["net_reclaimed_bytes"] != 605452116
    ):
        raise ValueError("ContinuedCapacityClosedResourceBasis")
    contract = refs.verify(decision["campaign_contract_ref"])
    if (
        contract
        != refs.roots["repository"]
        / "specs/036-core-transition-feasibility/contracts/campaign.md"
    ):
        raise ValueError("ContinuedCapacityCampaignContract")
    observed = receipt["final_resource_observation"]
    continued_headroom(
        observed["growth_apparent_unique_inode_bytes"],
        limits,
        observed["free_volume_bytes"],
    )
    return limits
