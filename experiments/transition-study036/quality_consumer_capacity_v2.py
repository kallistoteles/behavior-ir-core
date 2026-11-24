"""A prospective finite allocation for the observed external-consumer compile."""

from artifact_io import RootRegistry
from artifact_registration_v2 import guard_reference
from records import MANIFEST

GIB = 1024**3
MIB = 1024**2
PREFIX = "specs/036-core-transition-feasibility/inputs/v2/"
DECISION = PREFIX + "quality-consumer-capacity-001.json"
ARCHIVE_RESERVE = 1200 * MIB
CONSUMER_RESERVE = 700 * MIB


def consumer_limits(previous, candidate):
    if (
        previous.get("stage") not in {"Q", "NATIVE"}
        or candidate.get("stage") != previous.get("stage")
        or any(
            previous.get(k) != candidate.get(k)
            for k in ["work_id", "roots", "native_profile", "specification_ref"]
        )
        or any(
            previous["limits"].get(k) != v
            for k, v in {
                "cache_bytes": 34 * GIB,
                "temporary_bytes": 5 * GIB,
                "evidence_bytes": 9 * GIB + 128 * MIB,
                "new_shared_store_bytes": 6 * GIB - 128 * MIB,
                "combined_bytes": 48 * GIB,
            }.items()
        )
        or any(
            type(v) is not int
            for p in [previous, candidate]
            for v in p["limits"].values()
        )
    ):
        raise ValueError("ConsumerCapacityExactPreviousSubject")
    expected = {
        **previous["limits"],
        "cache_bytes": 36 * GIB,
        "evidence_bytes": 10 * GIB,
        "combined_bytes": 52 * GIB,
    }
    if candidate["limits"] != expected:
        raise ValueError("ConsumerCapacityOnlyDeclaredStorageChanges")
    return expected


