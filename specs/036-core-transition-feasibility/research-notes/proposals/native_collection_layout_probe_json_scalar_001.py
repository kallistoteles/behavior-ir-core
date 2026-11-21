"""Guarded positive external type models and post-Value JSON iterators; no admission."""

import os
import hashlib
import re
from pathlib import Path
from artifact_io import RootRegistry, digest, read, write_once
from check_proofs import check_declared_proof_v2, declared_environment_v2
from lean_command_v2 import run_logged_command


NONPOS_MODULES = (
    "Aeneas.NonPos.Domain.Basic",
    "Aeneas.NonPos.Domain.ITree",
    "Aeneas.NonPos.Domain.Limit",
    "Aeneas.NonPos.Domain.Operator",
    "Aeneas.NonPos.Model.Dom",
    "Aeneas.NonPos.Model.Cont",
    "Aeneas.NonPos.Model.Lift",
    "Aeneas.NonPos.Model.Shape",
    "Aeneas.NonPos.Model.Fix",
    "Aeneas.NonPos.Proofs",
    "Aeneas.NonPos.Top",
    "Aeneas.NonPos.Std",
    "Aeneas",
    "QualifiedNamesControl",
    "QualifiedNamesAudit",
    "QualifiedNamesWrong",
    "QualifiedNamesFreshKernel",
)


def with_readonly_inputs(operation, recheck):
    recheck()
    try:
        return operation()
    finally:
        recheck()


def recheck_generated(expected):
    for path, size, checksum in expected.values():
        if path.is_symlink() or path.stat().st_size != size or digest(path) != checksum:
            raise ValueError("NativeCollectionLayoutGeneratedChanged")


def validate_collection_import_parent(cp, result, frozen, context, prefix):
    from syntax_resume_v2 import validate_parent

    validate_parent(cp, result, frozen, frozen, prefix)
    keys = (
        "extraction_result_ref",
        "nonpos_library_binding_ref",
        "projection_support_ref",
        "impl_support_ref",
    )
    commands = context.get("commands", [])
    expected = {
        name: 1 if name == "QualifiedNamesWrong" else 0 for name in NONPOS_MODULES
    }
    if (
        frozen.get("format") != "core036.ground-lean-probe.v2"
        or any(key not in frozen or result.get(key) != frozen[key] for key in keys)
        or len(commands) != len(expected)
        or {row.get("module") for row in commands} != set(expected)
        or any(
            type(row.get("exit_code")) is not int
            or row["exit_code"] != expected[row["module"]]
            or type(row.get("expected_exit_code")) is not int
            or row["expected_exit_code"] != expected[row["module"]]
            for row in commands
        )
    ):
        raise ValueError("NativeCollectionLayoutParentCoverage")


def string_codec_specification(source):
    """Keep codec exports in a separate scope from selected native API lists."""
    from native_string_codec_contract_v2 import roots, controls

    return roots(), controls(source)


