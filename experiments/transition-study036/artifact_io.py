"""Create-once, bounded byte references under caller-chosen roots."""

import hashlib
import json
import os
import re
from pathlib import Path, PurePosixPath
from records import loads, CONTROL


def write_once(path, value):
    path = Path(path)
    path.parent.mkdir(parents=True, exist_ok=True)
    raw = (
        value
        if isinstance(value, bytes)
        else (
            json.dumps(
                value, sort_keys=True, ensure_ascii=False, indent=2, allow_nan=False
            )
            + "\n"
        ).encode()
    )
    with path.open("xb") as f:
        f.write(raw)
        f.flush()
        os.fsync(f.fileno())


def safe_path(root, name):
    if (
        not isinstance(name, str)
        or not name
        or len(name.encode()) > 1024
        or "\\" in name
    ):
        raise ValueError("ArtifactPath")
    p = PurePosixPath(name)
    if p.is_absolute() or ".." in p.parts or str(p) != name:
        raise ValueError("ArtifactPath")
    root = Path(root).resolve()
    out = (root / name).resolve()
    if not out.is_relative_to(root):
        raise ValueError("ArtifactPathEscape")
    return out


def digest(path):
    h = hashlib.sha256()
    with Path(path).open("rb") as f:
        for b in iter(lambda: f.read(1024**2), b""):
            h.update(b)
    return h.hexdigest()


def artifact_ref(root, name):
    p = safe_path(root, name)
    if not p.is_file():
        raise ValueError("ArtifactMissing")
    return {"path": name, "bytes": p.stat().st_size, "sha256": digest(p)}


def verify_ref(root, ref):
    if (
        not isinstance(ref, dict)
        or set(ref) != {"path", "bytes", "sha256"}
        or type(ref["bytes"]) is not int
        or ref["bytes"] < 0
        or not re.fullmatch("[a-f0-9]{64}", ref["sha256"])
    ):
        raise ValueError("ArtifactRefFields")
    if artifact_ref(root, ref["path"]) != ref:
        raise ValueError("ArtifactBytes")
    return safe_path(root, ref["path"])


def read(path, limit=CONTROL):
    with Path(path).open("rb") as f:
        raw = f.read(limit + 1)
    return loads(raw, limit)


def seal(root):
    root = Path(root)
    files = []
    for p in sorted(root.rglob("*")):
        if p.is_symlink():
            raise ValueError("ArchiveSymlink")
        if p.is_file() and p.name != "closed-artifacts.json":
            files.append(artifact_ref(root, str(p.relative_to(root))))
    if len(files) > 20000:
        raise ValueError("ArchiveReferenceBound")
    result = {"format": "core036.closed.v1", "files": files}
    write_once(root / "closed-artifacts.json", result)
    return result


