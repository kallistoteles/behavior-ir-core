"""Map uniqueness and cardinality invariants, no native admission."""

import os
from pathlib import Path

from artifact_io import digest, read, write_once
from check_proofs import check_declared_proof_v2
from lean_command_v2 import run_logged_command


def run_probe(refs, reference, declaration, out):
    selection = refs.read(reference)
    private = refs.roots["private"]
    if (
        set(selection) != {"format", "tools_ref", "data_ref", "source_ref"}
        or selection["format"] != "core036.collections-invariant-probe.v2"
        or out != private / "ground-lean-probe" / declaration["record_id"]
        or out.exists()
    ):
        raise ValueError("CollectionsInvariantSelection")
    source = refs.verify(selection["source_ref"])
    expected_source = (
        refs.roots["repository"]
        / "experiments/transition-study036/proofs/Correspondence036/Dependencies/CollectionsInvariant.lean"
    )
    if source != expected_source:
        raise ValueError("CollectionsInvariantSourcePath")
    source_hash = digest(source)
    data_source = refs.verify(selection["data_ref"])
    if data_source != expected_source.with_name("CollectionsData.lean"):
        raise ValueError("CollectionsInvariantDataPath")
    data_hash = digest(data_source)
    config = refs.read(selection["tools_ref"])
    analysis, cache = (refs.read(config[key]) for key in ("lean_ref", "cache_ref"))
    if any(analysis["statuses"].values()) or cache["missing_requested_roots"]:
        raise ValueError("CollectionsInvariantTools")
    sdk, backend = Path(analysis["sdk"]), Path(cache["backend"])
    if backend != private / "analysis-backend-build/a0058/lean":
        raise ValueError("CollectionsInvariantBackend")
    for row in analysis["patched_binaries"]:
        if digest(row["path"]) != row["sha256"]:
            raise ValueError("CollectionsInvariantToolChanged")
    inventory = read(refs.verify(config["sdk_inventory_ref"]), limit=32 * 1024**2)
    for row in inventory["entries"]:
        path = sdk / row["path"]
        if not path.resolve().is_relative_to(sdk):
            raise ValueError("CollectionsInvariantSDKPath")
        if path.name in {"parameters.bin", "compression_prover_key.bin"}:
            raise ValueError("ProtectedArtifact")
        if row["kind"] in {"file", "hardlink"} and digest(path) != row["sha256"]:
            raise ValueError("CollectionsInvariantSDKChanged")
        if row["kind"] == "symlink" and os.readlink(path) != row["target"]:
            raise ValueError("CollectionsInvariantSDKLink")
    ns = "Correspondence036.CollectionsInvariant"
    data = "Correspondence036.CollectionsData"
    prefix = "∀ {Key Value : Type} [inst : DecidableEq Key], "
    specifications = [
        (
            "absence",
            "lookup_none_iff",
            f"(key : Key) → (map : {data}.Map Key Value) → ({data}.lookup key map = none ↔ key ∉ {data}.keys map)",
        ),
        (
            "new_keys",
            "keys_insert_absent",
            f"(key : Key) → (value : Value) → (map : {data}.Map Key Value) → (absent : {data}.lookup key map = none) → {data}.keys ({data}.insert key value map).2 = {data}.keys map ++ [key]",
        ),
        (
            "old_keys",
            "keys_insert_present",
            f"(key : Key) → (value : Value) → (map : {data}.Map Key Value) → (previous : Value) → (present : {data}.lookup key map = some previous) → {data}.keys ({data}.insert key value map).2 = {data}.keys map",
        ),
        (
            "insert",
            "wellFormed_insert",
            f"(key : Key) → (value : Value) → (map : {data}.Map Key Value) → (valid : {data}.WellFormed map) → {data}.WellFormed ({data}.insert key value map).2",
        ),
        (
            "erase_subset",
            "erase_keys_subset",
            f"(key : Key) → (map : {data}.Map Key Value) → {data}.keys ({data}.erase key map) ⊆ {data}.keys map",
        ),
        (
            "erase",
            "wellFormed_erase",
            f"(key : Key) → (map : {data}.Map Key Value) → (valid : {data}.WellFormed map) → {data}.WellFormed ({data}.erase key map)",
        ),
        (
            "replace_size",
            "length_insert_present",
            f"(key : Key) → (value : Value) → (map : {data}.Map Key Value) → (previous : Value) → (present : {data}.lookup key map = some previous) → {data}.length ({data}.insert key value map).2 = {data}.length map",
        ),
    ]
    roots = [
        dict(
            id="collections.invariant." + key,
            declaration=ns + "." + name,
            expected_type=prefix + expected,
        )
        for key, name, expected in specifications
    ]
    roots.append(
        dict(
            id="collections.invariant.size",
            declaration=ns + ".length_keys",
            expected_type=f"∀ {{Key Value : Type}} (map : {data}.Map Key Value), {data}.length map = ({data}.keys map).length",
        )
    )
    out.mkdir(parents=True)
    project, compiled = out / "project", out / "compiled"
    project.mkdir()
    compiled.mkdir()
    write_once(project / "CollectionsData.lean", data_source.read_bytes())
    write_once(project / "CollectionsInvariant.lean", source.read_bytes())
    write_once(
        project / "ProofRoot.lean",
        b"module\npublic import CollectionsInvariant\n@[expose] public section\n",
    )
    modules = ["CollectionsData", "CollectionsInvariant", "ProofRoot"]
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
open {data}
theorem wrong_duplicate_map_valid :
    WellFormed (Map.cons (0 : Nat) (1 : Nat) (Map.cons 0 2 Map.nil)) := by
  simp [WellFormed, keys]
"""
    write_once(project / "Wrong.lean", negative.encode())
    rejected = run_logged_command(
        out / "commands/wrong-duplicate-map",
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
        metadata=dict(label="wrong-duplicate-map", expected_exit_code=1),
    )
    diagnostic = "".join(
        (out / "commands/wrong-duplicate-map" / name).read_text()
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
        raise ValueError("CollectionsInvariantMalformedNegative")
    if digest(source) != source_hash or digest(data_source) != data_hash:
        raise ValueError("CollectionsInvariantSourceChanged")
    write_once(
        out / "result.json",
        dict(
            format="core036.collections-invariant-result.v2",
            source_subject_ref=declaration["source_subject_ref"],
            selection_ref=reference,
            source_sha256=source_hash,
            proof_commands=checked["commands"],
            selected_theorem_audit=checked["audit"],
            kernel_scope=checked["kernel_scope"],
            checked_roots=len(roots),
            representation_invariant="unique_stored_keys_preserved",
            wrong_duplicate_map_control="normalized_false_rejected",
            negative_command=rejected,
            native_primitive_admission="unestablished",
            native_proof="unestablished",
            feature_complete=False,
            scope="Map uniqueness and cardinality laws only; native ordering/comparator/borrow/allocator/API/consumer correspondence remain open",
        ),
    )
    return 0