def planned_consumer_limits(profile):
    from bootstrap import validate_v2_profile
    from controller_v2 import artifact_context_for
    from continued_capacity_v2 import continued_headroom

    allocation = profile["allocation"]
    for reference in [
        *profile["inputs"],
        allocation["predecessor"],
        allocation["correction"],
    ]:
        guard_reference(reference)
    if (
        allocation["correction"]["root_id"] != "repository"
        or allocation["correction"]["path"] != DECISION
        or any(
            allocation[k] not in profile["inputs"]
            for k in ["predecessor", "correction"]
        )
    ):
        raise ValueError("ConsumerCapacityNamedBoundDecision")
    refs, store = artifact_context_for(profile["work_id"])
    if store.active_root_id != "future_evidence":
        raise ValueError("ConsumerCapacityRegisteredStore")
    decision = refs.read(allocation["correction"])
    expected = {
        "quality_profile_ref": (
            "repository",
            PREFIX + "profiles/quality-preparation-evidence-transfer-001.json",
        ),
        "native_profile_ref": (
            "repository",
            PREFIX + "profiles/native-preparation-evidence-transfer-001.json",
        ),
        "checkpoint_ref": ("future_evidence", "attempts/a0575/checkpoint.json"),
        "declaration_ref": ("future_evidence", "attempts/a0575/declaration.json"),
        "receipt_ref": ("future_evidence", "attempts/a0575/child/receipt.json"),
        "before_ref": ("private", "quality/a0575/runtime/before.json"),
        "job_ref": ("private", "quality/a0575/runtime-job.json"),
        "stderr_ref": ("private", "quality/a0575/stderr.txt"),
        "preservation_ref": ("private", "quality/a0575/retained-cache/result.json"),
        "binding_ref": ("private", "quality/a0575/prepared-build-binding.json"),
        "campaign_contract_ref": (
            "repository",
            "specs/036-core-transition-feasibility/contracts/campaign.md",
        ),
    }
    if (
        set(decision)
        != {
            *expected,
            "format",
            "reason",
            "planned_archive_bytes",
            "planned_consumer_bytes",
            "evidence_reserve_bytes",
        }
        or decision["format"] != "core036.quality-consumer-capacity.v2"
        or not isinstance(decision["reason"], str)
        or not decision["reason"].strip()
        or any(
            type(decision[k]) is not int or decision[k] != v
            for k, v in [
                ("planned_archive_bytes", ARCHIVE_RESERVE),
                ("planned_consumer_bytes", CONSUMER_RESERVE),
                ("evidence_reserve_bytes", 256 * MIB),
            ]
        )
        or allocation["predecessor"] != decision["checkpoint_ref"]
    ):
        raise ValueError("ConsumerCapacityDecision")
    paths = {}
    for key, (root, name) in expected.items():
        guard_reference(decision[key])
        if (
            decision[key] not in profile["inputs"]
            or refs.verify(decision[key]) != refs.roots[root] / name
        ):
            raise ValueError("ConsumerCapacityExactRecordedInputs")
        paths[key] = refs.verify(decision[key])
    base = refs.read(
        decision[
            "native_profile_ref"
            if profile["stage"] == "NATIVE"
            else "quality_profile_ref"
        ]
    )
    validate_v2_profile(base)
    limits = consumer_limits(base, profile)
    RootRegistry({"attempt": paths["checkpoint_ref"].parent}).verify_closed("attempt")
    cp = refs.read(decision["checkpoint_ref"])
    rc = refs.read(decision["receipt_ref"], limit=MANIFEST)
    parent = refs.read(decision["declaration_ref"], limit=MANIFEST)
    quality = refs.read(decision["quality_profile_ref"])
    usage = rc["final_resource_observation"]["growth_apparent_unique_inode_bytes"]
    if (
        cp.get("stage_outcome") != "resource_stopped"
        or cp.get("outcome", {}).get("operational") != "closed"
        or cp.get("source_validation_error") is not None
        or parent.get("profile") != quality
        or parent.get("stage") != "Q"
        or parent.get("slots") != ["canonical-quality"]
        or parent.get("source_subject_ref") != cp.get("source_subject_ref")
        or rc.get("source_subject_ref") != cp.get("source_subject_ref")
        or rc.get("format") != "core036.resource.v2"
        or rc.get("stage") != "Q"
        or rc.get("work_id") != profile["work_id"]
        or type(rc.get("exit_code")) is not int
        or rc["exit_code"] != -9
        or rc.get("stop_reason") != "CacheGrowthLimit"
        or rc.get("controller_error") is not None
        or rc.get("tree_empty") is not True
        or rc.get("group_empty") is not True
        or rc.get("final_storage_inventory_error") is not None
        or rc.get("final_incremental_storage_bytes") != usage
        or rc.get("growth_observer_scope") != "registered_actual_roots"
        or rc.get("free_volume_observer_scope") != "actual_registered_volumes"
        or not quality["limits"]["cache_bytes"]
        < usage["cache"]
        <= quality["limits"]["cache_bytes"] + 64 * MIB
    ):
        raise ValueError("ConsumerCapacityActualClosed575CacheStop")
    job = refs.read(decision["job_ref"])
    if job.get("mode") != "gate" or job.get("target") != str(
        refs.roots["private"] / "disposable/gate-a0574/target"
    ):
        raise ValueError("ConsumerCapacityActualPreparedTarget")
    expected_labels = [
        "cargo fmt",
        "clippy",
        "cargo test",
        "prepared state work",
        "incremental validation work",
        "cargo build",
        "determinism check",
        "boundary",
        "public surface",
        "external consumer",
    ]
    labels = [
        line
        for line in paths["stderr_ref"].read_text().splitlines()
        if line.startswith("gates:")
    ]
    if labels != ["gates: " + name for name in expected_labels]:
        raise ValueError("ConsumerCapacityActualConsumerStage")
    binding = refs.read(decision["binding_ref"])
    preservation = refs.read(decision["preservation_ref"], limit=MANIFEST)
    if (
        binding.get("whole_gate_must_run") is not True
        or binding.get("reused_results") is not False
        or binding.get("target") != job["target"]
        or preservation.get("file_count") != 4742
        or preservation.get("archive_bytes") != 726970884
        or preservation.get("quality_pass_inherited") is not False
    ):
        raise ValueError("ConsumerCapacityPreservedCompiledInputs")
    continued_headroom(
        usage, limits, rc["final_resource_observation"]["free_volume_bytes"]
    )
    if (
        limits["cache_bytes"] - usage["cache"]
        < ARCHIVE_RESERVE + CONSUMER_RESERVE + 64 * MIB
        or limits["combined_bytes"] - sum(usage.values())
        < ARCHIVE_RESERVE + CONSUMER_RESERVE + decision["evidence_reserve_bytes"]
        or limits["evidence_bytes"] - usage["artifacts"]
        < decision["evidence_reserve_bytes"]
    ):
        raise ValueError("ConsumerCapacityArchiveCompileClosureHeadroom")
    return limits
