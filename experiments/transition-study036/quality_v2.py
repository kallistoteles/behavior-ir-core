"""Full unchanged canonical gate, bound to a separately retained actual Core CLI."""

import argparse
import os
import re
import shutil
import subprocess
import tempfile
from pathlib import Path
from artifact_io import RootRegistry, digest, read, write_once
from environment import check_prepared_native_v2
from gate_runtime_v2 import expected_runtime_inputs, validate_gate_runtime_inputs_v2
from quality_runtime_v2 import (
    prepare_launch,
    read_capture,
    validate_capture_pair,
    validate_compile_preparation,
)
import sources

E = Path(__file__).resolve().parent
R = E.parents[1]


def validate_warm_gate_cache_v2(
    *,
    registry,
    checkpoint_ref,
    result_ref,
    private_root,
    work_root,
    expected_source_inventory_sha256,
    expected_script_sha256,
    expected_cli_sha256,
    _ancestors=(),
):
    """Reuse only a closed failed same-source gate's disposable compiler cache.

    This selects cache data, never a passed test or a quality claim. The entire
    unchanged script must still execute again with the original test cases.
    """
    private_root, work_root = Path(private_root), Path(work_root)
    checkpoint_path = registry.verify(checkpoint_ref)
    checkpoint = registry.read(checkpoint_ref)
    name = checkpoint.get("attempt_id")
    if (
        not isinstance(_ancestors, tuple)
        or len(_ancestors) >= 128
        or name in _ancestors
    ):
        raise ValueError("CanonicalWarmCacheOriginCycle")
    if (
        not isinstance(name, str)
        or re.fullmatch(r"a[0-9]{4,16}", name) is None
        or checkpoint_path != work_root / "attempts" / name / "checkpoint.json"
    ):
        raise ValueError("CanonicalWarmCheckpointOwnership")
    RootRegistry({"attempt": checkpoint_path.parent}).verify_closed("attempt")
    previous = read(checkpoint_path.parent / "declaration.json")
    receipt = read(checkpoint_path.parent / "child/receipt.json", limit=32 * 1024**2)
    if (
        previous["stage"] != "Q"
        or previous["slots"] != ["canonical-quality"]
        or checkpoint["source_validation_error"] is not None
        or previous["source_subject_ref"] != checkpoint["source_subject_ref"]
        or receipt["source_subject_ref"] != checkpoint["source_subject_ref"]
        or receipt["tree_empty"] is not True
        or receipt["group_empty"] is not True
    ):
        raise ValueError("CanonicalWarmNotClosedFailedQuality")
    if checkpoint["stage_outcome"] == "resource_stopped":
        # A killed driver cannot write its terminal result. Bind its immutable
        # input snapshot to an already validated cache origin, never invent a
        # result or inherit a passed quality stage from the interrupted run.
        known_closed_stop = receipt["stop_reason"] == "ObservationCadenceMissed" or (
            receipt["stop_reason"] == "ControllerError"
            and receipt.get("controller_error")
            == "StorageEventsLost('UnobservedHardlinkAlias')"
        )
        if (
            not known_closed_stop
            or receipt["exit_code"] != -9
            or receipt["argv"][1:]
            != [
                str(E / "quality_v2.py"),
                "--declaration",
                str(checkpoint_path.parent / "declaration.json"),
                "--out",
                str(private_root / "quality" / name),
            ]
            or (private_root / "quality" / name / "result.json").exists()
        ):
            raise ValueError("CanonicalWarmStoppedDriverBinding")
        subject = registry.read(previous["source_subject_ref"], limit=32 * 1024**2)
        configs = [
            row
            for row in subject["files"]
            if row["logical_ref"]["root_id"] == "repository"
            and row["logical_ref"]["path"]
            == "experiments/transition-study036/quality-inputs-v2.json"
        ]
        if len(configs) != 1:
            raise ValueError("CanonicalWarmStoppedInputSnapshot")
        row = configs[0]
        if any(
            row["snapshot_ref"][key] != row["logical_ref"][key]
            for key in ("bytes", "sha256")
        ):
            raise ValueError("CanonicalWarmStoppedInputSnapshot")
        config = registry.read(row["snapshot_ref"])
        origin = config.get("warm_cache_checkpoint_ref")
        if (
            origin != previous["predecessor"]
            or config.get("warm_cache_result_ref") != result_ref
        ):
            raise ValueError("CanonicalWarmStoppedOriginMismatch")
        return validate_warm_gate_cache_v2(
            registry=registry,
            checkpoint_ref=origin,
            result_ref=result_ref,
            private_root=private_root,
            work_root=work_root,
            expected_source_inventory_sha256=expected_source_inventory_sha256,
            expected_script_sha256=expected_script_sha256,
            expected_cli_sha256=expected_cli_sha256,
            _ancestors=(*_ancestors, name),
        )
    if (
        checkpoint["stage_outcome"] != "failed"
        or receipt["exit_code"] != 1
        or receipt["stop_reason"] is not None
    ):
        raise ValueError("CanonicalWarmNotClosedFailedQuality")
    result_path = registry.verify(result_ref)
    result = registry.read(result_ref)
    if (
        result_path != private_root / "quality" / name / "result.json"
        or result["format"] != "core036.canonical-result.v2"
        or result["source_subject_ref"] != checkpoint["source_subject_ref"]
        or result["exit_code"] != receipt["exit_code"]
        or result["source_inventory_sha256"] != expected_source_inventory_sha256
        or result["script_sha256"] != expected_script_sha256
        or result["cli_sha256"] != expected_cli_sha256
        or result["requested_test_build_profile"]
        != {
            "opt_level": 2,
            "debug": 0,
            "debug_assertions": True,
            "overflow_checks": True,
        }
    ):
        raise ValueError("CanonicalWarmWrongSourceScriptCliOrProfile")
    for filename, key in [
        ("stdout.txt", "stdout_sha256"),
        ("stderr.txt", "stderr_sha256"),
    ]:
        path = registry.path(
            "private", str((result_path.parent / filename).relative_to(private_root))
        )
        if digest(path) != result[key]:
            raise ValueError("CanonicalWarmPriorLogChanged")
    if result.get("compiler_cache_reused") is True:
        origin = result.get("warm_cache_checkpoint_ref")
        if previous["predecessor"] is None or registry.verify(
            origin
        ) != registry.verify(previous["predecessor"]):
            raise ValueError("CanonicalWarmCacheOriginMismatch")
        origin_name = registry.read(origin)["attempt_id"]
        origin_result = result.get("warm_cache_result_ref")
        if origin_result is None:
            origin_result = registry.reference(
                "private", f"quality/{origin_name}/result.json"
            )
        target = validate_warm_gate_cache_v2(
            registry=registry,
            checkpoint_ref=origin,
            result_ref=origin_result,
            private_root=private_root,
            work_root=work_root,
            expected_source_inventory_sha256=expected_source_inventory_sha256,
            expected_script_sha256=expected_script_sha256,
            expected_cli_sha256=expected_cli_sha256,
            _ancestors=(*_ancestors, name),
        )
    else:
        target = private_root / "disposable" / ("gate-" + name) / "target"
    registry.path("private", str(target.relative_to(private_root)))
    if result["target"] != str(target) or not target.is_dir():
        raise ValueError("CanonicalWarmTargetOwnership")
    return target


