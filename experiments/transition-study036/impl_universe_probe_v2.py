"""Source-bound diagnostic of impl_def universe inference, never a native proof."""

import os
from pathlib import Path
import resource
import subprocess

from artifact_io import RootRegistry, digest, write_once
from native_option_slice_v2 import import_layout
from nonpos_lean_probe_v2 import dependency_library_paths


def run_impl_diagnostic(*, refs, config, generated, prefix, declaration, out):
    private = Path(declaration["profile"]["roots"]["cache"])
    selection = refs.read(config["impl_universe_diagnostic_ref"])
    baseline_keys = {
        "format",
        "parent_checkpoint_ref",
        "parent_result_ref",
        "compiled_entries",
        "link_layout",
        "control_refs",
    }
    if (
        set(selection)
        not in (
            baseline_keys,
            baseline_keys | {"support_binding_ref", "laws_ref", "audit_ref"},
        )
        or selection["format"] != "core036.impl-universe-diagnostic.v2"
    ):
        raise ValueError("ImplUniverseDiagnosticSelection")
    candidate = "support_binding_ref" in selection
    cp_path = refs.verify(selection["parent_checkpoint_ref"])
    RootRegistry({"attempt": cp_path.parent}).verify_closed("attempt")
    cp = refs.read(selection["parent_checkpoint_ref"])
    result_path = refs.verify(selection["parent_result_ref"])
    parent_result = refs.read(selection["parent_result_ref"])
    parent = private / "ground-lean-probe" / cp["attempt_id"]
    if (
        cp["outcome"]["operational"] != "closed"
        or cp["source_validation_error"] is not None
        or result_path != parent / "result.json"
        or parent_result["source_subject_ref"] != cp["source_subject_ref"]
        or parent_result["native_proof"] != "unestablished"
        or parent_result["generated_module_prefix"] != prefix
        or not parent_result["generated_type_and_function_bodies_unmodified"]
    ):
        raise ValueError("ImplUniverseDiagnosticParent")
    frozen = [
        row
        for row in refs.read(cp["source_subject_ref"])["files"]
        if row["logical_ref"]["path"]
        == "experiments/transition-study036/ground-lean-probe-inputs-v2.json"
    ]
    if len(frozen) != 1 or refs.read(frozen[0]["snapshot_ref"]) != {
        k: v for k, v in config.items() if k != "impl_universe_diagnostic_ref"
    }:
        raise ValueError("ImplUniverseDiagnosticExtractionChanged")
    type_source = parent / "project" / prefix / "Types.lean"
    if digest(type_source) != generated["Types.lean"][1]["sha256"] or not any(
        row["module"] == prefix + ".Types" and row["exit_code"] == 0
        for row in parent_result["commands"]
    ):
        raise ValueError("ImplUniverseDiagnosticNativeTypes")

    library = private / "analysis-backend-build/a0058/lean/.lake/build/lib/lean"
    layout = import_layout(parent / "compiled", library)
    entries = selection["compiled_entries"]
    if not isinstance(entries, list) or not 1 <= len(entries) <= 4096:
        raise ValueError("ImplUniverseDiagnosticImportBound")
    expected = dict(files=[], links=selection["link_layout"])
    for row in entries:
        expected["files"].append(
            dict(path=row["path"], source=str(refs.verify(row["artifact_ref"])))
        )
    if layout != expected:
        raise ValueError("ImplUniverseDiagnosticImportLayout")
    controls = selection["control_refs"]
    names = {"ImplPositive", "ImplInferred", "ImplHigherWrong", "ImplCycle"}
    if set(controls) != names:
        raise ValueError("ImplUniverseDiagnosticControlCoverage")
    if (
        refs.verify(controls["ImplPositive"])
        .read_text()
        .count(f"public import {prefix}.Types\n")
        != 1
    ):
        raise ValueError("ImplUniverseDiagnosticControlTypes")
    out.mkdir(parents=True)
    project, compiled, imports = (out / n for n in ("project", "compiled", "imports"))
    for folder in (project, compiled, imports):
        folder.mkdir()
    for row in expected["files"]:
        target = imports / row["path"]
        if target.is_absolute() and not target.is_relative_to(imports):
            raise ValueError("ImplUniverseDiagnosticImportPath")
        target.parent.mkdir(parents=True, exist_ok=True)
        os.link(row["source"], target)
    for name, reference in controls.items():
        source = refs.verify(reference).read_bytes()
        if candidate:
            if not source.startswith(b"module\n"):
                raise ValueError("ImplUniverseDiagnosticControlHeader")
            source = source.replace(
                b"module\n",
                b"module\npublic meta import ImplDefInferenceSupport\n",
                1,
            )
        write_once(project / (name + ".lean"), source)
    if candidate:
        from impl_universe_support_v2 import checked_support

        source = checked_support(refs, selection["support_binding_ref"])
        binding = refs.read(selection["support_binding_ref"])
        baseline = refs.read(binding["baseline_checkpoint_ref"])
        manifest = refs.read(baseline["source_subject_ref"])
        for reference in controls.values():
            frozen_controls = [
                row for row in manifest["files"] if row["logical_ref"] == reference
            ]
            if len(frozen_controls) != 1:
                raise ValueError("ImplUniverseDiagnosticChangedBaselineControl")
            refs.verify(frozen_controls[0]["snapshot_ref"])
        write_once(project / "ImplDefInferenceSupport.lean", source.read_bytes())
        for name, key in (
            ("ImplUniverseLaws", "laws_ref"),
            ("ImplUniverseAudit", "audit_ref"),
        ):
            write_once(
                project / (name + ".lean"), refs.verify(selection[key]).read_bytes()
            )
    analysis = refs.read(
        refs.reference("private", "analysis-lean-recheck/a0053/result.json")
    )
    sdk = Path(analysis["sdk"])
    backend = private / "analysis-backend-build/a0058/lean"
    env = {
        **os.environ,
        **analysis["environment"],
        "LEAN_PATH": os.pathsep.join(
            map(str, [compiled, imports, *dependency_library_paths(backend)])
        ),
        "LEAN_NUM_THREADS": "1",
        "LEAN_STACK_SIZE_KB": "131072",
        "MALLOC_ARENA_MAX": "2",
    }
    env.pop("LD_PRELOAD", None)
    limit = declaration["profile"]["limits"]["lean_address_space_bytes"]
    if limit != 8 * 1024**3:
        raise ValueError("ImplUniverseDiagnosticDeclaredAS")

    def constrain():
        resource.setrlimit(resource.RLIMIT_AS, (limit, limit))

    commands = []
    expected_codes = {
        **({"ImplDefInferenceSupport": 0} if candidate else {}),
        "ImplPositive": 0,
        "ImplInferred": 0 if candidate else 1,
        "ImplHigherWrong": 1,
        "ImplCycle": 1,
        **({"ImplUniverseLaws": 0, "ImplUniverseAudit": 0} if candidate else {}),
    }
    for name, expected_code in expected_codes.items():
        log = out / "commands" / name
        log.mkdir(parents=True)
        argv = [
            str(sdk / "bin/lean"),
            "-j1",
            "-s131072",
            "-M4096",
            "-DAeneas.customDoElab=false",
            "-R",
            str(project),
            "-o",
            str(compiled / (name + ".olean")),
            str(project / (name + ".lean")),
        ]
        with (
            (log / "stdout.txt").open("xb") as stdout,
            (log / "stderr.txt").open("xb") as stderr,
        ):
            result = subprocess.run(
                argv,
                cwd=backend,
                env=env,
                stdout=stdout,
                stderr=stderr,
                timeout=120,
                check=False,
                preexec_fn=constrain,
            )
        row = dict(
            module=name,
            argv=argv,
            exit_code=result.returncode,
            expected_exit_code=expected_code,
            stdout_sha256=digest(log / "stdout.txt"),
            stderr_sha256=digest(log / "stderr.txt"),
        )
        write_once(log / "result.json", row)
        commands.append(row)
        output = (log / "stdout.txt").read_text()
        if result.returncode != expected_code:
            raise ValueError("ImplUniverseDiagnosticUnexpectedExit:" + name)
        if expected_code == 1:
            marker = (
                "could not resolve recursive fields"
                if name == "ImplCycle"
                else "type mismatch"
            )
            if marker not in output.lower() or "unknown" in output.lower():
                raise ValueError("ImplUniverseDiagnosticNotExpectedRejection:" + name)
    audit = None
    if candidate:
        import json

        tag = "CORE036_IMPL_INFERENCE_AUDIT "
        reports = [
            json.loads(line[len(tag) :])
            for line in (out / "commands/ImplUniverseAudit/stdout.txt")
            .read_text()
            .splitlines()
            if line.startswith(tag)
        ]
        expected_roots = {
            "transition_study036.ImplUniverseControl.good_matches",
            "transition_study036.ImplUniverseControl.inferred_write",
            "transition_study036.ImplUniverseControl.polymorphic_write",
        }
        if (
            len(reports) != 1
            or len(reports[0]) != 3
            or {row["declaration"] for row in reports[0]} != expected_roots
            or any(not row["type_repr"] for row in reports[0])
        ):
            raise ValueError("ImplUniverseDiagnosticMissingAudit")
        audit = reports[0]
        log = out / "commands/fresh-kernel"
        log.mkdir(parents=True)
        argv = [str(sdk / "bin/leanchecker"), "--fresh", "ImplUniverseAudit"]
        with (
            (log / "stdout.txt").open("xb") as stdout,
            (log / "stderr.txt").open("xb") as stderr,
        ):
            result = subprocess.run(
                argv,
                cwd=backend,
                env=env,
                stdout=stdout,
                stderr=stderr,
                timeout=1800,
                check=False,
                preexec_fn=constrain,
            )
        row = dict(
            module="fresh-kernel",
            argv=argv,
            exit_code=result.returncode,
            expected_exit_code=0,
            stdout_sha256=digest(log / "stdout.txt"),
            stderr_sha256=digest(log / "stderr.txt"),
        )
        write_once(log / "result.json", row)
        commands.append(row)
        if result.returncode != 0:
            raise ValueError("ImplUniverseDiagnosticFreshKernel")
    for row in entries:
        refs.verify(row["artifact_ref"])
    for reference in controls.values():
        refs.verify(reference)
    if candidate:
        checked_support(refs, selection["support_binding_ref"])
        refs.verify(selection["laws_ref"])
        refs.verify(selection["audit_ref"])
    if import_layout(parent / "compiled", library) != expected:
        raise ValueError("ImplUniverseDiagnosticImportsChangedAfter")
    write_once(
        out / "result.json",
        dict(
            format="core036.impl-universe-diagnostic-result.v2",
            source_subject_ref=declaration["source_subject_ref"],
            parent_checkpoint_ref=selection["parent_checkpoint_ref"],
            parent_result_ref=selection["parent_result_ref"],
            extraction_result_ref=config["extraction_result_ref"],
            commands=commands,
            observed_baseline_universe_failure=not candidate,
            support_binding_ref=selection.get("support_binding_ref"),
            selected_model_theorem_audit=audit,
            scope="Reduced inference control over exact native Write/Counted types; no native method replacement, no generated body edit; imported models unproved.",
            fresh_kernel="passed" if candidate else "not_run_baseline_error_diagnostic",
            native_proof="unestablished",
            feature_complete=False,
        ),
    )
    return 0
