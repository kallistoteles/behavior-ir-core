"""Content-bind and sequentially read immutable backend import libraries.

The fixed proof driver chooses roots from its pinned Lake manifest. This
inventory records the actual candidate environment, including absent roots; it
does not establish source/compiler/native adequacy or relax observation cadence.
"""

from pathlib import Path
import stat

from artifact_io import digest
from native_accessor_source_canary_v2 import guard_owned_path, _unlinked_parents
from nonpos_lean_probe_v2 import dependency_library_paths

MAX_FILES_PER_ROOT = 20_000
MAX_FILES = 50_000
MAX_BYTES = 4 * 1024**3


def guarded(path):
    path = guard_owned_path(Path(path))
    _unlinked_parents(path)
    return path


def backend_library_roots(backend):
    backend = guarded(backend)
    guarded(backend / "lake-manifest.json")
    return list(
        dict.fromkeys(
            [
                backend / ".lake/build/lib",
                *(p.parent for p in dependency_library_paths(backend)),
            ]
        )
    )


def capture_imports(backend, libraries):
    backend = guarded(backend)
    if not backend.is_dir() or not 1 <= len(libraries) <= 16:
        raise ValueError("LeanImportInventoryRoots")
    seen, rows, total_files, total_bytes = set(), [], 0, 0
    for library in libraries:
        library = guarded(library)
        if library == backend or not library.is_relative_to(backend) or library in seen:
            raise ValueError("LeanImportInventoryRootEscapeOrDuplicate")
        seen.add(library)
        label = str(library.relative_to(backend))
        try:
            root_stat = library.lstat()
        except FileNotFoundError:
            rows.append({"path": label, "present": False, "files": []})
            continue
        if not stat.S_ISDIR(root_stat.st_mode):
            raise ValueError("LeanImportInventoryRootKind")
        files, stack, nodes = [], [library], 0
        while stack:
            directory = guarded(stack.pop())
            for path in directory.iterdir():
                # Name guard precedes every operation on this child, including
                # lstat; forbidden names are never read, hashed or followed.
                path = guard_owned_path(path)
                _unlinked_parents(path)
                before = path.lstat()
                nodes += 1
                if nodes > 100_000:
                    raise ValueError("LeanImportInventoryNodeBound")
                if stat.S_ISDIR(before.st_mode):
                    stack.append(path)
                    continue
                if not stat.S_ISREG(before.st_mode):
                    raise ValueError("LeanImportInventoryFileKind")
                total_files += 1
                total_bytes += before.st_size
                if (
                    len(files) >= MAX_FILES_PER_ROOT
                    or total_files > MAX_FILES
                    or total_bytes > MAX_BYTES
                ):
                    raise ValueError("LeanImportInventoryBound")
                sha = digest(path)
                after = path.lstat()
                fields = (
                    "st_dev",
                    "st_ino",
                    "st_size",
                    "st_mode",
                    "st_mtime_ns",
                    "st_ctime_ns",
                )
                if any(getattr(before, k) != getattr(after, k) for k in fields):
                    raise ValueError("LeanImportChangedDuringRead")
                files.append(
                    {
                        "path": str(path.relative_to(library)),
                        "bytes": before.st_size,
                        "mode": stat.S_IMODE(before.st_mode),
                        "sha256": sha,
                    }
                )
        rows.append(
            {
                "path": label,
                "present": True,
                "files": sorted(files, key=lambda r: r["path"]),
            }
        )
    return {
        "format": "core036.lean-backend-import-inventory.v2",
        "backend": str(backend),
        "libraries": rows,
        "files": total_files,
        "bytes": total_bytes,
    }


def verify_imports(backend, libraries, expected):
    if capture_imports(backend, libraries) != expected:
        raise ValueError("LeanImportInventoryChanged")