def retain_warm_gate_executables_v2(
    target, out, *, registry, private_root, prior_index=None
):
    """Keep exact emitted ELF bytes before reusing the closed compiler cache."""
    retained, seen, previous = [], {}, {}
    if prior_index is not None:
        for row in registry.read(prior_index, limit=32 * 1024**2):
            if set(row) != {"original_path", "retained_ref"}:
                raise ValueError("CanonicalWarmPriorRetentionShape")
            ref = row["retained_ref"]
            registry.verify(ref)
            previous[ref["sha256"]] = ref
    for path in sorted(Path(target).rglob("*")):
        if path.is_symlink():
            raise ValueError("CanonicalWarmCacheSymlink")
        if not path.is_file() or not path.stat().st_mode & 0o111:
            continue
        with path.open("rb") as stream:
            if stream.read(4) != b"\x7fELF":
                continue
        source_hash = digest(path)
        if source_hash not in seen:
            if source_hash in previous:
                if previous[source_hash]["bytes"] != path.stat().st_size:
                    raise ValueError("CanonicalWarmPriorRetentionSize")
                seen[source_hash] = previous[source_hash]
            else:
                saved = out / "retained-cache-executables" / source_hash
                saved.parent.mkdir(parents=True, exist_ok=True)
                shutil.copy2(path, saved)
                if digest(saved) != source_hash:
                    raise ValueError("CanonicalWarmExecutableRetentionChanged")
                seen[source_hash] = registry.reference(
                    "private", str(saved.relative_to(private_root))
                )
        retained.append(
            dict(
                original_path=str(path.relative_to(target)),
                retained_ref=seen[source_hash],
            )
        )
    write_once(out / "retained-cache-executables.json", retained)
    return len(retained), len(seen)


