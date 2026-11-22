"""Prospective exact generated-row model checks; no native/Core admission."""

import json
import os
from pathlib import Path

from artifact_io import digest, read, write_once
from artifact_registration_v2 import guard_reference
from records import validate_ref_v2


def validate_row_probe_config(selection):
    references = {
        "positive_checkpoint_ref", "positive_result_ref", "borrow_selection_ref",
        "scope_ref", "operations_source_ref", "proofs_source_ref",
    }
    if isinstance(selection, dict) and "canonical_sources_ref" in selection:
        references.add("canonical_sources_ref")
    if (
        not isinstance(selection, dict)
        or set(selection) != references | {"format", "row_bindings", "dictionary_bindings"}
        or selection["format"] != "core036.native-row-probe.v2"
        or not isinstance(selection["row_bindings"], list)
        or len(selection["row_bindings"]) != 8
        or not isinstance(selection["dictionary_bindings"], list)
        or len(selection["dictionary_bindings"]) != 4
        or any(not isinstance(row, dict) for row in [*selection["row_bindings"], *selection["dictionary_bindings"]])
    ):
        raise ValueError("NativeRowProbeSelection")
    for name in references:
        guard_reference(selection[name])
        validate_ref_v2(selection[name])


def validate_row_abstraction_report(report):
    expected = dict(
        source_function="transition_study036.reference.state_fact_row",
        derived_function="Correspondence036.NativeRowDictionary.RowRead",
        dictionary_instance="transition_study036.Shared0T.Insts.Serde_jsonValueIndexIndex",
        consumer="serde_json.value.Value.Insts.CoreOpsIndexIndexIValue.index",
        sites=4, reinstantiation_exact=True, closed_constant_abstraction_rejected=True,
    )
    if (
        not isinstance(report, dict) or report != expected
        or type(report.get("sites")) is not int
        or report.get("reinstantiation_exact") is not True
        or report.get("closed_constant_abstraction_rejected") is not True
    ):
        raise ValueError("NativeRowAbstractionCertificate")


