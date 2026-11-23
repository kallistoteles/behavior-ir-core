"""Type-check unchanged generated bodies; template axioms prove nothing."""

import argparse
import json
import os
import re
import resource
import shutil
from pathlib import Path

from artifact_io import RootRegistry, digest, read, write_once
from environment import check_prepared_analysis_v2
from native_lean_check_v2 import MAP_AXIOM, MAP_MODEL
from lean_command_v2 import run_logged_command

E = Path(__file__).resolve().parent
R = E.parents[1]

ARRAY_AUDIT = """
open Lean Elab Command Term Meta
elab "#array_literal_audit" : command => do
  let reports ← liftTermElabM do
    let roots := #[
      ``Correspondence036.ArrayLiteralProofs.proof_argument_irrelevant,
      ``Correspondence036.ArrayLiteralProofs.data_exact]
    let allowed := #[``propext, ``Classical.choice, ``Quot.sound]
    let mut reports := #[]
    for i in [:roots.size] do
      let declName := roots[i]!
      let info ← getConstInfo declName
      match info with
      | .thmInfo _ => pure ()
      | _ =>
        let kind := match info with
          | .axiomInfo _ => "axiom"
          | .defnInfo _ => "definition"
          | .opaqueInfo _ => "opaque"
          | _ => "other"
        throwError m!"Array helper root is not a theorem: {declName}; kind={kind}; type={reprStr info.type}"
      let axioms ← collectAxioms declName
      unless axioms.all (fun n => allowed.contains n) do
        throwError "Unexpected array helper transitive axiom"
      let mut rows := #[]
      for axiomName in axioms do
        let axiomInfo ← getConstInfo axiomName
        rows := rows.push <| Json.mkObj [
          ("name", toJson axiomName.toString),
          ("type_repr", toJson (reprStr axiomInfo.type))]
      reports := reports.push <| Json.mkObj [
        ("declaration", toJson declName.toString),
        ("axioms", Json.arr rows)]
    pure reports
  liftIO <| IO.println s!"CORE036_ARRAY_LITERAL_AUDIT {Json.compress (Json.arr reports)}"
#array_literal_audit
"""


def complete_external_types_v2(
    external, module_prefix, projection_support=False, impl_support=False
):
    """Add diagnostic support; absence is not a malformed map declaration."""
    count = external.count(MAP_AXIOM)
    if (
        re.fullmatch(r"[A-Za-z_][A-Za-z0-9_]*", module_prefix) is None
        or external.count("public import Aeneas\n") != 1
        or count not in {0, 1}
        or (count == 0 and "serde_json.map.Map" in external)
    ):
        raise ValueError("GroundLeanProbeMapTemplate")
    return external.replace(MAP_AXIOM, MAP_MODEL).replace(
        "public import Aeneas\n",
        f"public import Aeneas\npublic import {module_prefix}.RuntimeNames\n"
        f"public meta import {module_prefix}.ArrayLiteralProofs\n"
        + (
            f"public meta import {module_prefix}.NonPosForwardProjection\n"
            if projection_support
            else ""
        )
        + (
            f"public meta import {module_prefix}.ImplDefInferenceSupport\n"
            if impl_support
            else ""
        ),
    )


