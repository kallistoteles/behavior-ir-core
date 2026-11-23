"""Actual worker-dispatch red against the checked session-component library.

The new assertion must compile, then fail because a later batch session is
currently reported as the first cold session. Original results are unchanged.
"""

import json
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

NAME = "session-cold-scope-source-red-001"
BASE = N / "bootstrap-runs" / NAME
OUTPUT = P / "session-cold-scope-source-red" / NAME
PRODUCER = P / "session-worker-development/session-worker-development-002"
TRACE = (
    P
    / "native-builds/a0545/rustc-invocations/v2_mechanisms/2821014-906e70095b0d42169e568791e5f52931.json"
)
TEST = "fixed_workers_accept_session_cases_and_keep_their_ground_lifetimes_separate"


def guarded(path):
    path = guard_owned_path(path)
    _unlinked_parents(path)
    return path


def command(folder, argv, cwd, env):
    folder.mkdir(parents=True, exist_ok=False)
    write_once(
        folder / "intent.json",
        {"argv": argv, "cwd": str(cwd), "inherited_environment": False},
    )
    with (
        (folder / "stdout.txt").open("xb") as stdout,
        (folder / "stderr.txt").open("xb") as stderr,
    ):
        code = subprocess.run(
            argv, cwd=cwd, env=env, stdout=stdout, stderr=stderr, check=False
        ).returncode
    write_once(
        folder / "result.json",
        {
            "exit_code": code,
            "stdout_sha256": digest(folder / "stdout.txt"),
            "stderr_sha256": digest(folder / "stderr.txt"),
        },
    )
    return code


def child():
    refs, _ = artifact_context_for("w001")
    intent = refs.read(ref_for(BASE / "intent.json", refs))
    for reference in intent["bindings"]:
        refs.verify(reference)
    worker, compiled = OUTPUT / "worker", OUTPUT / "compiled"
    worker.mkdir(parents=True, exist_ok=False)
    compiled.mkdir()
    for reference in intent["source_refs"]:
        source = refs.verify(reference)
        target = worker / source.relative_to(E)
        target.parent.mkdir(parents=True, exist_ok=True)
        write_once(target, source.read_bytes())
    trace = refs.read(intent["compiler_trace_ref"])
    args = list(trace["argv"])
    args[args.index("tests/v2_mechanisms.rs")] = "tests/v2_session_worker.rs"
    args[args.index("--crate-name") + 1] = "v2_session_worker"
    args[args.index("--out-dir") + 1] = str(compiled)
    library = refs.verify(intent["library_ref"])
    for index, arg in enumerate(args):
        if arg.startswith("transition_study036="):
            args[index] = "transition_study036=" + str(library)
        if arg.startswith("metadata="):
            args[index] = "metadata=core036_session_cold_scope_source_red_001"
        if arg.startswith("extra-filename="):
            args[index] = "extra-filename=-session_cold_scope_source_red_001"
    env = dict(refs.read(intent["producer_environment_ref"])["environment"])
    temporary = P / "tmp" / NAME
    temporary.mkdir(parents=True, exist_ok=False)
    env.update(
        CARGO_MANIFEST_DIR=str(worker), TMPDIR=str(temporary), RUST_TEST_THREADS="1"
    )
    write_once(
        OUTPUT / "environment.json",
        {"environment": env, "inherited_environment": False},
    )
    code = command(OUTPUT / "compile", [trace["compiler"], *args], worker, env)
    if code != 0:
        raise ValueError("SessionWorkerRedMustCompile")
    executable = compiled / "v2_session_worker-session_cold_scope_source_red_001"
    code = command(
        OUTPUT / "run",
        [str(executable), "--test-threads=1", "--exact", TEST],
        worker,
        env,
    )
    stdout = (OUTPUT / "run/stdout.txt").read_text()
    stderr = (OUTPUT / "run/stderr.txt").read_text()
    if (
        code != 101
        or "LaterSessionMustNotClaimColdFirst" not in stdout + stderr
        or f"test {TEST} ... FAILED" not in stdout
    ):
        raise ValueError("SessionWorkerRedNotExistingDispatchBoundary")
    for reference in intent["bindings"]:
        refs.verify(reference)
    write_once(
        OUTPUT / "result.json",
        {
            "format": "core036.session-cold-scope-source-red.v1",
            "library_ref": intent["library_ref"],
            "compile_exit": 0,
            "actual_test_exit": 101,
            "expected_failure": "LaterSessionMustNotClaimColdFirst",
            "scope": "actual cold-first batch accounting conformance red; no native proof or measurement",
            "feature_complete": False,
        },
    )
    return 1


