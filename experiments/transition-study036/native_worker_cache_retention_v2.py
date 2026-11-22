"""Losslessly archive the exact closed worker cache, keeping retained executables."""

from pathlib import Path

from artifact_io import RootRegistry, digest, write_once
from artifact_registration_v2 import guard_reference, guard_protected_components
from backend_ir_retention_v2 import _archive, _archive_stream, _verify_archive
from native_canary_cache_retention_v2 import CountOnlySink
from native_partial_cache_retention_v2 import complete_inventory
from native_compiled_context_v2 import compiled_worker_layout, verified_build_hashes
from owned_cleanup import OwnedCleanup

OWNER_SHA = "e86d002343c640d447d2af932ede58c4585e19cd42069acd30ae15a854669fa3"


def worker_target(cp, receipt, native, compiled, private):
    guard_protected_components(private)
    if (
        cp.get("attempt_id") != "a0482"
        or cp.get("stage_outcome") != "succeeded"
        or cp.get("source_validation_error") is not None
        or cp.get("outcome", {}).get("operational") != "closed"
        or receipt.get("source_subject_ref") != cp.get("source_subject_ref")
        or type(receipt.get("exit_code")) is not int
        or receipt["exit_code"] != 0
        or receipt.get("stop_reason") is not None
        or receipt.get("tree_empty") is not True
        or receipt.get("group_empty") is not True
        or receipt.get("final_storage_inventory_error") is not None
        or native.get("format") != "core036.native-unit-completion.v3"
        or native.get("source_subject_ref") != cp.get("source_subject_ref")
        or native.get("compiled_source_subject_ref")
        != compiled.get("source_subject_ref")
        or compiled.get("attempt_id") != "a0481"
        or compiled.get("source_validation_error") is not None
        or compiled.get("outcome", {}).get("operational") != "closed"
        or type(native.get("completed_prior_tests")) is not int
        or native["completed_prior_tests"] != 77
        or type(native.get("original_observations_compared")) is not int
        or native["original_observations_compared"] != 12
        or native.get("native_proof") != "unestablished"
        or native.get("feature_complete") is not False
    ):
        raise ValueError("NativeWorkerCacheClosedOwner")
    return Path(private) / "disposable/native-a0480/target"


def archive_groups(rows):
    groups, current, size = [], [], 0
    for row in rows:
        if type(row["bytes"]) is not int or not 0 <= row["bytes"] <= 128 * 1024**2:
            raise ValueError("NativeWorkerCacheFileBound")
        if current and size + row["bytes"] > 64 * 1024**2:
            groups.append(current)
            current, size = [], 0
        current.append(row)
        size += row["bytes"]
    if current:
        groups.append(current)
    return groups


