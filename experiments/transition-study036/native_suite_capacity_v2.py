"""One prospective full-suite child allowance inside the original NATIVE stage."""

from artifact_registration_v2 import guard_reference
from records import MANIFEST, u64


def suite_limits(previous, candidate):
    if (
        previous.get("stage") != "NATIVE"
        or candidate.get("stage") != "NATIVE"
        or any(
            previous.get(key) != candidate.get(key)
            for key in ["work_id", "roots", "native_profile", "specification_ref"]
        )
        or previous["limits"]["attempt_seconds"] != 14400
        or previous["limits"]["extended_child_seconds"] != 3600
        or previous["limits"]["cache_bytes"] != 30 * 1024**3
        or previous["limits"]["temporary_bytes"] != 5 * 1024**3
        or previous["limits"]["evidence_bytes"] != 9 * 1024**3
        or previous["limits"]["combined_bytes"] != 44 * 1024**3
        or candidate["limits"] != {**previous["limits"], "extended_child_seconds": 7200}
        or any(type(value) is not int for value in candidate["limits"].values())
    ):
        raise ValueError("NativeSuiteOnlyProspectiveChildAllowance")
    return dict(candidate["limits"])


def native_suite_child_seconds(slots, profile):
    if slots == ["quality-runtime-prepare"]:
        if (
            profile.get("stage") != "NATIVE"
            or profile.get("allocation", {}).get("correction", {}).get("path")
            not in {
                "specs/036-core-transition-feasibility/inputs/v2/native-preparation-capacity-001.json",
                "specs/036-core-transition-feasibility/inputs/v2/preparation-evidence-transfer-001.json",
            }
            or type(profile.get("limits", {}).get("extended_child_seconds")) is not int
            or profile["limits"]["extended_child_seconds"] != 7200
        ):
            raise ValueError("QualityBuildPreparationDeclaredNativeClock")
        return 7200
    return (
        profile["limits"]["extended_child_seconds"] if slots == ["us1-native"] else 3600
    )


def _closed_receipt(receipt, stage, work_id):
    if (
        receipt.get("format") != "core036.resource.v2"
        or receipt.get("stage") != stage
        or receipt.get("work_id") != work_id
        or type(receipt.get("exit_code")) is not int
        or receipt["exit_code"] != 0
        or receipt.get("stop_reason") is not None
        or receipt.get("tree_empty") is not True
        or receipt.get("group_empty") is not True
        or receipt.get("final_storage_inventory_error") is not None
        or receipt.get("final_incremental_storage_bytes")
        != receipt["final_resource_observation"]["growth_apparent_unique_inode_bytes"]
    ):
        raise ValueError("NativeSuiteNeedsActualClosedPackages")
    if u64(receipt["wall_ns"]) == 0:
        raise ValueError("NativeSuiteActualPackageClock")


def planned_suite_limits(profile):
    from bootstrap import validate_v2_profile
    from controller_v2 import artifact_context_for
    from native_cache_evidence_rebalance_v2 import instrumentation_headroom

    allocation = profile["allocation"]
    for reference in [
        *profile["inputs"],
        allocation["predecessor"],
        allocation["correction"],
    ]:
        guard_reference(reference)
    if any(
        allocation[key] not in profile["inputs"]
        for key in ["predecessor", "correction"]
    ):
        raise ValueError("NativeSuiteBoundInput")
    refs, store = artifact_context_for(profile["work_id"])
    if store.active_root_id != "future_evidence":
        raise ValueError("NativeSuiteRegisteredStore")
    for reference in profile["inputs"]:
        refs.verify(reference)
    decision = refs.read(allocation["correction"])
    if (
        set(decision)
        != {
            "format",
            "reason",
            "previous_profile_ref",
            "native_receipt_ref",
            "sessions_receipt_ref",
            "resource_result_ref",
            "resource_receipt_ref",
            "planned_build_bytes",
            "new_extended_child_seconds",
            "campaign_contract_ref",
        }
        or decision["format"] != "core036.native-suite-capacity.v2"
        or not isinstance(decision["reason"], str)
        or not decision["reason"].strip()
        or type(decision["planned_build_bytes"]) is not int
        or decision["planned_build_bytes"] != 1200 * 1024**2
        or type(decision["new_extended_child_seconds"]) is not int
        or decision["new_extended_child_seconds"] != 7200
        or allocation["predecessor"] != decision["resource_result_ref"]
    ):
        raise ValueError("NativeSuiteDecision")
    expected = {
        "previous_profile_ref": (
            "repository",
            "specs/036-core-transition-feasibility/inputs/v2/profiles/native-core-instrumentation-rebalance-001.json",
        ),
        "native_receipt_ref": ("future_evidence", "attempts/a0545/child/receipt.json"),
        "sessions_receipt_ref": (
            "private",
            "bootstrap/session-recovery-resources-development-002/receipt.json",
        ),
        "resource_result_ref": (
            "future_evidence",
            "bootstrap-runs/core-source-inline-export-002/result.json",
        ),
        "resource_receipt_ref": (
            "private",
            "bootstrap/core-source-inline-export-002/receipt.json",
        ),
        "campaign_contract_ref": (
            "repository",
            "specs/036-core-transition-feasibility/contracts/campaign.md",
        ),
    }
    for key, (root, relative) in expected.items():
        guard_reference(decision[key])
        if (
            decision[key] not in profile["inputs"]
            or refs.verify(decision[key]) != refs.roots[root] / relative
        ):
            raise ValueError("NativeSuiteExactPackageInputs")
    previous = refs.read(decision["previous_profile_ref"])
    limits = suite_limits(previous, profile)
    validate_v2_profile(previous)
    native = refs.read(decision["native_receipt_ref"], limit=MANIFEST)
    sessions = refs.read(decision["sessions_receipt_ref"], limit=MANIFEST)
    resource = refs.read(decision["resource_receipt_ref"], limit=MANIFEST)
    for receipt, stage in [
        (native, "NATIVE"),
        (sessions, "SESSIONS"),
        (resource, "NATIVE"),
    ]:
        _closed_receipt(receipt, stage, profile["work_id"])
    # These are separate diagnostic packages, used only to plan a prospective
    # allowance. Their sum is not a measured combined-suite latency.
    if native["wall_ns"] + sessions["wall_ns"] <= 3600 * 10**9:
        raise ValueError("NativeSuiteActualAdditionalScopeNotEstablished")
    result = refs.read(decision["resource_result_ref"])
    if (
        type(result.get("actual_exit")) is not int
        or result["actual_exit"] != 0
        or result.get("stop_reason") is not None
        or result.get("tree_empty") is not True
        or result.get("group_empty") is not True
        or result.get("all_source_bytes_equal_after") is not True
        or result.get("receipt_ref") != decision["resource_receipt_ref"]
        or resource.get("growth_observer_scope") != "registered_actual_roots"
        or resource.get("free_volume_observer_scope") != "actual_registered_volumes"
    ):
        raise ValueError("NativeSuiteClosedCurrentResourceBasis")
    observed = resource["final_resource_observation"]
    instrumentation_headroom(
        observed["growth_apparent_unique_inode_bytes"],
        limits,
        observed["free_volume_bytes"],
    )
    return limits
