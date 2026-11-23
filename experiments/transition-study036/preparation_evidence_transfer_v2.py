"""Prospective receipt reserve transferred inside the existing total budget."""

from artifact_registration_v2 import guard_reference
from records import MANIFEST

PREFIX = "specs/036-core-transition-feasibility/inputs/v2/"
DECISION = PREFIX + "preparation-evidence-transfer-001.json"
TRANSFER = 128 * 1024**2
GIB = 1024**3


def transfer_limits(previous, candidate):
    if (
        previous.get("stage") not in {"NATIVE", "Q"}
        or candidate.get("stage") != previous.get("stage")
        or any(
            previous.get(k) != candidate.get(k)
            for k in ["work_id", "roots", "native_profile", "specification_ref"]
        )
        or previous["limits"].get("evidence_bytes") != 9 * GIB
        or previous["limits"].get("new_shared_store_bytes") != 6 * GIB
        or any(
            type(v) is not int
            for p in [previous, candidate]
            for v in p["limits"].values()
        )
    ):
        raise ValueError("EvidenceTransferExactPredecessor")
    expected = {
        **previous["limits"],
        "evidence_bytes": 9 * GIB + TRANSFER,
        "new_shared_store_bytes": 6 * GIB - TRANSFER,
    }
    if candidate["limits"] != expected:
        raise ValueError("EvidenceTransferOnlyUnusedCategory")
    return expected


def planned_transfer_limits(profile):
    from bootstrap import validate_v2_profile
    from controller_v2 import artifact_context_for
    from continued_capacity_v2 import continued_headroom
    from native_suite_capacity_v2 import _closed_receipt

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
        raise ValueError("EvidenceTransferNamedBoundDecision")
    refs, store = artifact_context_for(profile["work_id"])
    if store.active_root_id != "future_evidence":
        raise ValueError("EvidenceTransferRegisteredStore")
    decision = refs.read(allocation["correction"])
    expected = {
        "native_profile_ref": (
            "repository",
            PREFIX + "profiles/native-preparation-capacity-001.json",
        ),
        "quality_profile_ref": (
            "repository",
            PREFIX + "profiles/quality-combined-continuation-001.json",
        ),
        "outer_ref": (
            "future_evidence",
            "bootstrap-runs/quality-cache-maintenance-002/result.json",
        ),
        "declaration_ref": (
            "future_evidence",
            "bootstrap-runs/quality-cache-maintenance-002/declaration.json",
        ),
        "source_index_ref": (
            "future_evidence",
            "bootstrap-runs/quality-cache-maintenance-002/source-index.json",
        ),
        "receipt_ref": (
            "private",
            "bootstrap/quality-cache-maintenance-002/receipt.json",
        ),
        "payload_ref": (
            "private",
            "quality-cache-maintenance/quality-cache-maintenance-002/result.json",
        ),
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
            "transfer_bytes",
            "receipt_reserve_bytes",
            "closure_reserve_bytes",
        }
        or decision["format"] != "core036.preparation-evidence-transfer.v2"
        or not isinstance(decision["reason"], str)
        or not decision["reason"].strip()
        or any(
            type(decision[k]) is not int or decision[k] != n
            for k, n in [
                ("transfer_bytes", TRANSFER),
                ("receipt_reserve_bytes", 64 * 1024**2),
                ("closure_reserve_bytes", 32 * 1024**2),
            ]
        )
        or allocation["predecessor"] != decision["outer_ref"]
    ):
        raise ValueError("EvidenceTransferDecision")
    for key, (root, name) in expected.items():
        guard_reference(decision[key])
        if (
            decision[key] not in profile["inputs"]
            or refs.verify(decision[key]) != refs.roots[root] / name
        ):
            raise ValueError("EvidenceTransferExactRecordedInputs")
    base = refs.read(
        decision[
            "native_profile_ref"
            if profile["stage"] == "NATIVE"
            else "quality_profile_ref"
        ]
    )
    validate_v2_profile(base)
    limits = transfer_limits(base, profile)
    outer = refs.read(decision["outer_ref"])
    receipt = refs.read(decision["receipt_ref"], limit=MANIFEST)
    _closed_receipt(receipt, "NATIVE", profile["work_id"])
    declared = refs.read(decision["declaration_ref"], limit=MANIFEST)
    index = refs.read(decision["source_index_ref"], limit=MANIFEST)
    if (
        type(outer.get("actual_exit")) is not int
        or outer["actual_exit"] != 0
        or outer.get("stop_reason") is not None
        or outer.get("all_source_bytes_equal_after") is not True
        or outer.get("tree_empty") is not True
        or outer.get("group_empty") is not True
        or outer.get("receipt_ref") != decision["receipt_ref"]
        or receipt.get("controller_error") is not None
        or receipt.get("source_subject_ref") != decision["source_index_ref"]
        or declared.get("source_subject_ref") != decision["source_index_ref"]
        or declared.get("profile") != refs.read(decision["native_profile_ref"])
        or receipt.get("growth_observer_scope") != "registered_actual_roots"
        or receipt.get("free_volume_observer_scope") != "actual_registered_volumes"
    ):
        raise ValueError("EvidenceTransferClosedMaintenance")
    # Check the retained inputs, not today's mutable logical source names.
    if not index.get("files"):
        raise ValueError("EvidenceTransferSourceProvenance")
    for row in index["files"]:
        guard_reference(row["snapshot_ref"])
        refs.verify(row["snapshot_ref"])
    payload = refs.read(decision["payload_ref"])
    if (
        payload.get("format") != "core036.quality-cache-maintenance.v2"
        or payload.get("all_files") != 4630
        or payload.get("files_removed_before") + payload.get("files_removed_here")
        != 4630
        or payload.get("all_original_paths_modes_and_bytes_retained") is not True
        or payload.get("old_archive_reused_without_rewriting") is not True
    ):
        raise ValueError("EvidenceTransferPreservedMaintenance")
    observed = receipt["final_resource_observation"]
    usage = observed["growth_apparent_unique_inode_bytes"]
    continued_headroom(usage, limits, observed["free_volume_bytes"])
    reserve = decision["receipt_reserve_bytes"] + decision["closure_reserve_bytes"]
    if (
        base["limits"]["evidence_bytes"] - usage["artifacts"] >= reserve
        or limits["evidence_bytes"] - usage["artifacts"] < reserve
        or limits["new_shared_store_bytes"] - usage["shared_store"] < TRANSFER
    ):
        raise ValueError("EvidenceTransferActualNeedAndUnusedCapacity")
    return limits
