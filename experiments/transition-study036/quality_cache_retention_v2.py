"""Verify exact cache preservation; this module never deletes cache data."""

from pathlib import Path
import re


def quality_target(cp, receipt, result, private):
    from artifact_registration_v2 import guard_protected_components
    from records import validate_ref_v2

    guard_protected_components(private)
    validate_ref_v2(cp.get("source_subject_ref"))
    target = Path(private) / "disposable/gate-a0538/target"
    if (
        cp.get("attempt_id") != "a0540"
        or cp.get("stage_outcome") != "succeeded"
        or cp.get("source_validation_error") is not None
        or cp.get("outcome", {}).get("operational") != "closed"
        or receipt.get("source_subject_ref") != cp.get("source_subject_ref")
        or result.get("source_subject_ref") != cp.get("source_subject_ref")
        or type(receipt.get("exit_code")) is not int
        or receipt["exit_code"] != 0
        or receipt.get("stop_reason") is not None
        or receipt.get("tree_empty") is not True
        or receipt.get("group_empty") is not True
        or receipt.get("controller_error") is not None
        or receipt.get("final_storage_inventory_error") is not None
        or result.get("format") != "core036.canonical-result.v2"
        or type(result.get("exit_code")) is not int
        or result["exit_code"] != 0
        or result.get("whole_gate_terminal_ok") is not True
        or result.get("target") != str(target)
    ):
        raise ValueError("QualityCacheClosedSuccessfulOwner")
    return target


def verify_existing_preservation(target, folder):
    from artifact_registration_v2 import guard_protected_components
    from artifact_io import read, digest
    from backend_ir_retention_v2 import _verify_archive
    from native_partial_cache_retention_v2 import complete_inventory
    from native_accessor_source_canary_v2 import _unlinked_parents

    for path in (target, folder):
        guard_protected_components(path)
        _unlinked_parents(Path(path))
    folder = Path(folder)
    inventory = read(folder / "complete-inventory.json", limit=32 * 1024**2)
    result = read(folder / "result.json", limit=32 * 1024**2)
    if (
        result.get("format") != "core036.quality-cache-preservation.v3"
        or result.get("no_disposal") is not True
        or result.get("quality_pass_inherited") is not False
        or not isinstance(result.get("parts"), list)
        or not 1 <= len(result["parts"]) <= 256
    ):
        raise ValueError("QualityCachePreservationContract")
    files, names, archive_bytes = [], set(), 0
    for part in result["parts"]:
        name = part.get("name")
        if (
            not isinstance(name, str)
            or re.fullmatch(r"part-[0-9]{4}\.tar\.gz", name) is None
            or name in names
        ):
            raise ValueError("QualityCacheArchiveName")
        names.add(name)
        path = folder / name
        guard_protected_components(path)
        if (
            path.is_symlink()
            or path.stat().st_size != part["bytes"]
            or digest(path) != part["sha256"]
        ):
            raise ValueError("QualityCacheArchiveIdentity")
        _verify_archive(path, part["files"])
        files.extend(part["files"])
        archive_bytes += part["bytes"]
    if files != inventory["files"] or result.get("archive_bytes") != archive_bytes:
        raise ValueError("QualityCacheArchiveCoverage")
    for key, expected in (
        ("file_count", len(files)),
        ("file_bytes", inventory["file_bytes"]),
        ("unique_inode_bytes", inventory["unique_inode_bytes"]),
    ):
        if type(result.get(key)) is not int or result[key] != expected:
            raise ValueError("QualityCacheInventoryTotals")
    current = complete_inventory(
        target, maximum_bytes=4 * 1024**3, domain="closed-quality-cache"
    )
    if current != inventory:
        raise ValueError("QualityCacheChangedAfterPreservation")
    return inventory, result
