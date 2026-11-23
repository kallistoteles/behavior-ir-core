"""One explicit new-source rebuild allocation; previous attempts stay unchanged."""

from pathlib import Path

from artifact_io import RootRegistry
from records import MANIFEST
from artifact_registration_v2 import guard_reference

GIB = 1024**3
R = Path(__file__).resolve().parents[2]


def verify_historical_rebuild_sources(refs, changed, subject):
    """Verify old decision bytes, without granting authority to current source."""
    if (
        not isinstance(subject, dict)
        or subject.get("format") != "core036.source.v2"
        or subject.get("work_id") != "w001"
        or subject.get("outcome", {}).get("operational") != "completed"
        or not isinstance(subject.get("files"), list)
        or not 0 < len(subject["files"]) <= 20000
        or not isinstance(changed, list)
        or not changed
    ):
        raise ValueError("HistoricalRebuildSourceSubject")
    for reference in changed:
        guard_reference(reference)
    for row in subject["files"]:
        if not isinstance(row, dict) or set(row) != {"logical_ref", "snapshot_ref"}:
            raise ValueError("HistoricalRebuildSourceRow")
        guard_reference(row["logical_ref"])
        guard_reference(row["snapshot_ref"])
    for reference in changed:
        matches = [row for row in subject["files"] if row["logical_ref"] == reference]
        if len(matches) != 1:
            raise ValueError("HistoricalRebuildSourceCoverage")
        snapshot = matches[0]["snapshot_ref"]
        if (snapshot["bytes"], snapshot["sha256"]) != (
            reference["bytes"],
            reference["sha256"],
        ):
            raise ValueError("HistoricalRebuildSourceBytes")
        refs.verify(snapshot)


def rebuild_limits(previous, candidate):
    if (
        previous.get("stage") != "NATIVE"
        or candidate.get("stage") != "NATIVE"
        or any(
            previous.get(k) != candidate.get(k)
            for k in ("work_id", "roots", "specification_ref", "native_profile")
        )
        or previous["limits"]["cache_bytes"] != 21 * GIB
        or candidate["limits"] != {**previous["limits"], "cache_bytes": 22 * GIB}
        or any(type(v) is not int for v in candidate["limits"].values())
    ):
        raise ValueError("V2RebuildCapacityOnlyCacheStep")
    return candidate["limits"]


def rebuild_headroom(usage, new_cache, combined, planned, free, floor):
    values = [*usage.values(), new_cache, combined, planned, free, floor]
    if (
        set(usage) != {"cache", "temporary", "artifacts", "shared_store"}
        or any(type(v) is not int or v < 0 for v in values)
        or planned != 1200 * 1024**2
        or usage["cache"] + planned > new_cache
        or sum(usage.values()) + planned > combined
        or free - planned < floor
    ):
        raise ValueError("V2RebuildCapacityAdmission")


