"""Prospective row-model context; neither native errors nor runtime are admitted."""

import re

from native_json_borrow_probe_v2 import complete_borrow_types


def validate_row_scope(packet):
    expected = dict(
        format="core036.native-row-scope.v2",
        scope="generated_row_component_model_only",
        native_proof="unestablished",
        feature_complete=False,
        runtime_totality_established=False,
    )
    if (
        not isinstance(packet, dict) or packet != expected
        or packet.get("feature_complete") is not False
        or packet.get("runtime_totality_established") is not False
    ):
        raise ValueError("NativeRowComponentScope")


def complete_row_external_types(external):
    """Keep generated types; coarse inactive carriers need a non-escape proof.

    These tokens do not define native error equality, formatting, identity or
    allocation behavior. No consumer may infer full error/native refinement.
    The row proof must establish that only Ok and the two Prerequisite errors
    can be produced and that no inactive carrier is consumed or observed.
    """
    if not isinstance(external, str):
        raise ValueError("NativeRowExternalTypes")
    completed = complete_borrow_types(external)
    for name in ("core.io.error.Error", "serde_json.error.Error"):
        declaration = "axiom " + name + " : Type"
        if len(re.findall(r"^" + re.escape(declaration) + r"$", completed, re.M)) != 1:
            raise ValueError("NativeRowInertErrorSort")
        completed = completed.replace(
            declaration,
            "structure " + name + " where\n  opaqueToken : List UInt8",
            1,
        )
    if re.search(r"\baxiom\s+", completed):
        raise ValueError("NativeRowUnresolvedTypeAxiom")
    return completed


def row_dictionary_roots():
    namespace = "Correspondence036.NativeRowDictionary"
    value = "transition_study036.serde_json.value.Value"
    dictionary = "transition_study036.serde_json.value.index.Index"
    shared = "transition_study036.Shared0T.Insts.Serde_jsonValueIndexIndex"
    shared_read = "Shared0T.Insts.Serde_jsonValueIndexIndex.index_into"
    index = "serde_json.value.Value.Insts.CoreOpsIndexIndexIValue.index"
    row = "transition_study036.behavior_store.documents.SeedEntity"
    maps = f"serde_json.map.Map String {value}"
    actual = "transition_study036.reference.state_fact_row"
    generic = f"∀ {{K : Type}} (d : {dictionary} K) (key : K) (value : {value}), "
    congruent = f"∀ {{K : Type}} (a b : {dictionary} K) (same : {namespace}.ReadEq a b) "
    rows = [
        ("shared_read_exact", generic + f"{shared_read} d key value = d.index_into key value"),
        ("value_index_exact", generic + f"{index} d value key = (do let found ← d.index_into key value; Aeneas.Std.Result.ok (found.getD {value}.Null))"),
        ("shared_read_congr", congruent + f"(key : K) (value : {value}), {shared_read} a key value = {shared_read} b key value"),
        ("shared_dictionary_read_congr", congruent + f", {namespace}.ReadEq ({shared} a) ({shared} b)"),
        ("value_index_read_congr", congruent + f"(value : {value}) (key : K), {index} a value key = {index} b value key"),
        ("generated_row_is_RowRead", f"∀ (row : {row}) (parents children : {maps}), {actual} row parents children = {namespace}.RowRead {namespace}.concreteDictionary row parents children"),
        ("row_read_noninterference", f"∀ (a b : {dictionary} Aeneas.Std.Str) (same : {namespace}.ReadEq a b) (row : {row}) (parents children : {maps}), {namespace}.RowRead a row parents children = {namespace}.RowRead b row parents children"),
        ("generated_row_read_replacement", f"∀ (row : {row}) (parents children : {maps}), {actual} row parents children = {namespace}.RowRead ({namespace}.canonicalReadDict ({namespace}.concreteDictionary).index_into) row parents children"),
    ]
    return [dict(id="row_dictionary." + name, declaration=namespace + "." + name,
                 expected_type=kind) for name, kind in rows]


def row_project_files(generated, borrow, runtime, operations, proofs,
                      borrow_bindings, row_bindings, dictionary_bindings):
    from native_borrow_bindings_v2 import bind_borrow_primitives
    from native_row_bindings_v2 import bind_row_primitives, bind_row_dictionary_primitives
    from native_row_abstraction_v2 import row_abstraction_audit_source

    required = {"Types.lean", "Funs.lean", "TypesExternal_Template.lean", "FunsExternal_Template.lean"}
    if (
        not isinstance(generated, dict) or set(generated) != required
        or not all(type(raw) is bytes and len(raw) <= 64 * 1024**2 for raw in generated.values())
        or not all(type(raw) is bytes and len(raw) <= 4 * 1024**2 for raw in (borrow, runtime, operations, proofs))
    ):
        raise ValueError("NativeRowProjectInputs")
    for raw in [generated["Types.lean"], generated["Funs.lean"], borrow, runtime, operations, proofs]:
        if re.search(rb"^\s*(axiom|sorry)\b", raw, re.M):
            raise ValueError("NativeRowProjectUnprovedSource")
    types = complete_row_external_types(generated["TypesExternal_Template.lean"].decode())
    functions, borrowed = bind_borrow_primitives(generated["FunsExternal_Template.lean"].decode(), borrow_bindings)
    functions, reached = bind_row_primitives(functions, row_bindings)
    functions, dictionary = bind_row_dictionary_primitives(functions, dictionary_bindings)
    if re.search(r"\baxiom\s+", functions) or functions.count("public import Aeneas\n") != 1:
        raise ValueError("NativeRowProjectUnresolvedExternal")
    functions = functions.replace("public import Aeneas\n", "public import Aeneas\npublic import NativeStringBorrow\npublic import NativeCanonicalRowOperations\n", 1)
    functions += borrowed + reached + dictionary
    return {
        "NativeStringBorrow": borrow,
        "RuntimeNames": runtime,
        "CanonicalRowNames.TypesExternal": types.encode(),
        "CanonicalRowNames.Types": generated["Types.lean"],
        "NativeCanonicalRowOperations": operations,
        "CanonicalRowNames.FunsExternal": functions.encode(),
        "CanonicalRowNames.Funs": generated["Funs.lean"],
        "NativeCanonicalRowProofs": proofs,
        "RowAbstractionAudit": row_abstraction_audit_source().encode(),
        "ProofRoot": b"module\npublic import NativeCanonicalRowProofs\npublic import RowAbstractionAudit\n@[expose] public section\n",
    }
