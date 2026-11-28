"""Fresh whole materialization roots under explicitly unadmitted primitive APIs."""

import os
from pathlib import Path

from artifact_io import RootRegistry, digest, read, write_once
from artifact_registration_v2 import guard_reference
from native_accessor_source_canary_v2 import guard_owned_path, _unlinked_parents
from native_whole_views_context_v2 import GENERATED, SOURCES, build_project, roots
from records import MANIFEST


def guarded(path):
    path = guard_owned_path(Path(path))
    _unlinked_parents(path)
    return path


def run_probe(refs, reference, declaration, out):
    from check_proofs import check_declared_proof_v2
    from controller_v2 import ref_for

    guard_reference(reference)
    selection = refs.read(reference)
    if (
        set(selection)
        != {
            "format",
            "extraction_checkpoint_ref",
            "extraction_result_ref",
            "tools_ref",
            "source_refs",
            "scope",
            "native_proof",
            "feature_complete",
        }
        or selection["format"] != "core036.native-whole-views-probe.v2"
        or selection["scope"]
        != "whole_materialize_under_candidate_primitive_interpretations"
        or selection["native_proof"] != "unestablished"
        or selection["feature_complete"] is not False
        or set(selection["source_refs"]) != set(SOURCES)
    ):
        raise ValueError("WholeViewsProbeSelection")
    for ref in [
        selection["extraction_checkpoint_ref"],
        selection["extraction_result_ref"],
        selection["tools_ref"],
        *selection["source_refs"].values(),
    ]:
        guard_reference(ref)
        refs.verify(ref)
    private, future, repository = (
        refs.roots["private"],
        refs.roots["future_evidence"],
        refs.roots["repository"],
    )
    cp_path = guarded(refs.verify(selection["extraction_checkpoint_ref"]))
    base = private / "native-extraction/a0585"
    if (
        cp_path != future / "attempts/a0585/checkpoint.json"
        or refs.verify(selection["extraction_result_ref"]) != base / "result.json"
    ):
        raise ValueError("WholeViewsProbeProducer")
    RootRegistry({"attempt": cp_path.parent}).verify_closed("attempt")
    cp = refs.read(selection["extraction_checkpoint_ref"])
    extraction = refs.read(selection["extraction_result_ref"])
    receipt = read(cp_path.parent / "child/receipt.json", limit=MANIFEST)
    if (
        cp["stage_outcome"] != "succeeded"
        or cp["source_validation_error"] is not None
        or receipt["exit_code"] != 0
        or receipt["stop_reason"] is not None
        or not receipt["tree_empty"]
        or not receipt["group_empty"]
        or receipt["final_storage_inventory_error"] is not None
        or receipt["final_incremental_storage_bytes"]
        != receipt["final_resource_observation"]["growth_apparent_unique_inode_bytes"]
        or cp["source_subject_ref"] != extraction["source_subject_ref"]
        or cp["source_subject_ref"] != receipt["source_subject_ref"]
        or extraction["extraction_exit_code"] != 0
        or extraction["translation_exit_code"] != 0
    ):
        raise ValueError("WholeViewsProbeSourceClosure")
    generated = {}
    for row in extraction["generated"]:
        name = Path(row["path"]).name
        if (
            name not in GENERATED
            or row["path"] != "generated/" + name
            or name in generated
        ):
            raise ValueError("WholeViewsProbeGeneratedInventory")
        path = guarded(base / row["path"])
        if path.stat().st_size != row["bytes"] or digest(path) != row["sha256"]:
            raise ValueError("WholeViewsProbeGeneratedChanged")
        generated[name] = path.read_bytes()
    source_dir = (
        repository
        / "experiments/transition-study036/proofs/Correspondence036/Dependencies"
    )
    sources = {}
    for name, ref in selection["source_refs"].items():
        path = guarded(refs.verify(ref))
        if path != source_dir / (name + ".lean"):
            raise ValueError("WholeViewsProbeModelPath")
        sources[name] = path.read_bytes()
    files, binding = build_project(generated, sources)
    expected_tools = ref_for(
        repository / "experiments/transition-study036/analysis-canary-inputs-v2.json",
        refs,
    )
    if selection["tools_ref"] != expected_tools:
        raise ValueError("WholeViewsProbeFixedTools")
    tools = refs.read(selection["tools_ref"])
    for tool_ref in tools.values():
        guard_reference(tool_ref)
    compiler, lean, cache = (
        refs.read(tools[k]) for k in ("rust_ref", "lean_ref", "cache_ref")
    )
    if any(lean["statuses"].values()) or cache["missing_requested_roots"]:
        raise ValueError("WholeViewsProbeToolStatus")
    sdk, backend = Path(lean["sdk"]), Path(cache["backend"])
    if (
        backend != private / "analysis-backend-build/a0058/lean"
        or sdk != private / "analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux"
    ):
        raise ValueError("WholeViewsProbeBackend")
    inventory = refs.read(tools["sdk_inventory_ref"], limit=MANIFEST)

    def verify_tools():
        for row in lean["patched_binaries"]:
            path = guard_owned_path(Path(row["path"]))
            if digest(path) != row["sha256"]:
                raise ValueError("WholeViewsProbeToolChanged")
        for row in inventory["entries"]:
            relative = guard_owned_path(Path(row["path"]))
            if relative.is_absolute() or ".." in relative.parts:
                raise ValueError("WholeViewsProbeSDKPath")
            path = guard_owned_path(sdk / relative)
            if not path.resolve().is_relative_to(sdk):
                raise ValueError("WholeViewsProbeSDKPath")
            if row["kind"] in {"file", "hardlink"} and digest(path) != row["sha256"]:
                raise ValueError("WholeViewsProbeSDKChanged")
            if row["kind"] == "symlink" and os.readlink(path) != row["target"]:
                raise ValueError("WholeViewsProbeSDKLink")

    verify_tools()
    out = guarded(out)
    if out != private / "ground-lean-probe" / declaration["record_id"] or out.exists():
        raise ValueError("WholeViewsProbeOutput")
    out.mkdir(parents=True)
    project, compiled = out / "project", out / "compiled"
    project.mkdir()
    compiled.mkdir()
    for name, raw in files.items():
        target = project / (name.replace(".", "/") + ".lean")
        target.parent.mkdir(parents=True, exist_ok=True)
        write_once(target, raw)
    temporary = private / "tmp" / ("native-whole-views-" + declaration["record_id"])
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
        {
            "selection_ref": reference,
            "extraction_result_ref": selection["extraction_result_ref"],
            "generated": extraction["generated"],
            **binding,
        },
    )
    checked = check_declared_proof_v2(
        project=project,
        compiled=compiled,
        sdk=sdk,
        backend=backend,
        env=env,
        modules=list(files),
        roots=roots(),
        expected_files={
            name: digest(project / (name.replace(".", "/") + ".lean")) for name in files
        },
        out=out / "declared-proof",
        kernel_mode="selected-root-export-v1",
    )
    verify_tools()
    for ref in [
        reference,
        selection["extraction_checkpoint_ref"],
        selection["extraction_result_ref"],
        *selection["source_refs"].values(),
    ]:
        refs.verify(ref)
    if (
        build_project(
            {
                name: guarded(base / "generated" / name).read_bytes()
                for name in GENERATED
            },
            sources,
        )[0]
        != files
    ):
        raise ValueError("WholeViewsProbeSourceChangedAfter")
    write_once(
        out / "result.json",
        {
            "format": "core036.native-whole-views-model-probe.v2",
            "source_subject_ref": declaration["source_subject_ref"],
            "selection_ref": reference,
            "checked_ref": ref_for(out / "declared-proof/result.json", refs),
            "root_count": len(roots()),
            "checked": checked,
            "scope": selection["scope"],
            "native_proof": "unestablished",
            "feature_complete": False,
        },
    )
    return 0
