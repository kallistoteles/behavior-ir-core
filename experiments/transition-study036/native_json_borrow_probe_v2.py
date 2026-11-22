"""Fresh byte-view/accessor leaf checks; no whole native or runtime admission."""

import os
import re
from pathlib import Path

from artifact_io import RootRegistry, digest, read, write_once
from artifact_registration_v2 import guard_reference
from check_proofs import check_declared_proof_v2
from native_borrow_bindings_v2 import bind_borrow_primitives
from native_lean_check_v2 import MAP_AXIOM, MAP_MODEL


def validate_packet_scope(packet):
    expected = dict(
        format="core036.native-json-borrow-packet.v2",
        scope="source_bound_accessor_leaf_only",
        native_proof="unestablished",
        feature_complete=False,
        runtime_totality_established=False,
    )
    if (
        not isinstance(packet, dict)
        or packet != expected
        or type(packet.get("feature_complete")) is not bool
        or type(packet.get("runtime_totality_established")) is not bool
    ):
        raise ValueError("NativeBorrowPacketScope")


def complete_borrow_types(external):
    if (
        external.count(MAP_AXIOM) != 1
        or external.count("public import Aeneas\n") != 1
        or re.search(
            r"\baxiom\s+(?:serde_json\.number\.(?:Number|N)|Aeneas\.Std\.F64)\b",
            external,
        )
    ):
        raise ValueError("NativeBorrowOpaquePayloadOrHeader")
    return external.replace(MAP_AXIOM, MAP_MODEL).replace(
        "public import Aeneas\n",
        "public import Aeneas\npublic import RuntimeNames\n",
        1,
    )


def roots():
    byte = "Correspondence036.NativeStringBorrow"
    wrapper = "Correspondence036.NativeJsonBorrowWrapper"
    value = "transition_study036.serde_json.value.Value"
    result = "Aeneas.Std.Result"
    bound = f"({byte}.ownedBytes value).length ≤ Aeneas.Std.Usize.max"
    rows = [
        (
            byte,
            "lean_rust_byte",
            f"∀ (value : UInt8), {byte}.toLeanByte ({byte}.toRustByte value) = value",
        ),
        (
            byte,
            "rust_lean_byte",
            f"∀ (value : Aeneas.Std.U8), {byte}.toRustByte ({byte}.toLeanByte value) = value",
        ),
        (
            byte,
            "borrow_bytes",
            f"∀ (value : String) (bound : {bound}), {byte}.borrowedBytes ({byte}.borrow value bound) = {byte}.ownedBytes value",
        ),
        (
            byte,
            "borrow_length",
            f"∀ (value : String) (bound : {bound}), ({byte}.borrowedBytes ({byte}.borrow value bound)).length = value.toByteArray.size",
        ),
        (
            byte,
            "borrow_valid_utf8",
            f"∀ (value : String) (bound : {bound}), {byte}.ValidStr ({byte}.borrow value bound)",
        ),
        (
            byte,
            "decode_borrow",
            f"∀ (value : String) (bound : {bound}), {byte}.decode ({byte}.borrow value bound) = some value",
        ),
        (
            byte,
            "borrow_result_valid",
            f"∀ (value : String) (bound : {bound}), {byte}.borrowResult value = {result}.ok ({byte}.borrow value bound)",
        ),
        (
            byte,
            "borrow_result_oversize",
            f"∀ (value : String) (outside : ¬ ({bound})), {byte}.borrowResult value = {result}.fail .maximumSizeExceeded",
        ),
        (
            wrapper,
            "string_deref_exact",
            f"∀ (value : String) (bound : {bound}), alloc.string.String.Insts.CoreOpsDerefDerefStr.deref value = {result}.ok ({byte}.borrow value bound)",
        ),
        (
            wrapper,
            "value_as_str_string",
            f"∀ (value : String) (bound : {bound}), {value}.impl.as_str ({value}.String value) = {result}.ok (some ({byte}.borrow value bound))",
        ),
        (
            wrapper,
            "value_as_str_bytes",
            f"∀ (value : {value}) (bound : {wrapper}.SourceBound value), (do let out ← {value}.impl.as_str value; {result}.ok (out.map {byte}.borrowedBytes)) = {result}.ok ({wrapper}.Spec value)",
        ),
        (
            wrapper,
            "value_as_str_null",
            f"{value}.impl.as_str {value}.Null = {result}.ok none",
        ),
        (
            wrapper,
            "value_as_str_bool",
            f"∀ (value : Bool), {value}.impl.as_str ({value}.Bool value) = {result}.ok none",
        ),
        (
            wrapper,
            "value_as_str_number",
            f"∀ (value : transition_study036.serde_json.number.Number), {value}.impl.as_str ({value}.Number value) = {result}.ok none",
        ),
        (
            wrapper,
            "value_as_str_array",
            f"∀ (value : Aeneas.Std.alloc.vec.Vec {value}), {value}.impl.as_str ({value}.Array value) = {result}.ok none",
        ),
        (
            wrapper,
            "value_as_str_object",
            f"∀ (value : serde_json.map.Map String {value}), {value}.impl.as_str ({value}.Object value) = {result}.ok none",
        ),
    ]
    specifications = [
        dict(
            id="borrow." + name, declaration=namespace + "." + name, expected_type=kind
        )
        for namespace, name, kind in rows
    ]
    specifications.append(
        dict(
            id="borrow.f64_carrier_bits_exact",
            declaration="Correspondence036.f64_carrier_bits_exact",
            expected_type="∀ (bits : BitVec 64), (Aeneas.Std.F64.mk bits).bits = bits",
        )
    )
    return specifications


