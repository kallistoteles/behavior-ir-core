"""Exact old Read-self IR against the compiled call-only experiment and Lean."""

import os
from pathlib import Path

from artifact_io import RootRegistry, digest, read, write_once
from check_proofs import check_declared_proof_v2
from lean_command_v2 import run_logged_command
from mutable_read_source_v2 import checked_sources


def run_probe(refs, reference, declaration, out):
    selection = refs.read(reference)
    required = {
        "format",
        "tools_ref",
        "reproduction_checkpoint_ref",
        "reproduction_ref",
        "ir_ref",
        "candidate_checkpoint_ref",
        "candidate_ref",
        "source_ref",
        "pilot_checkpoint_ref",
        "pilot_ref",
        "regressions",
    }
    if (
        set(selection) != required
        or selection["format"] != "core036.mutable-read-green.v2"
        or out != refs.roots["private"] / "ground-lean-probe" / declaration["record_id"]
        or out.exists()
    ):
        raise ValueError("MutableReadGreenSelection")
    checkpoints = {}
    for role in ("reproduction", "candidate", "pilot"):
        path = refs.verify(selection[role + "_checkpoint_ref"])
        RootRegistry({"attempt": path.parent}).verify_closed("attempt")
        cp = refs.read(selection[role + "_checkpoint_ref"])
        if (
            cp["stage_outcome"] != "succeeded"
            or cp["source_validation_error"] is not None
        ):
            raise ValueError("MutableReadGreenOpenDependency")
        checkpoints[role] = cp
    old, candidate, pilot = (
        refs.read(selection[key])
        for key in ("reproduction_ref", "candidate_ref", "pilot_ref")
    )
    private = refs.roots["private"]
    if (
        checkpoints["reproduction"]["attempt_id"] != "a0391"
        or refs.verify(selection["reproduction_ref"])
        != private / "ground-lean-probe/a0391/result.json"
        or old["source_subject_ref"]
        != checkpoints["reproduction"]["source_subject_ref"]
        or old["status"] != "reproduced_old_source_failure"
        or old["witness"]["receiver_use_pattern"] != "read_then_final_move"
        or old["source_alias_control"] != "rejected_E0506"
    ):
        raise ValueError("MutableReadGreenMissingActualRed")
    if (
        checkpoints["candidate"]["attempt_id"] != "a0395"
        or refs.verify(selection["candidate_ref"])
        != private / "nonpos-translator/a0395/result.json"
        or candidate["source_subject_ref"]
        != checkpoints["candidate"]["source_subject_ref"]
        or candidate["new_translator_compiled"] is not True
        or candidate["compiled_sources_match_declared_repair"] is not True
        or candidate["mutable_read_binding_ref"] != selection["source_ref"]
        or digest(candidate["executable"]) != candidate["executable_sha256"]
    ):
        raise ValueError("MutableReadGreenCandidate")
    checked_sources(refs, selection["source_ref"], require_parse=True)
    if (
        checkpoints["pilot"]["attempt_id"] != "a0389"
        or refs.verify(selection["pilot_ref"])
        != private / "ground-lean-probe/a0389/result.json"
        or pilot["source_subject_ref"] != checkpoints["pilot"]["source_subject_ref"]
        or pilot["selected_root_empty_kernel"] != "passed"
        or len(pilot["controls"]) != 8
        or pilot["default_checker_changed"] is not False
    ):
        raise ValueError("MutableReadGreenKernelCalibration")
    llbc = refs.verify(selection["ir_ref"])
    if (
        llbc != private / "ground-lean-probe/a0391/mutable_read.llbc"
        or digest(llbc) != old["input_sha256"]
    ):
        raise ValueError("MutableReadGreenChangedIR")
    config = refs.read(selection["tools_ref"])
    analysis, cache = refs.read(config["lean_ref"]), refs.read(config["cache_ref"])
    if any(analysis["statuses"].values()) or cache["missing_requested_roots"]:
        raise ValueError("MutableReadGreenToolStatus")
    sdk, backend = Path(analysis["sdk"]), Path(cache["backend"])
    if backend != private / "analysis-backend-build/a0058/lean":
        raise ValueError("MutableReadGreenBackend")
    for row in analysis["patched_binaries"]:
        if digest(row["path"]) != row["sha256"]:
            raise ValueError("MutableReadGreenLeanBinary")
    inventory = read(refs.verify(config["sdk_inventory_ref"]), limit=32 * 1024**2)
    for row in inventory["entries"]:
        path = sdk / row["path"]
        if not path.resolve().is_relative_to(sdk):
            raise ValueError("MutableReadGreenSDKPath")
        if row["kind"] in {"file", "hardlink"} and digest(path) != row["sha256"]:
            raise ValueError("MutableReadGreenSDKChanged")
        if row["kind"] == "symlink" and os.readlink(path) != row["target"]:
            raise ValueError("MutableReadGreenSDKLink")
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
            raise ValueError("MutableReadGreenCommand:" + label)
        return row

    run("version", [candidate["executable"], "-version"])
    if (out / "commands/version/stdout.txt").read_text().strip() != candidate[
        "version"
    ]:
        raise ValueError("MutableReadGreenVersion")

    def translate(label, source):
        folder = out / (label + "-generated")
        folder.mkdir()
        run(
            label,
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
        generated = list(folder.glob("*.lean"))
        if len(generated) != 1:
            raise ValueError("MutableReadGreenModules")
        return generated[0]

    generated = translate("candidate", llbc)
    raw = generated.read_bytes()
    if b"sorry" in raw or b"axiom " in raw:
        raise ValueError("MutableReadGreenPartialSource")
    regression_rows = []
    if (
        not isinstance(selection["regressions"], list)
        or len(selection["regressions"]) != 2
    ):
        raise ValueError("MutableReadGreenRegressions")
    for index, row in enumerate(selection["regressions"]):
        if set(row) != {"input_ref", "module_ref"}:
            raise ValueError("MutableReadGreenRegressionFields")
        source, previous = refs.verify(row["input_ref"]), refs.verify(row["module_ref"])
        emitted = translate("regression-" + str(index), source)
        if digest(emitted) != digest(previous):
            raise ValueError("MutableReadGreenChangedRegression")
        regression_rows.append(
            dict(
                input_ref=row["input_ref"],
                module_ref=row["module_ref"],
                generated_sha256=digest(emitted),
            )
        )
    project, compiled = out / "project", out / "compiled"
    project.mkdir()
    compiled.mkdir()
    module = generated.stem
    write_once(project / generated.name, raw)
    ns = "core036_read_entry.core036_read_dependency"
    generic = f"{{Self : Type}} → (methods : {ns}.Step Self) → (value : Self) → {ns}.Step.twice.default methods value = (do let next ← methods.step value; methods.step next)"
    concrete = f"(state : {ns}.State) → {ns}.run state = Aeneas.Std.Result.ok ({{ on := state.on, seen := !state.on }} : {ns}.State)"
    roots = [
        dict(id="read.twice", declaration="twice_contract", expected_type=generic),
        dict(id="read.state", declaration="run_correct", expected_type=concrete),
    ]
    proof = f"""module
public import {module}
@[expose] public section
theorem twice_contract : {generic} := by intros; rfl
theorem run_correct : {concrete} := by
  intro state
  simp [{ns}.run, {ns}.Step.twice.default,
    {ns}.State.Insts.Core036_read_dependencyStep.step,
    Aeneas.Std.bind_ok]
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
        modules=[module, "ProofRoot"],
        roots=roots,
        expected_files={
            module: digest(project / generated.name),
            "ProofRoot": digest(project / "ProofRoot.lean"),
        },
        out=out / "declared-proof",
        kernel_mode="selected-root-export-v1",
    )
    wrong = f"""module
public import ProofRoot
@[expose] public section
theorem wrong_state :
  {ns}.run ({{ on := false, seen := false }} : {ns}.State) =
    Aeneas.Std.Result.ok ({{ on := false, seen := false }} : {ns}.State) := by
  simp [run_correct]
"""
    write_once(project / "Wrong.lean", wrong.encode())
    run(
        "wrong-state",
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
    negative = "".join(
        (out / "commands/wrong-state" / name).read_text()
        for name in ("stdout.txt", "stderr.txt")
    )
    if (
        "unsolved goals" not in negative
        or "⊢ False" not in negative
        or any(
            marker in negative
            for marker in (
                "unexpected token",
                "Unknown identifier",
                "unknown identifier",
                "Application type mismatch",
            )
        )
    ):
        raise ValueError("MutableReadGreenMalformedNegative")
    if (
        digest(llbc) != old["input_sha256"]
        or generated.read_bytes() != raw
        or digest(candidate["executable"]) != candidate["executable_sha256"]
    ):
        raise ValueError("MutableReadGreenSubjectChanged")
    write_once(
        out / "result.json",
        dict(
            format="core036.mutable-read-green-result.v2",
            source_subject_ref=declaration["source_subject_ref"],
            selection_ref=reference,
            commands=commands,
            proof_commands=checked["commands"],
            selected_theorem_audit=checked["audit"],
            generated_sha256=digest(generated),
            unchanged_ir_sha256=digest(llbc),
            regression_rows=regression_rows,
            kernel_scope=checked["kernel_scope"],
            old_red_retained=True,
            wrong_state_control="normalized_false_counterexample_rejected",
            scoped_single_receiver_green=True,
            write_buffer_profile="not_implemented",
            native_proof="unestablished",
            feature_complete=False,
            product_adoption="unactivated",
        ),
    )
    return 0
