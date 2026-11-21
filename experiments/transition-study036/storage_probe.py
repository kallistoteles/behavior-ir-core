"""Actual populated-root metadata probe; not a Core performance observation."""

import argparse
import time
from pathlib import Path

from artifact_io import read, write_once
from controller_v2 import execution_control_paths
from recorder import V2Runner
from storage_observer import IncrementalStorage


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--declaration", required=True)
    parser.add_argument("--out", required=True)
    args = parser.parse_args()
    declaration = read(args.declaration)
    profile = declaration["profile"]
    private = Path(profile["roots"]["cache"])
    out = Path(args.out)
    if out != private / "storage-probe" / declaration["record_id"] or out.exists():
        raise ValueError("StorageProbeOutput")
    out.mkdir(parents=True)
    controls = execution_control_paths()
    baseline = V2Runner(profile, control_paths=controls)
    started = time.monotonic_ns()
    full = baseline._growth("probe")
    full_ns = time.monotonic_ns() - started
    started = time.monotonic_ns()
    with IncrementalStorage(profile["roots"], controls=controls) as observer:
        prepare_ns = time.monotonic_ns() - started
        observations = []
        for number in range(5):
            started = time.monotonic_ns()
            actual = observer.snapshot()
            duration = time.monotonic_ns() - started
            if actual != full:
                raise ValueError("IncrementalStorageDiffersFromActualFullInventory")
            observations.append(
                {"number": number, "duration_ns": duration, "actual_bytes": actual}
            )
        files, directories = len(observer.files), len(observer.directories)
    write_once(
        out / "result.json",
        {
            "format": "core036.storage-observer-probe.v2",
            "source_subject_ref": declaration["source_subject_ref"],
            "control_paths": len(controls),
            "tracked_files": files,
            "tracked_directories": directories,
            "initial_full_inventory_ns": full_ns,
            "event_inventory_prepare_ns": prepare_ns,
            "snapshots": observations,
            "scope": "actual populated work roots, quiet-tree equality and metadata-only cost; event unit controls and timed controller integration remain separate prerequisites",
            "product_adoption": "unactivated",
        },
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
