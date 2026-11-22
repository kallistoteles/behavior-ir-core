"""Adopt an actual reviewed-recorder start; evidence never creates semantic authority."""

import hashlib
import json
import os
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
EXPECTED = {
    "campaign_seconds": 21600,
    "stages": {
        "S0": 1200,
        "S1": 5400,
        "Q": 2400,
        "S2": 1800,
        "S3": 5400,
        "S4": 3600,
        "S5": 1800,
    },
    "ordinary_child_seconds": 900,
    "extended_child_seconds": 1800,
    "closing_reserve_seconds": 1800,
    "address_space_bytes": 8 * 1024**3,
    "cache_bytes": 6 * 1024**3,
    "artifacts_bytes": 2 * 1024**3,
    "temporary_bytes": 1024**3,
    "combined_bytes": 8 * 1024**3,
    "launch_free_bytes": 16 * 1024**3,
    "stop_free_bytes": 4 * 1024**3,
    "sample_seconds": 1,
}


def profile_digest(p):
    return hashlib.sha256(
        json.dumps(p, sort_keys=True, separators=(",", ":")).encode()
    ).hexdigest()


def validate_profile(p):
    if (
        p.get("format") != "core036.profile.v1"
        or p.get("product_adoption") != "unactivated"
        or p.get("limits") != EXPECTED
    ):
        raise ValueError("ProfileLimitsOrVersion")
    e = ROOT / "experiments/transition-study036"
    f = ROOT / "specs/036-core-transition-feasibility"
    if p.get("owned_roots") != {
        "cache": str(e / "private"),
        "temporary": str(e / "private/tmp"),
        "artifacts": str(f / "evidence"),
    }:
        raise ValueError("OwnedRoots")
    return p


def adopt(profile, receipt, digest, out, now_ns, boot_id):
    validate_profile(profile)
    if profile_digest(profile) != digest:
        raise ValueError("BootstrapProfileBinding")
    if (
        receipt.get("format") != "core035.bounded.v1"
        or receipt.get("boot_id") != boot_id
        or type(receipt.get("start_monotonic_ns")) is not int
        or receipt["start_monotonic_ns"] > now_ns
    ):
        raise ValueError("BootstrapClock")
    if (
        not receipt.get("tree_empty")
        or not receipt.get("group_empty")
        or receipt.get("stop_reason") is not None
    ):
        raise ValueError("BootstrapNotClosed")
    if (now_ns - receipt["start_monotonic_ns"]) > profile["limits"][
        "campaign_seconds"
    ] * 10**9:
        raise ValueError("BudgetExpired")
    result = {
        "format": "core036.session-manifest.v1",
        "campaign_id": profile["campaign_id"],
        "profile": profile,
        "profile_sha256": digest,
        "clock": {"started_ns": receipt["start_monotonic_ns"], "boot_id": boot_id},
        "bootstrap_exit": receipt["exit_code"],
        "product_adoption": "unactivated",
    }
    out = Path(out)
    out.parent.mkdir(parents=True, exist_ok=True)
    with out.open("x") as f:
        json.dump(result, f, indent=2)
        f.write("\n")
        f.flush()
        os.fsync(f.fileno())
    return result


# V1 entrypoints above remain identifiable for historical replay. V2 bootstrap
# validation accepts initial declarations; successor execution is admitted by
# the persistent ledger, never by a profile or receipt alone.
V2_GIB = 1024**3
V2_STAGES = {
    "WORK": (None, 900),
    "ENV": (7200, 3600),
    "NATIVE": (14400, 3600),
    "Q": (7200, 3600),
    "DIAG": (7200, 900),
    "SESSIONS": (21600, 3600),
    "COMPACT": (14400, 3600),
    "REPRO": (14400, 3600),
    "FINAL": (3600, 900),
}


