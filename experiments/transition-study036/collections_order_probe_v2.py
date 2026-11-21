"""Canonical enumeration preservation laws, no native admission."""

import os
from pathlib import Path

from artifact_io import digest, read, write_once
from check_proofs import check_declared_proof_v2
from lean_command_v2 import run_logged_command


def run_probe(refs, reference, declaration, out):
    selection = refs.read(reference)
    private = refs.roots["private"]
    if (
        set(selection)
        != {"format", "tools_ref", "data_ref", "invariant_ref", "source_ref"}
        or selection["format"] != "core036.collections-order-probe.v2"
        or out != private / "ground-lean-probe" / declaration["record_id"]
        or out.exists()
    ):
        raise ValueError("CollectionsOrderSelection")
    source = refs.verify(selection["source_ref"])
    expected_source = (
        refs.roots["repository"]
        / "experiments/transition-study036/proofs/Correspondence036/Dependencies/CollectionsOrder.lean"
    )
    if source != expected_source:
        raise ValueError("CollectionsOrderSourcePath")
    source_hash = digest(source)
    data_source = refs.verify(selection["data_ref"])
    if data_source != expected_source.with_name("CollectionsData.lean"):
        raise ValueError("CollectionsOrderDataPath")
    data_hash = digest(data_source)
    invariant_source = refs.verify(selection["invariant_ref"])
    if invariant_source != expected_source.with_name("CollectionsInvariant.lean"):
        raise ValueError("CollectionsOrderInvariantPath")
    invariant_hash = digest(invariant_source)
    config = refs.read(selection["tools_ref"])
    analysis, cache = (refs.read(config[key]) for key in ("lean_ref", "cache_ref"))
    if any(analysis["statuses"].values()) or cache["missing_requested_roots"]:
        raise ValueError("CollectionsOrderTools")
    sdk, backend = Path(analysis["sdk"]), Path(cache["backend"])
    if backend != private / "analysis-backend-build/a0058/lean":
        raise ValueError("CollectionsOrderBackend")
    for row in analysis["patched_binaries"]:
        if digest(row["path"]) != row["sha256"]:
            raise ValueError("CollectionsOrderToolChanged")
    inventory = read(refs.verify(config["sdk_inventory_ref"]), limit=32 * 1024**2)
    for row in inventory["entries"]:
        path = sdk / row["path"]
        if not path.resolve().is_relative_to(sdk):
            raise ValueError("CollectionsOrderSDKPath")
        if path.name in {"parameters.bin", "compression_prover_key.bin"}:
            raise ValueError("ProtectedArtifact")
        if row["kind"] in {"file", "hardlink"} and digest(path) != row["sha256"]:
            raise ValueError("CollectionsOrderSDKChanged")
        if row["kind"] == "symlink" and os.readlink(path) != row["target"]:
            raise ValueError("CollectionsOrderSDKLink")
    ns = "Correspondence036.CollectionsOrder"
    data = "Correspondence036.CollectionsData"
    universal = "∀ {Key Value : Type}, "
    decidable = "∀ {Key Value : Type} [inst : DecidableEq Key], "
    laws = "(le : Key → Key → Bool) → (trans : ∀ a b c, le a b → le b c → le a c) → (total : ∀ a b, le a b || le b a) → "
    specifications = [
        (
            "from_list",
            "entries_ofEntries",
            universal,
            f"(rows : List (Key × Value)) → {ns}.entries ({ns}.ofEntries rows) = rows",
        ),
        (
            "to_list",
            "ofEntries_entries",
            universal,
            f"(map : {data}.Map Key Value) → {ns}.ofEntries ({ns}.entries map) = map",
        ),
        (
            "keys",
            "entries_keys",
            universal,
            f"(map : {data}.Map Key Value) → ({ns}.entries map).map Prod.fst = {data}.keys map",
        ),
        (
            "member",
            "key_mem_of_entry",
            universal,
            f"(key : Key) → (value : Value) → (map : {data}.Map Key Value) → (member : (key, value) ∈ {ns}.entries map) → key ∈ {data}.keys map",
        ),
        (
            "lookup_member",
            "lookup_some_iff_entry",
            decidable,
            f"(key : Key) → (value : Value) → (map : {data}.Map Key Value) → (valid : {data}.WellFormed map) → ({data}.lookup key map = some value ↔ (key, value) ∈ {ns}.entries map)",
        ),
        (
            "permuted_lookup",
            "lookup_eq_of_perm",
            decidable,
            f"(key : Key) → (left right : {data}.Map Key Value) → (valid_left : {data}.WellFormed left) → (valid_right : {data}.WellFormed right) → (permutation : ({ns}.entries left).Perm ({ns}.entries right)) → {data}.lookup key left = {data}.lookup key right",
        ),
        (
            "normalized_members",
            "normalized_entry_perm",
            universal,
            f"(le : Key → Key → Bool) → (map : {data}.Map Key Value) → ({ns}.entries ({ns}.normalize le map)).Perm ({ns}.entries map)",
        ),
        (
            "unique",
            "wellFormed_normalize",
            universal,
            f"(le : Key → Key → Bool) → (map : {data}.Map Key Value) → (valid : {data}.WellFormed map) → {data}.WellFormed ({ns}.normalize le map)",
        ),
        (
            "lookup",
            "lookup_normalize",
            decidable,
            f"(le : Key → Key → Bool) → (key : Key) → (map : {data}.Map Key Value) → (valid : {data}.WellFormed map) → {data}.lookup key ({ns}.normalize le map) = {data}.lookup key map",
        ),
        (
            "order",
            "normalize_order",
            universal,
            laws
            + f"(map : {data}.Map Key Value) → ({ns}.entries ({ns}.normalize le map)).Pairwise (fun left right => {ns}.pairLE le left right = true)",
        ),
        (
            "idempotent",
            "normalize_idempotent",
            universal,
            laws
            + f"(map : {data}.Map Key Value) → {ns}.normalize le ({ns}.normalize le map) = {ns}.normalize le map",
        ),
    ]
    roots = [
        dict(
            id="collections.order." + key,
            declaration=ns + "." + name,
            expected_type=prefix + expected,
        )
        for key, name, prefix, expected in specifications
    ]
    out.mkdir(parents=True)
    project, compiled = out / "project", out / "compiled"
    project.mkdir()
    compiled.mkdir()
    write_once(project / "CollectionsData.lean", data_source.read_bytes())
    write_once(project / "CollectionsInvariant.lean", invariant_source.read_bytes())
    write_once(project / "CollectionsOrder.lean", source.read_bytes())
    write_once(
        project / "ProofRoot.lean",
        b"module\npublic import CollectionsOrder\n@[expose] public section\n",
    )
    modules = [
        "CollectionsData",
        "CollectionsInvariant",
        "CollectionsOrder",
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
        expected_files={name: digest(project / (name + ".lean")) for name in modules},
        out=out / "declared-proof",
        kernel_mode="selected-root-export-v1",
    )
    negatives = {
        "unsorted": f"""module
public import ProofRoot
@[expose] public section
open {ns}
theorem wrong_unsorted_cursor :
    ([(1, 2), (0, 3)] : List (Nat × Nat)).Pairwise
      (fun left right => pairLE (fun a b : Nat => decide (a ≤ b)) left right = true) := by
  simp [pairLE]
""",
        "missing": f"""module
public import ProofRoot
@[expose] public section
open {ns} {data}
theorem wrong_missing_sorted_key :
    lookup (1 : Nat) (normalize (fun a b : Nat => decide (a ≤ b))
      (Map.cons (1 : Nat) (2 : Nat) Map.nil)) = none := by
  rw [lookup_normalize (fun a b : Nat => decide (a ≤ b)) (1 : Nat)
    (Map.cons (1 : Nat) (2 : Nat) Map.nil) (by simp [WellFormed, keys])]
  simp [lookup]
""",
    }
    rejections = []
    for label, negative in negatives.items():
        file = project / ("Wrong_" + label + ".lean")
        write_once(file, negative.encode())
        command = out / "commands" / ("wrong-" + label)
        rejected = run_logged_command(
            command,
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
                str(file),
            ],
            cwd=backend,
            env=env,
            seconds=300,
            metadata=dict(label="wrong-" + label, expected_exit_code=1),
        )
        diagnostic = "".join(
            (command / name).read_text() for name in ("stdout.txt", "stderr.txt")
        )
        if (
            rejected["exit_code"] != 1
            or rejected["timed_out"]
            or "unsolved goals" not in diagnostic
            or "⊢ False" not in diagnostic
            or any(
                text in diagnostic
                for text in (
                    "unexpected token",
                    "Unknown identifier",
                    "unknown identifier",
                    "Application type mismatch",
                )
            )
        ):
            raise ValueError("CollectionsOrderMalformedNegative:" + label)
        rejections.append(rejected)
    if (
        digest(source) != source_hash
        or digest(data_source) != data_hash
        or digest(invariant_source) != invariant_hash
    ):
        raise ValueError("CollectionsOrderSourceChanged")
    write_once(
        out / "result.json",
        dict(
            format="core036.collections-order-result.v2",
            source_subject_ref=declaration["source_subject_ref"],
            selection_ref=reference,
            source_sha256=source_hash,
            proof_commands=checked["commands"],
            selected_theorem_audit=checked["audit"],
            kernel_scope=checked["kernel_scope"],
            checked_roots=len(roots),
            canonical_enumeration="permutation_unique_order_lookup_and_idempotence_checked",
            wrong_order_and_absence_controls="normalized_false_rejected",
            negative_commands=rejections,
            native_primitive_admission="unestablished",
            native_proof="unestablished",
            feature_complete=False,
            scope="Canonical enumeration laws over a declared pure comparison only; concrete native comparator/borrow/allocator/API/consumer correspondence remain open",
        ),
    )
    return 0
