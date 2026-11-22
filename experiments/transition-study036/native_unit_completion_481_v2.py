"""Finish actual481 against its unchanged compiled Rust subject and test receipts."""

import json
from pathlib import Path
import shutil
import subprocess

from artifact_io import RootRegistry, digest, read, write_once
from artifact_registration_v2 import guard_reference
from native_compile_binding_v2 import (
    TARGET,
    cargo_messages,
    check_json_unit,
    configuration_inventory,
    match_compiler_trace,
    select_bin_artifact,
    select_json_artifact,
)
from records import MANIFEST


def verify_materialized(worker, inventory):
    registry = RootRegistry({"worker": worker}, readonly=["worker"])
    if not isinstance(inventory, list) or not inventory:
        raise ValueError("NativeCompletionMaterializedInventory")
    seen = set()
    for row in inventory:
        if not isinstance(row, dict) or set(row) != {"path", "bytes", "sha256"}:
            raise ValueError("NativeCompletionMaterializedFields")
        reference = {"root_id": "worker", **row}
        guard_reference(reference)
        if row["path"] in seen:
            raise ValueError("NativeCompletionDuplicateMaterializedPath")
        seen.add(row["path"])
        registry.verify(reference)
    required = {
        "Cargo.toml",
        "Cargo.lock",
        "build-identity.json",
        "oracle/Cargo.toml",
        "oracle/Cargo.lock",
    }
    if not required <= seen:
        raise ValueError("NativeCompletionMissingMaterializedInputs")


