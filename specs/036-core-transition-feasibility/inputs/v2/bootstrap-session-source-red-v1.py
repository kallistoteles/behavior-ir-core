"""Bounded session-test compiler reds against the unchanged actual545 library.

Only test source and output location change from the retained compiler invocation.
This is development evidence, never a session measurement or native proof gate.
"""

import json
import os
from pathlib import Path
import subprocess
import sys
import time

sys.dont_write_bytecode = True
STARTED = time.monotonic_ns()
R = Path("/data/repos/behavior-ir-core-033")
E = R / "experiments/transition-study036"
F = R / "specs/036-core-transition-feasibility"
P = Path("/var/tmp/behavior-ir-core036-v2/w001")
N = Path("/var/tmp/behavior-ir-core036-evidence-v2/w001")
sys.path.insert(0, str(E))
from artifact_io import digest, write_once  # noqa: E402
from controller_v2 import artifact_context_for, execution_control_paths, ref_for  # noqa: E402
from native_accessor_source_canary_v2 import guard_owned_path, _unlinked_parents  # noqa: E402
from recorder import V2Runner  # noqa: E402

NAME = "session-source-red-001"
BASE = N / "bootstrap-runs" / NAME
OUTPUT = P / "session-source-red" / NAME
TRACE = (
    P
    / "native-builds/a0545/rustc-invocations/v2_mechanisms/2821014-906e70095b0d42169e568791e5f52931.json"
)


def guarded(path):
    path = guard_owned_path(path)
    _unlinked_parents(path)
    return path


def child():
    intent = json.loads(guarded(BASE / "intent.json").read_bytes())
    refs, _ = artifact_context_for("w001")
    for reference in intent["bindings"]:
        refs.verify(reference)
    trace = json.loads(guarded(TRACE).read_bytes())
    OUTPUT.mkdir(parents=True, exist_ok=False)
    results = []
    for name in ["v2_sessions", "v2_recovery"]:
        folder = OUTPUT / name
        folder.mkdir()
        args = list(trace["argv"])
        assert args.count("tests/v2_mechanisms.rs") == 1
        args[args.index("tests/v2_mechanisms.rs")] = str(E / "tests" / (name + ".rs"))
        args[args.index("--crate-name") + 1] = name
        args[args.index("--out-dir") + 1] = str(folder)
        write_once(
            folder / "intent.json",
            {
                "argv": [trace["compiler"], *args],
                "source_ref": ref_for(E / "tests" / (name + ".rs"), refs),
            },
        )
        with (
            (folder / "stdout.txt").open("xb") as stdout,
            (folder / "stderr.txt").open("xb") as stderr,
        ):
            code = subprocess.run(
                [trace["compiler"], *args],
                cwd=trace["cwd"],
                env={**os.environ, "CARGO_MANIFEST_DIR": trace["cwd"]},
                stdout=stdout,
                stderr=stderr,
                check=False,
            ).returncode
        errors = []
        for line in (folder / "stderr.txt").read_text().splitlines():
            row = json.loads(line)
            if row.get("level") == "error" and row.get("code") is not None:
                errors.append({"code": row["code"]["code"], "message": row["message"]})
        write_once(
            folder / "result.json",
            {
                "exit_code": code,
                "errors": errors,
                "stdout_sha256": digest(folder / "stdout.txt"),
                "stderr_sha256": digest(folder / "stderr.txt"),
            },
        )
        if (
            code != 1
            or not errors
            or any(
                row["code"] != "E0432" or "session" not in row["message"]
                for row in errors
            )
        ):
            raise ValueError("SessionSourceRedNotMissingAPI:" + name)
        results.append(
            {"target": name, "result_ref": ref_for(folder / "result.json", refs)}
        )
    for reference in intent["bindings"]:
        refs.verify(reference)
    write_once(
        OUTPUT / "result.json",
        {
            "format": "core036.session-source-red.v1",
            "targets": results,
            "scope": "actual missing session API against source-matched actual545 library; no runtime execution",
            "native_proof": "unestablished",
            "feature_complete": False,
        },
    )
    return 1  # Actual expected compiler reds; never relabelled as native success.


