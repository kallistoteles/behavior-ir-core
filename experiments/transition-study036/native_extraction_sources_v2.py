"""Bind every compiled Rust module and embedded fixture before materialization.

This is source integrity, not native refinement. Retained before/after tables
cannot grant authority to files omitted from the predeclared source subject.
"""

import os
from pathlib import Path

from artifact_io import digest
from artifact_registration_v2 import guard_reference
from native_accessor_source_canary_v2 import guard_owned_path, _unlinked_parents


def _selected_path(name):
    return name.startswith(("src/", "tests/", "expected/"))


def required_worker_source_paths(worker, roots=("src", "tests", "expected")):
    worker = guard_owned_path(Path(worker))
    _unlinked_parents(worker)
    result = []
    for name in roots:
        start = guard_owned_path(worker / name)
        _unlinked_parents(start)
        if not start.exists():
            continue
        for directory, dirs, files in os.walk(start, followlinks=False):
            for child in [*dirs, *files]:
                path = guard_owned_path(Path(directory) / child)
                _unlinked_parents(path)
            for child in files:
                path = Path(directory) / child
                if path.suffix == ".rs" or name == "expected":
                    if not path.is_file():
                        raise ValueError("NativeWorkerSourceRegularFile")
                    result.append(path.relative_to(worker).as_posix())
    return sorted(result)


def require_frozen_worker_sources(
    refs, subject, worker, *, roots=("src", "tests", "expected")
):
    prefix = "experiments/transition-study036/"
    listed = {}
    for row in subject["files"]:
        logical = row["logical_ref"]
        guard_reference(logical)
        guard_reference(row["snapshot_ref"])
        if logical["root_id"] != "repository" or not logical["path"].startswith(prefix):
            continue
        name = logical["path"].removeprefix(prefix)
        if name in listed:
            raise ValueError("NativeWorkerDuplicateSource")
        listed[name] = row
    for name in required_worker_source_paths(worker, roots):
        row = listed.get(name)
        if row is None:
            raise ValueError("UnfrozenWorkerSource:" + name)
        source = guard_owned_path(Path(worker) / name)
        _unlinked_parents(source)
        logical = row["logical_ref"]
        snapshot = refs.verify(row["snapshot_ref"])
        if (
            source.stat().st_size != logical["bytes"]
            or digest(source) != logical["sha256"]
            or source.read_bytes() != snapshot.read_bytes()
        ):
            raise ValueError("NativeWorkerFrozenSourceChanged:" + name)
    return listed


def selected_native_sources(refs, compiled_subject, native_worker):
    require_frozen_worker_sources(refs, compiled_subject, native_worker)
    selected = {}
    prefix = "experiments/transition-study036/"
    for row in compiled_subject["files"]:
        logical = row["logical_ref"]
        guard_reference(logical)
        guard_reference(row["snapshot_ref"])
        relative = logical["path"].removeprefix(prefix)
        if (
            logical["root_id"] == "repository"
            and logical["path"].startswith(prefix)
            and _selected_path(relative)
        ):
            source = guard_owned_path(native_worker / relative)
            _unlinked_parents(source)
            if (
                digest(source) != logical["sha256"]
                or source.read_bytes() != refs.verify(row["snapshot_ref"]).read_bytes()
            ):
                raise ValueError("NativeExtractionSourceBodyChanged")
            if relative in selected:
                raise ValueError("NativeExtractionDuplicateSource")
            selected[relative] = (relative, source, logical["sha256"])
    if "src/views.rs" not in selected:
        raise ValueError("NativeExtractionMissingRealViews")
    return [selected[name] for name in sorted(selected)]