def run_probe(refs, reference, declaration, out):
    guard_reference(reference)
    selection = refs.read(reference)
    fields = {
        "format",
        "packet_ref",
        "extraction_checkpoint_ref",
        "extraction_result_ref",
        "tools_ref",
        "borrow_source_ref",
        "wrapper_source_ref",
        "bindings",
        "native_string_source_ref",
        "analysis_string_source_ref",
        "runtime_source_ref",
    }
    if (
        not isinstance(selection, dict)
        or set(selection) != fields
        or selection["format"] != "core036.native-json-borrow-selection.v2"
        or out != refs.roots["private"] / "ground-lean-probe" / declaration["record_id"]
        or out.exists()
    ):
        raise ValueError("NativeBorrowSelection")
    for key in fields - {"format", "bindings"}:
        guard_reference(selection[key])
    validate_packet_scope(refs.read(selection["packet_ref"]))
    cp_path = refs.verify(selection["extraction_checkpoint_ref"])
    RootRegistry({"attempt": cp_path.parent}).verify_closed("attempt")
    cp = refs.read(selection["extraction_checkpoint_ref"])
    result_path = refs.verify(selection["extraction_result_ref"])
    extraction = refs.read(selection["extraction_result_ref"])
    if (
        cp["attempt_id"] != "a0486"
        or cp["stage_outcome"] != "succeeded"
        or cp.get("source_validation_error") is not None
        or result_path != refs.roots["private"] / "native-extraction/a0486/result.json"
        or extraction["source_subject_ref"] != cp["source_subject_ref"]
        or extraction["extraction_exit_code"] != 0
        or extraction["translation_exit_code"] != 0
        or [r["pattern"] for r in extraction["required_source_types"]]
        != ["serde_json::number::Number", "serde_json::number::N"]
    ):
        raise ValueError("NativeBorrowExtraction")
    generated = {}
    for row in extraction["generated"]:
        name = Path(row["path"]).name
        if (
            name
            not in {
                "Types.lean",
                "Funs.lean",
                "TypesExternal_Template.lean",
                "FunsExternal_Template.lean",
            }
            or row["path"] != "generated/" + name
            or name in generated
        ):
            raise ValueError("NativeBorrowGeneratedInventory")
        path = result_path.parent / row["path"]
        if path.stat().st_size != row["bytes"] or digest(path) != row["sha256"]:
            raise ValueError("NativeBorrowGeneratedChanged")
        generated[name] = path
    if len(generated) != 4:
        raise ValueError("NativeBorrowMissingGenerated")
    for name in ("Types.lean", "Funs.lean"):
        if re.search(r"^\s*(axiom|sorry)\b", generated[name].read_text(), re.M):
            raise ValueError("NativeBorrowPartialGenerated")
    source_dir = (
        refs.roots["repository"]
        / "experiments/transition-study036/proofs/Correspondence036/Dependencies"
    )
    sources = {}
    for key, name in [
        ("borrow_source_ref", "NativeStringBorrow.lean"),
        ("wrapper_source_ref", "NativeJsonBorrowWrapper.lean"),
        ("runtime_source_ref", "RuntimeNames.lean"),
    ]:
        path = refs.verify(selection[key])
        if path != source_dir / name:
            raise ValueError("NativeBorrowSourcePath")
        sources[name[:-5]] = path.read_bytes()
    native_paths = [
        refs.roots["private"]
        / "ground-lean-probe/a0443/sources/library/alloc/src/string.rs",
        refs.roots["private"]
        / "analysis-toolchain/a0039/sysroot/lib/rustlib/src/rust/library/alloc/src/string.rs",
    ]
    for key, expected in zip(
        ("native_string_source_ref", "analysis_string_source_ref"),
        native_paths,
        strict=True,
    ):
        path = refs.verify(selection[key])
        if path != expected:
            raise ValueError("NativeBorrowRuntimeSourcePath")
        text = path.read_text()
        for body in (
            "unsafe { str::from_utf8_unchecked(self.vec.as_slice()) }",
            "fn deref(&self) -> &str {\n        self.as_str()\n    }",
        ):
            if text.count(body) != 1:
                raise ValueError("NativeBorrowRuntimeSourceBody")
    external = complete_borrow_types(
        generated["TypesExternal_Template.lean"].read_text()
    )
    functions, definitions = bind_borrow_primitives(
        generated["FunsExternal_Template.lean"].read_text(), selection["bindings"]
    )
    if "public import Aeneas\n" not in functions:
        raise ValueError("NativeBorrowExternalHeader")
    functions = (
        functions.replace(
            "public import Aeneas\n",
            "public import Aeneas\npublic import NativeStringBorrow\n",
            1,
        )
        + definitions
    )
    config = refs.read(selection["tools_ref"])
    for ref in config.values():
        guard_reference(ref)
    analysis, cache = (refs.read(config[key]) for key in ("lean_ref", "cache_ref"))
    if any(analysis["statuses"].values()) or cache["missing_requested_roots"]:
        raise ValueError("NativeBorrowTools")
    sdk, backend = Path(analysis["sdk"]), Path(cache["backend"])
    if backend != refs.roots["private"] / "analysis-backend-build/a0058/lean":
        raise ValueError("NativeBorrowBackend")
    for row in analysis["patched_binaries"]:
        if Path(row["path"]).name in {"parameters.bin", "compression_prover_key.bin"}:
            raise ValueError("ProtectedArtifact")
        if digest(row["path"]) != row["sha256"]:
            raise ValueError("NativeBorrowToolChanged")
    inventory = read(refs.verify(config["sdk_inventory_ref"]), limit=32 * 1024**2)
    for row in inventory["entries"]:
        relative = Path(row["path"])
        if relative.name in {"parameters.bin", "compression_prover_key.bin"}:
            raise ValueError("ProtectedArtifact")
        if relative.is_absolute() or ".." in relative.parts:
            raise ValueError("NativeBorrowSDKPath")
        path = sdk / relative
        if not path.resolve().is_relative_to(sdk):
            raise ValueError("NativeBorrowSDKPath")
        if row["kind"] in {"file", "hardlink"} and digest(path) != row["sha256"]:
            raise ValueError("NativeBorrowSDKChanged")
        if row["kind"] == "symlink" and os.readlink(path) != row["target"]:
            raise ValueError("NativeBorrowSDKLink")
    out.mkdir(parents=True)
    project, compiled = out / "project", out / "compiled"
    project.mkdir()
    compiled.mkdir()
    files = {
        "NativeStringBorrow": sources["NativeStringBorrow"],
        "RuntimeNames": sources["RuntimeNames"],
        "CanonicalRowNames.TypesExternal": external.encode(),
        "CanonicalRowNames.Types": generated["Types.lean"].read_bytes(),
        "CanonicalRowNames.FunsExternal": functions.encode(),
        "CanonicalRowNames.Funs": generated["Funs.lean"].read_bytes(),
        "NativeJsonBorrowWrapper": sources["NativeJsonBorrowWrapper"],
        "ProofRoot": b"module\npublic import NativeJsonBorrowWrapper\n@[expose] public section\n",
    }
    for name, raw in files.items():
        target = project / (name.replace(".", "/") + ".lean")
        target.parent.mkdir(parents=True, exist_ok=True)
        write_once(target, raw)
    write_once(
        out / "source-binding.json",
        {
            "selection_ref": reference,
            "extraction_source_subject_ref": cp["source_subject_ref"],
            "unchanged_generated_funs_sha256": digest(generated["Funs.lean"]),
            "unchanged_generated_types_sha256": digest(generated["Types.lean"]),
            "byte_view_bindings": selection["bindings"],
            "map_scope": "positive full-entry carrier only; no map API admission",
            "native_proof": "unestablished",
            "feature_complete": False,
        },
    )
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
        roots=roots(),
        expected_files={
            name: digest(project / (name.replace(".", "/") + ".lean")) for name in files
        },
        out=out / "declared-proof",
        kernel_mode="selected-root-export-v1",
    )
    for key in fields - {"format", "bindings"}:
        refs.verify(selection[key])
    for row in extraction["generated"]:
        path = result_path.parent / row["path"]
        if digest(path) != row["sha256"]:
            raise ValueError("NativeBorrowGeneratedChangedAfter")
    write_once(
        out / "result.json",
        {
            "format": "core036.native-json-borrow-result.v2",
            "source_subject_ref": declaration["source_subject_ref"],
            "selection_ref": reference,
            "checked_roots": len(roots()),
            "proof_result_sha256": digest(out / "declared-proof/result.json"),
            "proof_status": checked["status"],
            "generic_runtime_scope": "source-supported immutable byte-view interpretation only",
            "runtime_totality_established": False,
            "native_proof": "unestablished",
            "feature_complete": False,
            "negative_controls": "pending actual independent rejection controls",
        },
    )
    return 0
