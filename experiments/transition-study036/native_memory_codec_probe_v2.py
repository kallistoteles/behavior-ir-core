"""Fresh model-coherence check; source/library/native admission stays separate."""

import os
from pathlib import Path

from artifact_io import digest, read, write_once
from artifact_registration_v2 import guard_reference
from check_proofs import check_declared_proof_v2
from controller_v2 import ref_for
from native_accessor_source_canary_v2 import guard_owned_path, _unlinked_parents
from native_json_source_context_v2 import validate_json_source_probe_config
from native_memory_codec_context_v2 import (
    SOURCE_NAMES,
    memory_codec_project_files,
    memory_codec_roots,
    validate_memory_codec_selection,
)
from native_seed_probe_v2 import verified_generated
from native_string_memory_context_v2 import validate_readonly_callers_selection
from native_string_memory_source_v2 import verified_readonly_callers_source


def run_probe(refs, reference, declaration, out):
    guard_reference(reference)
    selection = refs.read(reference)
    validate_memory_codec_selection(selection)
    private, repository = refs.roots["private"], refs.roots["repository"]
    if out != private / "ground-lean-probe" / declaration["record_id"] or out.exists():
        raise ValueError("MemoryCodecOutput")
    json_selection = refs.read(selection["json_source_selection_ref"])
    readonly = refs.read(selection["readonly_selection_ref"])
    validate_json_source_probe_config(json_selection)
    validate_readonly_callers_selection(readonly)
    if json_selection["borrow_selection_ref"] != readonly["borrow_selection_ref"]:
        raise ValueError("MemoryCodecSharedBorrowContext")
    generated, extraction = verified_generated(refs, json_selection, mode="json_source")
    functions, memory_extraction = verified_readonly_callers_source(refs, readonly)
    checkpoint = refs.read(selection["checked_readonly_checkpoint_ref"])
    checked_readonly = refs.read(selection["checked_readonly_result_ref"])
    if (
        refs.verify(selection["checked_readonly_checkpoint_ref"])
        != refs.roots["future_evidence"] / "attempts/a0563/checkpoint.json"
        or refs.verify(selection["checked_readonly_result_ref"])
        != private / "ground-lean-probe/a0563/result.json"
        or checkpoint.get("stage_outcome") != "succeeded"
        or checkpoint.get("source_validation_error") is not None
        or checkpoint.get("outcome", {}).get("operational") != "closed"
        or checked_readonly.get("format")
        != "core036.native-string-readonly-callers-check.v2"
        or checked_readonly.get("selection_ref") != selection["readonly_selection_ref"]
        or checked_readonly.get("source_subject_ref")
        != checkpoint.get("source_subject_ref")
        or checked_readonly.get("component_status") != "proved_for_declared_subject"
        or checked_readonly.get("checked_roots") != 5
        or checked_readonly.get("source_function_count") != len(functions)
        or checked_readonly.get("scope")
        != "source_readonly_string_borrow_programs_only"
        or checked_readonly.get("native_proof") != "unestablished"
        or checked_readonly.get("runtime_totality_established") is not False
        or checked_readonly.get("feature_complete") is not False
    ):
        raise ValueError("MemoryCodecCheckedReadonlyContext")
    borrow = refs.read(readonly["borrow_selection_ref"])
    if (
        selection["source_refs"]["NativeStringBorrow"] != borrow["borrow_source_ref"]
        or selection["source_refs"]["RuntimeNames"] != borrow["runtime_source_ref"]
        or any(
            selection["source_refs"][name] != value
            for name, value in readonly["source_refs"].items()
        )
        or any(
            selection["source_refs"][name] != value
            for name, value in json_selection["source_refs"].items()
        )
    ):
        raise ValueError("MemoryCodecSourceContext")
    source_dir = (
        repository
        / "experiments/transition-study036/proofs/Correspondence036/Dependencies"
    )
    sources = {}
    for name in sorted(SOURCE_NAMES):
        path = refs.verify(selection["source_refs"][name])
        if path != source_dir / (name + ".lean"):
            raise ValueError("MemoryCodecSourcePath")
        sources[name] = path.read_bytes()
    files = memory_codec_project_files(generated, functions, sources)
    roots = memory_codec_roots()
    tools = refs.read(borrow["tools_ref"])
    for tool_ref in tools.values():
        guard_reference(tool_ref)
    compiler, lean, cache = (
        refs.read(tools[key]) for key in ("rust_ref", "lean_ref", "cache_ref")
    )
    if any(lean["statuses"].values()) or cache["missing_requested_roots"]:
        raise ValueError("MemoryCodecTools")
    sdk, backend = Path(lean["sdk"]), Path(cache["backend"])
    if backend != private / "analysis-backend-build/a0058/lean":
        raise ValueError("MemoryCodecBackend")
    inventory = read(refs.verify(tools["sdk_inventory_ref"]), limit=32 * 1024**2)

    def verify_tools():
        for row in lean["patched_binaries"]:
            path = guard_owned_path(row["path"])
            _unlinked_parents(path)
            if digest(path) != row["sha256"]:
                raise ValueError("MemoryCodecLeanChanged")
        for row in inventory["entries"]:
            relative = guard_owned_path(row["path"])
            if relative.is_absolute() or ".." in relative.parts:
                raise ValueError("MemoryCodecSDKPath")
            path = guard_owned_path(sdk / relative)
            # A symlink entry itself is inspected without following it.
            _unlinked_parents(path.parent if row["kind"] == "symlink" else path)
            if row["kind"] in {"file", "hardlink"} and digest(path) != row["sha256"]:
                raise ValueError("MemoryCodecSDKChanged")
            if row["kind"] == "symlink" and os.readlink(path) != row["target"]:
                raise ValueError("MemoryCodecSDKLink")

    verify_tools()
    project, compiled = out / "project", out / "compiled"
    project.mkdir(parents=True)
    compiled.mkdir()
    for name, raw in files.items():
        path = project / (name.replace(".", "/") + ".lean")
        path.parent.mkdir(parents=True, exist_ok=True)
        write_once(path, raw)
    temporary = private / "tmp" / ("native-memory-codec-" + declaration["record_id"])
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
    adaptation = {
        "module": "NativeJsonIterators",
        "token": "CORE036_MODULE_PREFIX",
        "replacement": "SeedFoldsNames",
        "occurrences": 1,
        "original_sha256": selection["source_refs"]["NativeJsonIterators"]["sha256"],
        "adapted_sha256": digest(project / "NativeJsonIterators.lean"),
    }
    write_once(
        out / "source-binding.json",
        {
            "selection_ref": reference,
            "source_descriptors": functions,
            "generated": extraction["generated"],
            "memory_extraction_generated": memory_extraction["generated"],
            "proof_adaptation": adaptation,
            "native_proof": "unestablished",
            "feature_complete": False,
        },
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
    from native_memory_codec_canaries_v2 import run_memory_codec_canaries

    canaries = run_memory_codec_canaries(
        files=files,
        roots=roots,
        sdk=sdk,
        backend=backend,
        env=env,
        out=out / "memory-codec-canaries",
    )
    if verified_generated(refs, json_selection, mode="json_source")[0] != generated:
        raise ValueError("MemoryCodecGeneratedChangedAfter")
    if verified_readonly_callers_source(refs, readonly)[0] != functions:
        raise ValueError("MemoryCodecCallersChangedAfter")
    verify_tools()
    for source_ref in [
        reference,
        *selection["source_refs"].values(),
        *[
            selection[key]
            for key in (
                "json_source_selection_ref",
                "readonly_selection_ref",
                "checked_readonly_checkpoint_ref",
                "checked_readonly_result_ref",
            )
        ],
    ]:
        refs.verify(source_ref)
    write_once(
        out / "result.json",
        {
            "format": "core036.native-memory-codec-check.v2",
            "selection_ref": reference,
            "source_subject_ref": declaration["source_subject_ref"],
            "proof_result_ref": ref_for(out / "declared-proof/result.json", refs),
            "component_status": checked["status"],
            "source_canaries": canaries,
            "checked_roots": len(roots),
            "source_function_count": len(functions),
            "proof_adaptation": adaptation,
            "scope": "source_memory_codec_coherence_only",
            "native_proof": "unestablished",
            "runtime_totality_established": False,
            "feature_complete": False,
            "product_adoption": "unactivated",
        },
    )
    return 0