class RootRegistry:
    """Caller-selected roots, never roots or executable choices from a report."""

    def __init__(self, roots, *, readonly=()):
        from records import identifier

        if not isinstance(roots, dict) or not roots:
            raise ValueError("V2RootRegistry")
        self.roots = {}
        for name, value in roots.items():
            identifier(name)
            path = Path(value)
            if not path.is_absolute() or path.is_symlink():
                raise ValueError("V2RootOwnership")
            self.roots[name] = path.resolve()
        self.readonly = frozenset(readonly)
        if self.readonly - self.roots.keys():
            raise ValueError("V2ReadOnlyRoot")

    def path(self, root_id, name, *, writing=False):
        if root_id not in self.roots:
            raise ValueError("V2UnregisteredRoot")
        if writing and root_id in self.readonly:
            raise ValueError("V2ReadOnlyRoot")
        root = self.roots[root_id]
        if (
            not isinstance(name, str)
            or not name
            or len(name.encode()) > 1024
            or "\\" in name
        ):
            raise ValueError("ArtifactPath")
        relative = PurePosixPath(name)
        if relative.is_absolute() or ".." in relative.parts or str(relative) != name:
            raise ValueError("ArtifactPath")
        # Registered roots are already canonical. Recheck that identity, then
        # reject every symlink component before returning the lexical target.
        # A second realpath of the target repeats the same ancestor traversal.
        current = os.fspath(root)
        if os.path.realpath(current) != current or os.path.islink(current):
            raise ValueError("V2RootOwnership")
        for part in relative.parts:
            current = os.path.join(current, part)
            if os.path.islink(current):
                raise ValueError("V2ArtifactSymlink")
        return Path(current)

    def write(self, root_id, name, value, *, limit=CONTROL):
        from records import DOCUMENT, loads_v2

        if type(limit) is not int or not 0 < limit <= DOCUMENT:
            raise ValueError("V2ArtifactLimit")
        raw = (
            value
            if isinstance(value, bytes)
            else (
                json.dumps(
                    value, sort_keys=True, ensure_ascii=False, indent=2, allow_nan=False
                )
                + "\n"
            ).encode("utf-8")
        )
        if len(raw) > limit:
            raise ValueError("V2ArtifactByteBound")
        if not isinstance(value, bytes):
            loads_v2(raw, limit=limit)
        path = self.path(root_id, name, writing=True)
        if (self.roots[root_id] / "closed-artifacts.json").exists():
            raise ValueError("V2RootAlreadySealed")
        write_once(path, raw)
        return self.reference(root_id, name)

    def reference(self, root_id, name):
        path = self.path(root_id, name)
        if not path.is_file():
            raise ValueError("V2ArtifactMissing")
        return {
            "root_id": root_id,
            "path": name,
            "bytes": path.stat().st_size,
            "sha256": digest(path),
        }

    def verify(self, ref):
        from records import validate_ref_v2

        validate_ref_v2(ref)
        if self.reference(ref["root_id"], ref["path"]) != ref:
            raise ValueError("V2ArtifactBytes")
        return self.path(ref["root_id"], ref["path"])

    def read(self, ref, *, limit=CONTROL):
        from records import loads_v2

        path = self.verify(ref)
        with path.open("rb") as stream:
            raw = stream.read(limit + 1)
        # Recheck after reading; owned-root writers must also be closed before
        # sealing or scientific interpretation.
        if len(raw) != ref["bytes"] or hashlib.sha256(raw).hexdigest() != ref["sha256"]:
            raise ValueError("V2ArtifactChangedDuringRead")
        return loads_v2(raw, limit=limit)

    def seal(self, root_id):
        if root_id not in self.roots or root_id in self.readonly:
            raise ValueError("V2UnownedSeal")
        root = self.roots[root_id]
        index_path = root / "closed-artifacts.json"
        if index_path.exists():
            raise FileExistsError(index_path)
        files = []
        for path in sorted(root.rglob("*")):
            if path.is_symlink():
                raise ValueError("V2SealSymlink")
            if path.is_file():
                files.append(self.reference(root_id, str(path.relative_to(root))))
                if len(files) > 20000:
                    raise ValueError("V2ClosureReferenceBound")
        result = {"format": "core036.closed.v2", "root_id": root_id, "files": files}
        write_once(index_path, result)
        return result

    def verify_closed(self, root_id):
        from records import MANIFEST, loads_v2

        root = self.roots[root_id]
        path = self.path(root_id, "closed-artifacts.json")
        with path.open("rb") as stream:
            index = loads_v2(stream.read(MANIFEST + 1), limit=MANIFEST)
        if (
            not isinstance(index, dict)
            or set(index) != {"format", "root_id", "files"}
            or index["format"] != "core036.closed.v2"
            or index["root_id"] != root_id
            or not isinstance(index["files"], list)
            or len(index["files"]) > 20000
        ):
            raise ValueError("V2ClosedIndex")
        names = set()
        for ref in index["files"]:
            self.verify(ref)
            if (
                ref["root_id"] != root_id
                or ref["path"] in names
                or ref["path"] == "closed-artifacts.json"
            ):
                raise ValueError("V2ClosureReference")
            names.add(ref["path"])
        actual = set()
        for item in root.rglob("*"):
            if item.is_symlink():
                raise ValueError("V2ClosureSymlink")
            if item.is_file() and item != path:
                actual.add(str(item.relative_to(root)))
        if actual != names:
            raise ValueError("V2UnindexedArtifact")
        return index
