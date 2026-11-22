"""Preserve an exact closed resource-stopped compiler cache, not its result."""

from collections import Counter
from pathlib import Path
import stat

from artifact_io import RootRegistry, digest, read, write_once
from artifact_registration_v2 import guard_protected_components, guard_reference
from backend_ir_retention_v2 import guarded_inventory_paths, _archive_stream
from native_analysis_cache_v2 import retain_before_reuse
from native_canary_cache_retention_v2 import CountOnlySink
from owned_cleanup import OwnedCleanup


def partial_target(cp, receipt, initial, environment, metadata, private):
    guard_protected_components(private)
    target = Path(private) / "disposable/native-accessor-canary-a0492/target"
    if (
        cp.get("attempt_id") != "a0493"
        or cp.get("stage_outcome") != "resource_stopped"
        or cp.get("source_validation_error") is not None
        or cp.get("outcome", {}).get("operational") != "closed"
        or receipt.get("source_subject_ref") != cp.get("source_subject_ref")
        or type(receipt.get("exit_code")) is not int
        or receipt["exit_code"] != -9
        or receipt.get("stop_reason") != "ControllerError"
        or receipt.get("controller_error")
        != "StorageEventsLost('StorageGuardWatchLost')"
        or receipt.get("tree_empty") is not True
        or receipt.get("group_empty") is not True
        or receipt.get("final_storage_inventory_error") is not None
        or initial != dict(removed_metadata_files=[], new_empty_target=str(target))
        or environment.get("CARGO_TARGET_DIR") != str(target)
        or metadata.get("target_directory") != str(target)
        or metadata.get("workspace_root") != str(target.parent / "worker")
    ):
        raise ValueError("NativePartialCacheExactStoppedOwner")
    return target


def complete_inventory(root):
    """Keep directory metadata and reject links escaping this exact subtree."""
    guard_protected_components(root)
    root = Path(root)
    files, directories, inodes, links = [], [], {}, Counter()
    unique_bytes = 0
    for path in [root, *guarded_inventory_paths(root)]:
        guard_protected_components(path)
        info = path.lstat()
        mode = stat.S_IMODE(info.st_mode)
        if mode & ~0o777:
            raise ValueError("NativePartialCacheSpecialMode")
        relative = str(path.relative_to(root))
        if stat.S_ISDIR(info.st_mode):
            directories.append(dict(path=relative, mode=mode))
        elif stat.S_ISREG(info.st_mode):
            files.append(
                dict(path=relative, bytes=info.st_size, mode=mode, sha256=digest(path))
            )
            inode = (info.st_dev, info.st_ino)
            if inode not in inodes:
                unique_bytes += info.st_size
            links[inode] += 1
            inodes[inode] = (info.st_size, info.st_nlink)
        else:
            raise ValueError("NativePartialCacheSpecialNode")
        if (
            len(files) + len(directories) > 20000
            or unique_bytes > 512 * 1024**2
        ):
            raise ValueError("NativePartialCacheInventoryBound")
    if any(links[inode] != value[1] for inode, value in inodes.items()):
        raise ValueError("NativePartialCacheExternalLink")
    return dict(
        files=sorted(files, key=lambda row: row["path"]),
        directories=sorted(directories, key=lambda row: row["path"]),
        file_bytes=sum(row["bytes"] for row in files),
        unique_inode_bytes=unique_bytes,
    )