def parse_full_gate_log_v2(text, *, expected_labels):
    if (
        not isinstance(text, str)
        or not expected_labels
        or len(set(expected_labels)) != len(expected_labels)
    ):
        raise ValueError("CanonicalExpectedLabels")
    actual = [line for line in text.splitlines() if line.startswith("gates:")]
    expected = ["gates: " + label for label in expected_labels] + ["gates: OK"]
    if actual != expected:
        raise ValueError("CanonicalIncompleteOrReorderedLog")
    return {"complete_log": True, "labels": list(expected_labels)}


def verify_gate_binding_v2(
    *,
    core,
    expected_manifest,
    script,
    expected_script_sha256,
    cli,
    expected_cli_sha256,
    target,
    expected_target,
    receipt=None,
    stderr=None,
):
    core = Path(core)
    script = Path(script)
    cli = Path(cli)
    target = Path(target)
    sources.verify_subject_v2(core, expected_manifest)
    if script != core / "scripts/gates.sh" or digest(script) != expected_script_sha256:
        raise ValueError("CanonicalWrongScript")
    if (
        cli.is_symlink()
        or not cli.is_file()
        or digest(cli) != expected_cli_sha256
        or not os.access(cli, os.X_OK)
    ):
        raise ValueError("CanonicalCliBinding")
    with cli.open("rb") as f:
        if f.read(4) != b"\x7fELF":
            raise ValueError("CanonicalPlaceholderCli")
    if target != Path(expected_target) or target.is_symlink():
        raise ValueError("CanonicalWrongTarget")
    labels = re.findall(r'^gate "([^\"]+)"', script.read_text(), re.M)
    if len(labels) != 13:
        raise ValueError("CanonicalUnchangedGateCount")
    if receipt is not None:
        if (
            receipt.get("exit_code") != 0
            or receipt.get("stop_reason") is not None
            or receipt.get("tree_empty") is not True
            or receipt.get("group_empty") is not True
        ):
            raise ValueError("CanonicalIncompleteExecution")
        parse_full_gate_log_v2(stderr, expected_labels=labels)
    return labels