def parent():
    if len(sys.argv) != 1:
        raise ValueError("SessionWorkerRedArguments")
    refs, store = artifact_context_for("w001")
    if store.active_root_id != "future_evidence":
        raise ValueError("SessionWorkerRedRoot")
    cause_path = N / "bootstrap-runs/session-worker-development-002/result.json"
    cause = refs.read(ref_for(guarded(cause_path), refs))
    receipt = refs.read(cause["receipt_ref"], limit=32 * 1024**2)
    if (
        cause["actual_exit"] != 0
        or cause["stop_reason"] is not None
        or not cause["tree_empty"]
        or not cause["group_empty"]
        or not cause["all_source_bytes_equal_after"]
        or receipt["final_storage_inventory_error"] is not None
        or receipt["final_incremental_storage_bytes"]
        != receipt["final_resource_observation"]["growth_apparent_unique_inode_bytes"]
    ):
        raise ValueError("SessionWorkerRedClosedComponent")
    component = refs.read(ref_for(guarded(PRODUCER / "result.json"), refs))
    if (
        component["tests"] != {"v2_session_worker": 4}
        or component["native_proof"] != "unestablished"
        or component["feature_complete"] is not False
    ):
        raise ValueError("SessionWorkerRedComponentScope")
    source_index = refs.read(component["source_subject_ref"])
    matched = 0
    library_source_refs = []
    for row in source_index["files"]:
        reference = row["logical_ref"]
        if reference["root_id"] == "repository" and reference["path"].startswith(
            "experiments/transition-study036/src/"
        ):
            if (
                refs.verify(reference).read_bytes()
                != refs.verify(row["snapshot_ref"]).read_bytes()
            ):
                raise ValueError("SessionWorkerRedLibrarySourceChanged")
            matched += 1
            library_source_refs.append(reference)
    if matched == 0:
        raise ValueError("SessionWorkerRedMissingLibrarySource")
    tools = refs.read(ref_for(E / "native-environment-inputs-v2.json", refs))["tools"]
    trace = refs.read(ref_for(guarded(TRACE), refs))
    if trace["compiler"] != tools["rustc"]["path"]:
        raise ValueError("SessionWorkerRedCompiler")
    for key in ["rustc", "python"]:
        if digest(guarded(tools[key]["path"])) != tools[key]["sha256"]:
            raise ValueError("SessionWorkerRedToolChanged")
    profile_path = F / "inputs/v2/profiles/sessions-continued-capacity-001.json"
    profile = refs.read(ref_for(guarded(profile_path), refs))
    source_paths = [
        E / "tests/v2_session_worker.rs",
        E / "tests/v2_raw_oracle.rs",
        E / "expected/ld8-module.json",
    ]
    source_refs = [ref_for(guarded(path), refs) for path in source_paths]
    binding_paths = [
        Path(__file__),
        profile_path,
        cause_path,
        refs.verify(cause["receipt_ref"]),
        PRODUCER / "result.json",
        PRODUCER / "environment.json",
        refs.verify(component["source_subject_ref"]),
        TRACE,
        E / "native-environment-inputs-v2.json",
        refs.verify(component["library_ref"]),
    ]
    for index, arg in enumerate(trace["argv"]):
        if arg == "--extern" and not trace["argv"][index + 1].startswith(
            "transition_study036="
        ):
            binding_paths.append(Path(trace["argv"][index + 1].split("=", 1)[1]))
    bindings = (
        [ref_for(guarded(path), refs) for path in binding_paths]
        + source_refs
        + library_source_refs
    )
    BASE.mkdir(parents=True, exist_ok=False)
    rows = []
    for index, reference in enumerate(
        source_refs + [ref_for(Path(__file__), refs), ref_for(profile_path, refs)]
    ):
        raw = refs.verify(reference).read_bytes()
        snapshot = BASE / "sources" / str(index)
        write_once(snapshot, raw)
        rows.append({"logical_ref": reference, "snapshot_ref": ref_for(snapshot, refs)})
    write_once(
        BASE / "source-index.json",
        {"format": "core036.session-worker-red-source.v1", "files": rows},
    )
    write_once(
        BASE / "intent.json",
        {
            "source_refs": source_refs,
            "bindings": bindings,
            "library_ref": component["library_ref"],
            "compiler_trace_ref": ref_for(TRACE, refs),
            "producer_environment_ref": ref_for(PRODUCER / "environment.json", refs),
            "expected": "New assertion compiles against the checked worker002 library, then fails specifically because the second session claims cold-first totals. Ordinary900s development allocation includes two actual oracle preparations and program rechecking; this is not a sample.",
            "native_proof": "unestablished",
            "feature_complete": False,
        },
    )
    argv = [tools["python"]["path"], str(Path(__file__)), "--child"]
    write_once(
        BASE / "declaration.json",
        {
            "format": "core036.session-worker-red-attempt.v1",
            "work_id": "w001",
            "record_id": NAME,
            "stage": "SESSIONS",
            "profile": profile,
            "source_subject_ref": ref_for(BASE / "source-index.json", refs),
            "argv": argv,
            "wall_seconds": 900,
            "start_monotonic_ns": STARTED,
            "scope": "development only; no native gate or accepted sample",
        },
    )
    runner = V2Runner(
        profile,
        started_ns=STARTED,
        control_paths=[*execution_control_paths(), N],
        artifact_store=store,
    )
    actual = runner.run(
        argv,
        P / "bootstrap" / NAME,
        wall_seconds=900,
        env={"PYTHONDONTWRITEBYTECODE": "1", "PYTHONPATH": str(E)},
    )
    for reference in bindings:
        refs.verify(reference)
    for row in rows:
        if (
            refs.verify(row["logical_ref"]).read_bytes()
            != refs.verify(row["snapshot_ref"]).read_bytes()
        ):
            raise ValueError("SessionWorkerRedSourceChangedAfter")
    write_once(
        BASE / "result.json",
        {
            "receipt_ref": ref_for(P / "bootstrap" / NAME / "receipt.json", refs),
            "actual_exit": actual["exit_code"],
            "stop_reason": actual["stop_reason"],
            "tree_empty": actual["tree_empty"],
            "group_empty": actual["group_empty"],
            "all_source_bytes_equal_after": True,
            "scientific_acceptance": False,
            "feature_complete": False,
        },
    )
    print(
        json.dumps(
            {
                key: actual[key]
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
