"""One prospective 20→21 GiB cache allocation from the actual closed stop."""

from pathlib import Path

from artifact_io import RootRegistry
from capacity_profile_v2 import check_capacity_headroom_v2
from records import MANIFEST, u64

R = Path(__file__).resolve().parents[2]
GIB = 1024**3


def cache_capacity_step(old, new):
    if (u64(old), u64(new)) != (20 * GIB, 21 * GIB):
        raise ValueError("V2CacheCapacityDeclaredStep")


def cache_limits(previous, candidate):
    """Reject every other change before the expensive provenance recheck."""
    cache_capacity_step(previous["cache_bytes"], candidate["cache_bytes"])
    expected = {**previous, "cache_bytes": 21 * GIB}
    if candidate != expected or any(type(v) is not int for v in candidate.values()):
        raise ValueError("V2CacheCapacityOtherLimitChanged")
    return expected


def extended_cache_limits(profile):
    from bootstrap import validate_v2_profile
    from controller_v2 import load_work

    refs = RootRegistry({"repository": R}, readonly=["repository"])
    allocation = profile["allocation"]
    if profile["stage"] != "NATIVE":
        raise ValueError("V2CacheCapacityStage")
    for name in ["predecessor", "correction"]:
        reference = allocation.get(name)
        if reference not in profile["inputs"]:
            raise ValueError("V2CacheCapacityInput")
        refs.verify(reference)
    cp_path = refs.verify(allocation["predecessor"])
    work = R / "specs/036-core-transition-feasibility/evidence/v2" / profile["work_id"]
    if cp_path != work / "attempts/a0301/checkpoint.json":
        raise ValueError("V2CacheCapacityPredecessor")
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
            "old_cache_bytes",
            "new_cache_bytes",
        }
        or decision["format"] != "core036.resource-correction-decision.v2"
        or decision["scope"] != "prospective owned cache capacity only"
        or not isinstance(decision["reason"], str)
        or not decision["reason"].strip()
        or decision["cause_refs"] != [allocation["predecessor"]]
    ):
        raise ValueError("V2CacheCapacityDecision")
    cache_capacity_step(decision["old_cache_bytes"], decision["new_cache_bytes"])
    previous = refs.read(decision["previous_profile_ref"])
    if previous["limits"]["cache_bytes"] != 20 * GIB:
        raise ValueError("V2CacheCapacityOrigin")
    limits = cache_limits(previous["limits"], profile["limits"])
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
        or previous["roots"] != profile["roots"]
        or previous["work_id"] != profile["work_id"]
        or previous["stage"] != profile["stage"]
        or receipt_path != cp_path.parent / "child/receipt.json"
        or decision["resource_receipt_ref"] not in cp["inputs"]
        or cp["stage_outcome"] != "resource_stopped"
        or cp["source_validation_error"] is not None
        or receipt["format"] != "core036.resource.v2"
        or receipt["source_subject_ref"] != cp["source_subject_ref"]
        or receipt["stop_reason"] != "CacheGrowthLimit"
        or receipt["final_growth_violation"] != "CacheGrowthLimit"
        or receipt["final_storage_inventory_error"] is not None
        or receipt["tree_empty"] is not True
        or receipt["group_empty"] is not True
    ):
        raise ValueError("V2CacheCapacityActualStop")
    _, journal_refs, ledger = load_work(work / "context.json")
    actual = ledger.attempts.get(cp["attempt_id"])
    if (
        actual is None
        or actual["state"] != "closed"
        or actual["outcome"] != "resource_stopped"
        or actual["subject"] != cp["source_subject_ref"]["sha256"]
        or journal_refs.verify(actual["declaration_ref"])
        != cp_path.parent / "declaration.json"
    ):
        raise ValueError("V2CacheCapacityActualJournal")
    observation = receipt["final_resource_observation"]
    usage = observation["growth_apparent_unique_inode_bytes"]
    if (
        usage != receipt["final_incremental_storage_bytes"]
        or usage["cache"] <= 20 * GIB
    ):
        raise ValueError("V2CacheCapacityAccounting")
    check_capacity_headroom_v2(
        observation["free_volume_bytes"]["root"],
        usage["cache"],
        21 * GIB,
        previous["limits"]["root_stop_bytes"],
    )
    if (
        sum(usage.values()) + (21 * GIB - usage["cache"])
        > previous["limits"]["combined_bytes"]
    ):
        raise ValueError("V2CacheCapacityCombined")
    return limits
