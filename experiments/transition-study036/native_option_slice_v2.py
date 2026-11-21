"""Bounded diagnostic of an unchanged actual generated Option serializer."""

import json
import os
import resource
import subprocess
import time
from pathlib import Path

from artifact_io import RootRegistry, digest, read, write_once

NAME = b"core.option.Option.Insts.Serde_coreSerSerialize.serialize"
ATTRIBUTE = (
    b'@[rust_fun\n  "serde_core::ser::impls::{serde_core::ser::Serialize'
    b'<core::option::Option<@T>>}::serialize"]\n'
)
NAMESPACE = b"namespace transition_study036\n"


def option_slice(source):
    declaration = b"def " + NAME + b"\n"
    command = b"nonpos_continuity " + NAME + b"\n"
    if (
        not isinstance(source, bytes)
        or len(source) > 8 * 1024**2
        or source.count(NAMESPACE) != 1
        or source.count(declaration) != 1
        or source.count(ATTRIBUTE) != 1
        or source.count(command) != 1
    ):
        raise ValueError("NativeOptionSliceBoundary")
    header_end = source.index(NAMESPACE)
    start, decl, end = map(source.index, (ATTRIBUTE, declaration, command))
    if not header_end < start or decl != start + len(ATTRIBUTE) or end <= decl:
        raise ValueError("NativeOptionSliceOrder")
    ranges = dict(
        header=(0, header_end),
        declaration=(start, end),
        continuity_command=(end, end + len(command)),
    )
    return {key: source[a:b] for key, (a, b) in ranges.items()} | {"ranges": ranges}


def import_layout(root, library):
    """Resolve explicit import aliases without relaxing artifact guards."""
    root, library = Path(root), Path(library)
    if root.is_symlink() or library.is_symlink():
        raise ValueError("NativeOptionImportRoot")
    roots = (root.resolve(strict=True), library.resolve(strict=True))
    files, links = [], []
    started = time.monotonic()
    count = total = 0

    def walk(path, relative, ancestors):
        nonlocal count, total
        count += 1
        if count > 8192 or time.monotonic() - started > 10:
            raise ValueError("NativeOptionImportLayoutBound")
        try:
            actual = path.resolve(strict=True)
        except (OSError, RuntimeError) as error:
            raise ValueError("NativeOptionImportResolution") from error
        if not any(actual == base or actual.is_relative_to(base) for base in roots):
            raise ValueError("NativeOptionImportUnregisteredTarget")
        if path.is_symlink():
            links.append(
                dict(
                    path=relative,
                    target=os.readlink(path),
                    kind="directory" if actual.is_dir() else "file",
                )
            )
        if actual.is_dir():
            if actual in ancestors:
                raise ValueError("NativeOptionImportCycle")
            for child in sorted(path.iterdir()):
                walk(child, str(Path(relative) / child.name), ancestors | {actual})
        elif actual.is_file():
            total += actual.stat().st_size
            if len(files) >= 4096 or total > 256 * 1024**2:
                raise ValueError("NativeOptionImportFileBound")
            files.append(dict(path=relative, source=str(actual)))
        else:
            raise ValueError("NativeOptionImportKind")

    for child in sorted(root.iterdir()):
        walk(child, child.name, {roots[0]})
    return dict(files=files, links=links)


BINDERS = "T S Ok Error Seq Tuple TupleStruct TupleVariant Map Struct StructVariant"
SERIALIZER = "serde_core.ser.Serializer S Ok Error Seq Tuple TupleStruct TupleVariant Map Struct StructVariant"


