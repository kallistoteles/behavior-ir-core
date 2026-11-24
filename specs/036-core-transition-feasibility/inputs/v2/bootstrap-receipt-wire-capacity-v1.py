"""Whole-work bounded replay of the complete resource-receipt writer seam."""

import json
from pathlib import Path
import sys
import time

sys.dont_write_bytecode = True
STARTED = time.monotonic_ns()
R = Path("/data/repos/behavior-ir-core-033")
E = R / "experiments/transition-study036"
F = R / "specs/036-core-transition-feasibility"
P = Path("/var/tmp/behavior-ir-core036-v2/w001")
N = Path("/var/tmp/behavior-ir-core036-evidence-v2/w001")
NAME = "receipt-wire-full-capacity-002"
BASE = N / "bootstrap-runs" / NAME
sys.path.insert(0, str(E))
from artifact_io import digest, write_once  # noqa: E402
from bootstrap import validate_v2_profile  # noqa: E402
from controller_v2 import artifact_context_for, execution_control_paths, ref_for  # noqa: E402
from frozen_source_reuse_v2 import FrozenSourceWriter  # noqa: E402
from native_accessor_source_canary_v2 import guard_owned_path, _unlinked_parents  # noqa: E402
from recorder import V2Runner  # noqa: E402


def safe(path):
    guard_owned_path(path)
    _unlinked_parents(path)
    return path


def main():
    refs, store = artifact_context_for("w001")
    profile_path = safe(F / "inputs/v2/profiles/native-consumer-capacity-001.json")
    profile = refs.read(ref_for(profile_path, refs))
    validate_v2_profile(profile)
    BASE.mkdir(parents=True, exist_ok=False)
    source_paths = [
        *sorted(E.glob("*.py")),
        Path(__file__),
        E / "tests/v2/test_receipt_wire_capacity.py",
        profile_path,
        E / "native-environment-inputs-v2.json",
    ]
    source_rows = []
    anchors = FrozenSourceWriter(refs, "w001", root_id="future_evidence").anchors
    for index, path in enumerate(dict.fromkeys(source_paths)):
        path = safe(path)
        reference = ref_for(path, refs)
        snapshot = anchors.get((reference["bytes"], reference["sha256"]))
        if snapshot is None:
            output = BASE / "sources" / f"{index:05d}"
            write_once(output, path.read_bytes())
            snapshot = ref_for(output, refs)
        elif refs.verify(snapshot).read_bytes() != path.read_bytes():
            raise ValueError("ReceiptCapacitySnapshotMismatch")
        source_rows.append({"logical_ref": reference, "snapshot_ref": snapshot})
    write_once(
        BASE / "source-index.json",
        {
            "format": "core036.receipt-capacity-source.v2",
            "work_id": "w001",
            "scope": "Source-bound writer capacity only; no native acceptance",
            "files": source_rows,
        },
    )
    source_reference = ref_for(BASE / "source-index.json", refs)
    data_reference = ref_for(safe(N / "attempts/a0565/child/receipt.json"), refs)
    cause_reference = ref_for(
        safe(N / "bootstrap-runs/receipt-wire-full-capacity-001/result.json"), refs
    )
    temporary = safe(P / "tmp" / NAME)
    temporary.mkdir(parents=True, exist_ok=False)
    python = refs.read(ref_for(E / "native-environment-inputs-v2.json", refs))["tools"][
        "python"
    ]
    if digest(safe(Path(python["path"]))) != python["sha256"]:
        raise ValueError("ReceiptCapacityPinnedPython")
    argv = [
        python["path"],
        "-m",
        "unittest",
        "discover",
        "-s",
        str(E / "tests/v2"),
        "-p",
        "test_receipt_wire_capacity.py",
    ]
    write_once(
        BASE / "declaration.json",
        {
            "format": "core036.receipt-capacity-attempt.v2",
            "work_id": "w001",
            "argv": argv,
            "profile_ref": ref_for(profile_path, refs),
            "source_subject_ref": source_reference,
            "data_ref": data_reference,
            "cause_ref": cause_reference,
            "wall_seconds": 600,
            "start_monotonic_ns": STARTED,
            "scope": "Prospective whole-work capacity control after the narrow unit launcher stopped before test execution; existing profile/reader bounds unchanged",
            "scientific_acceptance": False,
        },
    )
    runner = V2Runner(
        profile,
        started_ns=STARTED,
        control_paths=[*execution_control_paths(), N],
        artifact_store=store,
    )
    receipt = runner.run(
        argv,
        P / "bootstrap" / NAME,
        wall_seconds=600,
        source_subject_ref=source_reference,
        env={
            "PYTHONDONTWRITEBYTECODE": "1",
            "PYTHONPATH": str(E),
            "TMPDIR": str(temporary),
        },
    )
    for row in source_rows:
        refs.verify(row["logical_ref"])
        refs.verify(row["snapshot_ref"])
    refs.verify(data_reference)
    write_once(
        BASE / "result.json",
        {
            "format": "core036.receipt-capacity-result.v2",
            "work_id": "w001",
            "receipt_ref": ref_for(P / "bootstrap" / NAME / "receipt.json", refs),
            "actual_exit": receipt["exit_code"],
            "stop_reason": receipt["stop_reason"],
            "tree_empty": receipt["tree_empty"],
            "group_empty": receipt["group_empty"],
            "all_source_bytes_equal_after": True,
            "scientific_acceptance": False,
        },
    )
    print(
        json.dumps(
            {
                key: receipt[key]
                for key in [
                    "exit_code",
                    "stop_reason",
                    "tree_empty",
                    "group_empty",
                    "final_storage_inventory_error",
                    "final_resource_observation",
                ]
            }
        )
    )
    print((P / "bootstrap" / NAME / "stderr.txt").read_text()[-3000:])


if __name__ == "__main__":
    main()
