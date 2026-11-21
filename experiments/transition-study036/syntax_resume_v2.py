"""Resume syntax/Funs checking from closed, unchanged successful imports."""

import json
import os
from pathlib import Path
import resource

from artifact_io import RootRegistry, digest, write_once
from lean_command_v2 import run_logged_command
from native_option_slice_v2 import import_layout
from nonpos_lean_probe_v2 import dependency_library_paths

PRE_MODULES = (
    "ArrayLiteralProofs",
    "ArrayLiteralAudit",
    "DoElaboration",
    "RuntimeNames",
    "NonPosForwardProjection",
    "ImplDefInferenceSupport",
    "TypesExternal",
    "Types",
    "FunsExternal",
)


def validate_parent(cp, result, config, frozen_config, prefix):
    expected = {prefix + "." + name: 0 for name in PRE_MODULES}
    expected[prefix + ".NativeSyntaxControl"] = 1
    rows = result.get("commands", [])
    if (
        cp.get("stage_outcome") != "failed"
        or "source_validation_error" not in cp
        or cp["source_validation_error"] is not None
        or cp.get("outcome", {}).get("operational") != "closed"
        or result.get("format") != "core036.ground-lean-probe-result.v2"
        or result.get("source_subject_ref") != cp.get("source_subject_ref")
        or result.get("native_proof") != "unestablished"
        or result.get("feature_complete") is not False
        or result.get("generated_module_prefix") != prefix
        or result.get("generated_type_and_function_bodies_unmodified") is not True
        or config != frozen_config
        or len(rows) != len(expected)
        or {row.get("module") for row in rows} != set(expected)
        or any(
            type(row.get("exit_code")) is not int
            or row["exit_code"] != expected[row["module"]]
            for row in rows
        )
    ):
        raise ValueError("SyntaxResumeParentCoverageOrSubject")


