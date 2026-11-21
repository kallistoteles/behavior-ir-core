"""One separately declared replay of the unchanged035 model, never native proof."""

import argparse
import ast
import hashlib
import json
import os
import re
import resource
import shutil
import subprocess
from pathlib import Path

from artifact_io import digest, read, write_once
from environment import check_original_safety_v2, check_prepared_analysis_v2

E = Path(__file__).resolve().parent
R = E.parents[1]
MODULES = [
    "safety." + n
    for n in ("Data", "FieldOwnership", "LifecycleData", "LifecycleDependency")
] + [
    "Reuse035." + n
    for n in (
        "State",
        "Reference",
        "Incremental",
        "ObservationModel",
        "Imports",
        "Projection",
        "Views",
        "Observation",
        "Exact",
        "Safety",
        "Grounds",
        "Work",
        "Countermodels",
        "Audit",
    )
]


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--declaration", required=True)
    parser.add_argument("--out", required=True)
    args = parser.parse_args()
    declaration = read(args.declaration)
    modes = {
        ("original035-model-replay",): "original430",
        ("analysis035-model-port",): "analysis436",
    }
    label = modes.get(tuple(declaration["slots"]))
    if label is None:
        raise ValueError("ModelReplayDeclaredRuntime")
    private = Path(declaration["profile"]["roots"]["cache"])
    out = Path(args.out)
    if out != private / "model-replays" / declaration["record_id"] or out.exists():
        raise ValueError("ModelReplayOutput")
    check_original_safety_v2(E / "original-safety-binding-v2.json")
    if label == "analysis436":
        check_prepared_analysis_v2(E / "analysis-environment-binding-v2.json")
        analysis = read(private / "analysis-lean-recheck/a0053/result.json")
        sdk = Path(analysis["sdk"])
        environment = analysis["environment"]
    else:
        sdk = Path("/nix/store/7m5ds60a41w276hsx3rybv76x3609l6k-lean4-4.30.0")
        environment = {}
    out.mkdir(parents=True)
    source = E / (
        "proofs/original035"
        if label == "original430"
        else "proofs/Correspondence036/Model"
    )
    for path in source.rglob("*"):
        if path.is_symlink():
            raise ValueError("ModelReplaySourceSymlink")
    copied = out / "sources"
    shutil.copytree(
        source,
        copied,
        ignore=shutil.ignore_patterns("*.olean", "*.ilean", "__pycache__"),
    )
    inventory = [
        {
            "path": str(path.relative_to(copied)),
            "bytes": path.stat().st_size,
            "sha256": digest(path),
        }
        for path in sorted(copied.rglob("*"))
        if path.is_file()
    ]
    for row in inventory:
        if digest(source / row["path"]) != row["sha256"]:
            raise ValueError("ModelReplaySourceChanged")
    targets = read(copied / "targets.json")
    expected_names = {
        "finish_frame",
        "view_update_exact",
        "unaffected_result_stable",
        "finish_exact",
        "observation_reconstruct_exact",
        "finish_preserves_safety",
        "ground_advance",
        "refusal_no_promotion",
        "stale_no_promotion",
        "uncertain_no_authority",
        "semantic_work_bound",
        "fallback_exact",
    }
    if len(targets["roots"]) != 12 or {row["name"] for row in targets["roots"]} != {
        "Reuse035." + name for name in expected_names
    }:
        raise ValueError("ModelReplayTwelveRoots")
    for row in targets["roots"]:
        if (
            hashlib.sha256(row["expected_type"].encode()).hexdigest()
            != row["type_digest"]
        ):
            raise ValueError("ModelReplayExpectedType")
    for row in read(copied / "imports.json")["sources"]:
        if digest(copied / row["path"]) != row["sha256"]:
            raise ValueError("ModelReplayPinnedImport")
    checker = R / "experiments/reuse-study035/check_proofs.py"
    checker_bytes = checker.read_bytes()
    function = next(
        node
        for node in ast.parse(checker_bytes).body
        if isinstance(node, ast.FunctionDef) and node.name == "audit_source"
    )
    namespace = {"re": re}
    exec(
        compile(ast.Module(body=[function], type_ignores=[]), str(checker), "exec"),
        namespace,
    )
    write_once(out / "original-checker.py", checker_bytes)
    write_once(out / "input-inventory.json", inventory)
    write_once(out / "Audit.lean", namespace["audit_source"](targets).encode())
    compiled = out / "compiled"
    compiled.mkdir()
    env = {
        **os.environ,
        **environment,
        "LEAN_SYSROOT": str(sdk),
        "LEAN_PATH": str(compiled),
        "LEAN_NUM_THREADS": "1",
    }
    if label == "analysis436":
        env["LEAN_STACK_SIZE_KB"] = "131072"
    env.pop("LD_PRELOAD", None)
    rows = []

    def limits():
        bound = declaration["profile"]["limits"]["lean_address_space_bytes"]
        resource.setrlimit(resource.RLIMIT_AS, (bound, bound))

    def run(name, argv, seconds):
        log = out / "commands" / name
        log.mkdir(parents=True)
        with (
            (log / "stdout.txt").open("xb") as stdout,
            (log / "stderr.txt").open("xb") as stderr,
        ):
            completed = subprocess.run(
                argv,
                cwd=out,
                env=env,
                stdout=stdout,
                stderr=stderr,
                preexec_fn=limits,
                timeout=seconds,
                check=False,
            )
        result = {
            "name": name,
            "argv": argv,
            "exit_code": completed.returncode,
            "stdout_sha256": digest(log / "stdout.txt"),
            "stderr_sha256": digest(log / "stderr.txt"),
        }
        write_once(log / "result.json", result)
        rows.append(result)
        if completed.returncode:
            raise ValueError("ModelReplayCommand:" + name)

    for module in MODULES:
        relative = Path(*module.split(".")).with_suffix(".lean")
        source_file = (
            out / "Audit.lean" if module == "Reuse035.Audit" else copied / relative
        )
        obj = (compiled / relative).with_suffix(".olean")
        obj.parent.mkdir(parents=True, exist_ok=True)
        run(
            module,
            [
                str(sdk / "bin/lean"),
                "-j1",
                "-DmaxHeartbeats=2000000",
                "-M4096",
                "-o",
                str(obj),
                str(source_file),
            ],
            180,
        )
    run(
        "fresh-kernel",
        [str(sdk / "bin/leanchecker"), "--fresh", "Reuse035.Audit"],
        1800,
    )
    audits = []
    for line in (out / "commands/Reuse035.Audit/stdout.txt").read_text().splitlines():
        if line.startswith("CORE035_AUDIT "):
            row = json.loads(line.removeprefix("CORE035_AUDIT "))
            if row["checked"]["expected_type_checked"] is not True or set(
                row["checked"]["axioms"]
            ) - {"propext", "Classical.choice", "Quot.sound"}:
                raise ValueError("ModelReplayAudit")
            audits.append(row)
    if len(audits) != 12 or {row["checked"]["declaration"] for row in audits} != {
        row["name"] for row in targets["roots"]
    }:
        raise ValueError("ModelReplayAuditCoverage")
    for row in inventory:
        if (
            digest(source / row["path"]) != row["sha256"]
            or digest(copied / row["path"]) != row["sha256"]
        ):
            raise ValueError("ModelReplayInputMutated")
    write_once(
        out / "result.json",
        {
            "format": "core036.model-replay.v2",
            "runtime": label,
            "source_subject_ref": declaration["source_subject_ref"],
            "commands": rows,
            "roots": audits,
            "input_inventory_sha256": digest(out / "input-inventory.json"),
            "original_checker_sha256": digest(out / "original-checker.py"),
            "compiled": [
                {
                    "path": str(path.relative_to(out)),
                    "sha256": digest(path),
                    "bytes": path.stat().st_size,
                }
                for path in sorted(compiled.rglob("*.olean"))
            ],
            "native_general_correspondence": "unestablished",
            "product_adoption": "unactivated",
            "scope": "unchanged035 model laws only; no Rust/native correspondence",
        },
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