def run_probe(refs, reference, declaration, out):
    selection = refs.read(reference)
    private = refs.roots["private"]
    required = {
        "format",
        "tools_ref",
        "data_ref",
        "native_data_ref",
        "deferred_ref",
        "laws_ref",
        "contract_ref",
        "extraction_checkpoint_ref",
        "extraction_result_ref",
        "shared_imports_ref",
        "runtime_source_ref",
        "array_source_ref",
        "projection_support_ref",
        "impl_support_ref",
    }
    if (
        set(selection)
        != required
        | {
            key
            for key in (
                "key_order_ref",
                "iteration_ref",
                "string_codec_ref",
                "string_ops_ref",
                "gap_ref",
                "gap_focus_ref",
                "gap_entry_ref",
                "entry_ops_ref",
                "projection_component_ref",
                "json_scalar_ref",
            )
            if key in selection
        }
        or selection["format"] != "core036.native-collection-layout-probe.v2"
        or out != private / "ground-lean-probe" / declaration["record_id"]
        or out.exists()
        or ("string_codec_ref" in selection and "key_order_ref" not in selection)
        or ("string_ops_ref" in selection and "string_codec_ref" not in selection)
        or ("entry_ops_ref" in selection and "gap_ref" not in selection)
        or ("json_scalar_ref" in selection and not all(key in selection for key in ("string_codec_ref", "string_ops_ref", "projection_component_ref")))
        or (
            any(
                key in selection
                for key in ("gap_ref", "gap_focus_ref", "gap_entry_ref")
            )
            and not all(
                key in selection
                for key in ("gap_ref", "gap_focus_ref", "gap_entry_ref")
            )
        )
    ):
        raise ValueError("NativeCollectionLayoutSelection")
    source_dir = (
        refs.roots["repository"]
        / "experiments/transition-study036/proofs/Correspondence036/Dependencies"
    )
    names = {
        "data_ref": "CollectionsData.lean",
        "native_data_ref": "NativeCollectionsData.lean",
        "deferred_ref": "NativeJsonIterators.lean",
        "laws_ref": "NativeCollectionLayout.lean",
    }
    if "key_order_ref" in selection:
        names["key_order_ref"] = "NativeKeyOrder.lean"
    if "string_codec_ref" in selection:
        names["string_codec_ref"] = "NativeStringCodec.lean"
    if "gap_ref" in selection:
        names.update(
            {
                "gap_ref": "CollectionsGap.lean",
                "gap_focus_ref": "CollectionsFocus.lean",
                "gap_entry_ref": "CollectionsEntry.lean",
            }
        )
    for key in names:
        if Path(selection[key]["path"]).name in {
            "parameters.bin",
            "compression_prover_key.bin",
        }:
            raise ValueError("ProtectedArtifact")
    paths = {key: refs.verify(selection[key]) for key in names}
    if any(paths[key] != source_dir / name for key, name in names.items()):
        raise ValueError("NativeCollectionLayoutSourcePath")
    from projection_support_v2 import checked_projection_support
    from impl_universe_support_v2 import checked_validated_support

    for key, name in [
        ("runtime_source_ref", "RuntimeNames.lean"),
        ("array_source_ref", "ArrayLiteralProofs.lean"),
    ]:
        paths[key] = refs.verify(selection[key])
        if paths[key] != source_dir / name:
            raise ValueError("NativeCollectionLayoutSupportPath")
    paths["projection_source"] = checked_projection_support(
        refs, selection["projection_support_ref"]
    )
    paths["impl_source"] = checked_validated_support(
        refs, selection["impl_support_ref"]
    )
    source_hashes = {key: digest(path) for key, path in paths.items()}
    checkpoint_path = refs.verify(selection["extraction_checkpoint_ref"])
    RootRegistry({"attempt": checkpoint_path.parent}).verify_closed("attempt")
    checkpoint = refs.read(selection["extraction_checkpoint_ref"])
    result_path = refs.verify(selection["extraction_result_ref"])
    extraction = refs.read(selection["extraction_result_ref"])
    if (
        checkpoint["attempt_id"] != "a0365"
        or checkpoint["stage_outcome"] != "succeeded"
        or checkpoint["source_validation_error"] is not None
        or result_path != private / "native-extraction/a0365/result.json"
        or extraction["source_subject_ref"] != checkpoint["source_subject_ref"]
        or extraction["extraction_exit_code"] != 0
        or extraction["translation_exit_code"] != 0
    ):
        raise ValueError("NativeCollectionLayoutExtraction")
    generated = {}
    frozen_generated = {}
    for row in extraction["generated"]:
        name = Path(row["path"]).name
        if (
            name
            not in {
                "Types.lean",
                "TypesExternal_Template.lean",
                "Funs.lean",
                "FunsExternal_Template.lean",
            }
            or row["path"] != "generated/" + name
            or name in generated
        ):
            raise ValueError("NativeCollectionLayoutGeneratedInventory")
        path = result_path.parent / row["path"]
        if path.stat().st_size != row["bytes"] or digest(path) != row["sha256"]:
            raise ValueError("NativeCollectionLayoutGeneratedChanged")
        generated[name] = path
        frozen_generated[name] = (path, row["bytes"], row["sha256"])
    if len(generated) != 4:
        raise ValueError("NativeCollectionLayoutMissingGenerated")
    projection = None
    if "projection_component_ref" in selection:
        projection_reference = selection["projection_component_ref"]
        if Path(projection_reference["path"]).name in {
            "parameters.bin",
            "compression_prover_key.bin",
        }:
            raise ValueError("ProtectedArtifact")
        specification = refs.read(projection_reference)
        from native_projection_component_v2 import component, NAMES

        if (
            set(specification)
            != {
                "format",
                "source_sha256",
                "declarations",
                "native_proof",
                "feature_complete",
            }
            or specification["format"] != "core036.native-projection-component.v2"
            or specification["source_sha256"] != frozen_generated["Funs.lean"][2]
            or specification["declarations"] != list(NAMES)
            or specification["native_proof"] != "unestablished"
            or specification["feature_complete"] is not False
        ):
            raise ValueError("NativeProjectionComponentSpecification")
        projection = component(
            generated["Funs.lean"].read_bytes(), frozen_generated["Funs.lean"][2]
        )
        paths["projection.specification"] = refs.verify(projection_reference)
        source_hashes["projection.specification"] = digest(
            paths["projection.specification"]
        )
    contract = refs.read(selection["contract_ref"])
    if set(contract) != {
        "format",
        "scope",
        "template_sha256",
        "generated_prefix",
        "native_namespace",
        "bindings",
        "native_proof",
        "feature_complete",
    } or not isinstance(contract["bindings"], list):
        raise ValueError("NativeCollectionLayoutContractFields")
    for binding in contract["bindings"]:
        if (
            not isinstance(binding, dict)
            or set(binding)
            != {
                "rust",
                "lean",
                "arity",
                "phase",
                "original_block_bytes",
                "original_block_sha256",
            }
            or type(binding["arity"]) is not int
            or not 0 <= binding["arity"] <= 3
            or type(binding["original_block_bytes"]) is not int
            or not 0 < binding["original_block_bytes"] <= 65536
        ):
            raise ValueError("NativeCollectionLayoutBindingFields")
    if (
        contract["format"] != "core036.native-collection-layout-contract.v2"
        or contract["scope"] != "representability_only_not_native_admission"
        or contract["template_sha256"]
        != digest(generated["TypesExternal_Template.lean"])
        or contract["generated_prefix"] != "WorkerEntrypointsNames"
        or contract["native_namespace"] != "transition_study036"
        or contract["native_proof"] != "unestablished"
        or contract["feature_complete"] is not False
    ):
        raise ValueError("NativeCollectionLayoutContract")
    expected_before = {
        "alloc.collections.btree.map.BTreeMap": 3,
        "alloc.collections.btree.map.Iter": 2,
        "alloc.collections.btree.map.IntoIter": 3,
        "alloc.collections.btree.map.Values": 2,
        "alloc.collections.btree.set.BTreeSet": 2,
        "alloc.collections.btree.map.entry.VacantEntry": 3,
        "alloc.collections.btree.map.entry.OccupiedEntry": 3,
        "serde_json.map.Map": 2,
    }
    expected_after = {"serde_json.map.Keys": 0, "serde_json.map.Iter": 0}
    if (
        len(contract["bindings"]) != 10
        or {
            row["lean"]: row["arity"]
            for row in contract["bindings"]
            if row["phase"] == "before_types"
        }
        != expected_before
        or {
            row["lean"]: row["arity"]
            for row in contract["bindings"]
            if row["phase"] == "after_types"
        }
        != expected_after
    ):
        raise ValueError("NativeCollectionLayoutBindingInventory")
    external = generated["TypesExternal_Template.lean"].read_text()
    original_axioms = set(re.findall(r"^axiom ([^ (\n:]+)", external, re.M))
    removed = []
    for row in contract["bindings"]:
        marker = "/-- [" + row["rust"] + "]\n"
        if external.count(marker) != 1:
            raise ValueError("NativeCollectionLayoutBlockMarker")
        start = external.index(marker)
        end = external.index("\n\n", start) + 2
        block = external[start:end]
        if (
            block.count("axiom ") != 1
            or "axiom " + row["lean"] not in block
            or len(re.findall(r"\([A-Z] : Type _\)", block)) != row["arity"]
            or len(block.encode()) != row["original_block_bytes"]
        ):
            raise ValueError("NativeCollectionLayoutBlockShape")
        if hashlib.sha256(block.encode()).hexdigest() != row["original_block_sha256"]:
            raise ValueError("NativeCollectionLayoutBlockChanged")
        external = external[:start] + external[end:]
        removed.append(row["lean"])
    if (
        set(re.findall(r"^axiom ([^ (\n:]+)", external, re.M)) | set(removed)
        != original_axioms
    ):
        raise ValueError("NativeCollectionLayoutNodeLoss")
    native_data = paths["native_data_ref"].read_text()
    deferred = paths["deferred_ref"].read_text()
    if set(re.findall(r"^structure ([^ (\n:]+)", native_data, re.M)) != set(
        expected_before
    ) or set(re.findall(r"^structure ([^ (\n:]+)", deferred, re.M)) != set(
        expected_after
    ):
        raise ValueError("NativeCollectionLayoutModelNames")
    for row in contract["bindings"]:
        model = native_data if row["phase"] == "before_types" else deferred
        if model.count('rust_type "' + row["rust"] + '"') != 1:
            raise ValueError("NativeCollectionLayoutRustBinding")
    recheck_generated(frozen_generated)
    types = generated["Types.lean"].read_bytes()
    if re.search(rb"\bserde_json\.map\.(?:Iter|Keys)\b", types):
        raise ValueError("NativeCollectionLayoutIteratorNeededBeforeValue")
    module_prefix = contract["generated_prefix"]
    if deferred.count("CORE036_MODULE_PREFIX.Types") != 1:
        raise ValueError("NativeCollectionLayoutDeferredImport")
    deferred = deferred.replace("CORE036_MODULE_PREFIX.Types", module_prefix + ".Types")
    import_marker = "public import Aeneas\n"
    if external.count(import_marker) != 1:
        raise ValueError("NativeCollectionLayoutExternalImport")
    external = external.replace(
        import_marker,
        import_marker
        + "public import NativeCollectionsData\npublic import RuntimeNames\n"
        "public meta import ArrayLiteralProofs\npublic meta import NonPosForwardProjection\n"
        "public meta import ImplDefInferenceSupport\n",
    )
    functions_external = generated["FunsExternal_Template.lean"].read_text()
    marker = "public import " + module_prefix + ".Types\n"
    if functions_external.count(marker) != 1:
        raise ValueError("NativeCollectionLayoutFunctionsImport")
    functions_external = functions_external.replace(
        marker, marker + "public import NativeJsonIterators\n"
    )
    iteration_modules, iteration_roots, iteration_controls = {}, [], []
    if "iteration_ref" in selection:
        from native_iteration_binding_v2 import prepare

        (
            iteration_paths,
            iteration_modules,
            functions_external,
            iteration_roots,
            iteration_controls,
        ) = prepare(
            refs,
            selection["iteration_ref"],
            functions_external,
            digest(generated["FunsExternal_Template.lean"]),
            source_dir,
        )
        for key, path in iteration_paths.items():
            paths["iteration." + key] = path
            source_hashes["iteration." + key] = digest(path)
    string_source, string_model, string_roots, string_controls = None, None, [], []
    if "string_ops_ref" in selection:
        from native_string_operations_v2 import prepare as prepare_strings

        (
            string_source,
            string_model,
            functions_external,
            string_roots,
            string_controls,
        ) = prepare_strings(
            refs,
            selection["string_ops_ref"],
            functions_external,
            digest(generated["FunsExternal_Template.lean"]),
            source_dir,
        )
        paths["string_ops.model"] = string_source
        source_hashes["string_ops.model"] = digest(string_source)
    entry_source, entry_model, entry_roots, entry_controls = None, None, [], []
    if "entry_ops_ref" in selection:
        from native_entry_operations_v2 import prepare as prepare_entry

        entry_source, entry_model, functions_external, entry_roots, entry_controls = (
            prepare_entry(
                refs,
                selection["entry_ops_ref"],
                functions_external,
                digest(generated["FunsExternal_Template.lean"]),
                source_dir,
            )
        )
        paths["entry_ops.model"] = entry_source
        source_hashes["entry_ops.model"] = digest(entry_source)
    scalar_source, scalar_model, scalar_roots, scalar_controls = None, None, [], []
    if "json_scalar_ref" in selection:
        from native_json_scalar_operations_v2 import prepare as prepare_scalar
        scalar_source, scalar_model, functions_external, scalar_roots, scalar_controls = prepare_scalar(
            refs, selection["json_scalar_ref"], functions_external,
            digest(generated["FunsExternal_Template.lean"]), source_dir)
        paths["json_scalar.model"] = scalar_source
        source_hashes["json_scalar.model"] = digest(scalar_source)
    config = refs.read(selection["tools_ref"])
    analysis, cache = (refs.read(config[key]) for key in ("lean_ref", "cache_ref"))
    if any(analysis["statuses"].values()) or cache["missing_requested_roots"]:
        raise ValueError("NativeCollectionLayoutTools")
    sdk, backend = Path(analysis["sdk"]), Path(cache["backend"])
    if backend != private / "analysis-backend-build/a0058/lean":
        raise ValueError("NativeCollectionLayoutBackend")
    for row in analysis["patched_binaries"]:
        if digest(row["path"]) != row["sha256"]:
            raise ValueError("NativeCollectionLayoutToolChanged")
    inventory = read(refs.verify(config["sdk_inventory_ref"]), limit=32 * 1024**2)
    for row in inventory["entries"]:
        path = sdk / row["path"]
        if not path.resolve().is_relative_to(sdk):
            raise ValueError("NativeCollectionLayoutSDKPath")
        if path.name in {"parameters.bin", "compression_prover_key.bin"}:
            raise ValueError("ProtectedArtifact")
        if row["kind"] in {"file", "hardlink"} and digest(path) != row["sha256"]:
            raise ValueError("NativeCollectionLayoutSDKChanged")
        if row["kind"] == "symlink" and os.readlink(path) != row["target"]:
            raise ValueError("NativeCollectionLayoutSDKLink")
    ns = "Correspondence036.NativeCollectionLayout"
    data = "Correspondence036.CollectionsData"
    native = "transition_study036.serde_json.value.Value"
    specifications = [
        (
            "btree",
            "btree_storage",
            f"∀ {{K V A : Type}} (storage : {data}.Map K V), (alloc.collections.btree.map.BTreeMap.mk (A := A) storage).data = storage",
        ),
        (
            "serde",
            "serde_storage",
            f"∀ {{K V : Type}} (storage : {data}.Map K V), (serde_json.map.Map.mk storage).data = storage",
        ),
        (
            "object",
            "object_full_value",
            f"∀ (storage : {ns}.Rows), {ns}.objectRows ({native}.Object (serde_json.map.Map.mk storage)) = some storage",
        ),
        (
            "json_cursor",
            "jsonAdvance_rows",
            f"∀ (rows : List (String × {native})), {ns}.jsonAdvance ⟨rows⟩ = (rows.head?, ⟨rows.tail⟩)",
        ),
        (
            "keys",
            "keyAdvance_rows",
            f"∀ (rows : List String), {ns}.keyAdvance ⟨rows⟩ = (rows.head?, ⟨rows.tail⟩)",
        ),
        (
            "occupied",
            "occupied_value",
            f"∀ {{K V A : Type}} (front : {data}.Map K V) (stored : K) (value : V) (suffix : {data}.Map K V), (alloc.collections.btree.map.entry.OccupiedEntry.mk (A := A) front stored value suffix).value = value",
        ),
        (
            "vacant",
            "vacant_key",
            f"∀ {{K V A : Type}} (front : {data}.Map K V) (key : K) (suffix : {data}.Map K V), (alloc.collections.btree.map.entry.VacantEntry.mk (A := A) front key suffix).key = key",
        ),
    ]
    roots = [
        dict(
            id="native.collection.layout." + key,
            declaration=ns + "." + name,
            expected_type=expected,
        )
        for key, name, expected in specifications
    ]
    key_root_count = 0
    if "key_order_ref" in selection:
        from native_key_order_contract_v2 import roots as key_roots

        selected_key_roots = key_roots()
        key_root_count = len(selected_key_roots)
        roots.extend(selected_key_roots)
    roots.extend(iteration_roots)
    codec_roots, codec_controls = [], []
    if "string_codec_ref" in selection:
        codec_roots, codec_controls = string_codec_specification(
            paths["string_codec_ref"].read_text()
        )
        roots.extend(codec_roots)
    roots.extend(string_roots)
    roots.extend(entry_roots)
    roots.extend(scalar_roots)
    gap_roots, gap_controls = [], []
    if "gap_ref" in selection:
        from collections_gap_contract_v2 import roots as selected_gap_roots
        from collections_gap_contract_v2 import controls as selected_gap_controls

        gap_roots = selected_gap_roots()
        gap_controls = selected_gap_controls(paths["gap_ref"].read_text())
        roots.extend(gap_roots)
    out.mkdir(parents=True)
    project, compiled = out / "project", out / "compiled"
    project.mkdir()
    compiled.mkdir()
    files = {
        "RuntimeNames": paths["runtime_source_ref"].read_bytes(),
        "ArrayLiteralProofs": paths["array_source_ref"].read_bytes(),
        "NonPosForwardProjection": paths["projection_source"].read_bytes(),
        "ImplDefInferenceSupport": paths["impl_source"].read_bytes(),
        "CollectionsData": paths["data_ref"].read_bytes(),
        "NativeCollectionsData": native_data.encode(),
        module_prefix + ".TypesExternal": external.encode(),
        module_prefix + ".Types": types,
        "NativeJsonIterators": deferred.encode(),
        module_prefix + ".FunsExternal": functions_external.encode(),
        "NativeCollectionLayout": paths["laws_ref"].read_bytes(),
        "ProofRoot": (
            "module\npublic import NativeCollectionLayout\npublic import "
            + module_prefix
            + ".FunsExternal\n@[expose] public section\n"
        ).encode(),
    }
    if "gap_ref" in selection:
        expanded = {}
        for name, raw in files.items():
            expanded[name] = raw
            if name == "CollectionsData":
                for module, key in (
                    ("CollectionsFocus", "gap_focus_ref"),
                    ("CollectionsEntry", "gap_entry_ref"),
                    ("CollectionsGap", "gap_ref"),
                ):
                    expanded[module] = paths[key].read_bytes()
        files = expanded
        files["ProofRoot"] = files["ProofRoot"].replace(
            b"@[expose] public section\n",
            b"public import CollectionsGap\n@[expose] public section\n",
        )
    if "key_order_ref" in selection:
        files = {
            **{key: value for key, value in files.items() if key != "ProofRoot"},
            "NativeKeyOrder": paths["key_order_ref"].read_bytes(),
            "ProofRoot": files["ProofRoot"].replace(
                b"@[expose] public section\n",
                b"public import NativeKeyOrder\n@[expose] public section\n",
            ),
        }
    if iteration_modules:
        expanded = {}
        for name, raw in files.items():
            if name == module_prefix + ".FunsExternal":
                expanded.update(iteration_modules)
            expanded[name] = raw
        files = expanded
        files["ProofRoot"] = files["ProofRoot"].replace(
            b"@[expose] public section\n",
            b"public import NativeCollectionIteration\n@[expose] public section\n",
        )
    if "string_codec_ref" in selection:
        files = {
            **{key: value for key, value in files.items() if key != "ProofRoot"},
            "NativeStringCodec": paths["string_codec_ref"].read_bytes(),
            "ProofRoot": files["ProofRoot"].replace(
                b"@[expose] public section\n",
                b"public import NativeStringCodec\n@[expose] public section\n",
            ),
        }
    if string_model is not None:
        reordered = {}
        for name, raw in files.items():
            if name == module_prefix + ".FunsExternal":
                for dependency in ("NativeKeyOrder", "NativeStringCodec"):
                    reordered[dependency] = files[dependency]
                reordered["NativeStringOperations"] = string_model
            if name not in {"NativeKeyOrder", "NativeStringCodec"}:
                reordered[name] = raw
        files = reordered
        files["ProofRoot"] = files["ProofRoot"].replace(
            b"@[expose] public section\n",
            b"public import NativeStringOperations\n@[expose] public section\n",
        )
    if entry_model is not None:
        expanded = {}
        for name, raw in files.items():
            if name == module_prefix + ".FunsExternal":
                expanded["NativeEntryOperations"] = entry_model
            expanded[name] = raw
        files = expanded
        files["ProofRoot"] = files["ProofRoot"].replace(
            b"@[expose] public section\n",
            b"public import NativeEntryOperations\n@[expose] public section\n",
        )
    if scalar_model is not None:
        expanded = {}
        for name, raw in files.items():
            if name == module_prefix + ".FunsExternal":
                expanded["NativeJsonScalarOperations"] = scalar_model
            expanded[name] = raw
        files = expanded
        files["ProofRoot"] = files["ProofRoot"].replace(
            b"@[expose] public section\n", b"public import NativeJsonScalarOperations\n@[expose] public section\n")
    if projection is not None:
        files = {
            **{name: raw for name, raw in files.items() if name != "ProofRoot"},
            "NativeProjectionComponents": projection["component"],
            "ProofRoot": files["ProofRoot"].replace(
                b"@[expose] public section\n",
                b"public import NativeProjectionComponents\n@[expose] public section\n",
            ),
        }
    frozen_module_hashes = {
        name: hashlib.sha256(raw).hexdigest() for name, raw in files.items()
    }
    if (
        projection is not None
        and frozen_module_hashes["NativeProjectionComponents"]
        != projection["component_sha256"]
    ):
        raise ValueError("NativeProjectionComponentFrozenBytes")
    for name, raw in files.items():
        destination = project / (name.replace(".", "/") + ".lean")
        destination.parent.mkdir(parents=True, exist_ok=True)
        write_once(destination, raw)
    shared = refs.read(selection["shared_imports_ref"])
    if (
        set(shared)
        != {
            "format",
            "parent_checkpoint_ref",
            "parent_result_ref",
            "compiled_entries",
            "link_layout",
            "control_refs",
        }
        or shared["format"] != "core036.syntax-resume.v2"
    ):
        raise ValueError("NativeCollectionLayoutSharedInputs")
    parent_cp_path = refs.verify(shared["parent_checkpoint_ref"])
    RootRegistry({"attempt": parent_cp_path.parent}).verify_closed("attempt")
    parent_cp = refs.read(shared["parent_checkpoint_ref"])
    parent_result = refs.read(shared["parent_result_ref"])
    parent = private / "ground-lean-probe/a0353"
    if (
        parent_cp["attempt_id"] != "a0353"
        or parent_cp_path
        != refs.roots["repository"]
        / "specs/036-core-transition-feasibility/evidence/v2/w001/attempts/a0353/checkpoint.json"
        or parent_cp["stage_outcome"] != "failed"
        or parent_cp["source_validation_error"] is not None
        or refs.verify(shared["parent_result_ref"]) != parent / "result.json"
        or parent_result["source_subject_ref"] != parent_cp["source_subject_ref"]
    ):
        raise ValueError("NativeCollectionLayoutSharedProducer")
    context = refs.read(parent_result["nonpos_context_result_ref"])
    frozen_rows = [
        row
        for row in refs.read(parent_cp["source_subject_ref"])["files"]
        if row["logical_ref"]["path"]
        == "experiments/transition-study036/ground-lean-probe-inputs-v2.json"
    ]
    if len(frozen_rows) != 1:
        raise ValueError("NativeCollectionLayoutFrozenParentConfig")
    frozen_config_ref = frozen_rows[0]["snapshot_ref"]
    frozen_config = refs.read(frozen_config_ref)
    validate_collection_import_parent(
        parent_cp, parent_result, frozen_config, context, module_prefix
    )
    if (
        refs.verify(parent_result["nonpos_context_result_ref"])
        != parent / "nonpos-context/result.json"
        or context.get("format") != "core036.nonpos-context.v2"
        or context["library_binding_ref"] != parent_result["nonpos_library_binding_ref"]
        or not context["original_root_outputs_unchanged"]
        or not context["qualified_name_controls_checked"]
        or context["root_source_sha256"] != digest(source_dir / "AeneasRootNonPos.lean")
        or any(
            row["exit_code"] != row.get("expected_exit_code", 0)
            for row in context["commands"]
        )
    ):
        raise ValueError("NativeCollectionLayoutSharedNonposContext")
    from native_option_slice_v2 import import_layout
    from nonpos_lean_probe_v2 import dependency_library_paths

    expected = dict(
        files=[
            dict(path=row["path"], source=str(refs.verify(row["artifact_ref"])))
            for row in shared["compiled_entries"]
        ],
        links=shared["link_layout"],
    )
    if import_layout(parent / "compiled", backend / ".lake/build/lib/lean") != expected:
        raise ValueError("NativeCollectionLayoutSharedLayout")
    imports = out / "imports"
    imports.mkdir()
    imported_rows = []
    for row, original in zip(
        shared["compiled_entries"], expected["files"], strict=True
    ):
        if row["path"].startswith(module_prefix + "/"):
            continue
        relative = Path(row["path"])
        if relative.is_absolute() or ".." in relative.parts:
            raise ValueError("NativeCollectionLayoutSharedPath")
        target = imports / relative
        target.parent.mkdir(parents=True, exist_ok=True)
        os.link(original["source"], target)
        imported_rows.append(
            dict(
                path=row["path"],
                bytes=row["artifact_ref"]["bytes"],
                sha256=row["artifact_ref"]["sha256"],
            )
        )
    imported_context = dict(
        format="core036.declared-import-context.v2",
        root=str(imports),
        entries=imported_rows,
    )
    env = {
        **os.environ,
        **analysis["environment"],
        "LEAN_PATH": os.pathsep.join(
            map(str, [compiled, imports, *dependency_library_paths(backend)])
        ),
        "LEAN_NUM_THREADS": "1",
        "LEAN_STACK_SIZE_KB": "131072",
        "MALLOC_ARENA_MAX": "2",
        "CI": "1",
    }
    env.pop("LD_PRELOAD", None)
    _, recheck_imports = declared_environment_v2(
        compiled=compiled,
        sdk=sdk,
        backend=backend,
        env=env,
        modules=list(files),
        imported_context=imported_context,
    )

    def recheck_inputs():
        recheck_imports()
        for row in shared["compiled_entries"]:
            refs.verify(row["artifact_ref"])
        if (
            import_layout(parent / "compiled", backend / ".lake/build/lib/lean")
            != expected
        ):
            raise ValueError("NativeCollectionLayoutSharedLayout")
        for bound in (
            reference,
            selection["shared_imports_ref"],
            shared["parent_checkpoint_ref"],
            shared["parent_result_ref"],
            parent_result["nonpos_context_result_ref"],
            frozen_config_ref,
            selection["extraction_checkpoint_ref"],
            selection["extraction_result_ref"],
        ):
            refs.verify(bound)
        recheck_generated(frozen_generated)
        for module_name, expected_hash in frozen_module_hashes.items():
            if (
                digest(project / (module_name.replace(".", "/") + ".lean"))
                != expected_hash
            ):
                raise ValueError("NativeCollectionLayoutSavedModuleChanged")

    checked = check_declared_proof_v2(
        project=project,
        compiled=compiled,
        sdk=sdk,
        backend=backend,
        env=env,
        modules=list(files),
        roots=roots,
        expected_files=frozen_module_hashes,
        out=out / "declared-proof",
        kernel_mode="selected-root-export-v1",
        imported_context=imported_context,
    )
    # The opt-in overlay must not alter the original no-context command path.
    smoke_project, smoke_compiled = out / "default-project", out / "default-compiled"
    smoke_project.mkdir()
    smoke_compiled.mkdir()
    smoke_roots = [
        dict(
            id=f"imports.default.identity{index}",
            declaration=f"Core036ImportRegression.identity{index}",
            expected_type="(value : Nat) → value = value",
        )
        for index in range(256)
    ]
    smoke_source = (
        "module\npublic import Aeneas\n@[expose] public section\nnamespace Core036ImportRegression\n"
        + "".join(
            f"theorem identity{index} (value : Nat) : value = value := rfl\n"
            for index in range(256)
        )
        + "end Core036ImportRegression\n"
    )
    write_once(
        smoke_project / "DefaultSmoke.lean",
        smoke_source.encode(),
    )
    default_checked = with_readonly_inputs(
        lambda: check_declared_proof_v2(
            project=smoke_project,
            compiled=smoke_compiled,
            sdk=sdk,
            backend=backend,
            env={**env, "LEAN_PATH": str(smoke_compiled)},
            modules=["DefaultSmoke"],
            roots=smoke_roots,
            expected_files={
                "DefaultSmoke": digest(smoke_project / "DefaultSmoke.lean")
            },
            out=out / "default-declared-proof",
            kernel_mode="selected-root-export-v1",
        ),
        recheck_inputs,
    )
    missing = (
        "module\npublic import "
        + module_prefix
        + ".Types\n#check serde_json.map.Iter\n"
    )
    old_value = "remaining : List (String × transition_study036.serde_json.value.Value)"
    if deferred.count(old_value) != 1:
        raise ValueError("NativeCollectionLayoutValueMutantSource")
    wrong_value = (
        deferred.replace(old_value, "remaining : List (String × Bool)")
        + "\nexample (key : String) (value : "
        + native
        + ") : (serde_json.map.Iter.mk [(key, value)]).remaining = [(key, value)] := rfl\n"
    )
    rejections = []
    negatives = [
        ("missing-deferred-type", missing, "Unknown identifier"),
        ("erased-full-value", wrong_value, "Application type mismatch"),
    ]
    if "key_order_ref" in selection:
        from native_key_order_contract_v2 import controls as key_controls

        negatives.extend(key_controls())
    negatives.extend(iteration_controls)
    negatives.extend(codec_controls)
    negatives.extend(string_controls)
    negatives.extend(gap_controls)
    negatives.extend(entry_controls)
    negatives.extend(scalar_controls)
    for label, raw, expected_diagnostic in negatives:
        file = project / ("Wrong_" + label.replace("-", "_") + ".lean")
        write_once(file, raw.encode())
        command = out / "commands" / label
        result = with_readonly_inputs(
            lambda: run_logged_command(
                command,
                [
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
                metadata=dict(label=label, expected_exit_code=1),
            ),
            recheck_inputs,
        )
        diagnostic = "".join(
            (command / name).read_text() for name in ("stdout.txt", "stderr.txt")
        )
        correct_failure = (
            (
                any(
                    message in diagnostic.lower()
                    for message in ("unknown identifier", "unknown constant")
                )
                and "serde_json.map.Iter" in diagnostic
            )
            if label == "missing-deferred-type"
            else (
                "unsolved goals" in diagnostic
                and "⊢ False" in diagnostic
                and not any(
                    message in diagnostic.lower()
                    for message in (
                        "unknown identifier",
                        "unknown constant",
                        "type mismatch",
                    )
                )
            )
            if expected_diagnostic == "normalized-False"
            else (
                "type mismatch" in diagnostic.lower()
                and "Bool" in diagnostic
                and "Value" in diagnostic
            )
        )
        if (
            result["exit_code"] != 1
            or result["timed_out"]
            or not correct_failure
            or "unexpected token" in diagnostic
        ):
            raise ValueError("NativeCollectionLayoutMalformedControl:" + label)
        rejections.append(result)
    recheck_inputs()
    if any(digest(path) != source_hashes[key] for key, path in paths.items()) or digest(
        project / (module_prefix + "/Types.lean")
    ) != digest(generated["Types.lean"]):
        raise ValueError("NativeCollectionLayoutSourceChanged")
    write_once(
        out / "result.json",
        dict(
            format="core036.native-collection-layout-result.v2",
            source_subject_ref=declaration["source_subject_ref"],
            selection_ref=reference,
            checked_roots=len(roots),
            key_order_roots=key_root_count,
            iteration_roots=len(iteration_roots),
            string_codec_roots=len(codec_roots),
            string_operation_roots=len(string_roots),
            captured_gap_roots=len(gap_roots),
            entry_operation_roots=len(entry_roots),
            json_scalar_roots=len(scalar_roots),
            projection_component_declarations=(
                len(projection["declarations"]) if projection is not None else 0
            ),
            projection_component_conservation=(
                {key: value for key, value in projection.items() if key != "component"}
                if projection is not None
                else None
            ),
            projection_component_scope="Actual unchanged declaration component typecheck only; external semantic refinements/native correspondence remain unestablished",
            retained_external_function_bindings=(10 if iteration_modules else 0)
            + (9 if string_model is not None else 0)
            + (2 if entry_model is not None else 0)
            + (3 if scalar_model is not None else 0),
            retained_external_type_bindings=len(removed),
            shared_imports_ref=selection["shared_imports_ref"],
            shared_import_entries=len(imported_rows),
            readonly_import_files_rechecked=True,
            full_control_interval_rechecked=True,
            producer_frozen_hashes_rechecked=True,
            independent_parent_coverage_checked=True,
            default_command_mode_regression=default_checked["status"],
            default_regression_root_count=len(smoke_roots),
            untouched_generated_types_sha256=digest(generated["Types.lean"]),
            untouched_generated_funs_sha256=digest(generated["Funs.lean"]),
            proof_commands=checked["commands"],
            selected_theorem_audit=checked["audit"],
            kernel_scope=checked["kernel_scope"],
            negative_commands=rejections,
            native_primitive_admission="unestablished",
            native_proof="unestablished",
            feature_complete=False,
            scope="Source-bound positive representations, selected concrete key laws and optional exact-signature iterator candidate API laws. Original full Types unchanged; Funs not compiled; all unrelated external axioms retained. Iterator enumeration preserves stored order; native ascending-order representation and operation/dictionary/feature/runtime adequacy and native Core remain open.",
        ),
    )
    return 0
