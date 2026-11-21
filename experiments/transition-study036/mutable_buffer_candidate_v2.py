"""Actual buffer IR, separate defined Error candidate, and cross-compiler controls."""

import os
from pathlib import Path
import re

from artifact_io import RootRegistry, digest, read, write_once
from check_proofs import check_declared_proof_v2
from lean_command_v2 import run_logged_command
from mutable_buffer_source_v2 import checked_sources


def run_probe(refs, reference, declaration, out):
    selection = refs.read(reference)
    required = {
        "format",
        "tools_ref",
        "native_tools_ref",
        "reproduction_checkpoint_ref",
        "reproduction_ref",
        "ir_ref",
        "candidate_checkpoint_ref",
        "candidate_ref",
        "source_ref",
        "model_ref",
        "harness_ref",
        "regressions",
    }
    private = refs.roots["private"]
    if (
        set(selection) not in (required, required | {"never_return_source_ref"})
        or selection["format"] != "core036.mutable-buffer-candidate.v2"
        or out != private / "ground-lean-probe" / declaration["record_id"]
        or out.exists()
    ):
        raise ValueError("MutableBufferCandidateSelection")
    never_mode = "never_return_source_ref" in selection
    cps = {}
    for role, attempt, folder in [
        ("reproduction", "a0401", "ground-lean-probe"),
        ("candidate", "a0417" if never_mode else "a0406", "nonpos-translator"),
    ]:
        path = refs.verify(selection[role + "_checkpoint_ref"])
        RootRegistry({"attempt": path.parent}).verify_closed("attempt")
        cp = refs.read(selection[role + "_checkpoint_ref"])
        key = role + "_ref"
        if (
            cp["attempt_id"] != attempt
            or cp["stage_outcome"] != "succeeded"
            or cp["source_validation_error"] is not None
            or refs.verify(selection[key]) != private / folder / attempt / "result.json"
        ):
            raise ValueError("MutableBufferCandidateClosedDependency")
        row = refs.read(selection[key])
        if row["source_subject_ref"] != cp["source_subject_ref"]:
            raise ValueError("MutableBufferCandidateDependencySource")
        cps[role] = cp
    old, candidate = (
        refs.read(selection["reproduction_ref"]),
        refs.read(selection["candidate_ref"]),
    )
    if (
        old["status"] != "reproduced_old_source_failure"
        or old["source_alias_control"] != "rejected_E0506"
        or old["witness"]["sibling_profile"] != "distinct_Move_Local_shared_u8_slice"
        or candidate["new_translator_compiled"] is not True
        or candidate["compiled_sources_match_declared_repair"] is not True
        or candidate["mutable_buffer_binding_ref"] != selection["source_ref"]
        or digest(candidate["executable"]) != candidate["executable_sha256"]
    ):
        raise ValueError("MutableBufferCandidateActualRedOrBuild")
    checked_sources(refs, selection["source_ref"], require_parse=True)
    if never_mode:
        from never_return_source_v2 import checked_sources as checked_never_sources

        checked_never_sources(
            refs, selection["never_return_source_ref"], require_parse=True
        )
        if (
            candidate.get("never_return_binding_ref")
            != selection["never_return_source_ref"]
        ):
            raise ValueError("MutableBufferCandidateDifferentNeverRepair")
    llbc = refs.verify(selection["ir_ref"])
    if (
        llbc != private / "ground-lean-probe/a0401/mutable_buffer.llbc"
        or digest(llbc) != old["input_sha256"]
    ):
        raise ValueError("MutableBufferCandidateChangedIR")
    repro = refs.read(old["selection_ref"])
    dependency_source = refs.verify(repro["dependency_ref"])
    if digest(dependency_source) != old["source_sha256"]["dependency.rs"]:
        raise ValueError("MutableBufferCandidateChangedRust")
    model, harness = (
        refs.verify(selection["model_ref"]),
        refs.verify(selection["harness_ref"]),
    )
    frozen_source = {
        path: digest(path) for path in (llbc, dependency_source, model, harness)
    }
    config = refs.read(selection["tools_ref"])
    analysis, cache, rust = (
        refs.read(config[key]) for key in ("lean_ref", "cache_ref", "rust_ref")
    )
    if (
        any(analysis["statuses"].values())
        or any(rust["statuses"].values())
        or cache["missing_requested_roots"]
    ):
        raise ValueError("MutableBufferCandidateTools")
    sdk, backend = Path(analysis["sdk"]), Path(cache["backend"])
    if backend != private / "analysis-backend-build/a0058/lean":
        raise ValueError("MutableBufferCandidateBackend")
    for row in [*analysis["patched_binaries"], *rust["patched_binaries"]]:
        if digest(row["path"]) != row["sha256"]:
            raise ValueError("MutableBufferCandidateToolChanged")
    inventory = read(refs.verify(config["sdk_inventory_ref"]), limit=32 * 1024**2)
    for row in inventory["entries"]:
        path = sdk / row["path"]
        if not path.resolve().is_relative_to(sdk):
            raise ValueError("MutableBufferCandidateSDKPath")
        if row["kind"] in {"file", "hardlink"} and digest(path) != row["sha256"]:
            raise ValueError("MutableBufferCandidateSDKChanged")
        if row["kind"] == "symlink" and os.readlink(path) != row["target"]:
            raise ValueError("MutableBufferCandidateSDKLink")
    native_tools = refs.read(selection["native_tools_ref"])["tools"]
    for name in ("rustc", "cc"):
        if digest(native_tools[name]["path"]) != native_tools[name]["sha256"]:
            raise ValueError("MutableBufferCandidateNativeTool")
    deps = refs.read(candidate["dependencies_ref"])
    system = refs.read(deps["system_ref"])
    env = {
        **os.environ,
        "LD_LIBRARY_PATH": system["gmp_library_directory"],
        "OCAMLRUNPARAM": "d=1,o=10",
        "CI": "1",
    }
    env.pop("LD_PRELOAD", None)
    out.mkdir(parents=True)
    commands = []

    def run(label, argv, expected=0, run_env=env, cwd=out):
        row = run_logged_command(
            out / "commands" / label,
            argv,
            cwd=cwd,
            env=run_env,
            seconds=300,
            metadata=dict(label=label, expected_exit_code=expected),
        )
        commands.append(row)
        if row["exit_code"] != expected or row["timed_out"]:
            raise ValueError("MutableBufferCandidateCommand:" + label)
        return row

    run("version", [candidate["executable"], "-version"])
    if (out / "commands/version/stdout.txt").read_text().strip() != candidate[
        "version"
    ]:
        raise ValueError("MutableBufferCandidateVersion")
    generated = out / "candidate-generated"
    generated.mkdir()
    module_output = generated / "MutableBuffer"
    module_output.mkdir()
    run(
        "candidate",
        [
            candidate["executable"],
            "-backend",
            "lean",
            "-split-files",
            "-no-progress-bar",
            "-dest",
            str(module_output),
            str(llbc),
        ],
    )
    emitted = {
        str(path.relative_to(generated)): path for path in generated.rglob("*.lean")
    }
    template = "MutableBuffer/TypesExternal_Template.lean"
    if (
        template not in emitted
        or "MutableBuffer/Types.lean" not in emitted
        or "MutableBuffer/Funs.lean" not in emitted
    ):
        raise ValueError("MutableBufferCandidateSplitLayout")
    opaque = re.findall(
        r"^\s*(?:axiom|opaque)\s+([^\n]+)", emitted[template].read_text(), re.M
    )
    if opaque != ["core.io.error.Error : Type"]:
        raise ValueError("MutableBufferCandidateUnknownExternalType")
    emitted_hashes = {name: digest(path) for name, path in emitted.items()}
    for name, path in emitted.items():
        if not name.endswith("_Template.lean") and any(
            marker in path.read_bytes() for marker in (b"sorry", b"axiom ")
        ):
            raise ValueError("MutableBufferCandidatePartialGeneratedBody")
    regressions = []
    if len(selection["regressions"]) != 3:
        raise ValueError("MutableBufferCandidateRegressions")
    for index, row in enumerate(selection["regressions"]):
        if set(row) != {"input_ref", "module_ref"}:
            raise ValueError("MutableBufferCandidateRegressionFields")
        source, prior = refs.verify(row["input_ref"]), refs.verify(row["module_ref"])
        folder = out / ("regression-" + str(index))
        folder.mkdir()
        run(
            "regression-" + str(index),
            [
                candidate["executable"],
                "-backend",
                "lean",
                "-no-progress-bar",
                "-dest",
                str(folder),
                str(source),
            ],
        )
        files = list(folder.glob("*.lean"))
        if len(files) != 1 or digest(files[0]) != digest(prior):
            raise ValueError("MutableBufferCandidateChangedRegression")
        regressions.append(
            dict(
                input_ref=row["input_ref"],
                module_ref=row["module_ref"],
                sha256=digest(files[0]),
            )
        )
    rust_paths = {row["name"]: row["path"] for row in rust["patched_binaries"]}
    rust_env = {**os.environ, **rust["environment"]}
    rust_env.pop("LD_PRELOAD", None)
    native_env = {**os.environ, "CI": "1"}
    native_env.pop("LD_PRELOAD", None)
    for label, compiler, compiler_env in [
        ("analysis", rust_paths["rustc"], rust_env),
        ("native198", native_tools["rustc"]["path"], native_env),
    ]:
        folder = out / ("rust-" + label)
        folder.mkdir()
        library, executable = (
            folder / "libcore036_read_dependency.rlib",
            folder / "harness",
        )
        run(label + "-rust-version", [compiler, "--version"], run_env=compiler_env)
        if label == "native198" and not (
            out / ("commands/" + label + "-rust-version/stdout.txt")
        ).read_text().startswith("rustc 1.98.1"):
            raise ValueError("MutableBufferCandidateNativeVersion")
        flags = [
            "-Copt-level=1",
            "-Ctarget-cpu=x86-64",
            "-Clinker=" + native_tools["cc"]["path"],
        ]
        if label == "analysis":
            # Avoid the generic-linux bundled LLD, whose interpreter is not
            # patched for Nix; use the already pinned GCC/binutils BFD path.
            flags.append("-Clink-arg=-fuse-ld=bfd")
        run(
            label + "-dependency",
            [
                compiler,
                "--edition=2024",
                "--crate-type=lib",
                "--crate-name=core036_read_dependency",
                *flags,
                "-o",
                str(library),
                str(dependency_source),
            ],
            run_env=compiler_env,
        )
        run(
            label + "-harness-build",
            [
                compiler,
                "--edition=2024",
                "--crate-name=core036_buffer_harness",
                *flags,
                "--extern",
                "core036_read_dependency=" + str(library),
                "-o",
                str(executable),
                str(harness),
            ],
            run_env=compiler_env,
        )
        run(label + "-harness-run", [str(executable)], run_env=compiler_env)
        if (
            out / ("commands/" + label + "-harness-run/stdout.txt")
        ).read_bytes() != b"core036-buffer-harness: ok\n":
            raise ValueError("MutableBufferCandidateHarnessOutput")
    project, compiled = out / "project", out / "compiled"
    project.mkdir()
    compiled.mkdir()
    write_once(project / "IoErrorData.lean", model.read_bytes())
    for name, path in emitted.items():
        if name.endswith("_Template.lean"):
            continue
        target = project / name
        target.parent.mkdir(parents=True, exist_ok=True)
        write_once(target, path.read_bytes())
    write_once(
        project / "MutableBuffer/TypesExternal.lean",
        b"""module
public import IoErrorData
@[expose] public section
abbrev core.io.error.Error := Correspondence036.IoErrorData.Error
""",
    )
    modules = ["IoErrorData", "MutableBuffer.TypesExternal", "MutableBuffer.Types"]
    functions_template = emitted.get("MutableBuffer/FunsExternal_Template.lean")
    if functions_template is not None:
        if re.search(
            r"^\s*(axiom|opaque|def|theorem|instance)\s",
            functions_template.read_text(),
            re.M,
        ):
            raise ValueError("MutableBufferCandidateUnknownExternalFunction")
        write_once(
            project / "MutableBuffer/FunsExternal.lean",
            b"module\npublic import MutableBuffer.Types\n@[expose] public section\n",
        )
        modules.append("MutableBuffer.FunsExternal")
    modules.extend(["MutableBuffer.Funs", "ProofRoot"])
    ns = "core036_read_entry.core036_read_dependency"
    data = "Correspondence036.IoErrorData"
    generic = f"{{Self : Type}} → (methods : {ns}.Step Self) → (state : Self) → (bytes : Aeneas.Std.Slice Aeneas.Std.U8) → {ns}.Step.twice.default methods state bytes = {data}.twice (fun next => methods.step next bytes) state"
    concrete = f"(state : {ns}.State) → (bytes : Aeneas.Std.Slice Aeneas.Std.U8) → {ns}.run state bytes = Aeneas.Std.Result.ok (Aeneas.Std.core.result.Result.Ok (Aeneas.Std.Slice.len bytes), ({{ seen := true }} : {ns}.State))"
    roots = [
        dict(id="buffer.twice", declaration="twice_contract", expected_type=generic),
        dict(id="buffer.state", declaration="run_correct", expected_type=concrete),
    ]
    proof = f"""module
public import MutableBuffer.Funs
@[expose] public section
theorem twice_contract : {generic} := by
  intro Self methods state bytes
  simp only [{ns}.Step.twice.default, {ns}.retain_bytes, {data}.twice, Aeneas.Std.bind_ok]
  apply congrArg (fun continuation => Aeneas.Std.bind (methods.step state bytes) continuation)
  funext pair
  rcases pair with ⟨result, updated⟩
  cases result <;> rfl
theorem run_correct : {concrete} := by
  intro state bytes
  cases state with
  | mk seen =>
    cases seen <;>
      simp [{ns}.run, {ns}.Step.twice.default, {ns}.retain_bytes,
        {ns}.State.Insts.Core036_read_dependencyStep.step, Aeneas.Std.bind_ok]
"""
    write_once(project / "ProofRoot.lean", proof.encode())
    lean_env = {
        **os.environ,
        **analysis["environment"],
        "LEAN_PATH": str(compiled),
        "LEAN_NUM_THREADS": "1",
        "LEAN_STACK_SIZE_KB": "131072",
        "MALLOC_ARENA_MAX": "2",
        "CI": "1",
    }
    lean_env.pop("LD_PRELOAD", None)
    checked = check_declared_proof_v2(
        project=project,
        compiled=compiled,
        sdk=sdk,
        backend=backend,
        env=lean_env,
        modules=modules,
        roots=roots,
        expected_files={
            name: digest(project / (name.replace(".", "/") + ".lean"))
            for name in modules
        },
        out=out / "declared-proof",
        kernel_mode="selected-root-export-v1",
    )
    wrong = f"""module
public import ProofRoot
@[expose] public section
open Aeneas.Std
theorem wrong_length (bytes : Slice U8) (nonempty : Slice.len bytes ≠ 0#usize) :
  {ns}.run ({{ seen := false }} : {ns}.State) bytes =
    Result.ok (core.result.Result.Ok 0#usize, ({{ seen := true }} : {ns}.State)) := by
  simp [run_correct, nonempty]
"""
    write_once(project / "Wrong.lean", wrong.encode())
    run(
        "wrong-length",
        [
            str(sdk / "bin/lake"),
            "--no-build",
            "env",
            str(sdk / "bin/lean"),
            "-j1",
            "-s131072",
            "-M4096",
            "-R",
            str(project),
            str(project / "Wrong.lean"),
        ],
        1,
        lean_env,
        backend,
    )
    diagnostic = "".join(
        (out / "commands/wrong-length" / name).read_text()
        for name in ("stdout.txt", "stderr.txt")
    )
    if (
        "unsolved goals" not in diagnostic
        or "⊢ False" not in diagnostic
        or any(
            marker in diagnostic
            for marker in (
                "unexpected token",
                "Unknown identifier",
                "unknown identifier",
                "Application type mismatch",
            )
        )
    ):
        raise ValueError("MutableBufferCandidateMalformedNegative")
    if (
        any(digest(path) != checksum for path, checksum in frozen_source.items())
        or any(
            digest(emitted[name]) != checksum
            for name, checksum in emitted_hashes.items()
        )
        or digest(candidate["executable"]) != candidate["executable_sha256"]
    ):
        raise ValueError("MutableBufferCandidateSourceChanged")
    write_once(
        out / "result.json",
        dict(
            format="core036.mutable-buffer-candidate-result.v2",
            source_subject_ref=declaration["source_subject_ref"],
            selection_ref=reference,
            commands=commands,
            proof_commands=checked["commands"],
            selected_theorem_audit=checked["audit"],
            unchanged_ir_sha256=digest(llbc),
            generated_modules=emitted_hashes,
            regression_rows=regressions,
            cross_compiler_harness="both_passed",
            candidate_error_data_model="defined_but_native_admission_unestablished",
            scoped_buffer_translation="passed",
            scoped_equations="passed_under_candidate_model",
            wrong_length_control="normalized_false_rejected",
            kernel_scope=checked["kernel_scope"],
            native_proof="unestablished",
            feature_complete=False,
            product_adoption="unactivated",
        ),
    )
    return 0