def parent():
    if len(sys.argv) != 1:
        raise ValueError("SessionSourceRedArguments")
    refs, store = artifact_context_for("w001")
    if store.active_root_id != "future_evidence":
        raise ValueError("SessionSourceRedArtifactRoot")
    cp_path = N / "attempts/a0545/checkpoint.json"
    receipt_path = N / "attempts/a0545/child/receipt.json"
    cp, receipt = (
        json.loads(guarded(path).read_bytes()) for path in [cp_path, receipt_path]
    )
    if (
        cp["stage_outcome"] != "succeeded"
        or cp["source_validation_error"] is not None
        or cp["outcome"]["operational"] != "closed"
        or receipt["exit_code"] != 0
        or receipt["stop_reason"] is not None
        or not receipt["tree_empty"]
        or not receipt["group_empty"]
        or ref_for(receipt_path, refs) not in cp["inputs"]
    ):
        raise ValueError("SessionSourceRedClosedProducer")
    native = P / "native-builds/a0545"
    inventory = json.loads(
        guarded(native / "materialized-source-before.json").read_bytes()
    )
    bindings = [
        ref_for(guarded(path), refs)
        for path in [
            cp_path,
            receipt_path,
            TRACE,
            native / "materialized-source-before.json",
            E / "native-environment-inputs-v2.json",
        ]
    ]
    for row in inventory:
        if row["path"].startswith(("src/", "expected/")):
            for path in [native / "worker" / row["path"], E / row["path"]]:
                reference = ref_for(guarded(path), refs)
                if (reference["bytes"], reference["sha256"]) != (
                    row["bytes"],
                    row["sha256"],
                ):
                    raise ValueError("SessionSourceRedLibrarySourceChanged")
                bindings.append(reference)
    trace = json.loads(guarded(TRACE).read_bytes())
    tools = json.loads(guarded(E / "native-environment-inputs-v2.json").read_bytes())[
        "tools"
    ]
    if (
        trace["compiler"] != tools["rustc"]["path"]
        or digest(guarded(trace["compiler"])) != tools["rustc"]["sha256"]
    ):
        raise ValueError("SessionSourceRedCompiler")
    for index, arg in enumerate(trace["argv"]):
        if arg == "--extern":
            path = Path(trace["argv"][index + 1].split("=", 1)[1])
            bindings.append(ref_for(guarded(path), refs))
    BASE.mkdir(parents=True, exist_ok=False)
    source_paths = [
        Path(__file__),
        *[
            E / "tests" / name
            for name in [
                "v2_sessions.rs",
                "v2_recovery.rs",
                "v2_session_support.rs",
                "v2_support.rs",
            ]
        ],
    ]
    rows = []
    for index, path in enumerate(source_paths):
        reference = ref_for(guarded(path), refs)
        raw = path.read_bytes()
        if len(raw) > 4 * 1024**2:
            raise ValueError("SessionSourceRedSourceBound")
        snapshot = BASE / "sources" / str(index)
        write_once(snapshot, raw)
        rows.append({"logical_ref": reference, "snapshot_ref": ref_for(snapshot, refs)})
        bindings.append(reference)
    write_once(
        BASE / "source-index.json",
        {"format": "core036.session-source-red-source.v1", "files": rows},
    )
    write_once(
        BASE / "intent.json",
        {
            "bindings": bindings,
            "expected": "Both actual rustc invocations fail only with E0432 for the absent session module; no Cargo cache writes or test execution",
            "native_proof": "unestablished",
            "feature_complete": False,
        },
    )
    profile = json.loads(guarded(N / "attempts/a0545/declaration.json").read_bytes())[
        "profile"
    ]
    python = tools["python"]
    if digest(guarded(python["path"])) != python["sha256"]:
        raise ValueError("SessionSourceRedPython")
    argv = [python["path"], str(Path(__file__)), "--child"]
    write_once(
        BASE / "declaration.json",
        {
            "format": "core036.session-source-red-development.v1",
            "work_id": "w001",
            "record_id": NAME,
            "stage": "NATIVE",
            "scope": "session source-test development under stricter300s native allocation; not a session sample",
            "profile": profile,
            "argv": argv,
            "wall_seconds": 300,
            "source_subject_ref": ref_for(BASE / "source-index.json", refs),
            "start_monotonic_ns": STARTED,
            "native_proof": "unestablished",
            "feature_complete": False,
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
        wall_seconds=300,
        env={"PYTHONDONTWRITEBYTECODE": "1", "PYTHONPATH": str(E)},
    )
    for reference in bindings:
        refs.verify(reference)
    for row in rows:
        if (
            refs.verify(row["logical_ref"]).read_bytes()
            != refs.verify(row["snapshot_ref"]).read_bytes()
        ):
            raise ValueError("SessionSourceRedChangedAfter")
    write_once(
        BASE / "result.json",
        {
            "receipt_ref": ref_for(P / "bootstrap" / NAME / "receipt.json", refs),
            "actual_exit": receipt["exit_code"],
            "stop_reason": receipt["stop_reason"],
            "tree_empty": receipt["tree_empty"],
            "group_empty": receipt["group_empty"],
            "all_source_bytes_equal_after": True,
            "scientific_acceptance": False,
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
    print((P / "bootstrap" / NAME / "stderr.txt").read_text()[-3000:])


if __name__ == "__main__":
    if sys.argv[1:] == ["--child"]:
        raise SystemExit(child())
    parent()