def _v2_reference(path, ref, root):
    """Verify a reference under a caller-selected root, before interpretation."""
    from pathlib import PurePosixPath
    import re

    if (
        not isinstance(ref, dict)
        or set(ref) != {"root_id", "path", "bytes", "sha256"}
        or not isinstance(ref["root_id"], str)
        or not isinstance(ref["path"], str)
        or not ref["path"]
        or len(ref["path"].encode()) > 1024
        or "\\" in ref["path"]
        or "\0" in ref["path"]
        or type(ref["bytes"]) is not int
        or ref["bytes"] < 0
        or not isinstance(ref["sha256"], str)
        or re.fullmatch(r"[a-f0-9]{64}", ref["sha256"]) is None
    ):
        raise ValueError("V2ReferenceFields")
    rel = PurePosixPath(ref["path"])
    if rel.is_absolute() or ".." in rel.parts or str(rel) != ref["path"]:
        raise ValueError("V2ReferencePath")
    root, path = Path(root).resolve(), Path(path)
    candidate = root / ref["path"]
    if (
        not candidate.resolve().is_relative_to(root)
        or candidate.resolve() != path.resolve()
    ):
        raise ValueError("V2ReferenceOwnership")
    current = root
    for part in rel.parts:
        current = current / part
        if current.is_symlink():
            raise ValueError("V2ReferenceSymlink")
    try:
        if candidate.stat().st_size != ref["bytes"]:
            raise ValueError("V2ReferenceBytes")
        h = hashlib.sha256()
        with candidate.open("rb") as stream:
            for block in iter(lambda: stream.read(1024**2), b""):
                h.update(block)
        if h.hexdigest() != ref["sha256"]:
            raise ValueError("V2ReferenceBytes")
    except OSError as exc:
        raise ValueError("V2ReferenceMissing") from exc
    return candidate