def registered_refs(declaration):
    from controller_v2 import registry_for

    refs = registry_for(declaration["work_id"])
    if refs.roots["repository"] != R or refs.roots["private"] != Path(
        declaration["profile"]["roots"]["cache"]
    ):
        raise ValueError("GroundLeanRegisteredContext")
    return refs


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--declaration", required=True)
    parser.add_argument("--out", required=True)
    args = parser.parse_args()
    declaration = read(args.declaration)
    private = Path(declaration["profile"]["roots"]["cache"])
    out = Path(args.out)
    if out != private / "ground-lean-probe" / declaration["record_id"] or out.exists():
        raise ValueError("GroundLeanProbeOutput")
    refs = registered_refs(declaration)
    config = read(E / "ground-lean-probe-inputs-v2.json")
    if "native_json_source_component_ref" in config:
        if (
            set(config) != {"format", "native_json_source_component_ref"}
            or config["format"] != "core036.ground-lean-probe.v2"
        ):
            raise ValueError("JsonSourceGroundSelection")
        from native_seed_probe_v2 import run_probe

        return run_probe(
            refs,
            config["native_json_source_component_ref"],
            declaration,
            out,
            mode="json_source",
        )
    if "native_std_source_ref" in config:
        if (
            set(config) != {"format", "native_std_source_ref"}
            or config["format"] != "core036.ground-lean-probe.v2"
        ):
            raise ValueError("NativeStdSourceGroundSelection")
        from native_std_source_v2 import run_acquisition

        return run_acquisition(refs, config["native_std_source_ref"], declaration, out)
    if "native_joint_component_ref" in config:
        if (
            set(config) != {"format", "native_joint_component_ref"}
            or config["format"] != "core036.ground-lean-probe.v2"
        ):
            raise ValueError("NativeJointGroundSelection")
        from native_seed_probe_v2 import run_probe

        return run_probe(
            refs, config["native_joint_component_ref"], declaration, out, mode="joint"
        )
    if "native_seed_component_ref" in config:
        if (
            set(config) != {"format", "native_seed_component_ref"}
            or config["format"] != "core036.ground-lean-probe.v2"
        ):
            raise ValueError("NativeSeedGroundSelection")
        from native_seed_probe_v2 import run_probe

        return run_probe(refs, config["native_seed_component_ref"], declaration, out)
    if "native_row_component_ref" in config:
        if (
            set(config) != {"format", "native_row_component_ref"}
            or config["format"] != "core036.ground-lean-probe.v2"
        ):
            raise ValueError("NativeRowGroundSelection")
        from native_row_probe_v2 import run_probe

        return run_probe(refs, config["native_row_component_ref"], declaration, out)
    if "native_accessor_canary_ref" in config:
        if (
            set(config) != {"format", "native_accessor_canary_ref"}
            or config["format"] != "core036.ground-lean-probe.v2"
        ):
            raise ValueError("NativeAccessorCanaryGroundSelection")
        from native_accessor_source_canary_v2 import run_canary

        return run_canary(refs, config["native_accessor_canary_ref"], declaration, out)
    if "native_json_borrow_ref" in config:
        if (
            set(config) != {"format", "native_json_borrow_ref"}
            or config["format"] != "core036.ground-lean-probe.v2"
        ):
            raise ValueError("NativeJsonBorrowGroundSelection")
        from native_json_borrow_probe_v2 import run_probe

        return run_probe(refs, config["native_json_borrow_ref"], declaration, out)
    if "native_collection_layout_ref" in config:
        if (
            set(config) != {"format", "native_collection_layout_ref"}
            or config["format"] != "core036.ground-lean-probe.v2"
        ):
            raise ValueError("NativeCollectionLayoutGroundSelection")
        from native_collection_layout_probe_v2 import run_probe

        return run_probe(refs, config["native_collection_layout_ref"], declaration, out)
    if "collections_order_ref" in config:
        if (
            set(config) != {"format", "collections_order_ref"}
            or config["format"] != "core036.ground-lean-probe.v2"
        ):
            raise ValueError("CollectionsOrderGroundSelection")
        from collections_order_probe_v2 import run_probe

        return run_probe(refs, config["collections_order_ref"], declaration, out)
    if "collections_invariant_ref" in config:
        if (
            set(config) != {"format", "collections_invariant_ref"}
            or config["format"] != "core036.ground-lean-probe.v2"
        ):
            raise ValueError("CollectionsInvariantGroundSelection")
        from collections_invariant_probe_v2 import run_probe

        return run_probe(refs, config["collections_invariant_ref"], declaration, out)
    if "collections_entry_ref" in config:
        if (
            set(config) != {"format", "collections_entry_ref"}
            or config["format"] != "core036.ground-lean-probe.v2"
        ):
            raise ValueError("CollectionsEntryGroundSelection")
        from collections_entry_probe_v2 import run_probe

        return run_probe(refs, config["collections_entry_ref"], declaration, out)
    if "collections_focus_ref" in config:
        if (
            set(config) != {"format", "collections_focus_ref"}
            or config["format"] != "core036.ground-lean-probe.v2"
        ):
            raise ValueError("CollectionsFocusGroundSelection")
        from collections_focus_probe_v2 import run_probe

        return run_probe(refs, config["collections_focus_ref"], declaration, out)
    if "collections_data_ref" in config:
        if (
            set(config) != {"format", "collections_data_ref"}
            or config["format"] != "core036.ground-lean-probe.v2"
        ):
            raise ValueError("CollectionsDataGroundSelection")
        from collections_data_probe_v2 import run_probe

        return run_probe(refs, config["collections_data_ref"], declaration, out)
    if "never_return_proof_ref" in config:
        if (
            set(config) != {"format", "never_return_proof_ref"}
            or config["format"] != "core036.ground-lean-probe.v2"
        ):
            raise ValueError("NeverReturnProofGroundSelection")
        from never_return_proof_v2 import run_probe

        return run_probe(refs, config["never_return_proof_ref"], declaration, out)
    if "never_return_canary_ref" in config:
        if (
            set(config) != {"format", "never_return_canary_ref"}
            or config["format"] != "core036.ground-lean-probe.v2"
        ):
            raise ValueError("NeverReturnCanaryGroundSelection")
        from never_return_canary_probe_v2 import run_probe

        return run_probe(refs, config["never_return_canary_ref"], declaration, out)
    if "write_default_scoped_ref" in config:
        if (
            set(config) != {"format", "write_default_scoped_ref"}
            or config["format"] != "core036.ground-lean-probe.v2"
        ):
            raise ValueError("WriteDefaultScopedGroundSelection")
        from write_default_scoped_probe_v2 import run_probe

        return run_probe(refs, config["write_default_scoped_ref"], declaration, out)
    if "mutable_buffer_candidate_ref" in config:
        if (
            set(config) != {"format", "mutable_buffer_candidate_ref"}
            or config["format"] != "core036.ground-lean-probe.v2"
        ):
            raise ValueError("MutableBufferCandidateGroundSelection")
        from mutable_buffer_candidate_v2 import run_probe

        return run_probe(refs, config["mutable_buffer_candidate_ref"], declaration, out)
    if "mutable_buffer_probe_ref" in config:
        if (
            set(config) != {"format", "mutable_buffer_probe_ref"}
            or config["format"] != "core036.ground-lean-probe.v2"
        ):
            raise ValueError("MutableBufferGroundSelection")
        from mutable_buffer_probe_v2 import run_probe

        return run_probe(refs, config["mutable_buffer_probe_ref"], declaration, out)
    if "mutable_read_green_ref" in config:
        if (
            set(config) != {"format", "mutable_read_green_ref"}
            or config["format"] != "core036.ground-lean-probe.v2"
        ):
            raise ValueError("MutableReadGreenGroundSelection")
        from mutable_read_green_v2 import run_probe

        return run_probe(refs, config["mutable_read_green_ref"], declaration, out)
    if "mutable_read_probe_ref" in config:
        if (
            set(config) != {"format", "mutable_read_probe_ref"}
            or config["format"] != "core036.ground-lean-probe.v2"
        ):
            raise ValueError("MutableReadGroundSelection")
        from mutable_read_probe_v2 import run_probe

        return run_probe(refs, config["mutable_read_probe_ref"], declaration, out)
    if "kernel_export_probe_ref" in config:
        if (
            set(config) != {"format", "kernel_export_probe_ref"}
            or config["format"] != "core036.ground-lean-probe.v2"
        ):
            raise ValueError("KernelExportGroundSelection")
        from kernel_export_probe_v2 import run_probe

        return run_probe(refs, config["kernel_export_probe_ref"], declaration, out)
    if "unit_constant_probe_ref" in config:
        if (
            set(config) != {"format", "unit_constant_probe_ref"}
            or config["format"] != "core036.ground-lean-probe.v2"
        ):
            raise ValueError("UnitGroundSelection")
        from unit_constant_probe_v2 import run_probe

        return run_probe(refs, config["unit_constant_probe_ref"], declaration, out)
    if "slice_metadata_negative_ref" in config:
        if (
            set(config) != {"format", "slice_metadata_negative_ref"}
            or config["format"] != "core036.ground-lean-probe.v2"
        ):
            raise ValueError("SliceNegativeGroundSelection")
        from slice_metadata_negative_v2 import run_probe

        return run_probe(refs, config["slice_metadata_negative_ref"], declaration, out)
    if "slice_metadata_probe_ref" in config:
        if (
            set(config) != {"format", "slice_metadata_probe_ref", "analysis_tools_ref"}
            or config["format"] != "core036.ground-lean-probe.v2"
        ):
            raise ValueError("SliceMetadataGroundSelection")
        from slice_metadata_probe_v2 import run_probe

        return run_probe(
            declaration,
            out,
            config["slice_metadata_probe_ref"],
            refs.read(config["analysis_tools_ref"]),
        )
    if (
        set(config)
        not in (
            {"format", "extraction_checkpoint_ref", "extraction_result_ref"},
            {
                "format",
                "extraction_checkpoint_ref",
                "extraction_result_ref",
                "nonpos_library_binding_ref",
            },
            {
                "format",
                "extraction_checkpoint_ref",
                "extraction_result_ref",
                "nonpos_library_binding_ref",
                "option_diagnostic_ref",
            },
            {
                "format",
                "extraction_checkpoint_ref",
                "extraction_result_ref",
                "nonpos_library_binding_ref",
                "projection_support_ref",
            },
            {
                "format",
                "extraction_checkpoint_ref",
                "extraction_result_ref",
                "nonpos_library_binding_ref",
                "projection_support_ref",
                "impl_universe_diagnostic_ref",
            },
            {
                "format",
                "extraction_checkpoint_ref",
                "extraction_result_ref",
                "nonpos_library_binding_ref",
                "projection_support_ref",
                "impl_support_ref",
            },
            {
                "format",
                "extraction_checkpoint_ref",
                "extraction_result_ref",
                "nonpos_library_binding_ref",
                "projection_support_ref",
                "impl_support_ref",
                "frontend_diagnostic_ref",
            },
            {
                "format",
                "extraction_checkpoint_ref",
                "extraction_result_ref",
                "nonpos_library_binding_ref",
                "projection_support_ref",
                "impl_support_ref",
                "syntax_resume_ref",
            },
            {
                "format",
                "extraction_checkpoint_ref",
                "extraction_result_ref",
                "nonpos_library_binding_ref",
                "projection_support_ref",
                "impl_support_ref",
                "syntax_resume_ref",
                "dictionary_diagnostic_ref",
            },
            {
                "format",
                "extraction_checkpoint_ref",
                "extraction_result_ref",
                "nonpos_library_binding_ref",
                "projection_support_ref",
                "impl_support_ref",
                "syntax_resume_ref",
                "value_diagnostic_ref",
            },
        )
        or config["format"] != "core036.ground-lean-probe.v2"
    ):
        raise ValueError("GroundLeanProbeContext")
    checkpoint_path = refs.verify(config["extraction_checkpoint_ref"])
    RootRegistry({"attempt": checkpoint_path.parent}).verify_closed("attempt")
    checkpoint = refs.read(config["extraction_checkpoint_ref"])
    extraction_path = refs.verify(config["extraction_result_ref"])
    extraction = refs.read(config["extraction_result_ref"])
    if (
        checkpoint["stage_outcome"] != "succeeded"
        or extraction_path.parent.name != checkpoint["attempt_id"]
        or extraction["extraction_exit_code"] != 0
        or extraction["translation_exit_code"] != 0
        or extraction["source_subject_ref"] != checkpoint["source_subject_ref"]
    ):
        raise ValueError("GroundLeanProbeUnsuccessfulSource")
    check_prepared_analysis_v2(E / "analysis-environment-binding-v2.json")
    generated = {}
    for row in extraction["generated"]:
        path = extraction_path.parent / row["path"]
        if (
            row["path"] != "generated/" + path.name
            or path.name in generated
            or digest(path) != row["sha256"]
            or path.stat().st_size != row["bytes"]
        ):
            raise ValueError("GroundLeanProbeGeneratedBinding")
        generated[path.name] = (path, row)
    if set(generated) != {
        "Types.lean",
        "TypesExternal_Template.lean",
        "FunsExternal_Template.lean",
        "Funs.lean",
    }:
        raise ValueError("GroundLeanProbeGeneratedModules")
    module_headers = re.findall(
        r"^public import ([A-Za-z_][A-Za-z0-9_]*)\.TypesExternal$",
        generated["Types.lean"][0].read_text(),
        re.MULTILINE,
    )
    if len(module_headers) != 1:
        raise ValueError("GeneratedLeanModulePrefix")
    module_prefix = module_headers[0]
    functions = generated["Funs.lean"][0].read_text()
    if any(
        functions.count("public import " + module_prefix + "." + name + "\n") != 1
        for name in ["Types", "FunsExternal"]
    ):
        raise ValueError("GeneratedLeanInconsistentModulePrefix")
    if "syntax_resume_ref" in config:
        from syntax_resume_v2 import run_syntax_resume

        return run_syntax_resume(
            refs=refs,
            config=config,
            generated=generated,
            prefix=module_prefix,
            declaration=declaration,
            out=out,
        )
    if "frontend_diagnostic_ref" in config:
        from frontend_probe_v2 import run_frontend_diagnostic

        return run_frontend_diagnostic(
            refs=refs,
            config=config,
            generated=generated,
            prefix=module_prefix,
            declaration=declaration,
            out=out,
        )
    if "option_diagnostic_ref" in config:
        from native_option_slice_v2 import run_option_diagnostic

        return run_option_diagnostic(
            refs=refs,
            config=config,
            generated=generated,
            prefix=module_prefix,
            declaration=declaration,
            out=out,
        )
    if "impl_universe_diagnostic_ref" in config:
        from impl_universe_probe_v2 import run_impl_diagnostic

        return run_impl_diagnostic(
            refs=refs,
            config=config,
            generated=generated,
            prefix=module_prefix,
            declaration=declaration,
            out=out,
        )
    out.mkdir(parents=True)
    project = out / "project"
    folder = project / module_prefix
    compiled = out / "compiled"
    folder.mkdir(parents=True)
    (compiled / module_prefix).mkdir(parents=True)
    for name in ("Types.lean", "Funs.lean"):
        shutil.copy2(generated[name][0], folder / name)
    syntax_support = (
        E / "proofs/Correspondence036/Dependencies/NativeSyntaxControl.lean"
    )
    syntax_source = syntax_support.read_text()
    if (
        syntax_source.count("CORE036_MODULE_PREFIX") != 2
        or syntax_source.count("CORE036_FUNS_PATH") != 1
    ):
        raise ValueError("GroundNativeSyntaxControlTemplate")
    write_once(
        folder / "NativeSyntaxControl.lean",
        syntax_source.replace("CORE036_MODULE_PREFIX", module_prefix)
        .replace('"CORE036_FUNS_PATH"', json.dumps(str(folder / "Funs.lean")))
        .encode(),
    )
    shutil.copy2(
        generated["FunsExternal_Template.lean"][0], folder / "FunsExternal.lean"
    )
    external = generated["TypesExternal_Template.lean"][0].read_text()
    projection_source = None
    if "projection_support_ref" in config:
        from projection_support_v2 import checked_projection_support

        projection_source = checked_projection_support(
            refs, config["projection_support_ref"]
        )
        shutil.copy2(projection_source, folder / "NonPosForwardProjection.lean")
    impl_source = None
    if "impl_support_ref" in config:
        from impl_universe_support_v2 import checked_validated_support

        impl_source = checked_validated_support(refs, config["impl_support_ref"])
        shutil.copy2(impl_source, folder / "ImplDefInferenceSupport.lean")
    external = complete_external_types_v2(
        external,
        module_prefix,
        projection_support=projection_source is not None,
        impl_support=impl_source is not None,
    )
    write_once(folder / "TypesExternal.lean", external.encode())
    shutil.copy2(
        E / "proofs/Correspondence036/Dependencies/RuntimeNames.lean",
        folder / "RuntimeNames.lean",
    )
    array_support = E / "proofs/Correspondence036/Dependencies/ArrayLiteralProofs.lean"
    shutil.copy2(array_support, folder / "ArrayLiteralProofs.lean")
    do_support = E / "proofs/Correspondence036/Dependencies/DoElaboration.lean"
    shutil.copy2(do_support, folder / "DoElaboration.lean")
    literal_path = extraction_path.parent / "worker/expected/ld8-module.json"
    literal_bytes = literal_path.read_bytes()
    if not literal_bytes or len(literal_bytes) > 65536:
        raise ValueError("GroundArrayLiteralControlBound")
    values = ", ".join(str(value) + "#u8" for value in literal_bytes)
    control = f"""module
public import {module_prefix}.ArrayLiteralProofs
public import Lean
public import Lean.Util.CollectAxioms
@[expose] public section
open Aeneas.Std
set_option maxRecDepth 8192
set_option maxHeartbeats 1000000
def emptyArray : Aeneas.Std.Array U8 0#usize := Array.make 0#usize []
example : emptyArray.val = [] := by
  unfold emptyArray
  exact Correspondence036.ArrayLiteralProofs.data_exact 0#usize [] (by rfl)
def oneArray : Aeneas.Std.Array U8 1#usize := Array.make 1#usize [255#u8]
example : oneArray.val = [255#u8] := by
  unfold oneArray
  exact Correspondence036.ArrayLiteralProofs.data_exact 1#usize [255#u8] (by rfl)
def actualModuleBytes : Aeneas.Std.Array U8 {len(literal_bytes)}#usize :=
  Array.make {len(literal_bytes)}#usize [{values}]
example : actualModuleBytes.val.length = {len(literal_bytes)} :=
  actualModuleBytes.property
example {{α : Type}} (n : Usize) (values : List α)
    (h₁ h₂ : values.length = n.val) :
    Aeneas.Std.Array.make n values h₁ = Aeneas.Std.Array.make n values h₂ :=
  Correspondence036.ArrayLiteralProofs.proof_argument_irrelevant n values h₁ h₂
example {{α : Type}} (n : Usize) (values : List α)
    (h : values.length = n.val) :
    (Aeneas.Std.Array.make n values h).val = values :=
  Correspondence036.ArrayLiteralProofs.data_exact n values h
#print axioms Correspondence036.ArrayLiteralProofs.proof_argument_irrelevant
#print axioms Correspondence036.ArrayLiteralProofs.data_exact
"""
    write_once(folder / "ArrayLiteralControl.lean", control.encode())
    write_once(
        folder / "ArrayLiteralAudit.lean",
        (
            # Like the existing finite-ID/guard audits, use a non-module root:
            # Lean4.36 then loads private proof bodies. A module's exported
            # interface deliberately presents imported theorems as axioms.
            f"import {module_prefix}.ArrayLiteralProofs\n"
            "import Lean\nimport Lean.Util.CollectAxioms\n" + ARRAY_AUDIT
        ).encode(),
    )
    write_once(
        folder / "ArrayLiteralWrongLength.lean",
        (
            f"module\npublic import {module_prefix}.ArrayLiteralProofs\n"
            "@[expose] public section\nopen Aeneas.Std\n"
            "set_option maxRecDepth 8192\nset_option maxHeartbeats 1000000\n"
            "def wrongLength : Aeneas.Std.Array U8 2#usize := "
            "Array.make 2#usize [0#u8]\n"
        ).encode(),
    )
    analysis = read(private / "analysis-lean-recheck/a0053/result.json")
    sdk = Path(analysis["sdk"])
    backend = private / "analysis-backend-build/a0058/lean"
    env = {
        **os.environ,
        **analysis["environment"],
        "LEAN_PATH": str(compiled),
        "LEAN_NUM_THREADS": "1",
        "LEAN_STACK_SIZE_KB": "131072",
        "MALLOC_ARENA_MAX": "2",
        "CI": "1",
        "GIT_OPTIONAL_LOCKS": "0",
        "GIT_CONFIG_NOSYSTEM": "1",
        "GIT_CONFIG_GLOBAL": os.devnull,
    }
    env.pop("LD_PRELOAD", None)
    limit = declaration["profile"]["limits"]["lean_address_space_bytes"]
    if "nonpos_library_binding_ref" in config:
        from nonpos_context_v2 import prepare_context

        if limit != 8 * 1024**3:
            raise ValueError("GroundNonposRequiresDeclaredAnalysisProfile")
        env = prepare_context(
            refs,
            config["nonpos_library_binding_ref"],
            sdk,
            backend,
            project,
            compiled,
            out,
            env,
            limit,
        )

    def constrain():
        resource.setrlimit(resource.RLIMIT_AS, (limit, limit))

    commands = []

    def check_module(module, expected_exit_code=0):
        log = out / "commands" / module
        argv = [
            *(
                [str(sdk / "bin/lean")]
                if "nonpos_library_binding_ref" in config
                else [str(sdk / "bin/lake"), "--no-build", "env", str(sdk / "bin/lean")]
            ),
            "-j1",
            "-s131072",
            "-M4096",
            *(["-DAeneas.customDoElab=false"] if module == "Funs" else []),
            *(
                ["-Dprofiler=true", "-Dprofiler.threshold=100", "-Ddiagnostics=true"]
                if module in {"Funs", "ArrayLiteralControl"}
                else []
            ),
            "-R",
            str(project),
            "-o",
            str(compiled / module_prefix / (module + ".olean")),
            str(folder / (module + ".lean")),
        ]
        row = run_logged_command(
            log,
            argv,
            cwd=backend,
            env=env,
            seconds=600,
            preexec_fn=constrain,
            metadata=dict(
                module=module_prefix + "." + module,
                expected_exit_code=expected_exit_code,
                address_space_bytes=limit,
            ),
        )
        commands.append(row)
        return row

    modules = (
        "ArrayLiteralProofs",
        "ArrayLiteralAudit",
        "DoElaboration",
        "RuntimeNames",
        *(("NonPosForwardProjection",) if projection_source is not None else ()),
        *(("ImplDefInferenceSupport",) if impl_source is not None else ()),
        "TypesExternal",
        "Types",
        "FunsExternal",
        "NativeSyntaxControl",
        *(
            ("ArrayLiteralControl", "Funs")
            if module_prefix == "Ground"
            else ("Funs", "ArrayLiteralControl")
        ),
    )
    wrong_length_rejected = False
    array_audit = None
    syntax_audit = None
    for module in modules:
        if check_module(module)["exit_code"] != 0:
            break
        if module == "NativeSyntaxControl":
            tag = "CORE036_NATIVE_SYNTAX "
            rows = [
                line[len(tag) :]
                for line in (out / "commands" / module / "stdout.txt")
                .read_text()
                .splitlines()
                if line.startswith(tag)
            ]
            if len(rows) != 1:
                raise ValueError("GroundNativeSyntaxAuditCount")
            syntax_audit = json.loads(rows[0])
            if (
                syntax_audit.get("wrong_quotes_rejected") is not True
                or type(syntax_audit.get("commands")) is not int
                or syntax_audit["commands"] < 1
                or syntax_audit.get("source_utf8_bytes")
                != (folder / "Funs.lean").stat().st_size
            ):
                raise ValueError("GroundNativeSyntaxAuditSource")
        if module == "ArrayLiteralAudit":
            output = (out / "commands" / module / "stdout.txt").read_text()
            tag = "CORE036_ARRAY_LITERAL_AUDIT "
            lines = [
                line[len(tag) :] for line in output.splitlines() if line.startswith(tag)
            ]
            if len(lines) != 1:
                raise ValueError("GroundArrayLiteralTheoremAxioms")
            array_audit = json.loads(lines[0])
            expected = {
                "Correspondence036.ArrayLiteralProofs.proof_argument_irrelevant",
                "Correspondence036.ArrayLiteralProofs.data_exact",
            }
            allowed = {"propext", "Classical.choice", "Quot.sound"}
            if (
                len(array_audit) != 2
                or {row["declaration"] for row in array_audit} != expected
                or any(
                    axiom["name"] not in allowed or not axiom["type_repr"]
                    for row in array_audit
                    for axiom in row["axioms"]
                )
            ):
                raise ValueError("GroundArrayLiteralTheoremAxioms")
        if module == "ArrayLiteralControl":
            rejection = check_module("ArrayLiteralWrongLength", expected_exit_code=1)
            output = (out / "commands/ArrayLiteralWrongLength/stdout.txt").read_text()
            wrong_length_rejected = (
                rejection["exit_code"] == 1
                and "error:" in output
                and "ArrayLiteralWrongLength.lean:" in output
                and "unknown module" not in output
            )
            if not wrong_length_rejected:
                break
    for name in ("Types.lean", "Funs.lean"):
        if digest(folder / name) != generated[name][1]["sha256"]:
            raise ValueError("GroundLeanProbeEditedNativeBody")
    for path, row in generated.values():
        if digest(path) != row["sha256"]:
            raise ValueError("GroundLeanProbeInputChanged")
    passed = (
        len(commands)
        == 11 + int(projection_source is not None) + int(impl_source is not None)
        and wrong_length_rejected
        and all(row["exit_code"] == row["expected_exit_code"] for row in commands)
    )
    write_once(
        out / "result.json",
        dict(
            format="core036.ground-lean-probe-result.v2",
            source_subject_ref=declaration["source_subject_ref"],
            extraction_result_ref=config["extraction_result_ref"],
            selected_native_root=extraction["selected_root"],
            generated_module_prefix=module_prefix,
            commands=commands,
            nonpos_library_binding_ref=config.get("nonpos_library_binding_ref"),
            nonpos_context_result_ref=refs.reference(
                "private",
                str((out / "nonpos-context/result.json").relative_to(private)),
            )
            if "nonpos_library_binding_ref" in config
            else None,
            generated_type_and_function_bodies_unmodified=True,
            projection_support_ref=config.get("projection_support_ref"),
            impl_support_ref=config.get("impl_support_ref"),
            native_syntax_control_ref=refs.reference(
                "repository", str(syntax_support.relative_to(R))
            ),
            native_syntax_audit=syntax_audit,
            all_generated_modules_typecheck=passed,
            generated_do_elaborator="Supported Aeneas.customDoElab=false selects original Lean Term.elabDo for unchanged Funs; no Rust source or generated body edit",
            do_elaboration_control_source_ref=refs.reference(
                "repository", str(do_support.relative_to(R))
            ),
            array_literal_support_ref=refs.reference(
                "repository", str(array_support.relative_to(R))
            ),
            array_literal_source_ref=refs.reference(
                "private", str(literal_path.relative_to(private))
            ),
            array_literal_wrong_length_rejected=wrong_length_rejected,
            array_literal_theorem_audit=array_audit,
            array_literal_theorem_audit_reason=None
            if array_audit is not None
            else "Literal controls did not finish",
            array_literal_elaboration="Same original constructor with explicit kernel-checked proof argument; general data/proof-irrelevance statements checked separately; no native refinement claim",
            external_type_model_status="unestablished",
            external_function_templates="unproved axioms retained for representability diagnosis only",
            native_proof="unestablished",
            feature_complete=False,
        ),
    )
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
