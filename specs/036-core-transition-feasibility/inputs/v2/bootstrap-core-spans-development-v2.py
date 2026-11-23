"""Fresh Core dependency compilation from actual545 flags, after a real API red.

This is component development, never a native correspondence or measurement gate.
Old exports and compiled dependencies remain immutable.
"""

import json
from pathlib import Path
import re
import subprocess
import sys
import time
import tomllib

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

NAME = "core-spans-development-002"
BASE = N / "bootstrap-runs" / NAME
OUTPUT = P / "core-spans-development" / NAME
OLD = P / "sources/a0003/core-reuse"
NATIVE = P / "native-builds/a0545"


def guarded(path):
    path = guard_owned_path(path)
    _unlinked_parents(path)
    return path


def command(folder, argv, cwd, env):
    folder.mkdir(parents=True, exist_ok=False)
    write_once(
        folder / "intent.json",
        dict(argv=argv, cwd=str(cwd), inherited_environment=False),
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
        dict(
            exit_code=code,
            stdout_sha256=digest(folder / "stdout.txt"),
            stderr_sha256=digest(folder / "stderr.txt"),
        ),
    )
    return code


def arguments(trace, output, replacements, *, source=None, crate=None):
    args = list(trace["argv"])
    if source is not None:
        indexes = [i for i, arg in enumerate(args) if arg.endswith(".rs")]
        if len(indexes) != 1:
            raise ValueError("CoreSpansCompilerSource")
        args[indexes[0]] = str(source)
    if crate is not None:
        args[args.index("--crate-name") + 1] = crate
    name = args[args.index("--crate-name") + 1]
    args[args.index("--out-dir") + 1] = str(output)
    for index, arg in enumerate(args):
        if arg.startswith("metadata="):
            args[index] = "metadata=core036_core_spans_development_002_" + name
        elif arg.startswith("extra-filename="):
            args[index] = "extra-filename=-core_spans_development_002"
        elif index and args[index - 1] == "--extern":
            dependency = arg.split("=", 1)[0]
            if dependency in replacements:
                args[index] = dependency + "=" + str(replacements[dependency])
    args += ["-L", "dependency=" + str(output)]
    return args


