"""Count new metadata inodes while retaining independently checked old snapshots.

This is the bounded metadata bootstrap's incremental scope. The actual NATIVE
controller still counts all registered roots and enforces the unchanged global
budgets. Only verified pre-existing immutable source snapshots can be excluded
from new materialization, and their references/inodes must be rechecked afterward.
"""

import re
import stat
from pathlib import Path


def verified_snapshot_inodes(registry, anchors, *, root_id="work"):
    if root_id not in {"work", "future_evidence"}:
        raise ValueError("MetadataSnapshotOwnership")
    result = {}
    for reference in anchors.values():
        if Path(reference.get("path", "")).name in {
            "parameters.bin",
            "compression_prover_key.bin",
        }:
            raise ValueError("ProtectedArtifact")
        if (
            reference.get("root_id") != root_id
            or re.fullmatch(
                r"subjects/r[0-9]{4,16}/sources/[0-9]{5}", reference.get("path", "")
            )
            is None
        ):
            raise ValueError("MetadataSnapshotOwnership")
        source = registry.verify(reference)
        info = source.lstat()
        if not stat.S_ISREG(info.st_mode) or info.st_size != reference["bytes"]:
            raise ValueError("MetadataSnapshotKindOrSize")
        identity = (info.st_dev, info.st_ino)
        if identity in result and result[identity] != info.st_size:
            raise ValueError("MetadataSnapshotAliasSize")
        result[identity] = info.st_size
    return result


def materialized_bytes(roots, previous_snapshots):
    if not isinstance(previous_snapshots, dict) or any(
        not isinstance(identity, tuple)
        or len(identity) != 2
        or any(type(part) is not int or part < 0 for part in identity)
        or type(size) is not int
        or size < 0
        for identity, size in previous_snapshots.items()
    ):
        raise ValueError("MetadataSnapshotInventory")
    seen = set()
    total = 0
    nodes = 0
    for root in roots:
        root = Path(root)
        if root.is_symlink():
            raise ValueError("MetadataFootprintSymlink")
        if not root.exists():
            continue
        pending = [root]
        while pending:
            path = pending.pop()
            if path.name in {"parameters.bin", "compression_prover_key.bin"}:
                raise ValueError("ProtectedArtifact")
            nodes += 1
            if nodes > 100000:
                raise ValueError("MetadataFootprintNodeBound")
            info = path.lstat()
            if stat.S_ISLNK(info.st_mode):
                raise ValueError("MetadataFootprintSymlink")
            if stat.S_ISDIR(info.st_mode):
                pending.extend(path.iterdir())
                continue
            if not stat.S_ISREG(info.st_mode):
                raise ValueError("MetadataFootprintSpecialNode")
            identity = (info.st_dev, info.st_ino)
            if identity in previous_snapshots:
                if info.st_size != previous_snapshots[identity]:
                    raise ValueError("MetadataSnapshotSizeChanged")
                continue
            if identity not in seen:
                seen.add(identity)
                total += info.st_size
    return total
