"""Captured entry/default control laws, no native admission."""

import os
from pathlib import Path

from artifact_io import digest, read, write_once
from check_proofs import check_declared_proof_v2
from lean_command_v2 import run_logged_command


def run_probe(refs, reference, declaration, out):
    selection = refs.read(reference)
    private = refs.roots["private"]
    if (
        set(selection) != {"format", "tools_ref", "data_ref", "focus_ref", "source_ref"}
        or selection["format"] != "core036.collections-entry-probe.v2"
        or out != private / "ground-lean-probe" / declaration["record_id"]
        or out.exists()
    ):
        raise ValueError("CollectionsEntrySelection")
    source = refs.verify(selection["source_ref"])
    expected_source = (
        refs.roots["repository"]
        / "experiments/transition-study036/proofs/Correspondence036/Dependencies/CollectionsEntry.lean"
    )
    if source != expected_source:
        raise ValueError("CollectionsEntrySourcePath")
    source_hash = digest(source)
    data_source = refs.verify(selection["data_ref"])
    if data_source != expected_source.with_name("CollectionsData.lean"):
        raise ValueError("CollectionsEntryDataPath")
    data_hash = digest(data_source)
    focus_source = refs.verify(selection["focus_ref"])
    if focus_source != expected_source.with_name("CollectionsFocus.lean"):
        raise ValueError("CollectionsEntryFocusPath")
    focus_hash = digest(focus_source)
    config = refs.read(selection["tools_ref"])
    analysis, cache = (refs.read(config[key]) for key in ("lean_ref", "cache_ref"))
    if any(analysis["statuses"].values()) or cache["missing_requested_roots"]:
        raise ValueError("CollectionsEntryTools")
    sdk, backend = Path(analysis["sdk"]), Path(cache["backend"])
    if backend != private / "analysis-backend-build/a0058/lean":
        raise ValueError("CollectionsEntryBackend")
    for row in analysis["patched_binaries"]:
        if digest(row["path"]) != row["sha256"]:
            raise ValueError("CollectionsEntryToolChanged")
    inventory = read(refs.verify(config["sdk_inventory_ref"]), limit=32 * 1024**2)
    for row in inventory["entries"]:
        path = sdk / row["path"]
        if not path.resolve().is_relative_to(sdk):
            raise ValueError("CollectionsEntrySDKPath")
        if path.name in {"parameters.bin", "compression_prover_key.bin"}:
            raise ValueError("ProtectedArtifact")
        if row["kind"] in {"file", "hardlink"} and digest(path) != row["sha256"]:
            raise ValueError("CollectionsEntrySDKChanged")
        if row["kind"] == "symlink" and os.readlink(path) != row["target"]:
            raise ValueError("CollectionsEntrySDKLink")
    ns = "Correspondence036.CollectionsEntry"
    data = "Correspondence036.CollectionsData"
    focus = "Correspondence036.CollectionsFocus"
    result = "Aeneas.Std.Result"
    front = "∀ {Key Value : Type}, "
    decidable = "∀ {Key Value : Type} [inst : DecidableEq Key], "
    specifications = [
        ("render", "fromFocus_render", front, f"(key : Key) → (cursor : {focus}.Focus Key Value) → {ns}.toMap ({ns}.fromFocus key cursor) = {focus}.render cursor"),
        ("value", "fromFocus_value", front, f"(key : Key) → (cursor : {focus}.Focus Key Value) → {ns}.value ({ns}.fromFocus key cursor) = {focus}.readValue cursor"),
        ("roundtrip", "enter_roundtrip", decidable, f"(key : Key) → (map : {data}.Map Key Value) → ({ns}.enter key map).2 ({ns}.enter key map).1 = map"),
        ("lookup", "enter_value", decidable, f"(key : Key) → (map : {data}.Map Key Value) → {ns}.value ({ns}.enter key map).1 = {data}.lookup key map"),
        ("occupied", "occupied_ignores_default", front, f"(default : Unit → {result} Value) → (front : {data}.Map Key Value) → (stored : Key) → (current : Value) → (suffix : {data}.Map Key Value) → {ns}.orDefault default ({ns}.Entry.occupied front stored current suffix) = {result}.ok (current, fun replacement => {ns}.Entry.occupied front stored replacement suffix)"),
        ("vacant", "vacant_calls_default", front, f"(default : Unit → {result} Value) → (key : Key) → (original : {data}.Map Key Value) → {ns}.orDefault default ({ns}.Entry.vacant key original) = (do let current ← default (); {result}.ok (current, fun replacement => {ns}.Entry.occupied original key replacement {data}.Map.nil))"),
        ("failure", "vacant_failure", front, f"(error : Aeneas.Std.Error) → (key : Key) → (original : {data}.Map Key Value) → {ns}.orDefault (fun _ => {result}.fail error) ({ns}.Entry.vacant key original) = {result}.fail error"),
        ("divergence", "vacant_divergence", front, f"(key : Key) → (original : {data}.Map Key Value) → {ns}.orDefault (fun _ => {result}.div) ({ns}.Entry.vacant key original) = {result}.div"),
        ("append_lookup", "lookup_append", decidable, f"(key : Key) → (left right : {data}.Map Key Value) → {data}.lookup key ({focus}.append left right) = (match {data}.lookup key left with | none => {data}.lookup key right | some found => some found)"),
        ("new_value", "vacant_new_value", decidable, f"(key : Key) → (original : {data}.Map Key Value) → (absent : {data}.lookup key original = none) → (current replacement : Value) → (do let (_, backward) ← {ns}.orDefault (fun _ => {result}.ok current) ({ns}.Entry.vacant key original); {result}.ok ({data}.lookup key ({ns}.toMap (backward replacement)))) = {result}.ok (some replacement)"),
        ("replacement", "occupied_replacement", front, f"(default : Unit → {result} Value) → (front : {data}.Map Key Value) → (stored : Key) → (current replacement : Value) → (suffix : {data}.Map Key Value) → (do let (_, backward) ← {ns}.orDefault default ({ns}.Entry.occupied front stored current suffix); {result}.ok ({ns}.toMap (backward replacement))) = {result}.ok ({focus}.append front ({data}.Map.cons stored replacement suffix))"),
    ]
    roots = [dict(id="collections.entry." + key, declaration=ns + "." + name, expected_type=front + expected) for key, name, front, expected in specifications]
    out.mkdir(parents=True)
    project, compiled = out / "project", out / "compiled"
    project.mkdir()
    compiled.mkdir()
    write_once(project / "CollectionsData.lean", data_source.read_bytes())
    write_once(project / "CollectionsFocus.lean", focus_source.read_bytes())
    write_once(project / "CollectionsEntry.lean", source.read_bytes())
    write_once(
        project / "ProofRoot.lean",
        b"module\npublic import CollectionsEntry\n@[expose] public section\n",
    )
    modules = ["CollectionsData", "CollectionsFocus", "CollectionsEntry", "ProofRoot"]
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
open Aeneas.Std Result {ns} {data}
theorem wrong_occupied_default_failure :
    orDefault (fun _ => fail .integerOverflow)
      (Entry.occupied (Map.nil : Map Nat Nat) 0 1 Map.nil) = fail .integerOverflow := by
  simp [orDefault]