def child():
    refs, _ = artifact_context_for("w001")
    intent = refs.read(ref_for(guarded(BASE / "intent.json"), refs))
    for reference in intent["bindings"]:
        refs.verify(reference)
    OUTPUT.mkdir(parents=True, exist_ok=False)
    core, worker, compiled = OUTPUT / "core", OUTPUT / "worker", OUTPUT / "compiled"
    compiled.mkdir()
    for reference in intent["core_files"]:
        source = refs.verify(reference)
        target = core / source.relative_to(OLD)
        target.parent.mkdir(parents=True, exist_ok=True)
        write_once(target, source.read_bytes())
    for reference in intent["worker_files"]:
        source = refs.verify(reference)
        target = worker / source.relative_to(E)
        target.parent.mkdir(parents=True, exist_ok=True)
        write_once(target, source.read_bytes())
    env = dict(refs.read(intent["environment_ref"])["environment"])
    temporary = P / "tmp" / NAME
    temporary.mkdir(parents=True, exist_ok=False)
    env.update(
        TMPDIR=str(temporary), RUST_TEST_THREADS="1", CARGO_MANIFEST_DIR=str(worker)
    )
    write_once(
        OUTPUT / "environment.json", dict(environment=env, inherited_environment=False)
    )
    patch = refs.verify(intent["patch_ref"])
    for label, options in [("patch-check", ["--check"]), ("patch-apply", [])]:
        code = command(
            OUTPUT / label,
            [intent["git"], "-C", str(core), "apply", *options, str(patch)],
            core,
            env,
        )
        if code:
            return code
    generated = []
    for reference in intent["core_files"]:
        path = guarded(core / refs.verify(reference).relative_to(OLD))
        generated.append(ref_for(path, refs))
    generated.append(
        ref_for(
            guarded(core / "crates/behavior-core/src/eval/work/research036_spans.rs"),
            refs,
        )
    )
    write_once(OUTPUT / "materialized-core-source.json", generated)
    replacements = {}
    for crate in [
        "behavior_core",
        "behavior_verify",
        "behavior_store",
        "behavior_engine",
        "transition_study036",
    ]:
        trace = refs.read(intent["compiler_traces"][crate])
        cwd = (
            worker
            if crate == "transition_study036"
            else core / Path(trace["cwd"]).relative_to(OLD)
        )
        source = (
            worker / "src/lib.rs"
            if crate == "transition_study036"
            else cwd / "src/lib.rs"
        )
        args = arguments(trace, compiled, replacements, source=source)
        package = tomllib.loads((cwd / "Cargo.toml").read_text())["package"]
        version = package["version"]
        if isinstance(version, dict) and version == {"workspace": True}:
            version = tomllib.loads((core / "Cargo.toml").read_text())["workspace"][
                "package"
            ]["version"]
        if not isinstance(version, str) or not re.fullmatch(
            r"[0-9]+\.[0-9]+\.[0-9]+", version
        ):
            raise ValueError("CoreSpansPinnedPackageVersion")
        crate_env = {
            **env,
            "CARGO_MANIFEST_DIR": str(cwd),
            "CARGO_PKG_VERSION": version,
            "CARGO_PKG_NAME": package["name"],
        }
        code = command(
            OUTPUT / (crate + "-compile"), [trace["compiler"], *args], cwd, crate_env
        )
        if code:
            return code
        replacements[crate] = guarded(
            compiled / ("lib" + crate + "-core_spans_development_002.rlib")
        )
        if not replacements[crate].is_file():
            raise ValueError("CoreSpansMissingActualLibrary")
    test_trace = refs.read(intent["test_trace_ref"])
    executables = {}
    for target, count, expected_exit in [
        ("v2_core_spans", 1, 0),
        ("v2_core_span_clock_faults", 2, 0),
        ("v2_core_operation_spans", 1, 101),
    ]:
        args = arguments(
            test_trace,
            compiled,
            replacements,
            source=worker / ("tests/" + target + ".rs"),
            crate=target,
        )
        code = command(
            OUTPUT / (target + "-compile"), [test_trace["compiler"], *args], worker, env
        )
        if code:
            return code
        executable = guarded(compiled / (target + "-core_spans_development_002"))
        executables[target] = ref_for(executable, refs)
        code = command(
            OUTPUT / (target + "-run"),
            [str(executable), "--test-threads=1"],
            worker,
            env,
        )
        text = (OUTPUT / (target + "-run/stdout.txt")).read_text() + (
            OUTPUT / (target + "-run/stderr.txt")
        ).read_text()
        if code != expected_exit:
            raise ValueError("CoreSpansUnexpectedTestExit:" + target)
        if expected_exit == 0:
            if re.findall(
                r"test result: ok\. (\d+) passed; 0 failed; 0 ignored; 0 measured; 0 filtered out;",
                text,
            ) != [str(count)]:
                raise ValueError("CoreSpansCoverage:" + target)
        elif (
            "ActualCorePhaseChildrenMissingFromOperation" not in text
            or "0 passed; 1 failed; 0 ignored; 0 measured; 0 filtered out;" not in text
        ):
            raise ValueError("CoreSpansIntegrationRedWrongCause")
    for reference in [*intent["bindings"], *generated]:
        refs.verify(reference)
    for reference in intent["worker_files"]:
        if (worker / refs.verify(reference).relative_to(E)).read_bytes() != refs.verify(
            reference
        ).read_bytes():
            raise ValueError("CoreSpansWorkerSourceChanged")
    write_once(
        OUTPUT / "result.json",
        dict(
            format="core036.core-spans-development.v1",
            source_subject_ref=intent["source_subject_ref"],
            tests=3,
            expected_integration_red="ActualCorePhaseChildrenMissingFromOperation",
            libraries={
                name: ref_for(path, refs) for name, path in replacements.items()
            },
            executable_refs=executables,
            materialized_core_source_ref=ref_for(
                OUTPUT / "materialized-core-source.json", refs
            ),
            scope="Actual Core phase guard positions and complete original observation equality in one restricted control. Compiler flags/dependencies from actual545. Full internal attribution, general correspondence, quality, samples and feature completion remain unestablished.",
            feature_complete=False,
            native_proof="unestablished",
            product_adoption="unactivated",
        ),
    )
    return 1


