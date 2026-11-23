"""Admit compiler data from a closed actual build, never its quality status."""

from pathlib import Path
import re

from artifact_io import RootRegistry, digest, read, write_once
from artifact_registration_v2 import guard_protected_components, guard_reference
from records import MANIFEST, u64


def prepared_cache_target(cp, parent, receipt, result, private):
    guard_protected_components(private)
    if not isinstance(cp.get("source_subject_ref"), dict):
        raise ValueError("PreparedBuildMissingSourceSubject")
    guard_reference(cp["source_subject_ref"])
    owner = cp.get("attempt_id")
    if not isinstance(owner, str) or re.fullmatch(r"a[0-9]{4,16}", owner) is None:
        raise ValueError("PreparedBuildOwner")
    target = Path(private) / "disposable" / ("gate-" + owner) / "target"
    runtime = result.get("evaluated_runtime_result")
    inventory = result.get("prepared_cache_inventory_ref")
    if (
        cp.get("stage_outcome") != "succeeded"
        or cp.get("outcome", {}).get("operational") != "closed"
        or cp.get("source_validation_error") is not None
        or parent.get("record_id") != owner
        or parent.get("stage") != "NATIVE"
        or parent.get("slots") != ["quality-runtime-prepare"]
        or any(
            v.get("source_subject_ref") != cp.get("source_subject_ref")
            for v in [parent, receipt, result]
        )
        or receipt.get("format") != "core036.resource.v2"
        or receipt.get("stage") != "NATIVE"
        or receipt.get("work_id") != parent.get("work_id")
        or type(receipt.get("exit_code")) is not int
        or receipt["exit_code"] != 0
        or receipt.get("stop_reason") is not None
        or receipt.get("controller_error") is not None
        or receipt.get("tree_empty") is not True
        or receipt.get("group_empty") is not True
        or receipt.get("final_storage_inventory_error") is not None
        or receipt.get("final_incremental_storage_bytes")
        != receipt.get("final_resource_observation", {}).get(
            "growth_apparent_unique_inode_bytes"
        )
        or result.get("format") != "core036.canonical-result.v2"
        or type(result.get("exit_code")) is not int
        or result["exit_code"] != 0
        or result.get("whole_gate_terminal_ok") is not False
        or result.get("runtime_preparation_only") is not True
        or result.get("target_started_empty") is not True
        or result.get("compiler_cache_reused") is not False
        or result.get("target") != str(target)
        or not isinstance(runtime, dict)
        or runtime.get("mode") != "build-prepare"
        or runtime.get("gate_exit") is not None
        or type(runtime.get("preparation_exit")) is not int
        or runtime["preparation_exit"] != 0
        or runtime.get("capture_pair_equal") is not True
        or not isinstance(inventory, dict)
    ):
        raise ValueError("PreparedBuildNotClosedCompilerData")
    guard_reference(inventory)
    usage = receipt["final_resource_observation"]["growth_apparent_unique_inode_bytes"]
    if set(usage) != {"cache", "temporary", "artifacts", "shared_store"}:
        raise ValueError("PreparedBuildStorageFields")
    for value in usage.values():
        u64(value)
    return target