def run_retention(refs, reference, declaration, out):
    guard_reference(reference)
    selection = refs.read(reference)
    keys = {
        "baseline_checkpoint_ref",
        "native_checkpoint_ref",
        "native_result_ref",
        "native_audit_ref",
        "native_unit_binding_ref",
    }
    if (
        set(selection) != {"format", *keys}
        or selection["format"] != "core036.native-worker-cache-retention.v2"
    ):
        raise ValueError("NativeWorkerCacheSelection")
    for key in keys:
        guard_reference(selection[key])
    private, future = refs.roots["private"], refs.roots["future_evidence"]
    if (
        out != private / "native-cache-retention" / declaration["record_id"]
        or out.exists()
    ):
        raise ValueError("NativeWorkerCacheOutput")
    retained = [reference, *[selection[key] for key in keys]]

    def record(path):
        guard_protected_components(path)
        for root_id in ("private", "future_evidence"):
            root = refs.roots[root_id]
            if path.is_relative_to(root):
                ref = refs.reference(root_id, str(path.relative_to(root)))
                guard_reference(ref)
                refs.verify(ref)
                retained.append(ref)
                return ref
        raise ValueError("NativeWorkerCacheRecordRoot")

    def closed(attempt):
        base = future / "attempts" / attempt
        cp = refs.read(record(base / "checkpoint.json"))
        rc = refs.read(record(base / "child/receipt.json"))
        RootRegistry({"attempt": base}).verify_closed("attempt")
        return cp, rc

    if (
        refs.verify(selection["native_checkpoint_ref"])
        != future / "attempts/a0482/checkpoint.json"
    ):
        raise ValueError("NativeWorkerCacheCheckpointPath")
    cp, rc = closed("a0482")
    compiled, compiled_rc = closed("a0481")
    native = refs.read(selection["native_result_ref"])
    result_path = refs.verify(selection["native_result_ref"])
    if result_path != private / "native-completion/a0482/result.json":
        raise ValueError("NativeWorkerCacheResultPath")
    guard_reference(native["compiled_checkpoint_ref"])
    if (
        refs.verify(native["compiled_checkpoint_ref"])
        != future / "attempts/a0481/checkpoint.json"
    ):
        raise ValueError("NativeWorkerCacheCompiledPath")
    if (
        compiled_rc["stop_reason"] is not None
        or compiled_rc["tree_empty"] is not True
        or compiled_rc["group_empty"] is not True
        or compiled_rc["final_storage_inventory_error"] is not None
    ):
        raise ValueError("NativeWorkerCacheCompiledClosure")
    target = worker_target(cp, rc, native, compiled, private)
    worker = compiled_worker_layout(private, native, compiled)

    def verify_outside():
        from native_accessor_source_canary_v2 import _unlinked_parents

        _unlinked_parents(worker)
        hashes = verified_build_hashes(refs, native, result_path, worker, selection)
        if set(native["built_executables"]) != {"R", "GV", "B", "oracle"}:
            raise ValueError("NativeWorkerCacheExecutableSet")
        for row in native["built_executables"].values():
            path = Path(row["path"])
            guard_protected_components(path)
            _unlinked_parents(path)
            if (
                path.parent != result_path.parent / "retained"
                or path.stat().st_size != row["bytes"]
                or digest(path) != row["sha256"]
                or row["source_subject_ref"] != compiled["source_subject_ref"]
            ):
                raise ValueError("NativeWorkerCacheRetainedExecutable")
            record(path)
        return hashes

    before_hashes = verify_outside()
    owner = refs.read(cp["source_subject_ref"])
    owners = [
        row
        for row in owner["files"]
        if row["logical_ref"].get("path")
        == "experiments/transition-study036/native_unit_completion_481_v2.py"
    ]
    if (
        len(owners) != 1
        or owners[0]["snapshot_ref"].get("path") != "subjects/r9505/sources/02047"
        or owners[0]["snapshot_ref"].get("sha256") != OWNER_SHA
    ):
        raise ValueError("NativeWorkerCacheFrozenSource")
    guard_reference(owners[0]["snapshot_ref"])
    record(refs.verify(owners[0]["snapshot_ref"]))
    baseline, baseline_rc = closed("a0527")
    if (
        refs.verify(selection["baseline_checkpoint_ref"])
        != future / "attempts/a0527/checkpoint.json"
        or baseline["stage_outcome"] != "succeeded"
        or baseline["source_validation_error"] is not None
        or baseline["outcome"]["operational"] != "closed"
        or baseline_rc["source_subject_ref"] != baseline["source_subject_ref"]
        or baseline_rc["exit_code"] != 0
        or baseline_rc["stop_reason"] is not None
        or baseline_rc["tree_empty"] is not True
        or baseline_rc["group_empty"] is not True
        or baseline_rc["final_storage_inventory_error"] is not None
    ):
        raise ValueError("NativeWorkerCacheBaseline")
    for row in refs.read(declaration["source_subject_ref"])["files"]:
        logical = row["logical_ref"]
        guard_reference(logical)
        if logical["root_id"] == "private" and (
            private / logical["path"]
        ).is_relative_to(target):
            raise ValueError("NativeWorkerCacheSelectedSource")
    if OwnedCleanup._live_users(target):
        raise ValueError("NativeWorkerCacheLive")
    inventory = complete_inventory(target, maximum_bytes=2 * 1024**3)
    groups = archive_groups(inventory["files"])
    if not groups:
        raise ValueError("NativeWorkerCacheEmpty")
    plan = []
    for index, rows in enumerate(groups):
        counter = CountOnlySink()
        _archive_stream(target, rows, counter, compressed_limit=128 * 1024**2)
        plan.append(
            dict(
                name=f"part-{index:04d}.tar.gz",
                bytes=counter.total,
                sha256=counter.checksum.hexdigest(),
                file_count=len(rows),
            )
        )
    archive_bytes = sum(row["bytes"] for row in plan)
    budget = (
        declaration["profile"]["limits"]["cache_bytes"]
        - baseline_rc["final_resource_observation"][
            "growth_apparent_unique_inode_bytes"
        ]["cache"]
        - 16 * 1024**2
    )
    out.mkdir(parents=True, exist_ok=False)
    write_once(out / "complete-inventory.json", inventory)
    write_once(
        out / "archive-plan.json",
        dict(
            parts=plan,
            archive_bytes=archive_bytes,
            cache_peak_budget=budget,
            unique_inode_bytes=inventory["unique_inode_bytes"],
        ),
    )
    if archive_bytes > budget or archive_bytes >= inventory["unique_inode_bytes"]:
        raise ValueError("NativeWorkerCachePeakCapacity")
    for rows, part in zip(groups, plan, strict=True):
        path = out / part["name"]
        _archive(target, rows, path, compressed_limit=128 * 1024**2)
        _verify_archive(path, rows)
        if path.stat().st_size != part["bytes"] or digest(path) != part["sha256"]:
            raise ValueError("NativeWorkerCacheCountedArchiveChanged")
        record(path)
    if complete_inventory(target, maximum_bytes=2 * 1024**3) != inventory:
        raise ValueError("NativeWorkerCacheChanged")
    record(out / "complete-inventory.json")
    record(out / "archive-plan.json")
    if verify_outside() != before_hashes:
        raise ValueError("NativeWorkerCacheOutsideChanged")
    cleanup = OwnedCleanup(private)
    write_once(
        out / "registration.json",
        cleanup.register(target, retained_refs=retained, registry=refs),
    )
    write_once(out / "cleanup.json", cleanup.dispose(target, paced=True))
    if verify_outside() != before_hashes:
        raise ValueError("NativeWorkerCacheOutsideChangedAfterDisposal")
    for ref in retained:
        guard_reference(ref)
        refs.verify(ref)
    write_once(
        out / "result.json",
        dict(
            format="core036.native-worker-cache-retention-result.v2",
            source_subject_ref=declaration["source_subject_ref"],
            selection_ref=reference,
            target=str(target),
            file_count=len(inventory["files"]),
            file_bytes=inventory["file_bytes"],
            unique_inode_bytes=inventory["unique_inode_bytes"],
            archive_bytes=archive_bytes,
            net_reclaimed_bytes=inventory["unique_inode_bytes"] - archive_bytes,
            part_count=len(plan),
            retained_executables_unchanged=True,
            source_bindings_unchanged=True,
            native_proof="unestablished",
            feature_complete=False,
        ),
    )
    return 0
