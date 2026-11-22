"""Fresh checks of the actual514 typed-seed model; no native/Core admission."""

import os
from pathlib import Path

from artifact_io import RootRegistry, digest, read, write_once
from artifact_registration_v2 import guard_reference
from records import validate_ref_v2

REFERENCES = {
    "extraction_checkpoint_ref",
    "extraction_result_ref",
    "borrow_selection_ref",
    "operations_source_ref",
    "specification_source_ref",
    "proofs_source_ref",
}


def validate_seed_probe_config(selection):
    if (
        not isinstance(selection, dict)
        or set(selection)
        != REFERENCES
        | {
            "format",
            "bindings",
            "scope",
            "native_proof",
            "feature_complete",
            "runtime_totality_established",
        }
        or selection["format"] != "core036.native-seed-probe.v2"
        or selection["scope"] != "generated_typed_seed_model_only"
        or selection["native_proof"] != "unestablished"
        or selection["feature_complete"] is not False
        or selection["runtime_totality_established"] is not False
        or not isinstance(selection["bindings"], list)
        or len(selection["bindings"]) != 17
        or any(not isinstance(row, dict) for row in selection["bindings"])
    ):
        raise ValueError("NativeSeedProbeSelection")
    for key in REFERENCES:
        guard_reference(selection[key])
        validate_ref_v2(selection[key])


def verified_generated(refs, selection):
    from extract import required_source_body_inventory, required_source_type_inventory
    from llbc_inventory_v2 import body_inventory
    from native_accessor_source_canary_v2 import guard_owned_path

    private, future = refs.roots["private"], refs.roots["future_evidence"]
    cp_path = refs.verify(selection["extraction_checkpoint_ref"])
    base = private / "native-extraction/a0514"
    if (
        cp_path != future / "attempts/a0514/checkpoint.json"
        or refs.verify(selection["extraction_result_ref"]) != base / "result.json"
    ):
        raise ValueError("NativeSeedExtractionPath")
    RootRegistry({"attempt": cp_path.parent}).verify_closed("attempt")
    cp, result = (
        refs.read(selection["extraction_checkpoint_ref"]),
        refs.read(selection["extraction_result_ref"]),
    )
    receipt = read(cp_path.parent / "child/receipt.json")
    if (
        cp["stage_outcome"] != "succeeded"
        or cp["source_validation_error"] is not None
        or cp["outcome"]["operational"] != "closed"
        or result["source_subject_ref"] != cp["source_subject_ref"]
        or result["selected_roots"]
        != ["crate::views::seed_row", "crate::views::_::into_study"]
        or result["extraction_exit_code"] != 0
        or result["translation_exit_code"] != 0
        or result["compiler_cache_reused"] is not False
        or result["native_proof"] != "unestablished"
        or receipt["source_subject_ref"] != cp["source_subject_ref"]
        or receipt["exit_code"] != 0
        or receipt["stop_reason"] is not None
        or receipt["tree_empty"] is not True
        or receipt["group_empty"] is not True
        or receipt["final_storage_inventory_error"] is not None
    ):
        raise ValueError("NativeSeedExtractionClosure")
    for row in result["commands"]:
        if type(row["exit_code"]) is not int or row["exit_code"] != 0:
            raise ValueError("NativeSeedExtractionCommand")
        for stream in ("stdout", "stderr"):
            path = guard_owned_path(
                base / "commands" / row["label"] / (stream + ".txt")
            )
            if digest(path) != row[stream + "_sha256"]:
                raise ValueError("NativeSeedExtractionCommandBytes")
    llbc = guard_owned_path(base / "typed_seed_row.llbc")
    if llbc.stat().st_size > 4 * 1024**2 or digest(llbc) != result["llbc_sha256"]:
        raise ValueError("NativeSeedRawIRChanged")
    translated = read(llbc, limit=4 * 1024**2)["translated"]
    function_ids = {row["def_id"] for row in translated["fun_decls"] if row is not None}
    inventory = [
        dict(
            def_id=row["def_id"],
            item_meta=row["item_meta"],
            **body_inventory(row.get("body"), function_ids=function_ids),
        )
        for row in translated["fun_decls"]
        if row is not None
    ]
    patterns = [
        "serde_json::value::_::as_str",
        "serde_json::number::Number",
        "serde_json::number::N",
        "crate::views::seed_row",
        "crate::views::text",
        "crate::views::_::into_study",
    ]
    if (
        required_source_body_inventory(inventory, patterns)
        != result["required_source_bodies"]
        or required_source_type_inventory(translated["type_decls"], patterns)
        != result["required_source_types"]
    ):
        raise ValueError("NativeSeedActualSourceInventory")
    allowed = {
        "Types.lean",
        "Funs.lean",
        "TypesExternal_Template.lean",
        "FunsExternal_Template.lean",
    }
    files = {}
    for row in result["generated"]:
        relative = row["path"]
        name = relative.removeprefix("generated/")
        if relative != "generated/" + name or name not in allowed or name in files:
            raise ValueError("NativeSeedGeneratedMembership")
        path = guard_owned_path(base / relative)
        if (
            path.is_symlink()
            or path.stat().st_size != row["bytes"]
            or row["bytes"] > 4 * 1024**2
            or digest(path) != row["sha256"]
        ):
            raise ValueError("NativeSeedGeneratedBytes")
        files[name] = path.read_bytes()
    if set(files) != allowed:
        raise ValueError("NativeSeedGeneratedIncomplete")
    return files, result


