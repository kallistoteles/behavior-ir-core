"""Recorded source-bound session development with immutable actual545 dependencies.

Compile the current research library and tests into a new owned output. Reuse
only the closed producer's dependencies and exact compiler flags; no Cargo cache
is overwritten and no whole-native or measurement gate follows from these tests.
"""

import json
from pathlib import Path
import re
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


def guarded(path):
    path = guard_owned_path(path)
    _unlinked_parents(path)
    return path


def paths(name):
    return (
        N / "bootstrap-runs" / name,
        P / "session-recovery-resources-development" / name,
    )


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


def child(name):
    base, output = paths(name)
    refs, _ = artifact_context_for("w001")
    intent = json.loads(guarded(base / "intent.json").read_bytes())
    for reference in intent["bindings"]:
        refs.verify(reference)
    output.mkdir(parents=True, exist_ok=False)
    worker, compiled = output / "worker", output / "compiled"
    worker.mkdir()
    compiled.mkdir()
    for reference in intent["source_files"]:
        source = refs.verify(reference)
        relative = source.relative_to(E)
        target = worker / relative
        target.parent.mkdir(parents=True, exist_ok=True)
        write_once(target, source.read_bytes())
    identity = refs.read(intent["producer_identity_ref"])
    identity["source_subject_sha256"] = intent["source_subject_ref"]["sha256"]
    write_once(worker / "build-identity.json", identity)
    original_env = refs.read(intent["producer_environment_ref"])["environment"]
    env = {
        key: value
        for key, value in original_env.items()
        if key not in {"RUSTC_WRAPPER", "CORE036_RUSTC_TRACE_ROOT", "CARGO_TARGET_DIR"}
    }
    temporary = P / "tmp" / name
    temporary.mkdir(parents=True, exist_ok=False)
    env.update(
        CARGO_MANIFEST_DIR=str(worker),
        TMPDIR=str(temporary),
        CORE036_NATIVE_SUBJECT_REF_JSON=json.dumps(intent["source_subject_ref"]),
        RUST_TEST_THREADS="1",
    )
    write_once(
        output / "environment.json",
        {
            "environment": env,
            "inherited_environment": False,
            "scope": "direct recorded compiler/test development, no Cargo build identity claim",
        },
    )
    library_trace = refs.read(intent["library_trace_ref"])
    test_trace = refs.read(intent["test_trace_ref"])
    args = list(library_trace["argv"])
    assert args.count("src/lib.rs") == 1
    args[args.index("--out-dir") + 1] = str(compiled)
    suffix = "-" + name.replace("-", "_")
    for index, arg in enumerate(args):
        if arg.startswith("metadata="):
            args[index] = "metadata=core036_" + name.replace("-", "_")
        if arg.startswith("extra-filename="):
            args[index] = "extra-filename=" + suffix
        if index and args[index - 1] == "--extern":
            crate, old_path = arg.split("=", 1)
            replacement = intent["dependency_libraries"][crate]
            if Path(old_path).stem != Path(replacement).stem:
                raise ValueError("SessionDevelopmentDependencyMismatch")
            args[index] = crate + "=" + replacement
    lint_tool = refs.read(intent["clippy_tool_ref"])
    if digest(guarded(lint_tool["path"])) != lint_tool["sha256"]:
        raise ValueError("SessionWorkerClippyToolChanged")
    lint_compiled = output / "clippy-compiled"
    lint_compiled.mkdir()
    lint_args = list(args)
    lint_args[lint_args.index("--out-dir") + 1] = str(lint_compiled)
    lint_args[lint_args.index("--emit=dep-info,metadata,link")] = "--emit=metadata"
    code = command(
        output / "clippy-library",
        [lint_tool["path"], *lint_args, "-D", "warnings"],
        worker,
        env,
    )
    if code != 0:
        return code
    code = command(output / "library", [library_trace["compiler"], *args], worker, env)
    if code != 0:
        return code
    library = compiled / ("libtransition_study036" + suffix + ".rlib")
    if not guarded(library).is_file():
        raise ValueError("SessionDevelopmentMissingLibrary")
    for target in [
        "v2_protocol",
        "v2_session_resources",
        "v2_session_recovery_worker",
        "v2_sessions",
        "v2_recovery",
        "v2_session_worker",
    ]:
        args = list(test_trace["argv"])
        args[args.index("tests/v2_mechanisms.rs")] = "tests/" + target + ".rs"
        args[args.index("--crate-name") + 1] = target
        args[args.index("--out-dir") + 1] = str(compiled)
        for index, arg in enumerate(args):
            if arg.startswith("metadata="):
                args[index] = (
                    "metadata=core036_" + name.replace("-", "_") + "_" + target
                )
            if arg.startswith("extra-filename="):
                args[index] = "extra-filename=" + suffix
            if arg.startswith("transition_study036="):
                args[index] = "transition_study036=" + str(library)
        lint_args = list(args)
        lint_args[lint_args.index("--out-dir") + 1] = str(lint_compiled)
        lint_args[lint_args.index("--emit=dep-info,link")] = "--emit=metadata"
        code = command(
            output / (target + "-clippy"),
            [lint_tool["path"], *lint_args, "-D", "warnings"],
            worker,
            env,
        )
        if code != 0:
            return code
        code = command(
            output / (target + "-compile"), [test_trace["compiler"], *args], worker, env
        )
        if code != 0:
            return code
        executable = guarded(compiled / (target + suffix))
        code = command(
            output / (target + "-run"),
            [
                str(executable),
                "--test-threads=1",
                *(
                    [
                        "--exact",
                        "fixed_workers_accept_session_cases_and_keep_their_ground_lifetimes_separate",
                    ]
                    if target == "v2_session_worker"
                    else [
                        "--exact",
                        "fixed_workers_reacquire_before_operation_one_without_importing_authority",
                    ]
                    if target == "v2_session_recovery_worker"
                    else []
                ),
            ],
            worker,
            env,
        )
        if code != 0:
            return code
        summary = re.findall(
            rf"test result: ok\. (\d+) passed; 0 failed; 0 ignored; 0 measured; {3 if target in {'v2_session_worker', 'v2_session_recovery_worker'} else 0} filtered out;",
            (output / (target + "-run/stdout.txt")).read_text(),
        )
        if summary != [str(intent["expected_tests"][target])]:
            raise ValueError("SessionDevelopmentTestCoverage:" + target)
    for reference in intent["bindings"]:
        refs.verify(reference)
    for reference in intent["source_files"]:
        source = refs.verify(reference)
        if (worker / source.relative_to(E)).read_bytes() != source.read_bytes():
            raise ValueError("SessionDevelopmentSourceChanged")
    write_once(
        output / "result.json",
        {
            "format": "core036.session-development.v1",
            "source_subject_ref": intent["source_subject_ref"],
            "tests": intent["expected_tests"],
            "library_ref": ref_for(library, refs),
            "scope": "full session/recovery/resource component conformance only; all33 selected controls run from one compiled subject. The two worker targets each deliberately filter three previously checked raw-oracle regressions. Direct recorded compiler with actual545 dependencies, not a full Cargo/native proof gate.",
            "native_proof": "unestablished",
            "feature_complete": False,
            "product_adoption": "unactivated",
        },
    )
    return 0


