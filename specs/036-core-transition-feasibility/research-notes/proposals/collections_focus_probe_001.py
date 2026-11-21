"""Structural captured mutable focus laws, no native admission."""

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
        or selection["format"] != "core036.collections-focus-probe.v2"
        or out != private / "ground-lean-probe" / declaration["record_id"]
        or out.exists()
    ):
        raise ValueError("CollectionsFocusSelection")
    source = refs.verify(selection["source_ref"])
    expected_source = (
        refs.roots["repository"]
        / "experiments/transition-study036/proofs/Correspondence036/Dependencies/CollectionsFocus.lean"
    )
    if source != expected_source:
        raise ValueError("CollectionsFocusSourcePath")
    source_hash = digest(source)
    data_source = refs.verify(selection["data_ref"])
    if data_source != expected_source.with_name("CollectionsData.lean"):
        raise ValueError("CollectionsFocusDataPath")
    data_hash = digest(data_source)
    config = refs.read(selection["tools_ref"])
    analysis, cache = (refs.read(config[key]) for key in ("lean_ref", "cache_ref"))
    if any(analysis["statuses"].values()) or cache["missing_requested_roots"]:
        raise ValueError("CollectionsFocusTools")
    sdk, backend = Path(analysis["sdk"]), Path(cache["backend"])
    if backend != private / "analysis-backend-build/a0058/lean":
        raise ValueError("CollectionsFocusBackend")
    for row in analysis["patched_binaries"]:
        if digest(row["path"]) != row["sha256"]:
            raise ValueError("CollectionsFocusToolChanged")
    inventory = read(refs.verify(config["sdk_inventory_ref"]), limit=32 * 1024**2)
    for row in inventory["entries"]:
        path = sdk / row["path"]
        if not path.resolve().is_relative_to(sdk):
            raise ValueError("CollectionsFocusSDKPath")
        if path.name in {"parameters.bin", "compression_prover_key.bin"}:
            raise ValueError("ProtectedArtifact")
        if row["kind"] in {"file", "hardlink"} and digest(path) != row["sha256"]:
            raise ValueError("CollectionsFocusSDKChanged")
        if row["kind"] == "symlink" and os.readlink(path) != row["target"]:
            raise ValueError("CollectionsFocusSDKLink")
    ns = "Correspondence036.CollectionsFocus"
    data = "Correspondence036.CollectionsData"
    prefix = "∀ {Key Value : Type} [inst : DecidableEq Key], "
    specifications = [
        ("render", "capture_render", f"(key : Key) → (map : {data}.Map Key Value) → {ns}.render ({ns}.capture key map) = map"),
        ("read", "capture_read", f"(key : Key) → (map : {data}.Map Key Value) → {ns}.readValue ({ns}.capture key map) = {data}.lookup key map"),
        ("restore", "capture_write_old", f"(key : Key) → (map : {data}.Map Key Value) → {ns}.writeValue ({ns}.capture key map) ({data}.lookup key map) = map"),
        ("replace", "captured_write_some", f"(key : Key) → (value : Value) → (map : {data}.Map Key Value) → {ns}.writeValue ({ns}.capture key map) (some value) = (match {data}.lookup key map with | none => map | some _ => ({data}.insert key value map).2)"),
        ("forward", "getMut_forward", f"(key : Key) → (map : {data}.Map Key Value) → ({ns}.getMut key map).1 = {data}.lookup key map"),
        ("roundtrip", "getMut_roundtrip", f"(key : Key) → (map : {data}.Map Key Value) → ({ns}.getMut key map).2 ({ns}.getMut key map).1 = map"),
        ("absent", "getMut_absent_no_insert", f"(key : Key) → (map : {data}.Map Key Value) → (absent : {data}.lookup key map = none) → (value : Value) → ({ns}.getMut key map).2 (some value) = map"),
    ]
    roots = [dict(id="collections.focus." + key, declaration=ns + "." + name, expected_type=prefix + expected) for key, name, expected in specifications]
    roots.append(dict(id="collections.focus.compatibility", declaration=ns + ".compatible_read", expected_type=f"∀ {{Key Value : Type}} (focus : {ns}.Focus Key Value), {ns}.Compatible focus ({ns}.readValue focus)"))
    out.mkdir(parents=True)
    project, compiled = out / "project", out / "compiled"
    project.mkdir()
    compiled.mkdir()
    write_once(project / "CollectionsData.lean", data_source.read_bytes())
    write_once(project / "CollectionsFocus.lean", source.read_bytes())
    write_once(
        project / "ProofRoot.lean",
        b"module\npublic import CollectionsFocus\n@[expose] public section\n",
    )
    modules = ["CollectionsData", "CollectionsFocus", "ProofRoot"]
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
open {ns} {data}
theorem wrong_focused_write :
    lookup (0 : Nat) ((getMut (0 : Nat) (Map.cons 0 1 Map.nil)).2 (some 2)) = some 3 := by
  simp [getMut, capture, writeValue, append, lookup]
"""
    write_once(project / "Wrong.lean", negative.encode())
    rejected = run_logged_command(
        out / "commands/wrong-focused-write",
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
        metadata=dict(label="wrong-focused-write", expected_exit_code=1),
    )
    diagnostic = "".join(
        (out / "commands/wrong-focused-write" / name).read_text()
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
        raise ValueError("CollectionsFocusMalformedNegative")
    if digest(source) != source_hash or digest(data_source) != data_hash:
        raise ValueError("CollectionsFocusSourceChanged")
    write_once(
        out / "result.json",
        dict(
            format="core036.collections-focus-result.v2",
            source_subject_ref=declaration["source_subject_ref"],
            selection_ref=reference,
            source_sha256=source_hash,
            proof_commands=checked["commands"],
            selected_theorem_audit=checked["audit"],
            kernel_scope=checked["kernel_scope"],
            checked_roots=len(roots),
            captured_backward_function="defined_structural_no_recomparison",
            wrong_focused_write_control="normalized_false_rejected",
            negative_command=rejected,
            native_primitive_admission="unestablished",
            native_proof="unestablished",
            feature_complete=False,
            scope="Structural captured-focus/getMut laws only; native ordering/comparator/borrow/allocator/API/consumer correspondence remain open",
        ),
    )
    return 0
