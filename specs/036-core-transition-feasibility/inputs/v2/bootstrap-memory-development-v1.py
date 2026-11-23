"""Recorded bounded memory-proof development; never a whole-native gate."""

import json
from pathlib import Path
import re
import sys
import time

sys.dont_write_bytecode = True
started = time.monotonic_ns()
R = Path("/data/repos/behavior-ir-core-033")
E = R / "experiments/transition-study036"
F = R / "specs/036-core-transition-feasibility"
P = Path("/var/tmp/behavior-ir-core036-v2/w001")
N = Path("/var/tmp/behavior-ir-core036-evidence-v2/w001")
sys.path.insert(0, str(E))
# The exact repository path must be installed before these controller imports.
from artifact_io import digest, write_once  # noqa: E402
from controller_v2 import artifact_context_for, execution_control_paths, ref_for  # noqa: E402
from recorder import V2Runner  # noqa: E402


def guarded(path):
    path = Path(path)
    if {"parameters.bin", "compression_prover_key.bin"} & set(path.parts):
        raise ValueError("ProtectedArtifact")
    for parent in [*reversed(path.parents), path]:
        if parent.is_symlink():
            raise ValueError("DevelopmentSymlink")
    return path


name = sys.argv[1]
if len(sys.argv) != 2 or re.fullmatch(r"memory-development-[0-9]{3}", name) is None:
    raise ValueError("DevelopmentName")
refs, store = artifact_context_for("w001")
if store.active_root_id != "future_evidence":
    raise ValueError("DevelopmentArtifactRoot")
cp_path = guarded(N / "attempts/a0561/checkpoint.json")
receipt_path = guarded(N / "attempts/a0561/child/receipt.json")
cp, receipt = (json.loads(path.read_bytes()) for path in [cp_path, receipt_path])
if (
    cp["source_validation_error"] is not None
    or cp["stage_outcome"] != "failed"
    or cp["outcome"]["operational"] != "closed"
    or receipt["stop_reason"] is not None
    or receipt["exit_code"] != 1
    or not receipt["tree_empty"]
    or not receipt["group_empty"]
    or ref_for(receipt_path, refs) not in cp["inputs"]
    or receipt["final_storage_inventory_error"] is not None
    or receipt["final_incremental_storage_bytes"]
    != receipt["final_resource_observation"]["growth_apparent_unique_inode_bytes"]
):
    raise ValueError("DevelopmentClosedCause")
parent_path = guarded(N / "attempts/a0561/declaration.json")
parent = json.loads(parent_path.read_bytes())
profile = parent["profile"]
predecessor = None
correction_path = None
ordinal = int(name.rsplit("-", 1)[1])
if ordinal != 1:
    previous = N / "bootstrap-runs" / f"memory-development-{ordinal - 1:03d}"
    previous_result_path = guarded(previous / "result.json")
    previous_result = json.loads(previous_result_path.read_bytes())
    prior_receipt = json.loads(refs.verify(previous_result["receipt_ref"]).read_bytes())
    if (
        previous_result["actual_exit"] != 1
        or previous_result["stop_reason"] is not None
        or not previous_result["all_source_bytes_equal_after"]
        or not prior_receipt["tree_empty"]
        or not prior_receipt["group_empty"]
        or prior_receipt["final_storage_inventory_error"] is not None
        or prior_receipt["final_incremental_storage_bytes"]
        != prior_receipt["final_resource_observation"][
            "growth_apparent_unique_inode_bytes"
        ]
    ):
        raise ValueError("DevelopmentPredecessorNotClosedFailure")
    predecessor = ref_for(previous_result_path, refs)
    correction_path = guarded(N / "inputs" / (name + "-correction.json"))
    correction = json.loads(correction_path.read_bytes())
    if (
        set(correction) != {"cause_refs", "changes", "reason"}
        or predecessor not in correction["cause_refs"]
        or not isinstance(correction["reason"], str)
        or not correction["reason"].strip()
    ):
        raise ValueError("DevelopmentCorrection")
    old = json.loads(guarded(previous / "source-index.json").read_bytes())
    old_refs = {
        (r["logical_ref"]["root_id"], r["logical_ref"]["path"]): r["logical_ref"]
        for r in old["files"]
    }
    changed = False
    for reference in correction["changes"]:
        from artifact_registration_v2 import guard_reference

        guard_reference(reference)
        refs.verify(reference)
        key = (reference["root_id"], reference["path"])
        changed |= old_refs.get(key) != reference
    if not changed:
        raise ValueError("DevelopmentUnchangedRetry")
if (
    parent["work_id"] != "w001"
    or parent["stage"] != "NATIVE"
    or profile["roots"]["cache"] != str(P)
):
    raise ValueError("DevelopmentParentScope")