def prepare_compiled_cache(*, refs, declaration, core, cli, out, config):
    from native_partial_cache_retention_v2 import complete_inventory
    from native_preparation_capacity_v2 import preparation_limits
    from quality_runtime_v2 import (
        read_capture,
        validate_capture_pair,
        validate_compile_preparation,
    )
    from quality_warm_cache_v3 import retain_cache

    selected = config.get("prepared_build")
    if (
        declaration.get("stage") != "Q"
        or declaration.get("slots") != ["canonical-quality"]
        or not isinstance(selected, dict)
        or set(selected) != {"checkpoint_ref", "result_ref"}
    ):
        raise ValueError("PreparedBuildDeclaredConsumer")
    for reference in selected.values():
        guard_reference(reference)
    private, future = refs.roots["private"], refs.roots["future_evidence"]
    cp_path = refs.verify(selected["checkpoint_ref"])
    if (
        cp_path.name != "checkpoint.json"
        or cp_path.parent.parent != future / "attempts"
    ):
        raise ValueError("PreparedBuildCheckpointRoot")
    RootRegistry({"attempt": cp_path.parent}).verify_closed("attempt")
    cp = refs.read(selected["checkpoint_ref"])
    parent = read(cp_path.parent / "declaration.json", limit=MANIFEST)
    receipt = read(cp_path.parent / "child/receipt.json", limit=32 * 1024**2)
    result_path = refs.verify(selected["result_ref"])
    result = refs.read(selected["result_ref"])
    owner = cp.get("attempt_id")
    if (
        cp_path.parent.name != owner
        or result_path != private / "quality-runtime-prepare" / owner / "result.json"
    ):
        raise ValueError("PreparedBuildResultRoot")
    target = prepared_cache_target(cp, parent, receipt, result, private)
    preparation_limits(declaration["profile"], parent["profile"])
    expected_argv = [
        str(Path(__file__).parent / "quality_v2.py"),
        "--declaration",
        str(cp_path.parent / "declaration.json"),
        "--out",
        str(result_path.parent),
    ]
    if receipt.get("argv", [])[1:] != expected_argv:
        raise ValueError("PreparedBuildActualExecutor")
    if (
        result.get("source_inventory_sha256")
        != digest(core / "subject-inventory-v2.json")
        or result.get("script_sha256") != digest(core / "scripts/gates.sh")
        or result.get("cli_sha256") != digest(cli)
        or result.get("runtime_fixture_inputs") != config.get("runtime_fixture_inputs")
    ):
        raise ValueError("PreparedBuildCurrentSourceCliFixtures")
    subject = refs.read(parent["source_subject_ref"], limit=MANIFEST)

    def frozen(name):
        rows = [
            r
            for r in subject["files"]
            if r["logical_ref"]["root_id"] == "repository"
            and r["logical_ref"]["path"] == "experiments/transition-study036/" + name
        ]
        if len(rows) != 1:
            raise ValueError("PreparedBuildFrozenInput")
        return rows[0]

    old_config = refs.read(frozen("quality-inputs-v2.json")["snapshot_ref"])
    for key in ["cli_result_ref", "cli_checkpoint_ref", "runtime_fixture_inputs"]:
        if old_config.get(key) != config.get(key):
            raise ValueError("PreparedBuildFrozenCliFixtureContext")
    # Admission is source sensitive; this is not a report-selected verifier.
    for name in [
        "quality_v2.py",
        "quality_runtime_v2.py",
        "quality_prepared_build_v2.py",
        "controller_v2.py",
        "native_suite_capacity_v2.py",
    ]:
        row = frozen(name)
        if digest(Path(__file__).parent / name) != row["logical_ref"]["sha256"]:
            raise ValueError("PreparedBuildChangedExecutor:" + name)
        refs.verify(row["snapshot_ref"])
    base = result_path.parent
    runtime = read(base / "runtime/result.json")
    if runtime != result["evaluated_runtime_result"]:
        raise ValueError("PreparedBuildRuntimeResultChanged")
    for phase in ["before", "after"]:
        reference = runtime[phase]
        if reference["path"] != str(base / "runtime" / (phase + ".json")):
            raise ValueError("PreparedBuildCapturePath")
    before = read_capture(runtime["before"]["path"], runtime["before"])
    after = read_capture(runtime["after"]["path"], runtime["after"])
    validate_capture_pair(before, after)
    job = read(base / "runtime-job.json")
    if (
        job.get("core") != str(core)
        or job.get("target") != str(target)
        or job.get("out") != str(base / "runtime")
        or job.get("mode") != "build-prepare"
    ):
        raise ValueError("PreparedBuildRuntimeJobBinding")
    validate_compile_preparation(
        read(base / "runtime/compile-preparation.json"),
        job,
        before["tools"]["cargo"]["invocation"],
    )
    inventory_ref = result["prepared_cache_inventory_ref"]
    if refs.verify(inventory_ref) != base / "prepared-cache-inventory.json":
        raise ValueError("PreparedBuildInventoryPath")
    inventory = refs.read(inventory_ref, limit=MANIFEST)
    if (
        complete_inventory(
            target, maximum_bytes=4 * 1024**3, domain="closed-quality-cache"
        )
        != inventory
    ):
        raise ValueError("PreparedBuildCacheChangedAfterClosure")
    usage = receipt["final_resource_observation"]["growth_apparent_unique_inode_bytes"]
    limits = declaration["profile"]["limits"]
    budget = (
        min(
            limits["cache_bytes"] - usage["cache"],
            limits["combined_bytes"] - sum(usage.values()),
        )
        - 64 * 1024**2
    )
    preservation = retain_cache(target, out / "retained-cache", budget=budget)
    write_once(
        out / "prepared-build-binding.json",
        {
            "format": "core036.prepared-build-binding.v2",
            "inputs": list(selected.values()),
            "target": str(target),
            "whole_gate_must_run": True,
            "reused_results": False,
            "previous_capture": runtime["before"],
            "cache_inventory_ref": inventory_ref,
        },
    )
    return target, runtime["before"], preservation
