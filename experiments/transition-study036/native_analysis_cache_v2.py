"""Admit one exact closed fresh analysis cache without changing old subjects."""

from pathlib import Path
from artifact_io import RootRegistry, read, digest, write_once
from artifact_registration_v2 import guard_reference, guard_protected_components


def admitted_cache(checkpoint, previous, receipt, native_subject, private):
    guard_protected_components(private)
    target = Path(private) / "disposable/analysis-a0514/target"
    if (
        checkpoint.get("attempt_id") != "a0514"
        or checkpoint.get("stage_outcome") != "succeeded"
        or checkpoint.get("source_validation_error") is not None
        or checkpoint.get("outcome", {}).get("operational") != "closed"
        or previous.get("source_subject_ref") != checkpoint.get("source_subject_ref")
        or previous.get("native_source_subject_ref") != native_subject
        or type(previous.get("extraction_exit_code")) is not int
        or previous["extraction_exit_code"] != 0
        or type(previous.get("translation_exit_code")) is not int
        or previous["translation_exit_code"] != 0
        or previous.get("compiler_cache_reused") is not False
        or previous.get("analysis_target") != str(target)
        or receipt.get("source_subject_ref") != checkpoint.get("source_subject_ref")
        or type(receipt.get("exit_code")) is not int
        or receipt["exit_code"] != 0
        or receipt.get("stop_reason") is not None
        or receipt.get("tree_empty") is not True
        or receipt.get("group_empty") is not True
        or receipt.get("final_storage_inventory_error") is not None
    ):
        raise ValueError("NativeAnalysisCacheContext")
    return target


def retain_before_reuse(target, out):
    """Keep every old compiler input/output before permitting cache updates."""
    from proof_cache_retention_v2 import strict_inventory
    from backend_ir_retention_v2 import _archive, _verify_archive

    guard_protected_components(target)
    guard_protected_components(out)
    rows = strict_inventory(target, maximum_files=10000, maximum_bytes=512 * 1024**2)
    out.mkdir(parents=True, exist_ok=False)
    write_once(out / "inventory.json", rows)
    archive = out / "all-files.tar.gz"
    _archive(target, rows, archive, compressed_limit=64 * 1024**2)
    _verify_archive(archive, rows)
    if (
        strict_inventory(target, maximum_files=10000, maximum_bytes=512 * 1024**2)
        != rows
    ):
        raise ValueError("NativeAnalysisCacheChangedBeforeReuse")
    result = dict(
        file_count=len(rows),
        raw_bytes=sum(row["bytes"] for row in rows),
        archive_bytes=archive.stat().st_size,
        archive_sha256=digest(archive),
        no_disposal=True,
        all_original_files_and_modes_retained=True,
    )
    write_once(out / "result.json", result)
    return result


def verified_analysis_cache(
    refs, reference, native_subject, worker, source_subject, out
):
    guard_reference(reference)
    private, future = refs.roots["private"], refs.roots["future_evidence"]
    cp_path = refs.verify(reference)
    if cp_path != future / "attempts/a0514/checkpoint.json":
        raise ValueError("NativeAnalysisCacheCheckpointPath")
    RootRegistry({"attempt": cp_path.parent}).verify_closed("attempt")
    checkpoint = refs.read(reference)
    base = private / "native-extraction/a0514"
    previous = refs.read(
        refs.reference("private", str((base / "result.json").relative_to(private)))
    )
    receipt = read(cp_path.parent / "child/receipt.json")
    target = admitted_cache(checkpoint, previous, receipt, native_subject, private)
    target = refs.path("private", str(target.relative_to(private)))
    if not target.is_dir():
        raise ValueError("NativeAnalysisCacheMissing")
    for name in ("Cargo.toml", "Cargo.lock", ".cargo/config.toml"):
        old = refs.path("private", str((base / "worker" / name).relative_to(private)))
        if digest(old) != digest(worker / name):
            raise ValueError("NativeAnalysisCacheBuildContextChanged")
    for row in refs.read(source_subject)["files"]:
        logical = row["logical_ref"]
        guard_reference(logical)
        if logical["root_id"] == "private" and (
            private / logical["path"]
        ).is_relative_to(target):
            raise ValueError("NativeAnalysisCacheSelectedSource")
    retain_before_reuse(target, out)
    return target
