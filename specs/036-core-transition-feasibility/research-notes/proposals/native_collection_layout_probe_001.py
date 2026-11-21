"""Guarded positive external type models and post-Value JSON iterators; no admission."""

import os
import re
from pathlib import Path
from artifact_io import RootRegistry, digest, read, write_once
from check_proofs import check_declared_proof_v2
from lean_command_v2 import run_logged_command


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
    }
    if (
        set(selection) != required
        or selection["format"] != "core036.native-collection-layout-probe.v2"
        or out != private / "ground-lean-probe" / declaration["record_id"]
        or out.exists()
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
    paths = {key: refs.verify(selection[key]) for key in names}
    if any(paths[key] != source_dir / name for key, name in names.items()):
        raise ValueError("NativeCollectionLayoutSourcePath")
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
    if len(generated) != 4:
        raise ValueError("NativeCollectionLayoutMissingGenerated")
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
        import hashlib

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
        import_marker, import_marker + "public import NativeCollectionsData\n"
    )
    functions_external = generated["FunsExternal_Template.lean"].read_text()
    marker = "public import " + module_prefix + ".Types\n"
    if functions_external.count(marker) != 1:
        raise ValueError("NativeCollectionLayoutFunctionsImport")
    functions_external = functions_external.replace(
        marker, marker + "public import NativeJsonIterators\n"
    )
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
            f"∀ {{K V A : Type}} (original : {data}.Map K V) (key : K), (alloc.collections.btree.map.entry.VacantEntry.mk (A := A) original key).key = key",
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
    out.mkdir(parents=True)
    project, compiled = out / "project", out / "compiled"
    project.mkdir()
    compiled.mkdir()
    files = {
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
    for name, raw in files.items():
        destination = project / (name.replace(".", "/") + ".lean")
        destination.parent.mkdir(parents=True, exist_ok=True)
        write_once(destination, raw)
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
        modules=list(files),
        roots=roots,
        expected_files={
            name: digest(project / (name.replace(".", "/") + ".lean")) for name in files
        },
        out=out / "declared-proof",
        kernel_mode="selected-root-export-v1",
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
    for label, raw, expected_diagnostic in [
        ("missing-deferred-type", missing, "Unknown identifier"),
        ("erased-full-value", wrong_value, "Application type mismatch"),
    ]:
        file = project / ("Wrong_" + label.replace("-", "_") + ".lean")
        write_once(file, raw.encode())
        command = out / "commands" / label
        result = run_logged_command(
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
            metadata=dict(label=label, expected_exit_code=1),
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
            retained_external_type_bindings=len(removed),
            untouched_generated_types_sha256=digest(generated["Types.lean"]),
            untouched_generated_funs_sha256=digest(generated["Funs.lean"]),
            proof_commands=checked["commands"],
            selected_theorem_audit=checked["audit"],
            kernel_scope=checked["kernel_scope"],
            negative_commands=rejections,
            native_primitive_admission="unestablished",
            native_proof="unestablished",
            feature_complete=False,
            scope="Source-bound positive type representations and post-Value iterator type/model layout only. Original full Types unchanged; Funs not compiled; all unrelated external axioms retained. Operation/dictionary/order/feature/runtime adequacy and native Core remain open.",
        ),
    )
    return 0
