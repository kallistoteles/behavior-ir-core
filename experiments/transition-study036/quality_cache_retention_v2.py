"""Verify exact cache preservation; owned disposal requires a closed successful gate."""

from pathlib import Path
import re


def quality_target(cp, receipt, result, private):
    from artifact_registration_v2 import guard_protected_components
    from records import validate_ref_v2

    guard_protected_components(private)
    validate_ref_v2(cp.get("source_subject_ref"))
    target = Path(private) / "disposable/gate-a0538/target"
    if (
        cp.get("attempt_id") != "a0541"
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


def verified_preservation(folder):
    from artifact_registration_v2 import guard_protected_components
    from artifact_io import read, digest
    from backend_ir_retention_v2 import _verify_archive
    from native_accessor_source_canary_v2 import _unlinked_parents

    for path in (folder,):
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
    return inventory, result


def verify_existing_preservation(target, folder):
    from artifact_registration_v2 import guard_protected_components
    from native_accessor_source_canary_v2 import _unlinked_parents
    from native_partial_cache_retention_v2 import complete_inventory

    guard_protected_components(target)
    _unlinked_parents(Path(target))
    inventory, result = verified_preservation(folder)
    current = complete_inventory(
        target, maximum_bytes=4 * 1024**3, domain="closed-quality-cache"
    )
    if current != inventory:
        raise ValueError("QualityCacheChangedAfterPreservation")
    return inventory, result


def preserve_current_cache(target, folder, out, *, budget):
    """Keep every changed file; reuse only exactly matching archived members."""
    from artifact_registration_v2 import guard_protected_components
    from native_partial_cache_retention_v2 import complete_inventory
    from native_worker_cache_retention_v2 import archive_groups
    from native_canary_cache_retention_v2 import CountOnlySink
    from backend_ir_retention_v2 import _archive, _archive_stream, _verify_archive
    from artifact_io import write_once, digest
    from native_accessor_source_canary_v2 import _unlinked_parents

    for path in (target, folder, out):
        guard_protected_components(path)
        _unlinked_parents(Path(path))
    if type(budget) is not int or budget <= 0:
        raise ValueError("QualityCacheDeltaPeakCapacity")
    previous, old_result = verified_preservation(folder)
    current = complete_inventory(
        target, maximum_bytes=4 * 1024**3, domain="closed-quality-cache"
    )
    old = {row["path"]: row for row in previous["files"]}
    changed = [row for row in current["files"] if old.get(row["path"]) != row]
    parts = []
    for index, rows in enumerate(archive_groups(changed)):
        sink = CountOnlySink()
        _archive_stream(target, rows, sink, compressed_limit=128 * 1024**2)
        parts.append(
            dict(
                name=f"delta-{index:04d}.tar.gz",
                files=rows,
                bytes=sink.total,
                sha256=sink.checksum.hexdigest(),
            )
        )
    archive_bytes = sum(part["bytes"] for part in parts)
    out = Path(out)
    out.mkdir(parents=True, exist_ok=False)
    write_once(out / "complete-inventory.json", current)
    write_once(
        out / "archive-plan.json",
        dict(parts=parts, new_archive_bytes=archive_bytes, budget=budget),
    )
    if archive_bytes + 16 * 1024**2 > budget:
        raise ValueError("QualityCacheDeltaPeakCapacity")
    for part in parts:
        path = out / part["name"]
        _archive(target, part["files"], path, compressed_limit=128 * 1024**2)
        _verify_archive(path, part["files"])
        if path.stat().st_size != part["bytes"] or digest(path) != part["sha256"]:
            raise ValueError("QualityCacheDeltaArchiveChanged")
    if (
        complete_inventory(
            target, maximum_bytes=4 * 1024**3, domain="closed-quality-cache"
        )
        != current
    ):
        raise ValueError("QualityCacheChangedDuringDeltaPreservation")
    # Every current row is covered by either an unchanged old member or a
    # verified newly archived member, including same-size byte changes.
    covered = {
        row["path"]: row for row in current["files"] if old.get(row["path"]) == row
    }
    for part in parts:
        for row in part["files"]:
            if row["path"] in covered:
                raise ValueError("QualityCacheDuplicateCoverage")
            covered[row["path"]] = row
    if sorted(covered.values(), key=lambda row: row["path"]) != current["files"]:
        raise ValueError("QualityCacheIncompleteCurrentCoverage")
    result = dict(
        format="core036.quality-delta-cache-preservation.v1",
        parts=parts,
        reused_file_count=len(current["files"]) - len(changed),
        changed_file_count=len(changed),
        changed_file_bytes=sum(row["bytes"] for row in changed),
        preexisting_archive_bytes=old_result["archive_bytes"],
        new_archive_bytes=archive_bytes,
        prior_inventory_sha256=digest(Path(folder) / "complete-inventory.json"),
        prior_result_sha256=digest(Path(folder) / "result.json"),
        no_disposal=True,
    )
    write_once(out / "result.json", result)
    return current, result


def run_retention(refs, reference, declaration, out):
    from artifact_registration_v2 import guard_reference, guard_protected_components
    from artifact_io import RootRegistry, write_once, digest
    from controller_v2 import ref_for
    from owned_cleanup import OwnedCleanup
    from quality_runtime_v2 import read_capture, validate_capture_pair
    from quality_v2 import parse_full_gate_log_v2
    from native_accessor_source_canary_v2 import _unlinked_parents

    guard_reference(reference)
    selection = refs.read(reference)
    if (
        set(selection)
        != {
            "format",
            "checkpoint_ref",
            "result_ref",
            "receipt_ref",
            "job_ref",
            "runtime_ref",
            "preservation_ref",
            "inventory_ref",
            "baseline_checkpoint_ref",
            "baseline_receipt_ref",
        }
        or selection["format"] != "core036.quality-cache-retention.v3"
    ):
        raise ValueError("QualityCacheSelection")
    private, future = refs.roots["private"], refs.roots["future_evidence"]
    base = private / "quality/a0541"
    archive_folder = private / "quality/a0540/retained-cache"
    expected = {
        "checkpoint_ref": future / "attempts/a0541/checkpoint.json",
        "receipt_ref": future / "attempts/a0541/child/receipt.json",
        "result_ref": base / "result.json",
        "job_ref": base / "runtime-job.json",
        "runtime_ref": base / "runtime/result.json",
        "preservation_ref": archive_folder / "result.json",
        "inventory_ref": archive_folder / "complete-inventory.json",
        "baseline_checkpoint_ref": future / "attempts/a0542/checkpoint.json",
        "baseline_receipt_ref": future / "attempts/a0542/child/receipt.json",
    }
    retained = [reference]
    records = {}
    for key, path in expected.items():
        guard_reference(selection[key])
        if refs.verify(selection[key]) != path:
            raise ValueError("QualityCacheRecordOwnership")
        records[key] = refs.read(
            selection[key],
            limit=64 * 1024**2 if key.endswith("receipt_ref") else 32 * 1024**2,
        )
        retained.append(selection[key])
    RootRegistry({"attempt": future / "attempts/a0541"}).verify_closed("attempt")
    cp, receipt, result = (
        records[key] for key in ("checkpoint_ref", "receipt_ref", "result_ref")
    )
    target = quality_target(cp, receipt, result, private)
    RootRegistry({"attempt": future / "attempts/a0542"}).verify_closed("attempt")
    baseline, baseline_receipt = (
        records["baseline_checkpoint_ref"],
        records["baseline_receipt_ref"],
    )
    from artifact_io import read

    baseline_declaration = read(
        future / "attempts/a0542/declaration.json", limit=32 * 1024**2
    )
    if (
        baseline.get("attempt_id") != "a0542"
        or baseline.get("stage_outcome") != "failed"
        or baseline.get("source_validation_error") is not None
        or baseline.get("outcome", {}).get("operational") != "closed"
        or baseline_receipt.get("source_subject_ref")
        != baseline.get("source_subject_ref")
        or baseline_receipt.get("exit_code") != 1
        or baseline_receipt.get("stop_reason") is not None
        or baseline_receipt.get("controller_error") is not None
        or baseline_receipt.get("tree_empty") is not True
        or baseline_receipt.get("group_empty") is not True
        or baseline_receipt.get("final_storage_inventory_error") is not None
        or baseline_receipt.get("growth_observer_scope") != "registered_actual_roots"
        or baseline_receipt.get("free_volume_observer_scope")
        != "actual_registered_volumes"
        or baseline_receipt.get("final_incremental_storage_bytes")
        != baseline_receipt.get("final_resource_observation", {}).get(
            "growth_apparent_unique_inode_bytes"
        )
        or declaration.get("predecessor") != selection["baseline_checkpoint_ref"]
        or baseline_declaration["profile"] != declaration["profile"]
        or "QualityCacheChangedAfterPreservation"
        not in (future / "attempts/a0542/child/stderr.txt").read_text()
    ):
        raise ValueError("QualityCacheChangedBaselineClosure")
    if (
        out != private / "native-cache-retention" / declaration["record_id"]
        or out.exists()
    ):
        raise ValueError("QualityCacheMaintenanceOutput")
    job, runtime = records["job_ref"], records["runtime_ref"]
    reuse = result.get("complete_cache_preservation", {})
    if (
        reuse.get("format") != "core036.quality-cache-reuse.v4"
        or reuse.get("preservation_ref") != selection["preservation_ref"]
        or reuse.get("inventory_ref") != selection["inventory_ref"]
        or reuse.get("new_archive_bytes") != 0
        or reuse.get("no_disposal") is not True
    ):
        raise ValueError("QualityCacheGateArchiveBinding")
    if (
        job.get("target") != str(target)
        or job.get("mode") != "gate"
        or runtime.get("gate_exit") != 0
        or runtime.get("capture_pair_equal") is not True
    ):
        raise ValueError("QualityCacheRuntime")
    before = read_capture(base / "runtime/before.json", runtime["before"])
    after = read_capture(base / "runtime/after.json", runtime["after"])
    validate_capture_pair(before, after)
    retained.extend(
        ref_for(base / "runtime" / name, refs) for name in ("before.json", "after.json")
    )
    script = Path(job["script"])
    guard_protected_components(script)
    _unlinked_parents(script)
    if digest(script) != result["script_sha256"]:
        raise ValueError("QualityCacheOriginalScript")
    labels = re.findall(r'^gate "([^\"]+)"', script.read_text(), re.M)
    if len(labels) != 13:
        raise ValueError("QualityCacheWholeGateLabels")
    for name in ("stdout", "stderr"):
        path = base / (name + ".txt")
        if digest(path) != result[name + "_sha256"]:
            raise ValueError("QualityCacheGateLogChanged")
        retained.append(ref_for(path, refs))
    parse_full_gate_log_v2((base / "stderr.txt").read_text(), expected_labels=labels)
    cli = Path(before["environment"]["BEHAVIOR_BIN"])
    guard_protected_components(cli)
    _unlinked_parents(cli)
    if cli.is_relative_to(target) or digest(cli) != result["cli_sha256"]:
        raise ValueError("QualityCacheOutsideCli")
    retained.append(ref_for(cli, refs))
    for row in refs.read(declaration["source_subject_ref"], limit=32 * 1024**2)[
        "files"
    ]:
        logical = row["logical_ref"]
        guard_reference(logical)
        if logical["root_id"] == "private" and (
            private / logical["path"]
        ).is_relative_to(target):
            raise ValueError("QualityCacheSelectedSource")
    from artifact_io import read

    if (
        read(archive_folder / "complete-inventory.json", limit=32 * 1024**2)
        != records["inventory_ref"]
        or read(archive_folder / "result.json", limit=32 * 1024**2)
        != records["preservation_ref"]
    ):
        raise ValueError("QualityCacheFrozenPreservationChanged")
    budget = (
        declaration["profile"]["limits"]["cache_bytes"]
        - baseline_receipt["final_resource_observation"][
            "growth_apparent_unique_inode_bytes"
        ]["cache"]
    )
    out.mkdir(parents=True, exist_ok=False)
    current_folder = out / "current-preservation"
    inventory, delta = preserve_current_cache(
        target, archive_folder, current_folder, budget=budget
    )
    preservation = records["preservation_ref"]
    for name in (
        "complete-inventory.json",
        "archive-plan.json",
        *[p["name"] for p in preservation["parts"]],
    ):
        retained.append(ref_for(archive_folder / name, refs))
    for name in (
        "complete-inventory.json",
        "archive-plan.json",
        "result.json",
        *[p["name"] for p in delta["parts"]],
    ):
        retained.append(ref_for(current_folder / name, refs))
    cleanup = OwnedCleanup(private)
    write_once(
        out / "registration.json",
        cleanup.register(target, retained_refs=retained, registry=refs),
    )
    write_once(out / "cleanup.json", cleanup.dispose(target, paced=True))
    for ref in retained:
        refs.verify(ref)
    write_once(
        out / "result.json",
        dict(
            format="core036.quality-cache-retention-result.v2",
            source_subject_ref=declaration["source_subject_ref"],
            selection_ref=reference,
            target=str(target),
            file_count=len(inventory["files"]),
            unique_inode_bytes=inventory["unique_inode_bytes"],
            preexisting_archive_bytes=preservation["archive_bytes"],
            new_archive_bytes=delta["new_archive_bytes"],
            changed_file_count=delta["changed_file_count"],
            reused_file_count=delta["reused_file_count"],
            net_reclaimed_bytes=inventory["unique_inode_bytes"]
            - delta["new_archive_bytes"],
            feature_complete=False,
            native_proof="unestablished",
        ),
    )
    return 0