def run_syntax_resume(*, refs, config, generated, prefix, declaration, out):
    private = Path(declaration["profile"]["roots"]["cache"])
    selection = refs.read(config["syntax_resume_ref"])
    if (
        set(selection)
        != {
            "format",
            "parent_checkpoint_ref",
            "parent_result_ref",
            "compiled_entries",
            "link_layout",
            "control_refs",
        }
        or selection["format"] != "core036.syntax-resume.v2"
    ):
        raise ValueError("SyntaxResumeSelection")
    cp_path = refs.verify(selection["parent_checkpoint_ref"])
    RootRegistry({"attempt": cp_path.parent}).verify_closed("attempt")
    cp = refs.read(selection["parent_checkpoint_ref"])
    result_path = refs.verify(selection["parent_result_ref"])
    parent_result = refs.read(selection["parent_result_ref"])
    parent = private / "ground-lean-probe" / cp["attempt_id"]
    if result_path != parent / "result.json":
        raise ValueError("SyntaxResumeParentPath")
    manifests = [
        row
        for row in refs.read(cp["source_subject_ref"])["files"]
        if row["logical_ref"]["path"]
        == "experiments/transition-study036/ground-lean-probe-inputs-v2.json"
    ]
    if len(manifests) != 1:
        raise ValueError("SyntaxResumeFrozenConfig")
    frozen_config = refs.read(manifests[0]["snapshot_ref"])
    ignored = {"syntax_resume_ref", "dictionary_diagnostic_ref", "value_diagnostic_ref"}
    value_mode = "value_diagnostic_ref" in config
    if value_mode:
        value_selection = refs.read(config["value_diagnostic_ref"])
        if (
            value_selection["baseline_result_ref"]
            != frozen_config["extraction_result_ref"]
            or value_selection["baseline_checkpoint_ref"]
            != frozen_config["extraction_checkpoint_ref"]
        ):
            raise ValueError("NativeValueParentProducer")
        # Only model imports are reused. New Funs is selected independently;
        # the component runner checks all three unchanged producer templates.
        ignored |= {"extraction_result_ref", "extraction_checkpoint_ref"}
    validate_parent(
        cp,
        parent_result,
        {key: value for key, value in config.items() if key not in ignored},
        {key: value for key, value in frozen_config.items() if key not in ignored},
        prefix,
    )
    for name in ("Types.lean",) if value_mode else ("Types.lean", "Funs.lean"):
        if digest(parent / "project" / prefix / name) != generated[name][1]["sha256"]:
            raise ValueError("SyntaxResumeChangedGeneratedSource")
    library = private / "analysis-backend-build/a0058/lean/.lake/build/lib/lean"
    layout = import_layout(parent / "compiled", library)
    entries = selection["compiled_entries"]
    if not isinstance(entries, list) or not 1 <= len(entries) <= 4096:
        raise ValueError("SyntaxResumeImportBound")
    expected = dict(
        files=[
            dict(path=row["path"], source=str(refs.verify(row["artifact_ref"])))
            for row in entries
        ],
        links=selection["link_layout"],
    )
    if layout != expected:
        raise ValueError("SyntaxResumeImportLayout")
    controls = selection["control_refs"]
    if set(controls) != {"ArrayLiteralControl", "ArrayLiteralWrongLength"}:
        raise ValueError("SyntaxResumeControlCoverage")
    for name, reference in controls.items():
        if refs.verify(reference) != parent / "project" / prefix / (name + ".lean"):
            raise ValueError("SyntaxResumeControlPath")
    out.mkdir(parents=True)
    project, compiled, imports = (
        out / name for name in ("project", "compiled", "imports")
    )
    folder = project / prefix
    folder.mkdir(parents=True)
    (compiled / prefix).mkdir(parents=True)
    imports.mkdir()
    written_modules = {
        "NativeSyntaxControl",
        "ArrayLiteralControl",
        "ArrayLiteralWrongLength",
        "Funs",
    }
    for row in expected["files"]:
        if Path(row["path"]).is_absolute() or ".." in Path(row["path"]).parts:
            raise ValueError("SyntaxResumeImportPath")
        local_module = row["path"].startswith(prefix + "/")
        if local_module and Path(row["path"]).name.split(".")[0] in written_modules:
            continue
        # Lean resolves a namespace in the first matching root. Keep imported
        # siblings beside new output, so the fresh namespace directory cannot
        # shadow Types in a later root. Never link files this run will write.
        target_root = compiled if local_module else imports
        target = target_root / row["path"]
        if not target.is_relative_to(target_root):
            raise ValueError("SyntaxResumeImportPath")
        target.parent.mkdir(parents=True, exist_ok=True)
        os.link(row["source"], target)
    for name in ("Types.lean", "Funs.lean"):
        write_once(folder / name, generated[name][0].read_bytes())
    for name, reference in controls.items():
        write_once(folder / (name + ".lean"), refs.verify(reference).read_bytes())
    template_path = (
        Path(__file__).parent
        / "proofs/Correspondence036/Dependencies/NativeSyntaxControl.lean"
    )
    template = template_path.read_text()
    if (
        template.count("CORE036_MODULE_PREFIX") != 2
        or template.count("CORE036_FUNS_PATH") != 1
    ):
        raise ValueError("SyntaxResumeTemplate")
    write_once(
        folder / "NativeSyntaxControl.lean",
        template.replace("CORE036_MODULE_PREFIX", prefix)
        .replace('"CORE036_FUNS_PATH"', json.dumps(str(folder / "Funs.lean")))
        .encode(),
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
        raise ValueError("SyntaxResumeDeclaredAS")

    def constrain():
        resource.setrlimit(resource.RLIMIT_AS, (limit, limit))

    if value_mode:
        from value_dictionary_probe_v2 import run_controls

        result = run_controls(
            refs=refs,
            reference=config["value_diagnostic_ref"],
            config=config,
            generated=generated,
            prefix=prefix,
            folder=folder,
            compiled=compiled,
            project=project,
            sdk=sdk,
            backend=backend,
            env=env,
            constrain=constrain,
            out=out,
        )
        for row in entries:
            refs.verify(row["artifact_ref"])
        if import_layout(parent / "compiled", library) != expected:
            raise ValueError("NativeValueParentChanged")
        for name in ("Types.lean", "Funs.lean"):
            if digest(folder / name) != generated[name][1]["sha256"]:
                raise ValueError("NativeValueEditedCompleteSource")
        for path, row in generated.values():
            if digest(path) != row["sha256"]:
                raise ValueError("NativeValueProducerChanged")
        write_once(
            out / "result.json",
            dict(
                format="core036.native-value-dictionary-result.v2",
                source_subject_ref=declaration["source_subject_ref"],
                selection_ref=config["value_diagnostic_ref"],
                parent_checkpoint_ref=selection["parent_checkpoint_ref"],
                parent_result_ref=selection["parent_result_ref"],
                complete_generated_files_unmodified=True,
                **result,
            ),
        )
        return 0 if result["all_control_outcomes_matched"] else 1

    if "dictionary_diagnostic_ref" in config:
        from recursive_dictionary_probe_v2 import run_controls

        result = run_controls(
            refs=refs,
            reference=config["dictionary_diagnostic_ref"],
            prefix=prefix,
            folder=folder,
            compiled=compiled,
            project=project,
            sdk=sdk,
            backend=backend,
            env=env,
            constrain=constrain,
            out=out,
        )
        for row in entries:
            refs.verify(row["artifact_ref"])
        if import_layout(parent / "compiled", library) != expected:
            raise ValueError("RecursiveDictionaryParentChanged")
        for name in ("Types.lean", "Funs.lean"):
            if digest(folder / name) != generated[name][1]["sha256"]:
                raise ValueError("RecursiveDictionaryEditedNativeBody")
        for path, row in generated.values():
            if digest(path) != row["sha256"]:
                raise ValueError("RecursiveDictionaryProducerChanged")
        write_once(
            out / "result.json",
            dict(
                format="core036.recursive-dictionary-control-result.v2",
                source_subject_ref=declaration["source_subject_ref"],
                selection_ref=config["dictionary_diagnostic_ref"],
                parent_checkpoint_ref=selection["parent_checkpoint_ref"],
                parent_result_ref=selection["parent_result_ref"],
                generated_type_and_function_bodies_unmodified=True,
                **result,
            ),
        )
        return 0 if result["all_control_outcomes_matched"] else 1

    commands = []
    syntax_audit = None
    negative_rejected = False
    for name, expected_code in (
        ("NativeSyntaxControl", 0),
        ("ArrayLiteralControl", 0),
        ("ArrayLiteralWrongLength", 1),
        ("Funs", 0),
    ):
        row = run_logged_command(
            out / "commands" / name,
            [
                str(sdk / "bin/lean"),
                "-j1",
                "-s131072",
                "-M4096",
                "-DAeneas.customDoElab=false",
                "-R",
                str(project),
                "-o",
                str(compiled / prefix / (name + ".olean")),
                str(folder / (name + ".lean")),
            ],
            cwd=backend,
            env=env,
            seconds=600,
            preexec_fn=constrain,
            metadata=dict(module=prefix + "." + name, expected_exit_code=expected_code),
        )
        commands.append(row)
        if row["exit_code"] != expected_code:
            break
        output = (out / "commands" / name / "stdout.txt").read_text()
        if name == "NativeSyntaxControl":
            tag = "CORE036_NATIVE_SYNTAX "
            reports = [
                json.loads(line[len(tag) :])
                for line in output.splitlines()
                if line.startswith(tag)
            ]
            if len(reports) != 1:
                raise ValueError("SyntaxResumeAuditCount")
            syntax_audit = reports[0]
            if (
                syntax_audit.get("source_utf8_bytes")
                != generated["Funs.lean"][1]["bytes"]
                or syntax_audit.get("wrong_quotes_rejected") is not True
                or type(syntax_audit.get("commands")) is not int
                or syntax_audit["commands"] < 1
            ):
                raise ValueError("SyntaxResumeAuditSource")
        if name == "ArrayLiteralWrongLength":
            negative_rejected = "error:" in output and "unknown module" not in output
            if not negative_rejected:
                raise ValueError("SyntaxResumeNotRealArrayRejection")
    for row in entries:
        refs.verify(row["artifact_ref"])
    if import_layout(parent / "compiled", library) != expected:
        raise ValueError("SyntaxResumeParentChanged")
    for name in ("Types.lean", "Funs.lean"):
        if digest(folder / name) != generated[name][1]["sha256"]:
            raise ValueError("SyntaxResumeEditedNativeBody")
    for path, row in generated.values():
        if digest(path) != row["sha256"]:
            raise ValueError("SyntaxResumeChangedProducerInput")
    passed = (
        len(commands) == 4
        and negative_rejected
        and syntax_audit is not None
        and all(row["exit_code"] == row["expected_exit_code"] for row in commands)
    )
    write_once(
        out / "result.json",
        dict(
            format="core036.resumed-ground-lean-probe-result.v2",
            source_subject_ref=declaration["source_subject_ref"],
            extraction_result_ref=config["extraction_result_ref"],
            parent_checkpoint_ref=selection["parent_checkpoint_ref"],
            parent_result_ref=selection["parent_result_ref"],
            import_selection_ref=config["syntax_resume_ref"],
            reused_parent_modules=list(PRE_MODULES),
            generated_module_prefix=prefix,
            commands=commands,
            native_syntax_audit=syntax_audit,
            array_literal_wrong_length_rejected=negative_rejected,
            all_generated_modules_typecheck=passed,
            generated_type_and_function_bodies_unmodified=True,
            scope="Current syntax/array/Funs commands with unchanged successful closed-parent imports; parent remains failed",
            native_proof="unestablished",
            feature_complete=False,
        ),
    )
    return 0 if passed else 1