def run(config, declaration, out):
    from controller_v2 import artifact_context_for
    from campaign import WorkLedger
    from environment import check_original_safety_v2, check_prepared_native_v2
    from native_completion_v2 import TESTS, checked_command

    refs, store = artifact_context_for(declaration["work_id"])
    private = refs.roots["private"]
    if (
        set(config) != {"format", "checkpoint_ref", "batch_ref", "oracle_ref"}
        or config["format"] != "core036.native-worker-unit-completion.v3"
        or store.active_root_id != "future_evidence"
        or Path(out) != private / "native-completion" / declaration["record_id"]
        or Path(out).exists()
    ):
        raise ValueError("NativeUnitCompletionScope")
    for reference in (
        config["checkpoint_ref"],
        config["batch_ref"],
        config["oracle_ref"],
    ):
        guard_reference(reference)
    cp_path = refs.verify(config["checkpoint_ref"])
    if cp_path != refs.roots["future_evidence"] / "attempts/a0481/checkpoint.json":
        raise ValueError("NativeUnitCompletionActual481")
    RootRegistry({"attempt": cp_path.parent}).verify_closed("attempt")
    cp = refs.read(config["checkpoint_ref"])
    if cp["stage_outcome"] != "failed" or cp["source_validation_error"] is not None:
        raise ValueError("NativeUnitCompletionClosedSourceValidFailure")
    receipt_ref = refs.reference("future_evidence", "attempts/a0481/child/receipt.json")
    receipt = refs.read(receipt_ref, limit=MANIFEST)
    if (
        receipt_ref not in cp["inputs"]
        or receipt["source_subject_ref"] != cp["source_subject_ref"]
        or receipt["exit_code"] != 1
        or receipt["stop_reason"] is not None
        or receipt["tree_empty"] is not True
        or receipt["group_empty"] is not True
        or receipt["final_storage_inventory_error"] is not None
        or receipt["final_growth_violation"] is not None
        or receipt["final_incremental_storage_bytes"]
        != receipt["final_resource_observation"]["growth_apparent_unique_inode_bytes"]
        or "ValueError: V2ActualJsonFeatureMutation"
        not in (cp_path.parent / "child/stderr.txt").read_text()
    ):
        raise ValueError("NativeUnitCompletionActualFailureCause")
    for filename, key in (
        ("stdout.txt", "stdout_sha256"),
        ("stderr.txt", "stderr_sha256"),
    ):
        if digest(cp_path.parent / "child" / filename) != receipt[key]:
            raise ValueError("NativeUnitCompletionFailureLogs")
    ledger = WorkLedger(
        refs.roots["work"], declaration["work_id"], registry=refs, artifact_store=store
    )
    actual = ledger.attempts.get("a0481")
    if (
        actual is None
        or actual["state"] != "closed"
        or actual["outcome"] != "failed"
        or actual["subject"] != cp["source_subject_ref"]["sha256"]
        or refs.verify(actual["declaration_ref"]) != cp_path.parent / "declaration.json"
    ):
        raise ValueError("NativeUnitCompletionJournal")
    previous = private / "native-builds/a0481"
    worker = previous / "worker"
    target = private / "disposable/native-a0480/target"
    refs.path("private", str(target.relative_to(private)))
    inventory = read(previous / "materialized-source-before.json", MANIFEST)
    verify_materialized(worker, inventory)
    subject = refs.read(cp["source_subject_ref"], limit=MANIFEST)
    source_rows = []
    prefix = "experiments/transition-study036/"
    for row in subject["files"]:
        logical = row["logical_ref"]
        guard_reference(logical)
        guard_reference(row["snapshot_ref"])
        relative = logical["path"].removeprefix(prefix)
        if logical["path"].startswith(prefix) and relative.startswith(
            ("src/", "tests/", "expected/")
        ):
            source = worker / relative
            snapshot = refs.verify(row["snapshot_ref"])
            if (
                source.read_bytes() != snapshot.read_bytes()
                or digest(source) != logical["sha256"]
            ):
                raise ValueError("NativeUnitCompletionCompiledSourceChanged")
            source_rows.append((source, logical["sha256"]))
    if not source_rows or not any(
        str(p).endswith("/src/source_identity.rs") for p, _ in source_rows
    ):
        raise ValueError("NativeUnitCompletionMissingCompiledSource")
    identity = read(worker / "build-identity.json")
    if (
        identity["source_subject_sha256"] != cp["source_subject_ref"]["sha256"]
        or identity["target"] != TARGET
        or identity["native_proof_status"] != "unestablished"
    ):
        raise ValueError("NativeUnitCompletionIdentity")
    commands = [
        "metadata",
        "compiler-identity",
        "oracle-metadata",
        "format",
        "clippy",
        "oracle-build",
        "json-feature-negative",
        *TESTS,
    ]
    for name in commands:
        checked_command(previous / name, expected_tests=TESTS.get(name))
    negative = read(previous / "worker-feature-negative/result.json")
    if type(negative.get("exit_code")) is not int or negative["exit_code"] != 101:
        raise ValueError("NativeUnitCompletionMissingWorkerFailure")
    for filename, key in (
        ("stdout.txt", "stdout_sha256"),
        ("stderr.txt", "stderr_sha256"),
    ):
        if digest(previous / "worker-feature-negative" / filename) != negative[key]:
            raise ValueError("NativeUnitCompletionMissingWorkerLogs")
    if (
        "requires the features: `worker`"
        not in (previous / "worker-feature-negative/stderr.txt").read_text()
    ):
        raise ValueError("NativeUnitCompletionMissingWorkerCause")
    graph = read(previous / "metadata/stdout.txt", MANIFEST)
    root_package = next(
        row
        for row in graph["packages"]
        if row["manifest_path"] == str(worker / "Cargo.toml")
    )
    json_package = next(row for row in graph["packages"] if row["name"] == "serde_json")
    if json_package["version"] != "1.0.151":
        raise ValueError("NativeUnitCompletionJsonVersion")
    mutated_rows = cargo_messages(previous / "json-feature-negative/stdout.txt")
    mutated = select_json_artifact(mutated_rows, json_package["id"], target / TARGET)
    if "arbitrary_precision" not in mutated["features"]:
        raise ValueError("NativeUnitCompletionActualJsonMutation")
    try:
        check_json_unit(mutated)
    except ValueError as error:
        if str(error) != "NativeCompileJsonRepresentation":
            raise
    else:
        raise ValueError("NativeUnitCompletionJsonMutantAccepted")
    oracle = refs.verify(config["oracle_ref"])
    if oracle != previous / "retained/transition036-oracle" or digest(oracle) != digest(
        target / TARGET / "debug/transition036-oracle"
    ):
        raise ValueError("NativeUnitCompletionOriginalOracle")
    batch_path = refs.verify(config["batch_ref"])
    fixture = batch_path.parent
    if (
        fixture.parent != worker / "private"
        or batch_path.name != "valid-batch-request.json"
        or not fixture.name.startswith("raw-oracle-")
    ):
        raise ValueError("NativeUnitCompletionFixture")
    batch = refs.read(config["batch_ref"])
    if (
        batch["source_subject_ref"] != cp["source_subject_ref"]
        or len(batch["cases"]) != 2
    ):
        raise ValueError("NativeUnitCompletionBatchSubject")
    prepared = check_prepared_native_v2(Path(__file__).parent / "toolchain-v2.json")
    check_original_safety_v2(Path(__file__).parent / "original-safety-binding-v2.json")
    tools = prepared["tools"]
    environment = read(previous / "build-environment.json")
    if (
        environment["inherited_environment"] is not False
        or environment["target"] != TARGET
        or digest(previous / "rustc-wrapper") != environment["wrapper_sha256"]
    ):
        raise ValueError("NativeUnitCompletionControlledEnvironment")
    env = environment["environment"]
    if (
        env["RUSTC"] != tools["rustc"]["path"]
        or env["CARGO_TARGET_DIR"] != str(target)
        or env["RUSTC_WRAPPER"] != str(previous / "rustc-wrapper")
    ):
        raise ValueError("NativeUnitCompletionCompilerEnvironment")
    configuration_inventory(worker, private / "cargo")
    out = Path(out)
    out.mkdir()
    write_once(out / "closed481-source-audit-before.json", inventory)
    write_once(
        out / "prior-test-receipts.json",
        {name: read(previous / name / "result.json") for name in commands},
    )

    def command(name, argv):
        folder = out / name
        folder.mkdir()
        traces = out / "rustc-invocations" / name
        traces.mkdir(parents=True)
        with (
            (folder / "stdout.txt").open("xb") as stdout,
            (folder / "stderr.txt").open("xb") as stderr,
        ):
            process = subprocess.run(
                argv,
                cwd=worker,
                env={
                    **env,
                    "CORE036_RUSTC_TRACE_ROOT": str(traces),
                    "CORE036_INPUT_ROOTS_JSON": json.dumps(
                        {
                            "raw": str(fixture),
                            "work": str(refs.roots["work"]),
                            "future_evidence": str(refs.roots["future_evidence"]),
                        }
                    ),
                },
                stdout=stdout,
                stderr=stderr,
                timeout=1800,
                check=False,
            )
        write_once(
            folder / "result.json",
            {
                "argv": argv,
                "exit_code": process.returncode,
                "stdout_sha256": digest(folder / "stdout.txt"),
                "stderr_sha256": digest(folder / "stderr.txt"),
            },
        )
        if process.returncode != 0:
            raise ValueError("NativeUnitCompletionCommand:" + name)

    command(
        "workers-build",
        [
            tools["cargo"]["path"],
            "build",
            "--target",
            TARGET,
            "--locked",
            "--offline",
            "--manifest-path",
            str(worker / "Cargo.toml"),
            "--features",
            "worker",
            "--bins",
            "--message-format=json",
        ],
    )
    messages = cargo_messages(out / "workers-build/stdout.txt")
    json_unit = select_json_artifact(messages, json_package["id"], target / TARGET)
    check_json_unit(json_unit)
    traces = [
        read(p)
        for p in sorted((out / "rustc-invocations/workers-build").glob("*.json"))
    ]
    retained = out / "retained"
    retained.mkdir()
    binaries = {}
    units = []
    for role, name, source in [
        ("oracle", "transition036-oracle", None),
        ("R", "transition036-reference", "reference.rs"),
        ("GV", "transition036-reuse", "reuse.rs"),
        ("B", "transition036-buffered", "buffered.rs"),
    ]:
        emitted = oracle if role == "oracle" else target / TARGET / "debug" / name
        destination = retained / name
        shutil.copy2(emitted, destination)
        if digest(emitted) != digest(destination):
            raise ValueError("NativeUnitCompletionRetainedBytes")
        binaries[role] = {
            "path": str(destination),
            "bytes": destination.stat().st_size,
            "sha256": digest(destination),
            "source_subject_ref": cp["source_subject_ref"],
            "compiled_core": prepared["sources"][
                "core-original" if role == "oracle" else "core-reuse"
            ]["path"],
            "native_proof": "unestablished",
        }
        if role != "oracle":
            artifact = select_bin_artifact(
                messages, root_package["id"], name, worker / "src/bin" / source, emitted
            )
            invocation = match_compiler_trace(
                traces, artifact, tools["rustc"]["path"], TARGET
            )
            units.append(
                {
                    "role": role,
                    "artifact": artifact,
                    "compiler_invocation": invocation,
                    "retained_executable": binaries[role],
                }
            )
    write_once(
        out / "worker-unit-binding.json",
        {
            "format": "core036.native-worker-unit-binding.v2",
            "compiled_source_subject_ref": cp["source_subject_ref"],
            "source_subject_ref": declaration["source_subject_ref"],
            "json_unit": json_unit,
            "worker_units": units,
            "all_cargo_units": messages,
            "actual_json_mutant_unit": mutated,
            "native_proof": "unestablished",
            "feature_complete": False,
        },
    )
    raw_refs = RootRegistry({"raw": fixture})
    for case in range(2):
        original = out / f"original-{case}"
        context = out / f"original-context-{case}.json"
        write_once(
            context,
            {
                "format": "core036.oracle-context.v2",
                "workload_ref": raw_refs.reference(
                    "raw", f"prepared-{case}/workload.json"
                ),
            },
        )
        command(
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
        command(
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
    for role in ("R", "GV", "B"):
        command(
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
                        raise ValueError(
                            "NativeUnitCompletionOriginalObservationMismatch"
                        )
    verify_materialized(worker, inventory)
    if any(digest(path) != sha for path, sha in source_rows):
        raise ValueError("NativeUnitCompletionSourceChanged")
    for name in commands:
        checked_command(previous / name, expected_tests=TESTS.get(name))
    check_prepared_native_v2(Path(__file__).parent / "toolchain-v2.json")
    configuration_inventory(worker, private / "cargo")
    write_once(out / "closed481-source-audit-after.json", inventory)
    write_once(
        out / "result.json",
        {
            "format": "core036.native-unit-completion.v3",
            "source_subject_ref": declaration["source_subject_ref"],
            "compiled_source_subject_ref": cp["source_subject_ref"],
            "compiled_checkpoint_ref": config["checkpoint_ref"],
            "built_executables": binaries,
            "completed_prior_tests": sum(TESTS.values()),
            "original_observations_compared": 12,
            "native_proof": "unestablished",
            "feature_complete": False,
            "product_adoption": "unactivated",
        },
    )
    return 0