base = guarded(N / "bootstrap-runs" / name)
base.mkdir(parents=True, exist_ok=False)
proofs = E / "proofs/Correspondence036/Dependencies"
selection = E / "ground-lean-probe-inputs-v2.json"
config = json.loads(guarded(selection).read_bytes())
if (
    set(config) != {"format", "native_string_memory_source_ref"}
    or config["format"] != "core036.ground-lean-probe.v2"
):
    raise ValueError("DevelopmentFixedMemorySelection")
selection_path = refs.verify(config["native_string_memory_source_ref"])
sources = [
    *sorted(E.glob("*.py")),
    *sorted(E.glob("*.json")),
    *[
        proofs / (name + ".lean")
        for name in [
            "NativeStringBorrow",
            "NativeStringMemoryModel",
            "NativeStringMemoryProofs",
        ]
    ],
    Path(__file__),
    cp_path,
    receipt_path,
    parent_path,
    selection_path,
    N / "inputs/native-string-memory-roots-002.json",
]
if predecessor is not None:
    sources += [refs.verify(predecessor), correction_path]
rows = []
for index, path in enumerate(dict.fromkeys(sources)):
    path = guarded(path)
    reference = ref_for(path, refs)
    raw = path.read_bytes()
    if len(raw) > 4 * 1024**2:
        raise ValueError("DevelopmentSourceBound")
    snapshot = guarded(base / "sources" / f"{index:05d}")
    write_once(snapshot, raw)
    frozen = ref_for(snapshot, refs)
    if (reference["sha256"], reference["bytes"]) != (frozen["sha256"], frozen["bytes"]):
        raise ValueError("DevelopmentChangedBefore")
    rows.append({"logical_ref": reference, "snapshot_ref": frozen})
write_once(
    base / "source-index.json",
    {
        "format": "core036.memory-development-source.v1",
        "files": rows,
        "scope": "source_string_memory_model_only",
        "scientific_acceptance": False,
    },
)
declaration = {
    "work_id": "w001",
    "record_id": name,
    "stage": "NATIVE",
    "profile": profile,
    "source_subject_ref": ref_for(base / "source-index.json", refs),
    "scope": "bounded component development outside whole-work claim admission",
    "cause_ref": ref_for(cp_path, refs),
    "scientific_acceptance": False,
    "predecessor_ref": predecessor,
    "correction_ref": ref_for(correction_path, refs) if correction_path else None,
    "native_proof": "unestablished",
    "feature_complete": False,
}
write_once(base / "probe-declaration.json", declaration)
python = json.loads(guarded(E / "toolchain.json").read_bytes())["tools"]["python"]
if digest(guarded(python["path"])) != python["sha256"]:
    raise ValueError("DevelopmentPinnedPython")
output = guarded(P / "ground-lean-probe" / name)
argv = [
    python["path"],
    str(E / "ground_lean_probe_v2.py"),
    "--declaration",
    str(base / "probe-declaration.json"),
    "--out",
    str(output),
]
write_once(
    base / "declaration.json",
    {
        **declaration,
        "argv": argv,
        "wall_seconds": 900,
        "start_monotonic_ns": started,
        "product_adoption": "unactivated",
        "reason": "Diagnose component proofs with full source/tool/type/axiom/kernel controls; whole-native source/ledger/gates remain separately mandatory.",
    },
)
runner = V2Runner(
    profile,
    started_ns=started,
    control_paths=[*execution_control_paths(), refs.roots["future_evidence"]],
    artifact_store=store,
)
receipt = runner.run(
    argv,
    guarded(P / "bootstrap" / name),
    wall_seconds=900,
    env={"PYTHONDONTWRITEBYTECODE": "1", "PYTHONPATH": str(E)},
)
for row in rows:
    if (
        refs.verify(row["logical_ref"]).read_bytes()
        != refs.verify(row["snapshot_ref"]).read_bytes()
    ):
        raise ValueError("DevelopmentChangedAfter")
write_once(
    base / "result.json",
    {
        "receipt_ref": ref_for(P / "bootstrap" / name / "receipt.json", refs),
        "actual_exit": receipt["exit_code"],
        "stop_reason": receipt["stop_reason"],
        "tree_empty": receipt["tree_empty"],
        "group_empty": receipt["group_empty"],
        "all_source_bytes_equal_after": True,
        "scientific_acceptance": False,
        "native_proof": "unestablished",
        "feature_complete": False,
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
                "final_resource_observation",
                "final_storage_inventory_error",
            ]
        }
    )
)
print((P / "bootstrap" / name / "stderr.txt").read_text()[-4000:])
