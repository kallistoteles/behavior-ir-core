"""Retain the exact closed 520 analysis cache before owned disposal."""

from pathlib import Path

from artifact_io import RootRegistry, write_once
from artifact_registration_v2 import guard_reference, guard_protected_components
from native_analysis_cache_v2 import admitted_cache, retain_before_reuse
from native_canary_cache_retention_v2 import CountOnlySink
from backend_ir_retention_v2 import _archive_stream
from proof_cache_retention_v2 import strict_inventory
from owned_cleanup import OwnedCleanup


def disposal_target(checkpoint, receipt, result, private):
    guard_protected_components(private)
    target = Path(private) / "disposable/analysis-a0514/target"
    if (
        checkpoint.get("attempt_id") != "a0520"
        or checkpoint.get("stage_outcome") != "succeeded"
        or checkpoint.get("source_validation_error") is not None
        or checkpoint.get("outcome", {}).get("operational") != "closed"
        or result.get("source_subject_ref") != checkpoint.get("source_subject_ref")
        or result.get("compiler_cache_reused") is not True
        or result.get("analysis_target") != str(target)
        or type(result.get("extraction_exit_code")) is not int
        or result["extraction_exit_code"] != 0
        or type(result.get("translation_exit_code")) is not int
        or result["translation_exit_code"] != 0
        or receipt.get("source_subject_ref") != checkpoint.get("source_subject_ref")
        or type(receipt.get("exit_code")) is not int
        or receipt["exit_code"] != 0
        or receipt.get("stop_reason") is not None
        or receipt.get("tree_empty") is not True
        or receipt.get("group_empty") is not True
        or receipt.get("final_storage_inventory_error") is not None
    ):
        raise ValueError("NativeAnalysisCacheDisposalOwner")
    return target


def run_retention(refs, reference, declaration, out):
    from native_seed_probe_v2 import verified_generated

    guard_reference(reference)
    selection = refs.read(reference)
    private, future = refs.roots["private"], refs.roots["future_evidence"]
    if (
        set(selection) != {"format", "joint_selection_ref", "baseline_checkpoint_ref"}
        or selection["format"] != "core036.native-analysis-cache-retention.v2"
        or out != private / "native-cache-retention" / declaration["record_id"]
        or out.exists()
    ):
        raise ValueError("NativeAnalysisCacheRetentionSelection")
    retained = [reference]

    def record(path):
        guard_protected_components(path)
        for root_id in ("private", "future_evidence"):
            if path.is_relative_to(refs.roots[root_id]):
                ref = refs.reference(
                    root_id, str(path.relative_to(refs.roots[root_id]))
                )
                guard_reference(ref)
                refs.verify(ref)
                retained.append(ref)
                return ref
        raise ValueError("NativeAnalysisCacheRetentionRoot")

    def closed(attempt):
        base = future / "attempts" / attempt
        cp = refs.read(record(base / "checkpoint.json"))
        rc = refs.read(record(base / "child/receipt.json"))
        RootRegistry({"attempt": base}).verify_closed("attempt")
        return cp, rc

    guard_reference(selection["joint_selection_ref"])
    joint = refs.read(selection["joint_selection_ref"])
    generated, current = verified_generated(refs, joint, mode="joint")
    current_cp, current_rc = closed("a0520")
    target = disposal_target(current_cp, current_rc, current, private)
    old_cp, old_rc = closed("a0514")
    old_result = refs.read(record(private / "native-extraction/a0514/result.json"))
    if (
        admitted_cache(
            old_cp, old_result, old_rc, current["native_source_subject_ref"], private
        )
        != target
    ):
        raise ValueError("NativeAnalysisCacheOriginalOwner")
    guard_reference(selection["baseline_checkpoint_ref"])
    if (
        refs.verify(selection["baseline_checkpoint_ref"])
        != future / "attempts/a0522/checkpoint.json"
    ):
        raise ValueError("NativeAnalysisCacheRetentionBaseline")
    baseline, baseline_rc = closed("a0522")
    if (
        baseline["source_validation_error"] is not None
        or baseline["outcome"]["operational"] != "closed"
        or baseline_rc["stop_reason"] is not None
        or baseline_rc["tree_empty"] is not True
        or baseline_rc["group_empty"] is not True
        or baseline_rc["final_storage_inventory_error"] is not None
    ):
        raise ValueError("NativeAnalysisCacheRetentionBaselineClosure")
    for row in refs.read(declaration["source_subject_ref"])["files"]:
        logical = row["logical_ref"]
        guard_reference(logical)
        if logical["root_id"] == "private" and (
            private / logical["path"]
        ).is_relative_to(target):
            raise ValueError("NativeAnalysisCacheRetentionSelectedSource")
    if OwnedCleanup._live_users(target):
        raise ValueError("NativeAnalysisCacheRetentionLiveUser")
    rows = strict_inventory(target, maximum_files=10000, maximum_bytes=512 * 1024**2)
    counter = CountOnlySink()
    _archive_stream(target, rows, counter, compressed_limit=64 * 1024**2)
    budget = (
        declaration["profile"]["limits"]["cache_bytes"]
        - baseline_rc["final_resource_observation"][
            "growth_apparent_unique_inode_bytes"
        ]["cache"]
        - 16 * 1024**2
    )
    if counter.total > budget:
        raise ValueError("NativeAnalysisCacheRetentionPeakCapacity")
    out.mkdir(parents=True, exist_ok=False)
    saved = out / "retained-current-cache"
    result = retain_before_reuse(target, saved)
    if (
        result["archive_bytes"] != counter.total
        or strict_inventory(target, maximum_files=10000, maximum_bytes=512 * 1024**2)
        != rows
    ):
        raise ValueError("NativeAnalysisCacheRetentionChanged")
    record(saved / "inventory.json")
    record(saved / "all-files.tar.gz")
    record(saved / "result.json")
    cleanup = OwnedCleanup(private)
    registration = cleanup.register(target, retained_refs=retained, registry=refs)
    write_once(out / "registration.json", registration)
    removal = cleanup.dispose(target, paced=True)
    write_once(out / "cleanup.json", removal)
    after_generated, after = verified_generated(refs, joint, mode="joint")
    if generated != after_generated or current != after:
        raise ValueError("NativeAnalysisCacheRetentionArtifactsChanged")
    for ref in retained:
        guard_reference(ref)
        refs.verify(ref)
    write_once(
        out / "result.json",
        dict(
            format="core036.native-analysis-cache-retention-result.v2",
            source_subject_ref=declaration["source_subject_ref"],
            selection_ref=reference,
            raw_bytes=result["raw_bytes"],
            archive_bytes=result["archive_bytes"],
            net_reclaimed_bytes=result["raw_bytes"] - result["archive_bytes"],
            file_count=result["file_count"],
            target=str(target),
            retained_current_cache_ref=record(saved / "result.json"),
            native_proof="unestablished",
            feature_complete=False,
        ),
    )
    return 0