def run_probe(refs, reference, declaration, out):
    from check_proofs import check_declared_proof_v2, _validate_roots
    from controller_v2 import ref_for
    from native_seed_context_v2 import seed_project_files, seed_roots
    from native_accessor_source_canary_v2 import guard_owned_path

    guard_reference(reference)
    selection = refs.read(reference)
    validate_seed_probe_config(selection)
    private, repository = refs.roots["private"], refs.roots["repository"]
    if out != private / "ground-lean-probe" / declaration["record_id"] or out.exists():
        raise ValueError("NativeSeedProbeOutput")
    generated, extraction = verified_generated(refs, selection)
    borrow = refs.read(selection["borrow_selection_ref"])
    source_dir = (
        repository
        / "experiments/transition-study036/proofs/Correspondence036/Dependencies"
    )
    sources = []
    source_refs = []
    for owner, key, name in [
        (borrow, "borrow_source_ref", "NativeStringBorrow.lean"),
        (borrow, "runtime_source_ref", "RuntimeNames.lean"),
        (selection, "operations_source_ref", "NativeTypedSeedOperations.lean"),
        (selection, "specification_source_ref", "NativeTypedSeedSpec.lean"),
        (selection, "proofs_source_ref", "NativeTypedSeedProofs.lean"),
    ]:
        guard_reference(owner[key])
        path = refs.verify(owner[key])
        if path != source_dir / name:
            raise ValueError("NativeSeedModelSource")
        sources.append(path.read_bytes())
        source_refs.append(owner[key])
    files = seed_project_files(generated, *sources, selection["bindings"])
    roots = seed_roots()
    _validate_roots(roots)
    tools = refs.read(borrow["tools_ref"])
    for tool_ref in tools.values():
        guard_reference(tool_ref)
    compiler, lean, cache = (
        refs.read(tools[key]) for key in ("rust_ref", "lean_ref", "cache_ref")
    )
    if any(lean["statuses"].values()) or cache["missing_requested_roots"]:
        raise ValueError("NativeSeedLeanTools")
    sdk, backend = Path(lean["sdk"]), Path(cache["backend"])
    if backend != private / "analysis-backend-build/a0058/lean":
        raise ValueError("NativeSeedBackend")
    inventory = read(refs.verify(tools["sdk_inventory_ref"]), limit=32 * 1024**2)

    def verify_tools():
        for row in lean["patched_binaries"]:
            if digest(guard_owned_path(row["path"])) != row["sha256"]:
                raise ValueError("NativeSeedLeanToolChanged")
        for row in inventory["entries"]:
            relative = guard_owned_path(row["path"])
            if relative.is_absolute() or ".." in relative.parts:
                raise ValueError("NativeSeedSDKPath")
            path = guard_owned_path(sdk / relative)
            if not path.resolve().is_relative_to(sdk):
                raise ValueError("NativeSeedSDKPath")
            if row["kind"] in {"file", "hardlink"} and digest(path) != row["sha256"]:
                raise ValueError("NativeSeedSDKChanged")
            if row["kind"] == "symlink" and os.readlink(path) != row["target"]:
                raise ValueError("NativeSeedSDKLink")

    verify_tools()
    out.mkdir(parents=True, exist_ok=False)
    project, compiled = out / "project", out / "compiled"
    project.mkdir()
    compiled.mkdir()
    for name, raw in files.items():
        path = project / (name.replace(".", "/") + ".lean")
        path.parent.mkdir(parents=True, exist_ok=True)
        write_once(path, raw)
    temporary = private / "tmp" / ("native-seed-probe-" + declaration["record_id"])
    temporary.mkdir(parents=True, exist_ok=False)
    env = {
        **lean["environment"],
        "PATH": compiler["environment"]["PATH"],
        "LEAN_PATH": str(compiled),
        "LEAN_NUM_THREADS": "1",
        "LEAN_STACK_SIZE_KB": "131072",
        "MALLOC_ARENA_MAX": "2",
        "CI": "1",
        "TMPDIR": str(temporary),
    }
    write_once(
        out / "source-binding.json",
        dict(
            selection_ref=reference,
            extraction_result_ref=selection["extraction_result_ref"],
            generated=extraction["generated"],
            bindings=selection["bindings"],
            native_proof="unestablished",
            feature_complete=False,
        ),
    )
    checked = check_declared_proof_v2(
        project=project,
        compiled=compiled,
        sdk=sdk,
        backend=backend,
        env=env,
        modules=list(files),
        roots=roots,
        expected_files={
            name: digest(project / (name.replace(".", "/") + ".lean")) for name in files
        },
        out=out / "declared-proof",
        kernel_mode="selected-root-export-v1",
    )
    if verified_generated(refs, selection)[0] != generated:
        raise ValueError("NativeSeedGeneratedChangedAfter")
    verify_tools()
    for source_ref in [reference, *source_refs, selection["borrow_selection_ref"]]:
        refs.verify(source_ref)
    write_once(
        out / "result.json",
        dict(
            format="core036.native-seed-component-check.v2",
            source_subject_ref=declaration["source_subject_ref"],
            selection_ref=reference,
            proof_result_ref=ref_for(out / "declared-proof/result.json", refs),
            component_status=checked["status"],
            checked_roots=len(roots),
            scope="generated_typed_seed_model_only",
            native_proof="unestablished",
            runtime_totality_established=False,
            feature_complete=False,
            product_adoption="unactivated",
        ),
    )
    return 0