def parent():
    if len(sys.argv) != 1:
        raise ValueError("CoreSpansArguments")
    refs, store = artifact_context_for("w001")
    if store.active_root_id != "future_evidence":
        raise ValueError("CoreSpansStore")
    cause_path = guarded(N / "bootstrap-runs/core-spans-source-red-001/result.json")
    cause = refs.read(ref_for(cause_path, refs))
    receipt = refs.read(cause["receipt_ref"], limit=32 * 1024**2)
    if (
        cause["actual_exit"] != 1
        or cause["stop_reason"] is not None
        or not cause["all_source_bytes_equal_after"]
        or not cause["tree_empty"]
        or not cause["group_empty"]
        or receipt["final_storage_inventory_error"] is not None
    ):
        raise ValueError("CoreSpansClosedSourceRed")
    red = refs.read(
        ref_for(
            guarded(P / "core-spans-source-red/core-spans-source-red-001/result.json"),
            refs,
        )
    )
    if (
        red["compile_exit"] != 1
        or red["expected_failure"] != "E0599: actual Store span API missing"
    ):
        raise ValueError("CoreSpansActualMissingAPI")
    predecessor_path = guarded(
        N / "bootstrap-runs/core-spans-development-001/result.json"
    )
    predecessor = refs.read(ref_for(predecessor_path, refs))
    previous_receipt = refs.read(predecessor["receipt_ref"], limit=32 * 1024**2)
    error_path = guarded(
        P
        / "core-spans-development/core-spans-development-001/behavior_core-compile/stderr.txt"
    )
    if (
        predecessor["actual_exit"] != 1
        or predecessor["stop_reason"] is not None
        or not predecessor["tree_empty"]
        or not predecessor["group_empty"]
        or not predecessor["all_source_bytes_equal_after"]
        or previous_receipt["final_storage_inventory_error"] is not None
        or previous_receipt["final_incremental_storage_bytes"]
        != previous_receipt["final_resource_observation"][
            "growth_apparent_unique_inode_bytes"
        ]
        or "CARGO_PKG_VERSION" not in error_path.read_text()
    ):
        raise ValueError("CoreSpansCorrectionNeedsActualClosedPackageEnvFailure")
    profile_path = (
        F / "inputs/v2/profiles/native-core-instrumentation-rebalance-001.json"
    )
    profile = refs.read(ref_for(guarded(profile_path), refs))
    inventory_path = guarded(OLD / "subject-inventory-v2.json")
    inventory = refs.read(ref_for(inventory_path, refs), limit=32 * 1024**2)
    core_files = []
    for row in inventory["files"]:
        path = guarded(OLD / row["path"])
        reference = ref_for(path, refs)
        if reference["bytes"] != row["bytes"] or reference["sha256"] != row["sha256"]:
            raise ValueError("CoreSpansOldSourceChanged")
        core_files.append(reference)
    producer_path = guarded(
        P / "native-spans-development/native-spans-development-001/result.json"
    )
    producer = refs.read(ref_for(producer_path, refs))
    worker_files = []
    for row in refs.read(producer["source_subject_ref"])["files"]:
        reference = row["logical_ref"]
        if (
            reference["root_id"] == "repository"
            and reference["path"].startswith("experiments/transition-study036/")
            and not reference["path"].endswith(".py")
        ):
            if (
                refs.verify(reference).read_bytes()
                != refs.verify(row["snapshot_ref"]).read_bytes()
            ):
                raise ValueError("CoreSpansWorkerSourceChangedSinceProducer")
            worker_files.append(reference)
    for name in [
        "v2_core_spans",
        "v2_core_span_clock_faults",
        "v2_core_operation_spans",
    ]:
        worker_files.append(ref_for(guarded(E / ("tests/" + name + ".rs")), refs))
    traces = {}
    for filename in sorted(guarded(NATIVE / "rustc-invocations/protocol").iterdir()):
        if filename.suffix != ".json":
            continue
        trace = refs.read(ref_for(guarded(filename), refs))
        args = trace["argv"]
        if "--crate-name" not in args:
            continue
        name = args[args.index("--crate-name") + 1]
        if name in {
            "behavior_core",
            "behavior_verify",
            "behavior_store",
            "behavior_engine",
            "transition_study036",
        }:
            if name in traces:
                raise ValueError("CoreSpansAmbiguousActualCompiler")
            traces[name] = ref_for(filename, refs)
    if len(traces) != 5:
        raise ValueError("CoreSpansCompilerClosure")
    test_trace_path = guarded(
        NATIVE
        / "rustc-invocations/v2_mechanisms/2821014-906e70095b0d42169e568791e5f52931.json"
    )
    dependencies = []
    for reference in [*traces.values(), ref_for(test_trace_path, refs)]:
        trace = refs.read(reference)
        for index, arg in enumerate(trace["argv"]):
            if arg == "--extern":
                path = guarded(Path(trace["argv"][index + 1].split("=", 1)[1]))
                dependencies.append(ref_for(path, refs))
    tool_path = guarded(E / "native-environment-inputs-v2.json")
    tools = refs.read(ref_for(tool_path, refs))["tools"]
    for name in ["rustc", "python", "git"]:
        if digest(guarded(tools[name]["path"])) != tools[name]["sha256"]:
            raise ValueError("CoreSpansToolChanged")
    if any(
        refs.read(reference)["compiler"] != tools["rustc"]["path"]
        for reference in traces.values()
    ):
        raise ValueError("CoreSpansCompilerChanged")
    patch_path = guarded(E / "patches/v2/core-phase-spans.patch")
    environment_path = guarded(NATIVE / "build-environment.json")
    source_paths = [
        Path(__file__),
        predecessor_path,
        error_path,
        refs.verify(predecessor["receipt_ref"]),
        profile_path,
        patch_path,
        tool_path,
        E / "patches/v2/core-span-collector.rs",
        E / "native_cache_evidence_rebalance_v2.py",
        E / "continued_capacity_v2.py",
    ]
    source_refs = [ref_for(guarded(path), refs) for path in source_paths] + worker_files
    bindings = (
        source_refs
        + core_files
        + dependencies
        + list(traces.values())
        + [
            ref_for(path, refs)
            for path in [
                inventory_path,
                producer_path,
                environment_path,
                cause_path,
                refs.verify(cause["receipt_ref"]),
                test_trace_path,
            ]
        ]
    )
    BASE.mkdir(parents=True, exist_ok=False)
    rows = []
    for index, reference in enumerate(source_refs):
        snapshot = BASE / "sources" / str(index)
        write_once(snapshot, refs.verify(reference).read_bytes())
        rows.append(dict(logical_ref=reference, snapshot_ref=ref_for(snapshot, refs)))
    write_once(
        BASE / "source-index.json",
        dict(format="core036.core-spans-development-source.v1", files=rows),
    )
    intent = dict(
        bindings=bindings,
        core_files=core_files,
        worker_files=worker_files,
        patch_ref=ref_for(patch_path, refs),
        compiler_traces=traces,
        test_trace_ref=ref_for(test_trace_path, refs),
        environment_ref=ref_for(environment_path, refs),
        source_subject_ref=ref_for(BASE / "source-index.json", refs),
        git=tools["git"]["path"],
    )
    write_once(BASE / "intent.json", intent)
    argv = [tools["python"]["path"], str(Path(__file__)), "--child"]
    write_once(
        BASE / "declaration.json",
        dict(
            format="core036.core-spans-development-attempt.v1",
            work_id="w001",
            record_id=NAME,
            stage="NATIVE",
            profile=profile,
            source_subject_ref=intent["source_subject_ref"],
            argv=argv,
            wall_seconds=3600,
            start_monotonic_ns=STARTED,
            scope="Prospective correction of actual missing Cargo package version from immutable manifests. Fresh Core dependencies; three API/clock controls and expected actual missing operation integration red. No full native/quality/proof/measurement gate.",
            feature_complete=False,
        ),
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
        wall_seconds=3600,
        child_kind="extended",
        env=dict(PYTHONDONTWRITEBYTECODE="1", PYTHONPATH=str(E)),
    )
    for reference in bindings:
        refs.verify(reference)
    for row in rows:
        if (
            refs.verify(row["logical_ref"]).read_bytes()
            != refs.verify(row["snapshot_ref"]).read_bytes()
        ):
            raise ValueError("CoreSpansChangedAfter")
    write_once(
        BASE / "result.json",
        dict(
            receipt_ref=ref_for(P / "bootstrap" / NAME / "receipt.json", refs),
            actual_exit=receipt["exit_code"],
            stop_reason=receipt["stop_reason"],
            tree_empty=receipt["tree_empty"],
            group_empty=receipt["group_empty"],
            all_source_bytes_equal_after=True,
            scientific_acceptance=False,
            feature_complete=False,
        ),
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