def run_retention(refs, reference, declaration, out):
    guard_reference(reference)
    selection = refs.read(reference)
    private, future = refs.roots["private"], refs.roots["future_evidence"]
    if (
        set(selection) != {"format", "baseline_checkpoint_ref"}
        or selection["format"] != "core036.native-partial-cache-retention.v2"
        or out != private / "native-cache-retention" / declaration["record_id"]
        or out.exists()
    ):
        raise ValueError("NativePartialCacheSelection")
    retained = [reference]

    def record(path):
        guard_protected_components(path)
        for root_id in ("private", "future_evidence"):
            root = refs.roots[root_id]
            if path.is_relative_to(root):
                reference = refs.reference(root_id, str(path.relative_to(root)))
                guard_reference(reference)
                refs.verify(reference)
                retained.append(reference)
                return reference
        raise ValueError("NativePartialCacheRecordRoot")

    base = future / "attempts/a0493"
    cp, receipt = (
        refs.read(record(base / name))
        for name in ("checkpoint.json", "child/receipt.json")
    )
    RootRegistry({"attempt": base}).verify_closed("attempt")
    probe = private / "ground-lean-probe/a0493"
    target = partial_target(
        cp,
        receipt,
        refs.read(record(probe / "initial-owned-target.json")),
        refs.read(record(probe / "environment.json")),
        read(
            refs.verify(record(probe / "commands/metadata/stdout.txt")),
            limit=32 * 1024**2,
        ),
        private,
    )
    subject = refs.read(cp["source_subject_ref"])
    owners = [
        row
        for row in subject["files"]
        if row["logical_ref"].get("path")
        == "experiments/transition-study036/native_accessor_source_canary_v2.py"
    ]
    if (
        len(owners) != 1
        or owners[0]["snapshot_ref"].get("path") != "subjects/r9517/sources/02172"
        or owners[0]["snapshot_ref"].get("sha256")
        != "96853c160daae8dc933f0b416951505d61298d2ab2c20122d95cecc7664f6540"
    ):
        raise ValueError("NativePartialCacheFrozenOwner")
    guard_reference(owners[0]["snapshot_ref"])
    record(refs.verify(owners[0]["snapshot_ref"]))
    for name in (
        "commands/metadata/result.json",
        "commands/extract/stdout.txt",
        "commands/extract/stderr.txt",
    ):
        record(probe / name)
    guard_reference(selection["baseline_checkpoint_ref"])
    if (
        refs.verify(selection["baseline_checkpoint_ref"])
        != future / "attempts/a0525/checkpoint.json"
    ):
        raise ValueError("NativePartialCacheBaselinePath")
    baseline = refs.read(selection["baseline_checkpoint_ref"])
    baseline_receipt = refs.read(record(future / "attempts/a0525/child/receipt.json"))
    RootRegistry({"attempt": future / "attempts/a0525"}).verify_closed("attempt")
    if (
        baseline["stage_outcome"] != "succeeded"
        or baseline["source_validation_error"] is not None
        or baseline["outcome"]["operational"] != "closed"
        or baseline_receipt["source_subject_ref"] != baseline["source_subject_ref"]
        or baseline_receipt["exit_code"] != 0
        or baseline_receipt["stop_reason"] is not None
        or baseline_receipt["tree_empty"] is not True
        or baseline_receipt["group_empty"] is not True
        or baseline_receipt["final_storage_inventory_error"] is not None
    ):
        raise ValueError("NativePartialCacheBaselineClosure")
    for row in refs.read(declaration["source_subject_ref"])["files"]:
        logical = row["logical_ref"]
        guard_reference(logical)
        if logical["root_id"] == "private" and (
            private / logical["path"]
        ).is_relative_to(target):
            raise ValueError("NativePartialCacheSelectedSource")
    if OwnedCleanup._live_users(target):
        raise ValueError("NativePartialCacheLive")
    preserved = {
        name: complete_inventory(target.parent / name)
        for name in ("worker", "owner/serde_json-1.0.151", "positive")
    }
    inventory = complete_inventory(target)
    if not inventory["files"]:
        raise ValueError("NativePartialCacheEmpty")
    counter = CountOnlySink()
    _archive_stream(target, inventory["files"], counter, compressed_limit=64 * 1024**2)
    budget = (
        declaration["profile"]["limits"]["cache_bytes"]
        - baseline_receipt["final_resource_observation"][
            "growth_apparent_unique_inode_bytes"
        ]["cache"]
        - 16 * 1024**2
    )
    if counter.total > budget or counter.total >= inventory["unique_inode_bytes"]:
        raise ValueError("NativePartialCacheArchiveAdmission")
    out.mkdir(parents=True, exist_ok=False)
    write_once(out / "complete-inventory.json", inventory)
    write_once(out / "preserved-inventories.json", preserved)
    kept = out / "retained-cache"
    result = retain_before_reuse(target, kept)
    if (
        result["archive_bytes"] != counter.total
        or complete_inventory(target) != inventory
    ):
        raise ValueError("NativePartialCacheChanged")
    for name in (
        "complete-inventory.json",
        "preserved-inventories.json",
        "retained-cache/result.json",
        "retained-cache/inventory.json",
        "retained-cache/all-files.tar.gz",
    ):
        record(out / name)
    cleanup = OwnedCleanup(private)
    registration = cleanup.register(target, retained_refs=retained, registry=refs)
    write_once(out / "registration.json", registration)
    write_once(out / "cleanup.json", cleanup.dispose(target, paced=True))
    if any(
        complete_inventory(target.parent / name) != before
        for name, before in preserved.items()
    ):
        raise ValueError("NativePartialCachePreservedChanged")
    for ref in retained:
        guard_reference(ref)
        refs.verify(ref)
    write_once(
        out / "result.json",
        dict(
            format="core036.native-partial-cache-retention-result.v2",
            source_subject_ref=declaration["source_subject_ref"],
            selection_ref=reference,
            historical_outcome="resource_stopped",
            target=str(target),
            file_count=len(inventory["files"]),
            file_bytes=inventory["file_bytes"],
            unique_inode_bytes=inventory["unique_inode_bytes"],
            archive_bytes=result["archive_bytes"],
            net_reclaimed_bytes=inventory["unique_inode_bytes"]
            - result["archive_bytes"],
            directory_metadata_retained=True,
            native_proof="unestablished",
            feature_complete=False,
        ),
    )
    return 0
