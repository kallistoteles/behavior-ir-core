#!/usr/bin/env python3
"""Share immutable compiled bytes; preserve paths, modes and the seal's hashes.

Hard links share timestamps. The plan records original per-path timestamps and
inode groups; restoring separate copies is required before future modification.
This maintenance operation confers no semantic/proof correctness status.
"""
import hashlib
import json
import os
from pathlib import Path
import stat
import sys
import time

PREFIX = "specs/033-core-proof-feasibility/evidence/"


def digest(path):
    h = hashlib.sha256()
    with path.open("rb") as f:
        before = os.fstat(f.fileno())
        for block in iter(lambda: f.read(1024 * 1024), b""):
            h.update(block)
        after = os.fstat(f.fileno())
    assert (before.st_ino, before.st_size, before.st_mtime_ns) == (
        after.st_ino, after.st_size, after.st_mtime_ns), "file changed while reading"
    return h.hexdigest()


def checked_path(root, relative):
    p = Path(relative)
    assert not p.is_absolute() and ".." not in p.parts
    assert relative.startswith(PREFIX) and relative.endswith(".olean")
    path = root / p
    assert path.parent.resolve().is_relative_to(root)
    assert stat.S_ISREG(path.lstat().st_mode), "regular file required"
    return path


def prepare_group(root, group, sealed):
    paths, seen, attrs = [], set(), None
    for entry in group["files"]:
        p = checked_path(root, entry["path"])
        expected = sealed[entry["path"]]
        assert expected["kind"] == "file"
        assert (expected["bytes"], expected["sha256"]) == (
            group["bytes"], group["expected_sha256"])
        s = p.stat()
        assert (s.st_dev, s.st_ino, s.st_size, s.st_mtime_ns,
                s.st_mode, s.st_uid, s.st_gid) == (
            group["device"], entry["inode"], group["bytes"], entry["mtime_ns"],
            group["mode"], group["uid"], group["gid"]), "planned metadata changed"
        current_attrs = {n: os.getxattr(p, n) for n in os.listxattr(p)}
        if attrs is None:
            attrs = current_attrs
        assert attrs == current_attrs, "different extended attributes"
        if s.st_ino not in seen:
            assert digest(p) == group["expected_sha256"], "content mismatch"
            seen.add(s.st_ino)
        paths.append(p)
    return paths


def replace_duplicate(canonical, target):
    if canonical.stat().st_ino == target.stat().st_ino:
        return False
    temporary = target.with_name(f".{target.name}.dedup-{os.getpid()}")
    assert not temporary.exists()
    try:
        os.link(canonical, temporary, follow_symlinks=False)
        os.replace(temporary, target)
    finally:
        if temporary.exists():
            temporary.unlink()
    return True


def available(root):
    s = os.statvfs(root)
    return s.f_bavail * s.f_frsize


def run(root, plan_path, receipt_path):
    assert not receipt_path.exists(), "never overwrite a completed operation"
    plan = json.loads(plan_path.read_text())
    assert plan["status"] == "PlannedNotExecuted"
    manifest_path = root / plan["manifest"]
    seal_sha = digest(manifest_path)
    sealed = {e["path"]: e for e in json.loads(manifest_path.read_text())["files"]}
    selected = {str(root / e["path"]) for g in plan["selected_groups"] for e in g["files"]}
    # Do not replace files held by a live process, including mapped modules.
    for proc in Path("/proc").iterdir():
        if not proc.name.isdigit():
            continue
        try:
            handles = list((proc / "fd").iterdir()) + [proc / "exe", proc / "cwd"]
        except (FileNotFoundError, PermissionError):
            continue
        for handle in handles:
            try:
                target = os.readlink(handle)
            except OSError:
                continue
            assert target not in selected, f"active handle: {proc.name}"
        try:
            mapped = (proc / "maps").read_text()
        except (FileNotFoundError, PermissionError):
            continue
        for line in mapped.splitlines():
            parts = line.split(None, 5)
            assert len(parts) < 6 or parts[5] not in selected, "active mapping"
    receipt = {"format": "core.storage-deduplication.receipt.v1",
               "status": "InProgress", "plan_sha256": digest(plan_path),
               "manifest_sha256": seal_sha, "available_bytes_before": available(root),
               "timestamp_policy": "hard links share canonical timestamps; original path metadata retained in plan",
               "groups": [], "g1_pass": False}
    def save():
        receipt_path.write_text(json.dumps(receipt, indent=2) + "\n")
    save()
    started = time.monotonic()
    for index, group in enumerate(plan["selected_groups"]):
        paths = prepare_group(root, group, sealed)
        canonical = paths[0]
        count = sum(replace_duplicate(canonical, target) for target in paths[1:])
        assert digest(canonical) == group["expected_sha256"]
        inode = canonical.stat().st_ino
        for p in paths:
            s = p.lstat()
            assert stat.S_ISREG(s.st_mode) and s.st_ino == inode
            assert (s.st_size, s.st_mode, s.st_uid, s.st_gid) == (
                group["bytes"], group["mode"], group["uid"], group["gid"])
        receipt["groups"].append({"index": index, "canonical": str(canonical.relative_to(root)),
                                  "sha256": group["expected_sha256"], "paths": len(paths),
                                  "relinked_paths": count, "verified": True})
        save()
        print(json.dumps({"verified_group": index + 1, "total_groups": len(plan["selected_groups"]),
                          "free_gib": round(available(root) / 1024**3, 2)}), flush=True)
    assert digest(manifest_path) == seal_sha
    receipt.update(status="CompletedAndScopedHashesVerified", elapsed_seconds=time.monotonic()-started,
                   available_bytes_after=available(root), retained_manifest_unchanged=True,
                   scope="all selected compiled artifacts verified; not a full study rehash or semantic check")
    receipt["available_bytes_increase"] = receipt["available_bytes_after"] - receipt["available_bytes_before"]
    save()


if __name__ == "__main__":
    assert len(sys.argv) == 4, "ROOT PLAN RECEIPT"
    run(Path(sys.argv[1]).resolve(), Path(sys.argv[2]), Path(sys.argv[3]))
