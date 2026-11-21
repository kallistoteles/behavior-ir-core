"""Complete only the interrupted build, then exercise the retained executables.

The executor subject and the older, unchanged compiled Rust subject are separate.
Neither the closed resource stop nor finite conformance becomes a native proof.
"""

import argparse
import json
import os
from pathlib import Path
import re
import shutil
import subprocess

from artifact_io import RootRegistry, digest, read, write_once
from environment import check_prepared_native_v2, check_original_safety_v2
from records import MANIFEST

E = Path(__file__).resolve().parent
R = E.parents[1]
TESTS = {
    "protocol": 9,
    "v2_native_exactness": 20,
    "v2_ground_lifecycle": 14,
    "v2_oracle_contract": 7,
    "v2_source_identity": 1,
    "v2_codec": 8,
    "v2_intervals": 5,
    "v2_output": 5,
    "v2_mechanisms": 4,
    "v2_quantities": 3,
    "codec-selector-refinement": 1,
}


def checked_command(folder, *, expected_tests=None):
    folder = Path(folder)
    result = read(folder / "result.json")
    if type(result["exit_code"]) is not int or result["exit_code"] != 0:
        raise ValueError("NativeCompletionCommandFailed")
    for name in ["stdout", "stderr"]:
        if digest(folder / (name + ".txt")) != result[name + "_sha256"]:
            raise ValueError("NativeCompletionCommandLogChanged")
    if expected_tests is not None:
        summaries = re.findall(
            r"test result: ok\. (\d+) passed; 0 failed; 0 ignored; 0 measured; \d+ filtered out;",
            (folder / "stdout.txt").read_text(),
        )
        if summaries != [str(expected_tests)]:
            raise ValueError("NativeCompletionTestCount")
    return result


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--declaration", required=True)
    parser.add_argument("--out", required=True)
    args = parser.parse_args()
    declaration = read(args.declaration)
    private = Path(declaration["profile"]["roots"]["cache"])
    work = (
        R / "specs/036-core-transition-feasibility/evidence/v2" / declaration["work_id"]
    )
    refs = RootRegistry({"repository": R, "private": private, "work": work})
    out = Path(args.out)
    if out != private / "native-completion" / declaration["record_id"] or out.exists():
        raise ValueError("NativeCompletionOutput")
    config = read(E / "native-completion-inputs-v2.json")
    if (
        set(config) != {"format", "checkpoint_ref", "batch_ref", "oracle_ref"}
        or config["format"] != "core036.native-completion-inputs.v2"
    ):
        raise ValueError("NativeCompletionInputs")
    cp_path = refs.verify(config["checkpoint_ref"])
    if cp_path != work / "attempts/a0301/checkpoint.json":
        raise ValueError("NativeCompletionPredecessor")
    RootRegistry({"attempt": cp_path.parent}).verify_closed("attempt")
    cp = refs.read(config["checkpoint_ref"])
    if (
        cp["stage_outcome"] != "resource_stopped"
        or cp["source_validation_error"] is not None
    ):
        raise ValueError("NativeCompletionActualStop")
    receipt_ref = next(
        x for x in cp["inputs"] if x["path"].endswith("/child/receipt.json")
    )
    receipt = refs.read(receipt_ref, limit=MANIFEST)
    if (
        receipt["stop_reason"] != "CacheGrowthLimit"
        or receipt["tree_empty"] is not True
        or receipt["group_empty"] is not True
    ):
        raise ValueError("NativeCompletionStopClosure")
    from controller_v2 import load_work

    _, journal_refs, ledger = load_work(work / "context.json")
    actual = ledger.attempts.get("a0301")
    if (
        actual is None
        or actual["state"] != "closed"
        or actual["outcome"] != "resource_stopped"
        or actual["subject"] != cp["source_subject_ref"]["sha256"]
        or journal_refs.verify(actual["declaration_ref"])
        != cp_path.parent / "declaration.json"
    ):
        raise ValueError("NativeCompletionActualJournal")
    previous = private / "native-builds/a0301"
    worker = previous / "worker"
    target = private / "disposable/native-a0301/target"
    refs.path("private", str(target.relative_to(private)))
    subject = refs.read(cp["source_subject_ref"], limit=MANIFEST)
    selected = []
    for row in subject["files"]:
        logical = row["logical_ref"]
        prefix = "experiments/transition-study036/"
        name = logical["path"].removeprefix(prefix)
        if logical["path"].startswith(prefix) and name.startswith(
            ("src/", "expected/", "tests/")
        ):
            source = worker / name
            snapshot = refs.verify(row["snapshot_ref"])
            if (
                source.read_bytes() != snapshot.read_bytes()
                or digest(source) != logical["sha256"]
            ):
                raise ValueError("NativeCompletionCompiledSourceChanged")
            selected.append((source, logical["sha256"]))
    if not any(str(p).endswith("/src/serialization.rs") for p, _ in selected):
        raise ValueError("NativeCompletionMissingSource")
    identity = read(worker / "build-identity.json")
    if (
        identity["source_subject_sha256"] != cp["source_subject_ref"]["sha256"]
        or identity["compiler_release"] != "1.98.1"
    ):
        raise ValueError("NativeCompletionCompiledIdentity")
    commands = {}
    for name in [
        "metadata",
        "compiler-identity",
        "oracle-metadata",
        "format",
        "clippy",
        "oracle-build",
        *TESTS,
    ]:
        commands[name] = checked_command(
            previous / name, expected_tests=TESTS.get(name)
        )
    oracle = refs.verify(config["oracle_ref"])
    if oracle != previous / "retained/transition036-oracle" or digest(oracle) != digest(
        target / "debug/transition036-oracle"
    ):
        raise ValueError("NativeCompletionOriginalOracle")
    batch_path = refs.verify(config["batch_ref"])
    fixture = batch_path.parent
    if (
        batch_path.name != "valid-batch-request.json"
        or fixture.parent != worker / "private"
        or not fixture.name.startswith("raw-oracle-")
    ):
        raise ValueError("NativeCompletionFixture")
    batch = refs.read(config["batch_ref"])
    if (
        batch["source_subject_ref"] != cp["source_subject_ref"]
        or len(batch["cases"]) != 2
    ):
        raise ValueError("NativeCompletionBatchSubject")
    prepared = check_prepared_native_v2(E / "toolchain-v2.json")
    check_original_safety_v2(E / "original-safety-binding-v2.json")
    tools = prepared["tools"]
    env = {
        **os.environ,
        "CORE036_NATIVE_SUBJECT_REF_JSON": json.dumps(cp["source_subject_ref"]),
        "CORE036_NATIVE_WORK_ROOT": str(work),
        "CARGO_HOME": str(private / "cargo"),
        "CARGO_NET_OFFLINE": "true",
        "CARGO_INCREMENTAL": "0",
        "CARGO_BUILD_JOBS": "1",
        "RUSTC": tools["rustc"]["path"],
        "CC": tools["cc"]["path"],
        "PATH": os.pathsep.join(
            dict.fromkeys(str(Path(t["path"]).parent) for t in tools.values())
        ),
        "CARGO_TARGET_DIR": str(target),
        "CARGO_PROFILE_DEV_DEBUG": "0",
        "CARGO_PROFILE_TEST_DEBUG": "0",
        "RUSTFLAGS": "-C target-cpu=x86-64 -C linker=" + tools["cc"]["path"],
        "CORE036_INPUT_ROOTS_JSON": json.dumps(
            {"raw": str(fixture), "work": str(work)}
        ),
    }
    out.mkdir(parents=True)

    def run(name, argv):
        folder = out / name
        folder.mkdir()
        with (
            (folder / "stdout.txt").open("xb") as stdout,
            (folder / "stderr.txt").open("xb") as stderr,
        ):
            result = subprocess.run(
                argv,
                cwd=worker,
                env=env,
                stdout=stdout,
                stderr=stderr,
                timeout=1800,
                check=False,
            )
        write_once(
            folder / "result.json",
            {
                "argv": argv,
                "exit_code": result.returncode,
                "stdout_sha256": digest(folder / "stdout.txt"),
                "stderr_sha256": digest(folder / "stderr.txt"),
            },
        )
        if result.returncode != 0:
            raise ValueError("NativeCompletionActualCommand:" + name)

    # The original worker directory, manifest, frozen build identity and cfg
    # are retained. Only the interrupted Cargo build is repeated.
    inputs_before = {
        name: digest(worker / name)
        for name in [
            "Cargo.toml",
            "Cargo.lock",
            "build-identity.json",
            "oracle/Cargo.lock",
        ]
    }
    run(
        "workers-build",
        [
            tools["cargo"]["path"],
            "build",
            "--locked",
            "--offline",
            "--manifest-path",
            str(worker / "Cargo.toml"),
            "--features",
            "worker",
            "--bins",
        ],
    )
    retained = out / "retained"
    retained.mkdir()
    binaries = {}
    for role, name in [
        ("oracle", "transition036-oracle"),
        ("R", "transition036-reference"),
        ("GV", "transition036-reuse"),
        ("B", "transition036-buffered"),
    ]:
        source = oracle if role == "oracle" else target / "debug" / name
        destination = retained / name
        shutil.copy2(source, destination)
        if digest(source) != digest(destination):
            raise ValueError("NativeCompletionRetainedBytes")
        binaries[role] = dict(
            path=str(destination),
            bytes=destination.stat().st_size,
            sha256=digest(destination),
            source_subject_ref=cp["source_subject_ref"],
            compiled_core=prepared["sources"][
                "core-original" if role == "oracle" else "core-reuse"
            ]["path"],
            native_proof="unestablished",
        )
    # Independently execute original prepare/replay for both real workloads.
    for case in range(2):
        original = out / f"original-{case}"
        context = out / f"original-context-{case}.json"
        raw_refs = RootRegistry({"raw": fixture})
        write_once(
            context,
            {
                "format": "core036.oracle-context.v2",
                "workload_ref": raw_refs.reference(
                    "raw", f"prepared-{case}/workload.json"
                ),
            },
        )
        run(
            f"oracle-prepare-{case}",
            [
                binaries["oracle"]["path"],
                "prepare",
                "--input",
                str(fixture / f"prepared-{case}/workload.json"),
                "--out",
                str(original),
            ],
        )
        run(
            f"oracle-replay-{case}",
            [
                binaries["oracle"]["path"],
                "replay",
                "--prepared",
                str(original),
                "--expected-context",
                str(context),
                "--out",
                str(out / f"replayed-{case}"),
            ],
        )
    for role in ["R", "GV", "B"]:
        run(
            role + "-execute",
            [
                binaries[role]["path"],
                "execute",
                "--input",
                str(batch_path),
                "--out",
                str(out / role),
            ],
        )
        for case in range(2):
            for operation in range(2):
                name = f"observation-{operation:03}.json"
                expected = (out / f"original-{case}" / name).read_bytes()
                for path in [
                    out / f"replayed-{case}" / name,
                    out / role / f"case-{case:03}" / name,
                    fixture / f"prepared-{case}" / name,
                ]:
                    if path.read_bytes() != expected:
                        raise ValueError("NativeCompletionOriginalObservationMismatch")
    if any(digest(source) != expected for source, expected in selected) or any(
        digest(worker / name) != expected for name, expected in inputs_before.items()
    ):
        raise ValueError("NativeCompletionSourceMutated")
    for name in commands:
        checked_command(previous / name, expected_tests=TESTS.get(name))
    check_prepared_native_v2(E / "toolchain-v2.json")
    write_once(
        out / "result.json",
        dict(
            format="core036.native-completion.v2",
            source_subject_ref=declaration["source_subject_ref"],
            compiled_source_subject_ref=cp["source_subject_ref"],
            compiled_checkpoint_ref=config["checkpoint_ref"],
            worker_path=str(worker),
            cargo_exit_code=0,
            compiler_cache_reused=True,
            target=str(target),
            manifest_sha256=digest(worker / "Cargo.toml"),
            lock_sha256=digest(worker / "Cargo.lock"),
            built_executables=binaries,
            completed_prior_tests=sum(TESTS.values()),
            original_observations_compared=12,
            prior_commands_ref=config["checkpoint_ref"],
            native_proof="unestablished",
            feature_complete=False,
            product_adoption="unactivated",
        ),
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