def validate_v2_profile(profile):
    """Validate the exact initial profile. This does not admit an attempt."""
    import re

    fields = {
        "format",
        "work_id",
        "record_id",
        "specification_ref",
        "inputs",
        "outcome",
        "reason",
        "blocking_ref",
        "product_adoption",
        "stage",
        "limits",
        "roots",
        "allocation",
        "native_profile",
    }
    if not isinstance(profile, dict) or set(profile) != fields:
        raise ValueError("V2ProfileFields")
    if (
        profile["format"] != "core036.profile.v2"
        or profile["product_adoption"] != "unactivated"
    ):
        raise ValueError("V2ProfileVersion")
    work = profile["work_id"]
    if not isinstance(work, str) or re.fullmatch(r"w[0-9]{3,16}", work) is None:
        raise ValueError("V2WorkID")
    for field in ("record_id", "reason"):
        if not isinstance(profile[field], str) or not profile[field]:
            raise ValueError("V2ProfileText")
    if len(profile["record_id"].encode()) > 256:
        raise ValueError("V2ProfileIDBound")
    if profile["outcome"] != {"operational": "declared", "acceptance": "blocked"}:
        raise ValueError("V2ProfileOutcome")
    if (
        not isinstance(profile["inputs"], list)
        or not profile["inputs"]
        or len(profile["inputs"]) > 20000
    ):
        raise ValueError("V2ProfileInputs")
    from artifact_registration_v2 import guard_reference

    for ref in [profile["specification_ref"], profile["blocking_ref"]]:
        guard_reference(ref)
        if ref["root_id"] != "repository":
            raise ValueError("V2ProfileInputRoot")
        _v2_reference(ROOT / ref.get("path", ""), ref, ROOT)
    registered = None
    for ref in profile["inputs"]:
        guard_reference(ref)
        if ref["root_id"] == "repository":
            _v2_reference(ROOT / ref["path"], ref, ROOT)
        elif (
            ref["root_id"] == "future_evidence"
            and isinstance(profile["allocation"], dict)
            and profile["allocation"].get("kind")
            in {"native_completion_capacity", "native_followup_evidence_capacity"}
        ):
            if registered is None:
                from controller_v2 import artifact_context_for

                registered, store = artifact_context_for(work)
                if store.active_root_id != "future_evidence":
                    raise ValueError("V2ProfileRegisteredStoreRequired")
            registered.verify(ref)
        else:
            raise ValueError("V2ProfileInputRoot")
    if (
        profile["specification_ref"]["path"]
        != "specs/036-core-transition-feasibility/spec.md"
    ):
        raise ValueError("V2ProfileSpecification")
    private = Path("/var/tmp/behavior-ir-core036-v2") / work
    expected_roots = {
        "cache": str(private),
        "temporary": str(private / "tmp"),
        "artifacts": str(
            ROOT / "specs/036-core-transition-feasibility/evidence/v2" / work
        ),
        "shared_store": "/nix/store",
    }
    if profile["roots"] != expected_roots:
        raise ValueError("V2ProfileRoots")
    for raw in expected_roots.values():
        current = Path(raw)
        for item in (current, *current.parents):
            if item.is_symlink():
                raise ValueError("V2ProfileRootSymlink")
    stage = profile["stage"]
    if not isinstance(stage, str) or stage not in V2_STAGES:
        raise ValueError("V2ProfileStage")
    attempt, extended = V2_STAGES[stage]
    expected_limits = {
        "attempt_seconds": attempt,
        "ordinary_child_seconds": 900,
        "extended_child_seconds": extended,
        "closure_reserve_seconds": 300,
        "probe_seconds": 1800,
        "cli_build_seconds": 1800,
        "address_space_bytes": 8 * V2_GIB,
        "lean_address_space_bytes": 4 * V2_GIB,
        "cache_bytes": 20 * V2_GIB,
        "temporary_bytes": 4 * V2_GIB,
        "evidence_bytes": 4 * V2_GIB,
        "new_shared_store_bytes": 8 * V2_GIB,
        "combined_bytes": 36 * V2_GIB,
        "root_admission_bytes": 48 * V2_GIB,
        "data_admission_bytes": 8 * V2_GIB,
        "root_stop_bytes": 8 * V2_GIB,
        "data_stop_bytes": 4 * V2_GIB,
        "observed_rss_stop_bytes": 8 * V2_GIB,
        "host_available_stop_bytes": 4 * V2_GIB,
        "sample_seconds": 1,
        "cpu_workers": 1,
    }
    allocation = profile["allocation"]
    evidence_extension = (
        isinstance(allocation, dict)
        and allocation.get("kind") == "evidence_capacity_extension"
    )
    cache_extension = (
        isinstance(allocation, dict)
        and allocation.get("kind") == "cache_capacity_extension"
    )
    rebuild_extension = (
        isinstance(allocation, dict)
        and allocation.get("kind") == "native_rebuild_capacity"
    )
    future_extension = (
        isinstance(allocation, dict)
        and allocation.get("kind") == "future_evidence_allocation"
    )
    completion_extension = (
        isinstance(allocation, dict)
        and allocation.get("kind") == "native_completion_capacity"
    )
    followup_extension = (
        isinstance(allocation, dict)
        and allocation.get("kind") == "native_followup_evidence_capacity"
    )
    compatibility = isinstance(allocation, dict) and allocation.get("kind") in {
        "original_safety_compatibility",
        "analysis_lean_compatibility",
    }
    if compatibility:
        from artifact_io import RootRegistry, read

        if stage not in {"ENV", "NATIVE"}:
            raise ValueError("V2CompatibilityStage")
        for key in ("predecessor", "correction"):
            ref = allocation.get(key)
            if (
                not isinstance(ref, dict)
                or ref.get("root_id") != "repository"
                or ref not in profile["inputs"]
            ):
                raise ValueError("V2CompatibilityReference")
            _v2_reference(ROOT / ref.get("path", ""), ref, ROOT)
        predecessor = ROOT / allocation["predecessor"]["path"]
        expected_parent = (
            ROOT
            / "specs/036-core-transition-feasibility/evidence/v2"
            / work
            / "attempts"
        )
        if (
            predecessor.name != "checkpoint.json"
            or predecessor.parent.parent != expected_parent
        ):
            raise ValueError("V2CompatibilityPredecessor")
        RootRegistry({"attempt": predecessor.parent}).verify_closed("attempt")
        checkpoint = read(predecessor)
        if checkpoint["stage_outcome"] not in {"failed", "resource_stopped"}:
            raise ValueError("V2CompatibilityRequiresActualFailure")
        correction = read(ROOT / allocation["correction"]["path"])
        if (
            correction.get("format") != "core036.resource-correction-decision.v2"
            or correction.get("scope")
            != (
                "original Safety Lean4.30 only"
                if allocation["kind"] == "original_safety_compatibility"
                else "analysis Lean4.36.0-rc2 only"
            )
            or correction.get("new_lean_address_space_bytes") != 8 * V2_GIB
            or allocation["predecessor"] not in correction.get("cause_refs", [])
            or not correction.get("reason")
        ):
            raise ValueError("V2CompatibilityCorrection")
        if "previous_profile_ref" in correction:
            from analysis_profile_v2 import composed_analysis_limits

            previous_ref = correction["previous_profile_ref"]
            if (
                allocation["kind"] != "analysis_lean_compatibility"
                or stage != "NATIVE"
                or not isinstance(previous_ref, dict)
                or previous_ref.get("root_id") != "repository"
                or previous_ref not in profile["inputs"]
            ):
                raise ValueError("V2AnalysisCompatibilityBaseReference")
            previous_path = ROOT / previous_ref.get("path", "")
            _v2_reference(previous_path, previous_ref, ROOT)
            previous = read(previous_path)
            parent = read(predecessor.parent / "declaration.json")
            if (
                previous != parent.get("profile")
                or checkpoint.get("source_validation_error") is not None
            ):
                raise ValueError("V2AnalysisCompatibilityActualParent")
            validate_v2_profile(previous)
            expected_limits = composed_analysis_limits(previous, profile)
        expected_limits["lean_address_space_bytes"] = 8 * V2_GIB
    if evidence_extension:
        from capacity_profile_v2 import extended_evidence_limits_v2

        expected_limits = extended_evidence_limits_v2(profile)
    if cache_extension:
        from cache_capacity_v2 import extended_cache_limits

        expected_limits = extended_cache_limits(profile)
    if rebuild_extension:
        from rebuild_capacity_v2 import planned_rebuild_limits

        expected_limits = planned_rebuild_limits(profile)
    if future_extension:
        from future_artifact_allocation_v2 import planned_future_limits

        expected_limits = planned_future_limits(profile)
    if completion_extension:
        from native_completion_capacity_v2 import planned_completion_limits

        expected_limits = planned_completion_limits(profile)
    if followup_extension:
        from native_followup_capacity_v2 import planned_followup_limits

        expected_limits = planned_followup_limits(profile)
    if not isinstance(profile["limits"], dict) or set(profile["limits"]) != set(
        expected_limits
    ):
        raise ValueError("V2ProfileLimits")
    for key, expected in expected_limits.items():
        value = profile["limits"][key]
        if value != expected or (expected is not None and type(value) is not int):
            raise ValueError("V2ProfileLimits")
    if (
        not isinstance(allocation, dict)
        or set(allocation)
        != {"kind", "predecessor", "correction", "reason_no_feature_wall_limit"}
        or allocation["kind"]
        not in {
            "initial",
            "original_safety_compatibility",
            "analysis_lean_compatibility",
            "evidence_capacity_extension",
            "cache_capacity_extension",
            "native_rebuild_capacity",
            "future_evidence_allocation",
            "native_completion_capacity",
            "native_followup_evidence_capacity",
        }
        or (
            not compatibility
            and not evidence_extension
            and not cache_extension
            and not rebuild_extension
            and not future_extension
            and not completion_extension
            and not followup_extension
            and allocation["predecessor"] is not None
        )
        or (
            not compatibility
            and not evidence_extension
            and not cache_extension
            and not rebuild_extension
            and not future_extension
            and not completion_extension
            and not followup_extension
            and allocation["correction"] is not None
        )
        or not isinstance(allocation["reason_no_feature_wall_limit"], str)
        or not allocation["reason_no_feature_wall_limit"]
    ):
        raise ValueError("V2InitialAllocation")
    native = profile["native_profile"]
    expected_native = {
        "rust": "1.98.1",
        "python": "3.13.15",
        "edition": 2024,
        "jobs": 1,
        "incremental": False,
        "debug": 0,
        "rustflags": ["-C", "target-cpu=x86-64"],
    }
    if (
        not isinstance(native, dict)
        or set(native) != set(expected_native)
        or any(
            type(native[key]) is not type(value) or native[key] != value
            for key, value in expected_native.items()
        )
    ):
        raise ValueError("V2NativeProfile")
    return profile


