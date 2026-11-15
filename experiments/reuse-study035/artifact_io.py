"""035 integrity bindings only. Exact bytes/hashes do not establish semantic authority."""

import hashlib, json, os, re
from pathlib import Path
from protocol import (
    DOCUMENT_BOUND,
    PACKET_BOUND,
    CORE_RECORD_BOUND,
    DEPTH_BOUND,
    ID_BOUND,
    CASE_BOUND,
    OBSERVATION_BOUND,
    strict_loads,
    validate_outcomes,
    validate_graph,
    semantic_digest,
)


def write_once(path, data):
    path = Path(path)
    path.parent.mkdir(parents=True, exist_ok=True)
    if not isinstance(data, bytes):
        data = (
            json.dumps(
                data, sort_keys=True, ensure_ascii=False, indent=2, allow_nan=False
            )
            + "\n"
        ).encode("utf-8")
    with path.open("xb") as f:
        f.write(data)
        f.flush()
        os.fsync(f.fileno())


def bounded_read(path, limit=DOCUMENT_BOUND):
    if type(limit) is not int or limit < 0:
        raise ValueError("InvalidReadBound")
    with Path(path).open("rb") as f:
        raw = f.read(limit + 1)
    if len(raw) > limit:
        raise ValueError("ByteBound")
    return raw


def safe_path(root, relative):
    if (
        not isinstance(relative, str)
        or not relative
        or Path(relative).is_absolute()
        or ".." in Path(relative).parts
    ):
        raise ValueError("ArtifactPathEscape")
    root = Path(root).resolve()
    path = (root / relative).resolve()
    if not path.is_relative_to(root):
        raise ValueError("ArtifactPathEscape")
    return path


def artifact_ref(root, relative, role="artifact"):
    path = safe_path(root, relative)
    if not path.is_file():
        raise ValueError("ArtifactMissing")
    if not isinstance(role, str) or not 0 < len(role.encode()) <= ID_BOUND:
        raise ValueError("ArtifactRole")
    h = hashlib.sha256()
    size = 0
    with path.open("rb") as f:
        for raw in iter(lambda: f.read(1024**2), b""):
            h.update(raw)
            size += len(raw)
    return {
        "path": str(Path(relative)),
        "bytes": size,
        "sha256": h.hexdigest(),
        "role": role,
    }


def verify_ref(root, ref):
    if not isinstance(ref, dict) or set(ref) != {"path", "bytes", "sha256", "role"}:
        raise ValueError("ArtifactReferenceFields")
    if (
        type(ref["bytes"]) is not int
        or ref["bytes"] < 0
        or not isinstance(ref["sha256"], str)
        or not re.fullmatch("[0-9a-f]{64}", ref["sha256"])
    ):
        raise ValueError("ArtifactReferenceEncoding")
    if artifact_ref(root, ref["path"], ref["role"]) != ref:
        raise ValueError("ArtifactBytesDiffer")


def seal(root, paths):
    if len(paths) > OBSERVATION_BOUND or len(set(paths)) != len(paths):
        raise ValueError("ArchiveIndexBoundOrDuplicate")
    return {
        "format": "core035.closed.v1",
        "files": [artifact_ref(root, p) for p in sorted(paths)],
    }


def verify_archive(root, manifest):
    if (
        not isinstance(manifest, dict)
        or set(manifest) != {"format", "files"}
        or manifest["format"] != "core035.closed.v1"
    ):
        raise ValueError("ArchiveFormat")
    files = manifest["files"]
    if not isinstance(files, list) or len(files) > OBSERVATION_BOUND:
        raise ValueError("ArchiveIndexBound")
    seen = set()
    for ref in files:
        verify_ref(root, ref)
        if ref["path"] in seen:
            raise ValueError("ArchiveDuplicate")
        seen.add(ref["path"])