"""
    write_once(project / "Wrong.lean", negative.encode())
    rejected = run_logged_command(
        out / "commands/wrong-occupied-default",
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
        metadata=dict(label="wrong-occupied-default", expected_exit_code=1),
    )
    diagnostic = "".join(
        (out / "commands/wrong-occupied-default" / name).read_text()
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
        raise ValueError("CollectionsEntryMalformedNegative")
    if (digest(source) != source_hash or digest(data_source) != data_hash or digest(focus_source) != focus_hash):
        raise ValueError("CollectionsEntrySourceChanged")
    write_once(
        out / "result.json",
        dict(
            format="core036.collections-entry-result.v2",
            source_subject_ref=declaration["source_subject_ref"],
            selection_ref=reference,
            source_sha256=source_hash,
            proof_commands=checked["commands"],
            selected_theorem_audit=checked["audit"],
            kernel_scope=checked["kernel_scope"],
            checked_roots=len(roots),
            conditional_default="one_monadic_call_only_when_vacant",
            wrong_occupied_default_control="normalized_false_rejected",
            negative_command=rejected,
            native_primitive_admission="unestablished",
            native_proof="unestablished",
            feature_complete=False,
            scope="Captured entry/default laws only; native ordering/comparator/borrow/allocator/API/consumer correspondence remain open",
        ),
    )
    return 0