def v2_admit(profile, *, free_root_bytes, free_data_bytes, initial):
    validate_v2_profile(profile)
    if type(initial) is not bool or any(
        type(x) is not int or x < 0 for x in (free_root_bytes, free_data_bytes)
    ):
        raise ValueError("V2DiskObservation")
    limits = profile["limits"]
    if (
        free_root_bytes
        < limits["root_admission_bytes" if initial else "root_stop_bytes"]
    ):
        raise ValueError("V2RootFreeFloor")
    if (
        free_data_bytes
        < limits["data_admission_bytes" if initial else "data_stop_bytes"]
    ):
        raise ValueError("V2DataFreeFloor")
    return True


def adopt_v2(
    profile,
    receipt_path,
    *,
    expected_profile_digest,
    expected_receipt_ref,
    expected_origin,
    expected_specification_ref,
    out,
    now_ns,
    boot_id,
):
    """Import a closed actual bootstrap; history never imports semantic authority."""
    validate_v2_profile(profile)
    if (
        profile_digest(profile) != expected_profile_digest
        or profile["specification_ref"] != expected_specification_ref
    ):
        raise ValueError("V2BootstrapContextBinding")
    receipt_path = Path(receipt_path)
    root_id = (
        expected_receipt_ref.get("root_id")
        if isinstance(expected_receipt_ref, dict)
        else None
    )
    if root_id not in {"repository", "bootstrap"}:
        raise ValueError("V2BootstrapReceiptRoot")
    root = ROOT if root_id == "repository" else receipt_path.parent
    _v2_reference(receipt_path, expected_receipt_ref, root)
    if receipt_path.stat().st_size > 4 * 1024**2:
        raise ValueError("V2BootstrapReceiptBound")
    try:
        receipt = json.loads(receipt_path.read_text())
    except (OSError, UnicodeError, json.JSONDecodeError) as exc:
        raise ValueError("V2BootstrapReceipt") from exc
    if (
        not isinstance(expected_origin, dict)
        or set(expected_origin) != {"started_ns", "boot_id"}
        or type(expected_origin["started_ns"]) is not int
        or expected_origin["started_ns"] < 0
        or not isinstance(expected_origin["boot_id"], str)
        or not expected_origin["boot_id"]
        or receipt.get("format") != "core035.bounded.v1"
        or receipt.get("start_monotonic_ns") != expected_origin["started_ns"]
        or receipt.get("boot_id") != expected_origin["boot_id"]
    ):
        raise ValueError("V2BootstrapOrigin")
    if (
        receipt.get("tree_empty") is not True
        or receipt.get("group_empty") is not True
        or receipt.get("stop_reason") is not None
        or type(receipt.get("group_id")) is not int
        or receipt["group_id"] <= 0
        or type(receipt.get("exit_code")) is not int
    ):
        raise ValueError("V2BootstrapNotClosed")
    if (
        type(now_ns) is not int
        or now_ns < 0
        or not isinstance(boot_id, str)
        or not boot_id
    ):
        raise ValueError("V2ClockObservation")
    if boot_id == expected_origin["boot_id"] and now_ns < expected_origin["started_ns"]:
        raise ValueError("V2ClockBeforeOrigin")
    result = {
        "format": "core036.work.v2",
        "work_id": profile["work_id"],
        "record_id": "bootstrap-adoption",
        "specification_ref": expected_specification_ref,
        "inputs": [expected_receipt_ref],
        "outcome": {"operational": "declared", "acceptance": "blocked"},
        "reason": "Bootstrap imported; actual native/proof/quality/experiments remain pending",
        "blocking_ref": expected_specification_ref,
        "product_adoption": "unactivated",
        "clock": expected_origin,
        "profile_sha256": expected_profile_digest,
        "bootstrap_exit": receipt["exit_code"],
        "initial_authority": "unverified",
        "feature_complete": False,
        "imported_across_boot": boot_id != expected_origin["boot_id"],
    }
    out = Path(out)
    out.parent.mkdir(parents=True, exist_ok=True)
    with out.open("x") as stream:
        json.dump(result, stream, indent=2)
        stream.write("\n")
        stream.flush()
        os.fsync(stream.fileno())
    return result
