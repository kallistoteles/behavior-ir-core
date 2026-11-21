"""Check Never control laws and unchanged generated code with an adversarial call.

The provided stop interpretation deliberately returns a distinct modeled error.
It detects erasure of the real monadic call; it is not an admitted model of the
native counter/panic implementation, and cannot establish native Core proof.
"""

import os
from pathlib import Path

from artifact_io import RootRegistry, digest, read, write_once
from check_proofs import check_declared_proof_v2
from lean_command_v2 import run_logged_command


def run_probe(refs, reference, declaration, out):
    selection = refs.read(reference)
    private = refs.roots["private"]
    if (
        set(selection)
        != {"format", "canary_checkpoint_ref", "canary_ref", "tools_ref", "law_ref"}
        or selection["format"] != "core036.never-return-proof.v2"
        or out != private / "ground-lean-probe" / declaration["record_id"]
        or out.exists()
    ):
        raise ValueError("NeverProofSelection")
    cp_path = refs.verify(selection["canary_checkpoint_ref"])
    RootRegistry({"attempt": cp_path.parent}).verify_closed("attempt")
    cp, canary = (
        refs.read(selection["canary_checkpoint_ref"]),
        refs.read(selection["canary_ref"]),
    )
    canary_path = refs.verify(selection["canary_ref"])
    if (
        cp["attempt_id"] != "a0419"
        or cp["stage_outcome"] != "succeeded"
        or cp.get("source_validation_error") is not None
        or canary_path != private / "ground-lean-probe/a0419/result.json"
        or canary["source_subject_ref"] != cp["source_subject_ref"]
        or canary["cross_compiler_harness"] != "both_passed"
        or canary["generated_monadic_stop_call"] != "retained"
        or canary["outcomes"]["candidate"]["exit_code"] != 0
        or canary["outcomes"]["baseline"]["exit_code"] != 1
        or digest(canary_path.parent / "never_call.llbc") != canary["input_sha256"]
    ):
        raise ValueError("NeverProofCanaryNotEstablished")
    rows = canary["outcomes"]["candidate"]["files"]
    expected = {"Types.lean", "Funs.lean", "FunsExternal_Template.lean"}
    if len(rows) != 3 or {row["path"] for row in rows} != {
        "candidate-generated/NeverCall/" + name for name in expected
    }:
        raise ValueError("NeverProofGeneratedInventory")
    generated = {}
    for row in rows:
        path = canary_path.parent / row["path"]
        if path.stat().st_size != row["bytes"] or digest(path) != row["sha256"]:
            raise ValueError("NeverProofGeneratedBodyChanged")
        generated[path.name] = path
    config = refs.read(selection["tools_ref"])
    analysis, cache = (refs.read(config[key]) for key in ("lean_ref", "cache_ref"))
    if any(analysis["statuses"].values()) or cache["missing_requested_roots"]:
        raise ValueError("NeverProofTools")
    sdk, backend = Path(analysis["sdk"]), Path(cache["backend"])
    if backend != private / "analysis-backend-build/a0058/lean":
        raise ValueError("NeverProofBackend")
    for row in analysis["patched_binaries"]:
        if digest(row["path"]) != row["sha256"]:
            raise ValueError("NeverProofToolChanged")
    inventory = read(refs.verify(config["sdk_inventory_ref"]), limit=32 * 1024**2)
    for row in inventory["entries"]:
        path = sdk / row["path"]
        if not path.resolve().is_relative_to(sdk):
            raise ValueError("NeverProofSDKPath")
        if path.name in {"parameters.bin", "compression_prover_key.bin"}:
            raise ValueError("ProtectedArtifact")
        if row["kind"] in {"file", "hardlink"} and digest(path) != row["sha256"]:
            raise ValueError("NeverProofSDKChanged")
        if row["kind"] == "symlink" and os.readlink(path) != row["target"]:
            raise ValueError("NeverProofSDKLink")
    law = refs.verify(selection["law_ref"])
    law_hash = digest(law)
    out.mkdir(parents=True)
    project, compiled = out / "project", out / "compiled"
    project.mkdir()
    compiled.mkdir()
    (project / "NeverCall").mkdir()
    write_once(project / "NeverControl.lean", law.read_bytes())
    for name in ("Types.lean", "Funs.lean"):
        raw = generated[name].read_bytes()
        if any(marker in raw for marker in (b"sorry", b"axiom ")):
            raise ValueError("NeverProofPartialGeneratedBody")
        write_once(project / "NeverCall" / name, raw)
    template = generated["FunsExternal_Template.lean"].read_text()
    opaque = "axiom core036_never_dependency.stop : Std.Usize → Std.Usize → Std.Usize → Result Never"
    if template.count(opaque) != 1 or template.count("axiom ") != 1:
        raise ValueError("NeverProofUnknownExternal")
    provided = template.replace(
        opaque,
        "def core036_never_dependency.stop (_index _length _repeated : Std.Usize) : Result Never := Result.fail .integerOverflow",
    )
    provided = (
        "-- PROVIDED ADVERSARIAL TEST MODEL: deliberately distinct error.\n"
        "-- Not an admitted interpretation of the native counter/panic function.\n"
        + provided
    )
    write_once(project / "NeverCall/FunsExternal.lean", provided.encode())
    ns = "core036_never_entry.core036_never_dependency"
    control = "Correspondence036.NeverCall"
    roots = [
        dict(
            id="never.any_effect",
            declaration=control + ".arbitrary_effect_continuation_irrelevant",
            expected_type="{M : Type → Type} → {α : Type} → (bindNever : M Aeneas.Std.Never → (Aeneas.Std.Never → M α) → M α) → (action : M Aeneas.Std.Never) → (first second : Aeneas.Std.Never → M α) → bindNever action first = bindNever action second",
        ),
        dict(
            id="never.continuation",
            declaration=control + ".continuation_irrelevant",
            expected_type="{α : Type} → (call : Aeneas.Std.Result Aeneas.Std.Never) → (first second : Aeneas.Std.Never → Aeneas.Std.Result α) → Aeneas.Std.bind call first = Aeneas.Std.bind call second",
        ),
        dict(
            id="never.failure",
            declaration=control + ".failure_preserved",
            expected_type="{α : Type} → (error : Aeneas.Std.Error) → (continuation : Aeneas.Std.Never → Aeneas.Std.Result α) → Aeneas.Std.bind (Aeneas.Std.Result.fail error : Aeneas.Std.Result Aeneas.Std.Never) continuation = Aeneas.Std.Result.fail error",
        ),
        dict(
            id="never.divergence",
            declaration=control + ".divergence_preserved",
            expected_type="{α : Type} → (continuation : Aeneas.Std.Never → Aeneas.Std.Result α) → Aeneas.Std.bind (Aeneas.Std.Result.div : Aeneas.Std.Result Aeneas.Std.Never) continuation = Aeneas.Std.Result.div",
        ),
        dict(
            id="never.non_erasure",
            declaration=control + ".failure_is_not_panic",
            expected_type="{α : Type} → Aeneas.Std.bind (Aeneas.Std.Result.fail .integerOverflow : Aeneas.Std.Result Aeneas.Std.Never) (fun _ => (Aeneas.Std.Result.fail .panic : Aeneas.Std.Result α)) ≠ Aeneas.Std.Result.fail .panic",
        ),
        dict(
            id="never.generated_error",
            declaration="remaining_error",
            expected_type=f"(index length : Aeneas.Std.Usize) → (greater : index > length) → {ns}.remaining index length = Aeneas.Std.Result.fail .integerOverflow",
        ),
        dict(
            id="never.generated_normal",
            declaration="remaining_normal",
            expected_type=f"(index length : Aeneas.Std.Usize) → (within : ¬ index > length) → {ns}.remaining index length = Aeneas.Std.Result.ok (Aeneas.Std.Usize.wrapping_sub length index)",
        ),
        dict(
            id="never.wrapper",
            declaration="wrapper_exact",
            expected_type=f"(index length : Aeneas.Std.Usize) → core036_never_entry.remaining index length = {ns}.remaining index length",
        ),
    ]
    proof = f"""module
public import NeverControl
public import NeverCall.Funs
@[expose] public section
open Aeneas.Std
theorem remaining_error : {roots[5]["expected_type"]} := by
  intro index length greater
  simp only [{ns}.remaining, if_pos greater, core036_never_dependency.stop, Aeneas.Std.bind_fail]
theorem remaining_normal : {roots[6]["expected_type"]} := by
  intro index length within
  simp only [{ns}.remaining, if_neg within]
theorem wrapper_exact : {roots[7]["expected_type"]} := by
  intro index length
  rfl
"""
    write_once(project / "ProofRoot.lean", proof.encode())
    modules = [
        "NeverControl",
        "NeverCall.Types",
        "NeverCall.FunsExternal",
        "NeverCall.Funs",
        "ProofRoot",
    ]
    env = {
        **os.environ,
        **analysis["environment"],
        "LEAN_PATH": str(compiled),
        "LEAN_NUM_THREADS": "1",
        "LEAN_STACK_SIZE_KB": "131072",
        "MALLOC_ARENA_MAX": "2",
        "CI": "1",
    }
    env.pop("LD_PRELOAD", None)
    checked = check_declared_proof_v2(
        project=project,
        compiled=compiled,
        sdk=sdk,
        backend=backend,
        env=env,
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
theorem wrong_error (index length : Usize) (greater : index > length) :
    {ns}.remaining index length = Result.fail .panic := by
  simp [remaining_error index length greater, Result.fail.injEq]
"""
    write_once(project / "Wrong.lean", wrong.encode())
    negative = run_logged_command(
        out / "commands/wrong-error",
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
        cwd=backend,
        env=env,
        seconds=300,
        metadata=dict(label="wrong-error", expected_exit_code=1),
    )
    diagnostic = "".join(
        (out / "commands/wrong-error" / name).read_text()
        for name in ("stdout.txt", "stderr.txt")
    )
    if (
        negative["exit_code"] != 1
        or negative["timed_out"]
        or "unsolved goals" not in diagnostic
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
        raise ValueError("NeverProofMalformedNegative")
    if digest(law) != law_hash or any(
        digest(generated[Path(row["path"]).name]) != row["sha256"] for row in rows
    ):
        raise ValueError("NeverProofSourceChanged")
    write_once(
        out / "result.json",
        dict(
            format="core036.never-return-proof-result.v2",
            source_subject_ref=declaration["source_subject_ref"],
            selection_ref=reference,
            canary_ref=selection["canary_ref"],
            proof_commands=checked["commands"],
            selected_theorem_audit=checked["audit"],
            kernel_scope=checked["kernel_scope"],
            checked_roots=len(roots),
            generated_bodies_unchanged=True,
            wrong_error_control="normalized_false_rejected",
            negative_command=negative,
            external_stop_model="defined_adversarial_error_only_not_native_admitted",
            native_proof="unestablished",
            feature_complete=False,
            scope="General empty-continuation laws plus actual generated branches under a separate adversarial model; not native I/O/Core correspondence",
        ),
    )
    return 0