def run_option_diagnostic(*, refs, config, generated, prefix, declaration, out):
    """Import only closed, hash-bound support; never treat axioms as Core proof."""
    E = Path(__file__).resolve().parent
    R = E.parents[1]
    private = Path(declaration["profile"]["roots"]["cache"])
    work = (
        R / "specs/036-core-transition-feasibility/evidence/v2" / declaration["work_id"]
    )
    selection = refs.read(config["option_diagnostic_ref"])
    if (
        set(selection)
        != {
            "format",
            "parent_checkpoint_ref",
            "compiled_entries",
            "link_layout",
            "support_source_refs",
        }
        or selection["format"] != "core036.native-option-diagnostic-imports.v2"
    ):
        raise ValueError("NativeOptionDiagnosticContext")
    cp_path = refs.verify(selection["parent_checkpoint_ref"])
    if cp_path != work / "attempts/a0332/checkpoint.json":
        raise ValueError("NativeOptionDiagnosticParent")
    RootRegistry({"attempt": cp_path.parent}).verify_closed("attempt")
    cp = refs.read(selection["parent_checkpoint_ref"])
    if (
        cp["source_validation_error"] is not None
        or cp["outcome"]["operational"] != "closed"
    ):
        raise ValueError("NativeOptionDiagnosticClosure")
    subject = refs.read(cp["source_subject_ref"])
    frozen = [
        row
        for row in subject["files"]
        if row["logical_ref"]["path"]
        == "experiments/transition-study036/ground-lean-probe-inputs-v2.json"
    ]
    if len(frozen) != 1 or refs.read(frozen[0]["snapshot_ref"]) != {
        k: v for k, v in config.items() if k != "option_diagnostic_ref"
    }:
        raise ValueError("NativeOptionDiagnosticExtractionChanged")
    parent = private / "ground-lean-probe/a0332"
    support = parent / "compiled"
    library = private / "analysis-backend-build/a0058/lean/.lake/build/lib/lean"
    layout = import_layout(support, library)
    entries = selection["compiled_entries"]
    if not isinstance(entries, list) or not 1 <= len(entries) <= 4096:
        raise ValueError("NativeOptionDiagnosticCompiledBound")
    expected = dict(files=[], links=selection["link_layout"])
    compiled_refs = []
    for entry in entries:
        if not isinstance(entry, dict) or set(entry) != {"path", "artifact_ref"}:
            raise ValueError("NativeOptionDiagnosticImportEntry")
        path = refs.verify(entry["artifact_ref"])
        compiled_refs.append(entry["artifact_ref"])
        expected["files"].append(dict(path=entry["path"], source=str(path)))
    if layout != expected:
        raise ValueError("NativeOptionDiagnosticImportLayoutChanged")
    source_refs = selection["support_source_refs"]
    wanted_sources = {
        parent / "project" / prefix / name
        for name in ("Types.lean", "FunsExternal.lean")
    }
    if (
        not isinstance(source_refs, list)
        or {refs.verify(x) for x in source_refs} != wanted_sources
    ):
        raise ValueError("NativeOptionDiagnosticSourceCoverage")
    for name, original in (
        ("Types.lean", "Types.lean"),
        ("FunsExternal.lean", "FunsExternal_Template.lean"),
    ):
        path = parent / "project" / prefix / name
        if path.read_bytes() != generated[original][0].read_bytes():
            raise ValueError("NativeOptionDiagnosticSupportSourceChanged")
        checked = read(parent / "commands" / name.removesuffix(".lean") / "result.json")
        if checked["exit_code"] != 0:
            raise ValueError("NativeOptionDiagnosticSupportNotChecked")
    original = generated["Funs.lean"][0]
    source_hash = digest(original)
    sliced = option_slice(original.read_bytes())
    out.mkdir(parents=True)
    project, compiled = out / "project", out / "compiled"
    project.mkdir()
    compiled.mkdir()
    imports = out / "imports"
    imports.mkdir()
    for entry in entries:
        source = refs.verify(entry["artifact_ref"])
        destination = imports / entry["path"]
        destination.parent.mkdir(parents=True, exist_ok=True)
        # Registered private library outputs are immutable inputs. A new
        # ordinary hard link preserves their bytes without another full copy;
        # compilation writes only to the separate fresh compiled directory.
        os.link(source, destination)
        if (
            destination.is_symlink()
            or digest(destination) != entry["artifact_ref"]["sha256"]
        ):
            raise ValueError("NativeOptionDiagnosticCopiedImportChanged")
    write_once(
        project / "NativeOption.lean",
        sliced["header"]
        + NAMESPACE
        + sliced["declaration"]
        + b"\nend transition_study036\n",
    )
    support_source = (
        E / "proofs/Correspondence036/Dependencies/NonPosForwardProjection.lean"
    )
    write_once(project / "ForwardProjectionSupport.lean", support_source.read_bytes())
    proof_header = """module
public import NativeOption
public meta import ForwardProjectionSupport
@[expose] public section
open Aeneas Aeneas.Std Result ControlFlow Error
set_option maxHeartbeats 1000000
set_option maxRecDepth 8192
noncomputable section
namespace transition_study036
"""
    write_once(
        project / "OptionContinuity.lean",
        (
            proof_header
            + sliced["continuity_command"].decode()
            + f"""
theorem option_element_cont
  {{{BINDERS} : Type}} :
  NonPos.Cont (@core.option.Option.Insts.Serde_coreSerSerialize.serialize
    {BINDERS}) := by
  trace_state
  nonpos_cont 5000
end transition_study036
"""
        ).encode(),
    )
    write_once(
        project / "Projection.lean",
        (
            proof_header
            + f"""
theorem projection_cont {{{BINDERS} : Type}}
    (s : {SERIALIZER}) :
    NonPos.Cont (fun d : serde_core.ser.Serialize T => s.serialize_some d) := by
  have h := NonPos.Fix.cond _ s
  nonpos_cond_simp at h
  exact h.1 T
end transition_study036
"""
        ).encode(),
    )
    logic_header = (
        "module\nimport Lean\n@[expose] public section\nopen Lean Elab Tactic\n"
    )
    logic_goal = "theorem logic_forward (P : Type → Prop) (Q : Prop) (h : (∀ t, P t) ∧ Q) (T : Type) : P T := by\n"
    for label, body in (
        ("LogicBackward", "  solve_by_elim [And.left, And.right]\n"),
        ("LogicForward", "  exact h.1 T\n"),
    ):
        write_once(
            project / (label + ".lean"), (logic_header + logic_goal + body).encode()
        )
    write_once(
        project / "WrongGoal.lean",
        (
            proof_header
            + """
example (P : Type → Prop) (Q : Prop) (h : (∀ t, P t) ∧ Q) : False := by
  nonpos_forward_conditions h
  solve_by_elim
end transition_study036
"""
        ).encode(),
    )
    write_once(
        project / "OpaqueValue.lean",
        (
            proof_header
            + """
example {S Ok Error Seq Tuple TupleStruct TupleVariant Map Struct StructVariant : Type} :
    NonPos.Cont (@serde_json.value.Value.Insts.Serde_coreSerSerialize.serialize
      S Ok Error Seq Tuple TupleStruct TupleVariant Map Struct StructVariant) := by
  nonpos_cont 5000
end transition_study036
"""
        ).encode(),
    )
    audit_source = (
        E / "proofs/Correspondence036/Dependencies/OptionProjectionAudit.lean"
    )
    write_once(project / "Audit.lean", audit_source.read_bytes())
    analysis = read(private / "analysis-lean-recheck/a0053/result.json")
    sdk = Path(analysis["sdk"])
    from nonpos_lean_probe_v2 import dependency_library_paths

    dependencies = dependency_library_paths(
        private / "analysis-backend-build/a0058/lean"
    )
    env = {
        **os.environ,
        **analysis["environment"],
        "LEAN_PATH": os.pathsep.join(map(str, [compiled, imports, *dependencies])),
        "LEAN_NUM_THREADS": "1",
        "LEAN_STACK_SIZE_KB": "131072",
        "MALLOC_ARENA_MAX": "2",
    }
    env.pop("LD_PRELOAD", None)
    limit = declaration["profile"]["limits"]["lean_address_space_bytes"]
    if limit != 8 * 1024**3:
        raise ValueError("NativeOptionDiagnosticDeclaredAnalysisAS")

    def constrain():
        resource.setrlimit(resource.RLIMIT_AS, (limit, limit))

    commands = []
    for module in (
        "NativeOption",
        "ForwardProjectionSupport",
        "OptionContinuity",
        "LogicBackward",
        "LogicForward",
        "Projection",
        "WrongGoal",
        "OpaqueValue",
        "Audit",
    ):
        log = out / "commands" / module
        log.mkdir(parents=True)
        argv = [
            str(sdk / "bin/lean"),
            "-j1",
            "-s131072",
            "-M4096",
            *([] if module.startswith("Logic") else ["-DAeneas.customDoElab=false"]),
            "-R",
            str(project),
            "-o",
            str(compiled / (module + ".olean")),
            str(project / (module + ".lean")),
        ]
        with (
            (log / "stdout.txt").open("xb") as stdout,
            (log / "stderr.txt").open("xb") as stderr,
        ):
            child = subprocess.run(
                argv,
                cwd=private / "analysis-backend-build/a0058/lean",
                env=env,
                stdout=stdout,
                stderr=stderr,
                timeout=120,
                check=False,
                preexec_fn=constrain,
            )
        row = dict(
            module=module,
            argv=argv,
            exit_code=child.returncode,
            stdout_sha256=digest(log / "stdout.txt"),
            stderr_sha256=digest(log / "stderr.txt"),
        )
        write_once(log / "result.json", row)
        commands.append(row)
        if (
            module in {"NativeOption", "ForwardProjectionSupport"}
            and child.returncode != 0
        ):
            raise ValueError(
                "NativeOptionDiagnosticDefinitionDidNotTypecheck:" + module
            )
    expected_codes = {
        "NativeOption": 0,
        "ForwardProjectionSupport": 0,
        "OptionContinuity": 0,
        "LogicBackward": 1,
        "LogicForward": 0,
        "Projection": 0,
        "WrongGoal": 1,
        "OpaqueValue": 1,
        "Audit": 0,
    }
    if {row["module"]: row["exit_code"] for row in commands} != expected_codes:
        raise ValueError("NativeOptionDiagnosticControlsUnmet")
    reports = [
        json.loads(line.removeprefix("CORE036_OPTION_AUDIT "))
        for line in (out / "commands/Audit/stdout.txt").read_text().splitlines()
        if line.startswith("CORE036_OPTION_AUDIT ")
    ]
    if len(reports) != 1 or len(reports[0]) != 3:
        raise ValueError("NativeOptionDiagnosticAuditOutput")
    log = out / "commands/fresh-kernel"
    log.mkdir(parents=True)
    argv = [str(sdk / "bin/leanchecker"), "--fresh", "Audit"]
    with (
        (log / "stdout.txt").open("xb") as stdout,
        (log / "stderr.txt").open("xb") as stderr,
    ):
        child = subprocess.run(
            argv,
            cwd=private / "analysis-backend-build/a0058/lean",
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
        exit_code=child.returncode,
        stdout_sha256=digest(log / "stdout.txt"),
        stderr_sha256=digest(log / "stderr.txt"),
    )
    commands.append(row)
    write_once(log / "result.json", row)
    if child.returncode != 0:
        raise ValueError("NativeOptionDiagnosticFreshKernel")
    for reference in [*compiled_refs, *source_refs]:
        refs.verify(reference)
    if import_layout(support, library) != expected:
        raise ValueError("NativeOptionDiagnosticImportLayoutChangedAfter")
    if digest(original) != source_hash:
        raise ValueError("NativeOptionDiagnosticGeneratedSourceChanged")
    write_once(
        out / "result.json",
        dict(
            format="core036.native-option-diagnostic-result.v2",
            source_subject_ref=declaration["source_subject_ref"],
            extraction_result_ref=config["extraction_result_ref"],
            parent_checkpoint_ref=selection["parent_checkpoint_ref"],
            generated_source_sha256=source_hash,
            exact_byte_ranges=sliced["ranges"],
            commands=commands,
            selected_model_theorem_audit=reports[0],
            audit_scope="Selected continuity facts under the exact diagnostic external type parameters; no actual native dependency adequacy or Core bridge is established.",
            expected_automation_failure_observed=next(
                row["exit_code"]
                for row in commands
                if row["module"] == "OptionContinuity"
            )
            != 0,
            scope="Unchanged actual generated Option body and continuity/projection goals only; imported external types/functions remain diagnostic and unproved.",
            native_proof="unestablished",
            feature_complete=False,
        ),
    )
    return 0