def parent(name):
    if re.fullmatch(r"session-recovery-resources-development-[0-9]{3}", name) is None:
        raise ValueError("SessionDevelopmentName")
    refs, store = artifact_context_for("w001")
    if store.active_root_id != "future_evidence":
        raise ValueError("SessionDevelopmentRoot")
    cause_path = N / "bootstrap-runs/session-recovery-worker-source-red-001/result.json"
    cause = refs.read(ref_for(guarded(cause_path), refs))
    closed = refs.read(cause["receipt_ref"], limit=32 * 1024**2)
    if (
        cause["actual_exit"] != 1
        or cause["stop_reason"] is not None
        or closed["stage"] != "SESSIONS"
        or not cause["tree_empty"]
        or not cause["group_empty"]
        or not cause["all_source_bytes_equal_after"]
        or closed["final_storage_inventory_error"] is not None
    ):
        raise ValueError("SessionDevelopmentClosedSourceRed")
    resource_red_path = (
        N / "bootstrap-runs/session-resources-source-red-001/result.json"
    )
    resource_red = refs.read(ref_for(guarded(resource_red_path), refs))
    resource_receipt = refs.read(resource_red["receipt_ref"], limit=32 * 1024**2)
    if (
        resource_red["actual_exit"] != 1
        or resource_red["stop_reason"] is not None
        or not resource_red["tree_empty"]
        or not resource_red["group_empty"]
        or not resource_red["all_source_bytes_equal_after"]
        or resource_receipt["final_storage_inventory_error"] is not None
    ):
        raise ValueError("SessionResourcesClosedSourceRed")
    pure_green_path = (
        N / "bootstrap-runs/session-resource-summary-green-001/result.json"
    )
    pure_green = refs.read(ref_for(guarded(pure_green_path), refs))
    if (
        pure_green["actual_exit"] != 0
        or pure_green["stop_reason"] is not None
        or not pure_green["tree_empty"]
        or not pure_green["group_empty"]
        or not pure_green["all_source_bytes_equal_after"]
    ):
        raise ValueError("SessionResourceSummaryGreen")
    # Other independently developed controller sources may have changed since
    # that pure test run. Its actual algorithm/test dependency is these two
    # unchanged files; never relabel the old broad snapshot as a current gate.
    pure_subject = refs.read(pure_green["source_subject_ref"])
    for relative in ["session_resources.py", "tests/v2/test_session_resources.py"]:
        expected = ref_for(guarded(E / relative), refs)
        matched = [
            row for row in pure_subject["files"] if row["logical_ref"] == expected
        ]
        if len(matched) != 1:
            raise ValueError("SessionResourceSummarySourceChanged")
        refs.verify(matched[0]["snapshot"])
    base, output = paths(name)
    if output.exists():
        raise ValueError("SessionDevelopmentOutputExists")
    predecessor = None
    correction_path = None
    ordinal = int(name.rsplit("-", 1)[1])
    if ordinal != 1:
        previous = (
            N
            / "bootstrap-runs"
            / f"session-recovery-resources-development-{ordinal - 1:03d}"
        )
        prior_receipt = {}
        if guarded(previous / "result.json").exists():
            prior = refs.read(ref_for(guarded(previous / "result.json"), refs))
            prior_receipt = refs.read(prior["receipt_ref"], limit=32 * 1024**2)
            ordinary_failure = (
                prior["actual_exit"] in {1, 101} and prior["stop_reason"] is None
            )
            diagnosed_monitor_stop = (
                prior["actual_exit"] == -9
                and prior["stop_reason"] == "ControllerError"
                and prior_receipt.get("controller_error")
                == "StorageEventsLost('StorageObserverEventFlood')"
            )
            if (
                not (ordinary_failure or diagnosed_monitor_stop)
                or not prior["tree_empty"]
                or not prior["group_empty"]
                or not prior["all_source_bytes_equal_after"]
                or prior_receipt["final_storage_inventory_error"] is not None
                or prior_receipt["final_incremental_storage_bytes"]
                != prior_receipt["final_resource_observation"][
                    "growth_apparent_unique_inode_bytes"
                ]
            ):
                raise ValueError("SessionDevelopmentPredecessor")
            predecessor = ref_for(previous / "result.json", refs)
        else:
            diagnosis_path = (
                N
                / "inputs/session-recovery-resources-development-001-prelaunch-failure.json"
            )
            diagnosis = refs.read(ref_for(guarded(diagnosis_path), refs))
            if (
                ordinal != 2
                or diagnosis.get("format")
                != "core036.session-worker-prelaunch-failure.v1"
                or diagnosis.get("native_run_started") is not False
                or diagnosis.get("error") != "V2ArtifactBytes"
                or guarded(
                    P
                    / "bootstrap/session-recovery-resources-development-001/receipt.json"
                ).exists()
                or guarded(
                    P
                    / "session-recovery-resources-development/session-recovery-resources-development-001"
                ).exists()
                or diagnosis.get("declaration_ref")
                != ref_for(previous / "declaration.json", refs)
                or diagnosis.get("source_index_ref")
                != ref_for(previous / "source-index.json", refs)
            ):
                raise ValueError("SessionWorkerUnverifiedPrelaunchCause")
            predecessor = ref_for(diagnosis_path, refs)
        correction_path = N / "inputs" / (name + "-correction.json")
        correction = refs.read(ref_for(guarded(correction_path), refs))
        old = refs.read(ref_for(previous / "source-index.json", refs))
        previous_sources = {
            (row["logical_ref"]["root_id"], row["logical_ref"]["path"]): row[
                "logical_ref"
            ]
            for row in old["files"]
        }
        for key in ["monitor_source_ref", "monitor_storage_dependency_ref"]:
            if key not in prior_receipt:
                continue
            reference = prior_receipt[key]
            previous_sources[(reference["root_id"], reference["path"])] = reference
        if (
            set(correction) != {"cause_refs", "changes", "reason"}
            or predecessor not in correction["cause_refs"]
            or not correction["reason"].strip()
            or not any(
                previous_sources.get((reference["root_id"], reference["path"]))
                != reference
                for reference in correction["changes"]
            )
        ):
            raise ValueError("SessionDevelopmentUnchangedRetry")
        for reference in correction["changes"]:
            refs.verify(reference)
    native = P / "native-builds/a0545"
    inventory = refs.read(
        ref_for(guarded(native / "materialized-source-before.json"), refs),
        limit=32 * 1024**2,
    )
    source_paths = {
        E / row["path"]
        for row in inventory
        if row["path"].startswith(("src/", "tests/", "expected/"))
    }
    source_paths.update(
        E / relative
        for relative in [
            "src/session.rs",
            "src/session_resources.rs",
            "tests/v2_session_recovery_worker.rs",
            "tests/v2_session_resources.rs",
            "tests/v2/test_session_resources.py",
            "tests/v2_sessions.rs",
            "tests/v2_recovery.rs",
            "tests/v2_session_support.rs",
            "tests/v2_session_worker.rs",
        ]
    )
    source_refs = [ref_for(guarded(path), refs) for path in sorted(source_paths)]
    library_trace_path = (
        native
        / "rustc-invocations/protocol/2817240-cac6a1b5ffbd4955b102245f620b1188.json"
    )
    test_trace_path = (
        native
        / "rustc-invocations/v2_mechanisms/2821014-906e70095b0d42169e568791e5f52931.json"
    )
    test_trace = refs.read(ref_for(guarded(test_trace_path), refs))
    dependency_libraries = {}
    for index, arg in enumerate(test_trace["argv"]):
        if arg == "--extern":
            crate, path = test_trace["argv"][index + 1].split("=", 1)
            if crate != "transition_study036":
                dependency_libraries[crate] = path
    profile_path = F / "inputs/v2/profiles/sessions-continued-capacity-001.json"
    profile = refs.read(ref_for(guarded(profile_path), refs))
    tools = refs.read(ref_for(guarded(E / "native-environment-inputs-v2.json"), refs))[
        "tools"
    ]
    for tool in ["rustc", "python"]:
        if digest(guarded(tools[tool]["path"])) != tools[tool]["sha256"]:
            raise ValueError("SessionDevelopmentToolChanged")
    if test_trace["compiler"] != tools["rustc"]["path"]:
        raise ValueError("SessionDevelopmentCompiler")
    binding_paths = [
        Path(__file__),
        cause_path,
        refs.verify(cause["receipt_ref"]),
        resource_red_path,
        refs.verify(resource_red["receipt_ref"]),
        pure_green_path,
        refs.verify(pure_green["source_subject_ref"]),
        profile_path,
        E / "native-environment-inputs-v2.json",
        native / "materialized-source-before.json",
        library_trace_path,
        test_trace_path,
        native / "worker/build-identity.json",
        native / "build-environment.json",
        *map(Path, dependency_libraries.values()),
        F / "inputs/v2/session-worker-clippy-tool-001.json",
        F / "inputs/v2/native-rebuild-source-history-001.json",
    ]
    if predecessor:
        binding_paths += [refs.verify(predecessor), correction_path]
    bindings = [ref_for(guarded(path), refs) for path in binding_paths] + source_refs
    controller_refs = [ref_for(guarded(path), refs) for path in sorted(E.glob("*.py"))]
    bindings += controller_refs
    base.mkdir(parents=True, exist_ok=False)
    rows = []
    for index, reference in enumerate(
        source_refs
        + controller_refs
        + [ref_for(Path(__file__), refs), ref_for(profile_path, refs)]
    ):
        raw = refs.verify(reference).read_bytes()
        if len(raw) > 4 * 1024**2:
            raise ValueError("SessionDevelopmentSourceBound")
        snapshot = base / "sources" / str(index)
        write_once(snapshot, raw)
        rows.append({"logical_ref": reference, "snapshot_ref": ref_for(snapshot, refs)})
    write_once(
        base / "source-index.json",
        {
            "format": "core036.session-recovery-resources-development-source.v1",
            "files": rows,
        },
    )
    expected_tests = {
        "v2_protocol": 10,
        "v2_session_resources": 2,
        "v2_session_recovery_worker": 1,
        "v2_sessions": 2,
        "v2_recovery": 17,
        "v2_session_worker": 1,
    }
    intent = {
        "clippy_tool_ref": ref_for(
            F / "inputs/v2/session-worker-clippy-tool-001.json", refs
        ),
        "source_files": source_refs,
        "bindings": bindings,
        "source_subject_ref": ref_for(base / "source-index.json", refs),
        "producer_identity_ref": ref_for(native / "worker/build-identity.json", refs),
        "producer_environment_ref": ref_for(native / "build-environment.json", refs),
        "library_trace_ref": ref_for(library_trace_path, refs),
        "test_trace_ref": ref_for(test_trace_path, refs),
        "dependency_libraries": dependency_libraries,
        "expected_tests": expected_tests,
        "predecessor_ref": predecessor,
        "correction_ref": ref_for(correction_path, refs) if correction_path else None,
        "native_proof": "unestablished",
        "feature_complete": False,
    }
    write_once(base / "intent.json", intent)
    argv = [tools["python"]["path"], str(Path(__file__)), name, "--child"]
    write_once(
        base / "declaration.json",
        {
            "format": "core036.session-recovery-resources-development-attempt.v1",
            "work_id": "w001",
            "record_id": name,
            "stage": "SESSIONS",
            "profile": profile,
            "source_subject_ref": intent["source_subject_ref"],
            "argv": argv,
            "wall_seconds": 3600,
            "start_monotonic_ns": STARTED,
            "scope": "Prospective extended3600s component allocation under the original SESSIONS profile: run all33 session/recovery/resource/protocol controls from one current compiled subject. The ordinary900s subset runs do not cover this whole integrated suite. No numerical profile limit is raised; full Cargo/proof/quality/measurement gates remain mandatory",
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
        P / "bootstrap" / name,
        wall_seconds=3600,
        child_kind="extended",
        env={"PYTHONDONTWRITEBYTECODE": "1", "PYTHONPATH": str(E)},
    )
    for reference in bindings:
        refs.verify(reference)
    for row in rows:
        if (
            refs.verify(row["logical_ref"]).read_bytes()
            != refs.verify(row["snapshot_ref"]).read_bytes()
        ):
            raise ValueError("SessionDevelopmentChangedAfter")
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
    print((P / "bootstrap" / name / "stderr.txt").read_text()[-3000:])


if __name__ == "__main__":
    if len(sys.argv) == 3 and sys.argv[2] == "--child":
        raise SystemExit(child(sys.argv[1]))
    if len(sys.argv) != 2:
        raise ValueError("SessionDevelopmentArguments")
    parent(sys.argv[1])