def run_probe(refs, reference, declaration, out):
    from native_accessor_source_canary_v2 import verified_positive_context, generated_phase_bytes, guard_owned_path
    from native_row_context_v2 import validate_row_scope, row_project_files, row_dictionary_roots
    from check_proofs import _validate_roots, check_declared_proof_v2
    from controller_v2 import ref_for

    guard_reference(reference)
    selection = refs.read(reference)
    validate_row_probe_config(selection)
    validate_row_scope(refs.read(selection["scope_ref"]))
    private, repository = refs.roots["private"], refs.roots["repository"]
    if out != private / "ground-lean-probe" / declaration["record_id"] or out.exists():
        raise ValueError("NativeRowProbeOutput")
    roots = row_dictionary_roots()
    _validate_roots(roots)
    positive_config = dict(
        format="core036.native-accessor-negative.v2",
        positive_checkpoint_ref=selection["positive_checkpoint_ref"],
        positive_result_ref=selection["positive_result_ref"],
        scope="owning_source_negative_only", native_proof="unestablished", feature_complete=False,
    )
    # This only loads the sealed actual positive subject; no mutation executor
    # is invoked and no native API interpretation is inferred from its flags.
    positive = verified_positive_context(refs, positive_config)
    generated = generated_phase_bytes(positive["generated"], positive["phase"])
    if refs.verify(selection["borrow_selection_ref"]) != refs.roots["future_evidence"] / "inputs/native-json-borrow-005.json":
        raise ValueError("NativeRowProbeBorrowContext")
    borrow = refs.read(selection["borrow_selection_ref"])
    source_dir = repository / "experiments/transition-study036/proofs/Correspondence036/Dependencies"
    sources = []
    for owner, key, name in [
        (borrow, "borrow_source_ref", "NativeStringBorrow.lean"),
        (borrow, "runtime_source_ref", "RuntimeNames.lean"),
        (selection, "operations_source_ref", "NativeCanonicalRowOperations.lean"),
        (selection, "proofs_source_ref", "NativeCanonicalRowProofs.lean"),
    ]:
        guard_reference(owner[key])
        path = refs.verify(owner[key])
        if path != source_dir / name:
            raise ValueError("NativeRowProbeModelSource")
        sources.append(path.read_bytes())
    files = row_project_files(generated, *sources, borrow["bindings"], selection["row_bindings"], selection["dictionary_bindings"])
    canonical_refs = []
    if "canonical_sources_ref" in selection:
        from native_canonical_row_context_v2 import (
            SOURCE_NAMES, canonical_row_roots, extend_canonical_row_project,
            validate_canonical_sources,
        )
        packet = refs.read(selection["canonical_sources_ref"])
        validate_canonical_sources(packet)
        canonical_sources = []
        for key, name in SOURCE_NAMES.items():
            path = refs.verify(packet[key])
            if path != source_dir / name:
                raise ValueError("NativeCanonicalRowModelSource")
            canonical_sources.append(path.read_bytes())
            canonical_refs.append(packet[key])
        canonical_refs.append(selection["canonical_sources_ref"])
        files = extend_canonical_row_project(files, *canonical_sources)
        roots += canonical_row_roots()
        _validate_roots(roots)
    positive_selection = refs.read(positive["selection_ref"])
    setup = refs.read(positive_selection["preparation_result_ref"])
    preparation = refs.read(setup["selection_ref"])
    compiler = refs.read(preparation["analysis_ref"])
    tools = refs.read(borrow["tools_ref"])
    for ref in tools.values():
        guard_reference(ref)
    lean, cache = (refs.read(tools[key]) for key in ("lean_ref", "cache_ref"))
    if any(lean["statuses"].values()) or cache["missing_requested_roots"]:
        raise ValueError("NativeRowProbeLeanTools")
    sdk, backend = Path(lean["sdk"]), Path(cache["backend"])
    if backend != private / "analysis-backend-build/a0058/lean":
        raise ValueError("NativeRowProbeBackend")
    inventory = read(refs.verify(tools["sdk_inventory_ref"]), limit=32 * 1024**2)

    def verify_tools():
        for row in lean["patched_binaries"]:
            if digest(guard_owned_path(row["path"])) != row["sha256"]:
                raise ValueError("NativeRowProbeLeanToolChanged")
        for row in inventory["entries"]:
            relative = guard_owned_path(row["path"])
            if relative.is_absolute() or ".." in relative.parts:
                raise ValueError("NativeRowProbeSDKPath")
            path = guard_owned_path(sdk / relative)
            if not path.resolve().is_relative_to(sdk):
                raise ValueError("NativeRowProbeSDKPath")
            if row["kind"] in {"file", "hardlink"} and digest(path) != row["sha256"]:
                raise ValueError("NativeRowProbeSDKChanged")
            if row["kind"] == "symlink" and os.readlink(path) != row["target"]:
                raise ValueError("NativeRowProbeSDKLink")

    verify_tools()
    out.mkdir(parents=True, exist_ok=False)
    project, compiled = out / "project", out / "compiled"
    project.mkdir()
    compiled.mkdir()
    for name, raw in files.items():
        path = project / (name.replace(".", "/") + ".lean")
        path.parent.mkdir(parents=True, exist_ok=True)
        write_once(path, raw)
    temporary = private / "tmp" / ("native-row-probe-" + declaration["record_id"])
    temporary.mkdir(parents=True, exist_ok=False)
    env = {
        **lean["environment"],
        "PATH": compiler["environment"]["PATH"],
        "LEAN_PATH": str(compiled), "LEAN_NUM_THREADS": "1",
        "LEAN_STACK_SIZE_KB": "131072", "MALLOC_ARENA_MAX": "2", "CI": "1",
        "TMPDIR": str(temporary),
    }
    write_once(out / "source-binding.json", dict(
        selection_ref=reference,
        positive_checkpoint_ref=selection["positive_checkpoint_ref"],
        positive_result_ref=selection["positive_result_ref"],
        generated=positive["generated"],
        row_bindings=selection["row_bindings"],
        dictionary_bindings=selection["dictionary_bindings"],
        scope_ref=selection["scope_ref"],
        canonical_sources_ref=selection.get("canonical_sources_ref"),
        native_proof="unestablished", feature_complete=False,
    ))
    checked = check_declared_proof_v2(
        project=project, compiled=compiled, sdk=sdk, backend=backend, env=env,
        modules=list(files), roots=roots,
        expected_files={name: digest(project / (name.replace(".", "/") + ".lean")) for name in files},
        out=out / "declared-proof", kernel_mode="selected-root-export-v1",
    )
    log = out / "declared-proof/lean-RowAbstractionAudit/stdout.txt"
    reports = [json.loads(line.removeprefix("CORE036_ROW_ABSTRACTION "))
               for line in log.read_text().splitlines() if line.startswith("CORE036_ROW_ABSTRACTION ")]
    if len(reports) != 1:
        raise ValueError("NativeRowProbeMissingAbstractionAudit")
    validate_row_abstraction_report(reports[0])
    verified_positive_context(refs, positive_config)
    if generated_phase_bytes(positive["generated"], positive["phase"]) != generated:
        raise ValueError("NativeRowProbeGeneratedChangedAfter")
    verify_tools()
    for key in ["operations_source_ref", "proofs_source_ref", "scope_ref", "borrow_selection_ref"]:
        refs.verify(selection[key])
    for source_ref in canonical_refs:
        refs.verify(source_ref)
    write_once(out / "result.json", dict(
        format="core036.native-row-component-check.v2",
        source_subject_ref=declaration["source_subject_ref"], selection_ref=reference,
        proof_result_ref=ref_for(out / "declared-proof/result.json", refs),
        component_status=checked["status"], checked_roots=len(roots),
        abstraction_audit=reports[0],
        scope="generated_row_component_model_only",
        native_proof="unestablished", runtime_totality_established=False,
        feature_complete=False, product_adoption="unactivated",
    ))
    return 0