def planned_rebuild_limits(profile):
    from bootstrap import validate_v2_profile
    from controller_v2 import artifact_context_for

    refs, store = artifact_context_for(profile["work_id"])
    if refs.roots["repository"] != R or store.active_root_id != "future_evidence":
        raise ValueError("HistoricalRebuildRegisteredRoots")
    allocation = profile["allocation"]
    if profile["stage"] != "NATIVE":
        raise ValueError("V2RebuildCapacityStage")
    for key in ("predecessor", "correction"):
        if allocation.get(key) not in profile["inputs"]:
            raise ValueError("V2RebuildCapacityInput")
        refs.verify(allocation[key])
    cp_path = refs.verify(allocation["predecessor"])
    expected = (
        R
        / "specs/036-core-transition-feasibility/evidence/v2/w001/attempts/a0328/checkpoint.json"
    )
    if cp_path != expected:
        raise ValueError("V2RebuildCapacityActualPredecessor")
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
            "changed_rust_refs",
            "old_native_cost_receipt_refs",
        }
        or decision["format"] != "core036.resource-correction-decision.v2"
        or decision["scope"] != "prospective source-changed native rebuild cache only"
        or not isinstance(decision["reason"], str)
        or not decision["reason"].strip()
        or decision["cause_refs"] != [allocation["predecessor"]]
        or decision["planned_growth_bytes"] != 1200 * 1024**2
        or decision["previous_profile_ref"] not in profile["inputs"]
    ):
        raise ValueError("V2RebuildCapacityDecision")
    previous = refs.read(decision["previous_profile_ref"])
    limits = rebuild_limits(previous, profile)
    validate_v2_profile(previous)
    declaration = refs.read(
        refs.reference(
            "repository", str((cp_path.parent / "declaration.json").relative_to(R))
        )
    )
    receipt_path = refs.verify(decision["resource_receipt_ref"])
    receipt = refs.read(decision["resource_receipt_ref"], limit=MANIFEST)
    if (
        previous != declaration["profile"]
        or cp["stage_outcome"] != "succeeded"
        or cp["source_validation_error"] is not None
        or receipt_path != cp_path.parent / "child/receipt.json"
        or decision["resource_receipt_ref"] not in cp["inputs"]
        or receipt["source_subject_ref"] != cp["source_subject_ref"]
        or receipt["stop_reason"] is not None
        or receipt["final_storage_inventory_error"] is not None
        or receipt["tree_empty"] is not True
        or receipt["group_empty"] is not True
    ):
        raise ValueError("V2RebuildCapacityActualClosure")
    changed = decision["changed_rust_refs"]
    allowed = {
        "serialization",
        "output",
        "io",
        "protocol",
        "native_artifacts",
        "group",
        "raw_oracle",
    }
    if (
        not isinstance(changed, list)
        or len(changed) != len(allowed)
        or {x.get("path") for x in changed}
        != {f"experiments/transition-study036/src/{name}.rs" for name in allowed}
        or any(x.get("root_id") != "repository" for x in changed)
    ):
        raise ValueError("V2RebuildCapacityChangedSource")
    # This chain validates a historical allocation, not the next executable.
    # Later source edits must neither rewrite the old decision nor make its
    # immutable source bytes unverifiable.
    policy_path = (
        R
        / "specs/036-core-transition-feasibility/inputs/v2/native-rebuild-source-history-001.json"
    )
    policy = refs.read(refs.reference("repository", str(policy_path.relative_to(R))))
    if (
        set(policy)
        != {
            "format",
            "decision_ref",
            "source_checkpoint_ref",
            "source_subject_ref",
            "scope",
        }
        or policy["format"] != "core036.rebuild-source-history.v1"
        or policy["decision_ref"] != allocation["correction"]
        or policy["scope"] != "historical_resource_decision_only"
    ):
        raise ValueError("HistoricalRebuildSourcePolicy")
    anchor_path = refs.verify(policy["source_checkpoint_ref"])
    if anchor_path != refs.roots["future_evidence"] / "attempts/a0564/checkpoint.json":
        raise ValueError("HistoricalRebuildSourceAnchor")
    anchor = refs.read(policy["source_checkpoint_ref"])
    if (
        anchor["outcome"]["operational"] != "closed"
        or anchor["source_validation_error"] is not None
        or anchor["source_subject_ref"] != policy["source_subject_ref"]
    ):
        raise ValueError("HistoricalRebuildSourceAnchorClosure")
    verify_historical_rebuild_sources(
        refs, changed, refs.read(policy["source_subject_ref"], limit=MANIFEST)
    )
    old_costs = decision["old_native_cost_receipt_refs"]
    if (
        not isinstance(old_costs, list)
        or len(old_costs) != 2
        or [x.get("path") for x in old_costs]
        != [
            f"specs/036-core-transition-feasibility/evidence/v2/w001/attempts/{name}/child/receipt.json"
            for name in ("a0301", "a0303")
        ]
    ):
        raise ValueError("V2RebuildCapacityCostSources")
    for reference in old_costs:
        old = refs.read(reference, limit=MANIFEST)
        if old["tree_empty"] is not True or old["group_empty"] is not True:
            raise ValueError("V2RebuildCapacityHistoricalClosure")
    observation = receipt["final_resource_observation"]
    usage = observation["growth_apparent_unique_inode_bytes"]
    if usage != receipt["final_incremental_storage_bytes"]:
        raise ValueError("V2RebuildCapacityAccounting")
    rebuild_headroom(
        usage,
        limits["cache_bytes"],
        limits["combined_bytes"],
        decision["planned_growth_bytes"],
        observation["free_volume_bytes"]["root"],
        limits["root_stop_bytes"],
    )
    if observation["free_volume_bytes"]["data"] < limits["data_stop_bytes"]:
        raise ValueError("V2RebuildCapacityDataFloor")
    return limits