def check_gate_binding_canary_v2():
    # Run mutations against real verifier-selected indexed source and a real
    # retained executable. This is a binding control, never a full gate result.
    prepared = check_prepared_native_v2(E / "toolchain-v2.json")
    core = Path(prepared["sources"]["core-reuse"]["path"])
    manifest = read(core / "subject-inventory-v2.json", limit=32 * 1024**2)
    # The executable is an already compiled research worker for this binding
    # canary only. The actual gate main below requires the Core CLI build receipt.
    private = Path("/var/tmp/behavior-ir-core036-v2/w001")
    cli = private / "native-builds/a0095/retained/transition036-reference"
    if not cli.is_file():
        raise ValueError("CanonicalCanaryActualExecutableMissing")
    with tempfile.TemporaryDirectory(
        dir=private / "tmp", prefix="quality-binding-"
    ) as d:
        root = Path(d)
        target = root / "target"
        base = dict(
            core=core,
            expected_manifest=manifest,
            script=core / "scripts/gates.sh",
            expected_script_sha256=digest(core / "scripts/gates.sh"),
            cli=cli,
            expected_cli_sha256=digest(cli),
            target=target,
            expected_target=target,
        )
        labels = verify_gate_binding_v2(**base)
        good = "\n".join(["gates: " + label for label in labels] + ["gates: OK"]) + "\n"
        receipt = dict(exit_code=0, stop_reason=None, tree_empty=True, group_empty=True)
        placeholder = root / "placeholder"
        write_once(placeholder, b"#!/bin/sh\nexit 0\n")
        placeholder.chmod(0o755)
        wrong = root / "wrong.sh"
        write_once(wrong, b"#!/bin/sh\nexit 0\n")
        empty = {**manifest, "indexed_files": []}
        cases = {
            "wrong_script": dict(script=wrong),
            "placeholder_cli": dict(
                cli=placeholder, expected_cli_sha256=digest(placeholder)
            ),
            "empty_index": dict(expected_manifest=empty),
            "partial_run": dict(
                receipt=receipt, stderr=good.replace("gates: cargo test\n", "")
            ),
            "wrong_target": dict(target=root / "wrong-target"),
            "unclosed_descendant": dict(
                receipt={**receipt, "tree_empty": False}, stderr=good
            ),
        }
        rejected = []
        for name, mutation in cases.items():
            try:
                verify_gate_binding_v2(**{**base, **mutation})
            except ValueError:
                rejected.append(name)
            else:
                raise ValueError("CanonicalCanaryUnexpectedAcceptance:" + name)
    return dict(
        actual_rejected_controls=rejected, full_canonical_gate_established=False
    )


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--declaration", required=True)
    parser.add_argument("--out", required=True)
    args = parser.parse_args()
    declaration = read(args.declaration)
    preparation = declaration["stage"] == "NATIVE" and declaration["slots"] == [
        "quality-runtime-prepare"
    ]
    if not preparation and (
        declaration["stage"] != "Q" or declaration["slots"] != ["canonical-quality"]
    ):
        raise ValueError("CanonicalDeclaredStage")
    private = Path(declaration["profile"]["roots"]["cache"])
    from controller_v2 import artifact_context_for

    refs, _store = artifact_context_for(declaration["work_id"])
    prepared = check_prepared_native_v2(E / "toolchain-v2.json")
    config = read(E / "quality-inputs-v2.json")
    base_fields = {"format", "cli_result_ref", "cli_checkpoint_ref"}
    warm_fields = {
        "warm_cache_checkpoint_ref",
        "warm_cache_before_ref",
        "warm_cache_job_ref",
        "warm_cache_receipt_ref",
        "warm_cache_result_ref",
        "warm_cache_runtime_ref",
        "warm_cache_preservation_ref",
        "warm_cache_inventory_ref",
        "warm_cache_stdout_ref",
        "warm_cache_stderr_ref",
    }
    optional = warm_fields | {"runtime_fixture_inputs", "prepared_build"}
    if (
        not base_fields <= set(config)
        or set(config) - base_fields - optional
        or bool(set(config) & warm_fields) != (warm_fields <= set(config))
        or config["format"] != "core036.quality-inputs.v6"
    ):
        raise ValueError("CanonicalInputContract")
    cp_path = refs.verify(config["cli_checkpoint_ref"])
    RootRegistry({"attempt": cp_path.parent}).verify_closed("attempt")
    cp = refs.read(config["cli_checkpoint_ref"])
    build_path = refs.verify(config["cli_result_ref"])
    build = refs.read(config["cli_result_ref"])
    core = Path(prepared["sources"]["core-reuse"]["path"])
    runtime_binding = config.get("runtime_fixture_inputs")
    runtime_spec = expected_runtime_inputs()
    validate_gate_runtime_inputs_v2(
        runtime_binding, registry=refs, prepared=prepared, expected_spec=runtime_spec
    )
    if (
        cp["stage_outcome"] != "succeeded"
        or build_path.parent.name != cp["attempt_id"]
        or build["command"]["exit_code"] != 0
        or Path(build["compiled_core"]) != core
        or build["source_export_sha256"] != digest(core / "source-export.json")
        or build["core_lock_sha256"] != digest(core / "Cargo.lock")
    ):
        raise ValueError("CanonicalActualCliSource")
    cli = refs.verify(build["executable_ref"])
    out = Path(args.out)
    output_role = "quality-runtime-prepare" if preparation else "quality"
    if out != private / output_role / declaration["record_id"] or out.exists():
        raise ValueError("CanonicalOutputOwnership")
    manifest = read(core / "subject-inventory-v2.json", limit=32 * 1024**2)
    script = core / "scripts/gates.sh"
    warm = "warm_cache_checkpoint_ref" in config
    prepared_build = "prepared_build" in config
    if prepared_build and (warm or preparation):
        raise ValueError("CanonicalPreparedBuildConsumerOnly")
    retained_counts = None
    previous_capture = None
    cache_preservation = None
    if prepared_build:
        from quality_prepared_build_v2 import prepare_compiled_cache

        out.mkdir(parents=True)
        target, previous_capture, cache_preservation = prepare_compiled_cache(
            refs=refs,
            declaration=declaration,
            core=core,
            cli=cli,
            out=out,
            config=config,
        )
    elif warm:
        from quality_warm_cache_v3 import prepare_warm_cache

        out.mkdir(parents=True)
        target, previous_capture, cache_preservation = prepare_warm_cache(
            refs=refs,
            checkpoint_ref=config["warm_cache_checkpoint_ref"],
            declaration=declaration,
            core=core,
            cli=cli,
            out=out,
            config=config,
        )
    else:
        target = (
            private / "disposable" / ("gate-" + declaration["record_id"]) / "target"
        )
        if target.exists():
            raise ValueError("CanonicalTargetMustStartEmpty")
        out.mkdir(parents=True)
        target.mkdir(parents=True)
    binding = dict(
        core=core,
        expected_manifest=manifest,
        script=script,
        expected_script_sha256=digest(script),
        cli=cli,
        expected_cli_sha256=digest(cli),
        target=target,
        expected_target=target,
    )
    labels = verify_gate_binding_v2(**binding)
    tools = dict(prepared["tools"])
    shell = read(E / "toolchain.json")["tools"]["nix-shell"]
    if digest(shell["path"]) != shell["sha256"]:
        raise ValueError("PinnedNixShellBytes")
    tools["nix-shell"] = shell
    argv, environment = prepare_launch(
        declaration=declaration,
        registry=refs,
        out=out,
        core=core,
        target=target,
        cli=cli,
        mode="build-prepare" if preparation else "gate",
        previous_capture=previous_capture,
    )
    with (
        (out / "stdout.txt").open("xb") as stdout,
        (out / "stderr.txt").open("xb") as stderr,
    ):
        child = subprocess.run(
            argv, cwd=core, env=environment, stdout=stdout, stderr=stderr, check=False
        )
    sources.verify_subject_v2(core, manifest)
    validate_gate_runtime_inputs_v2(
        runtime_binding, registry=refs, prepared=prepared, expected_spec=runtime_spec
    )
    verify_gate_binding_v2(**binding)
    complete = False
    runtime_result = None
    preparation_inventory_ref = None
    if child.returncode == 0:
        runtime_result = read(out / "runtime/result.json")
        before = read_capture(out / "runtime/before.json", runtime_result["before"])
        after = read_capture(out / "runtime/after.json", runtime_result["after"])
        validate_capture_pair(before, after)
        if preparation:
            if (
                runtime_result["mode"] != "build-prepare"
                or runtime_result["gate_exit"] is not None
                or type(runtime_result.get("preparation_exit")) is not int
                or runtime_result["preparation_exit"] != 0
            ):
                raise ValueError("CanonicalActualBuildPreparationRequired")
            validate_compile_preparation(
                read(out / "runtime/compile-preparation.json"),
                read(out / "runtime-job.json"),
                before["tools"]["cargo"]["invocation"],
            )
            from native_partial_cache_retention_v2 import complete_inventory

            inventory = complete_inventory(
                target, maximum_bytes=4 * 1024**3, domain="closed-quality-cache"
            )
            if not inventory["files"]:
                raise ValueError("CanonicalPreparationProducedNoCache")
            inventory_path = out / "prepared-cache-inventory.json"
            write_once(inventory_path, inventory)
            preparation_inventory_ref = refs.reference(
                "private", str(inventory_path.relative_to(private))
            )
    if child.returncode == 0 and not preparation:
        if runtime_result["mode"] != "gate" or runtime_result["gate_exit"] != 0:
            raise ValueError("CanonicalRuntimeDidNotRunGate")
        parse_full_gate_log_v2((out / "stderr.txt").read_text(), expected_labels=labels)
        complete = True
    write_once(
        out / "result.json",
        dict(
            format="core036.canonical-result.v2",
            source_subject_ref=declaration["source_subject_ref"],
            cli_result_ref=config["cli_result_ref"],
            cli_sha256=digest(cli),
            source_inventory_sha256=digest(core / "subject-inventory-v2.json"),
            script_sha256=digest(script),
            argv=argv,
            exit_code=child.returncode,
            stdout_sha256=digest(out / "stdout.txt"),
            stderr_sha256=digest(out / "stderr.txt"),
            whole_gate_terminal_ok=complete,
            controller_closure="pending_outer_resource_receipt",
            target=str(target),
            target_started_empty=not (warm or prepared_build),
            compiler_cache_reused=warm or prepared_build,
            prepared_build_inputs=config.get("prepared_build"),
            warm_cache_checkpoint_ref=config.get("warm_cache_checkpoint_ref"),
            warm_cache_result_ref=config.get("warm_cache_result_ref"),
            retained_cache_executable_counts=retained_counts,
            complete_cache_preservation=cache_preservation,
            prior_cache_retention_ref=config.get("warm_cache_retention_ref"),
            runtime_fixture_inputs=runtime_binding,
            evaluated_runtime_result=runtime_result,
            runtime_preparation_only=preparation,
            prepared_cache_inventory_ref=preparation_inventory_ref,
            source_inventory_scope="Unchanged indexed1637-file source; separately bound original runtime fixture supplement is verified before and after the whole gate.",
            requested_test_build_profile={
                "opt_level": 2,
                "debug": 0,
                "debug_assertions": True,
                "overflow_checks": True,
            },
            python_user_site_enabled=False,
            native_correspondence="unestablished",
            product_adoption="unactivated",
        ),
    )
    return 0 if complete or (preparation and child.returncode == 0) else 1


if __name__ == "__main__":
    raise SystemExit(main())
