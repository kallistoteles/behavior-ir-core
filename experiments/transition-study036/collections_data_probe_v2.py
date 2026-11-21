"""Positive association data laws, no native admission."""

import os
from pathlib import Path

from artifact_io import digest, read, write_once
from check_proofs import check_declared_proof_v2
from lean_command_v2 import run_logged_command


def run_probe(refs, reference, declaration, out):
    selection = refs.read(reference)
    private = refs.roots["private"]
    if (
        set(selection) != {"format", "tools_ref", "source_ref"}
        or selection["format"] != "core036.collections-data-probe.v2"
        or out != private / "ground-lean-probe" / declaration["record_id"]
        or out.exists()
    ):
        raise ValueError("CollectionsDataSelection")
    source = refs.verify(selection["source_ref"])
    expected_source = (
        refs.roots["repository"]
        / "experiments/transition-study036/proofs/Correspondence036/Dependencies/CollectionsData.lean"
    )
    if source != expected_source:
        raise ValueError("CollectionsDataSourcePath")
    source_hash = digest(source)
    config = refs.read(selection["tools_ref"])
    analysis, cache = (refs.read(config[key]) for key in ("lean_ref", "cache_ref"))
    if any(analysis["statuses"].values()) or cache["missing_requested_roots"]:
        raise ValueError("CollectionsDataTools")
    sdk, backend = Path(analysis["sdk"]), Path(cache["backend"])
    if backend != private / "analysis-backend-build/a0058/lean":
        raise ValueError("CollectionsDataBackend")
    for row in analysis["patched_binaries"]:
        if digest(row["path"]) != row["sha256"]:
            raise ValueError("CollectionsDataToolChanged")
    inventory = read(refs.verify(config["sdk_inventory_ref"]), limit=32 * 1024**2)
    for row in inventory["entries"]:
        path = sdk / row["path"]
        if not path.resolve().is_relative_to(sdk):
            raise ValueError("CollectionsDataSDKPath")
        if path.name in {"parameters.bin", "compression_prover_key.bin"}:
            raise ValueError("ProtectedArtifact")
        if row["kind"] in {"file", "hardlink"} and digest(path) != row["sha256"]:
            raise ValueError("CollectionsDataSDKChanged")
        if row["kind"] == "symlink" and os.readlink(path) != row["target"]:
            raise ValueError("CollectionsDataSDKLink")
    ns = "Correspondence036.CollectionsData"
    prefix = "∀ {Key Value : Type} [inst : DecidableEq Key], "
    specifications = [
        (
            "empty",
            "lookup_nil",
            f"(key : Key) → {ns}.lookup key ({ns}.Map.nil : {ns}.Map Key Value) = none",
        ),
        (
            "old",
            "insert_old",
            f"(key : Key) → (value : Value) → (map : {ns}.Map Key Value) → ({ns}.insert key value map).1 = {ns}.lookup key map",
        ),
        (
            "same",
            "lookup_insert_same",
            f"(key : Key) → (value : Value) → (map : {ns}.Map Key Value) → {ns}.lookup key ({ns}.insert key value map).2 = some value",
        ),
        (
            "other",
            "lookup_insert_other",
            f"(key query : Key) → (value : Value) → (map : {ns}.Map Key Value) → (different : query ≠ key) → {ns}.lookup query ({ns}.insert key value map).2 = {ns}.lookup query map",
        ),
        (
            "erase_same",
            "lookup_erase_same",
            f"(key : Key) → (map : {ns}.Map Key Value) → {ns}.lookup key ({ns}.erase key map) = none",
        ),
        (
            "erase_other",
            "lookup_erase_other",
            f"(key query : Key) → (map : {ns}.Map Key Value) → (different : query ≠ key) → {ns}.lookup query ({ns}.erase key map) = {ns}.lookup query map",
        ),
        (
            "size",
            "length_insert_absent",
            f"(key : Key) → (value : Value) → (map : {ns}.Map Key Value) → (absent : {ns}.lookup key map = none) → {ns}.length ({ns}.insert key value map).2 = {ns}.length map + 1",
        ),
    ]
    roots = [
        dict(
            id="collections.data." + key,
            declaration=ns + "." + name,
            expected_type=prefix + expected,
        )
        for key, name, expected in specifications
    ]
    out.mkdir(parents=True)
    project, compiled = out / "project", out / "compiled"
    project.mkdir()
    compiled.mkdir()
    write_once(project / "CollectionsData.lean", source.read_bytes())
    write_once(
        project / "ProofRoot.lean",
        b"module\npublic import CollectionsData\n@[expose] public section\n",
    )
    modules = ["CollectionsData", "ProofRoot"]
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
        expected_files={name: digest(project / (name + ".lean")) for name in modules},
        out=out / "declared-proof",
        kernel_mode="selected-root-export-v1",
    )
    negative = f"""module
public import ProofRoot
@[expose] public section
open {ns}
theorem wrong_other_key :
    lookup (0 : Nat) (insert (1 : Nat) (2 : Nat) (Map.cons 0 1 Map.nil)).2 = some 2 := by
  simp [lookup_insert_other, lookup]
"""
    write_once(project / "Wrong.lean", negative.encode())
    rejected = run_logged_command(
        out / "commands/wrong-other-key",
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
        metadata=dict(label="wrong-other-key", expected_exit_code=1),
    )
    diagnostic = "".join(
        (out / "commands/wrong-other-key" / name).read_text()
        for name in ("stdout.txt", "stderr.txt")
    )
    if (
        rejected["exit_code"] != 1
        or rejected["timed_out"]
        or "unsolved goals" not in diagnostic
        or "⊢ False" not in diagnostic
        or any(
            s in diagnostic
            for s in (
                "unexpected token",
                "Unknown identifier",
                "unknown identifier",
                "Application type mismatch",
            )
        )
    ):
        raise ValueError("CollectionsDataMalformedNegative")
    if digest(source) != source_hash:
        raise ValueError("CollectionsDataSourceChanged")
    write_once(
        out / "result.json",
        dict(
            format="core036.collections-data-result.v2",
            source_subject_ref=declaration["source_subject_ref"],
            selection_ref=reference,
            source_sha256=source_hash,
            proof_commands=checked["commands"],
            selected_theorem_audit=checked["audit"],
            kernel_scope=checked["kernel_scope"],
            checked_roots=len(roots),
            strict_positivity_control="compiled",
            wrong_other_key_control="normalized_false_rejected",
            negative_command=rejected,
            native_primitive_admission="unestablished",
            native_proof="unestablished",
            feature_complete=False,
            scope="Positive association data and lookup/update/absence laws only; native ordering/comparators/borrow/allocator/API/consumer correspondence remain open",
        ),
    )
    return 0
