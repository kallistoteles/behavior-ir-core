"""Canonical row proofs in the conserved585 whole Views context; no admission."""

import re

from native_whole_views_context_v2 import (
    PREFIX,
    SOURCES as VIEW_SOURCES,
    _bind_functions,
    _validate_local_imports,
    build_project as view_project,
    roots as view_roots,
)

SOURCES = (
    *VIEW_SOURCES,
    "NativeWholeRowOperations",
    "NativeCanonicalRowProofs",
    "NativeWholeCanonicalSpec",
    "NativeWholeCanonicalExact",
    "NativeWholeCanonicalFold",
    "NativeWholeTypedText",
    "NativeWholeTypedOperations",
    "NativeWholeTypedSeedSpec",
    "NativeWholeTypedSeedProofs",
)


def build_project(generated, sources):
    if not isinstance(sources, dict) or set(sources) != set(SOURCES):
        raise ValueError("WholeRowsModelInventory")
    if any(type(raw) is not bytes or len(raw) > 1024**2 for raw in sources.values()):
        raise ValueError("WholeRowsModelSourceBound")
    for raw in sources.values():
        if re.search(rb"(?m)^\s*(?:axiom|sorry)\b", raw):
            raise ValueError("WholeRowsUnprovedModelDefinition")
    files, report = view_project(
        generated, {name: sources[name] for name in VIEW_SOURCES}
    )
    functions, bindings, unbound = _bind_functions(
        generated["FunsExternal_Template.lean"].decode(),
        [
            sources[name].decode()
            for name in (
                "NativeStringOperations",
                "NativeCollectionIteration",
                "NativeWholeViewsOperations",
                "NativeWholeRowOperations",
                "NativeWholeTypedOperations",
            )
        ],
    )
    functions = functions.replace(
        "public import Aeneas\n",
        "public import Aeneas\npublic import NativeCanonicalRowOperations\npublic import NativeWholeTypedOperations\n",
        1,
    )
    types = files[PREFIX + ".TypesExternal"].decode()
    for name in ("core.io.error.Error", "serde_json.error.Error"):
        declaration = "axiom " + name + " : Type"
        if len(re.findall(r"(?m)^" + re.escape(declaration) + r"$", types)) != 1:
            raise ValueError("WholeRowsInactiveErrorType")
        types = types.replace(
            declaration, "structure " + name + " where\n  opaqueToken : List UInt8", 1
        )
    result = {}
    for name, raw in files.items():
        if name == PREFIX + ".TypesExternal":
            raw = types.encode()
        if name == PREFIX + ".FunsExternal":
            result["NativeWholeTypedOperations"] = sources["NativeWholeTypedOperations"]
            result["NativeCanonicalRowOperations"] = sources["NativeWholeRowOperations"]
            raw = functions.encode()
        if name == "ProofRoot":
            result["CanonicalRowNames.Funs"] = (
                "module\npublic import " + PREFIX + ".Funs\n@[expose] public section\n"
            ).encode()
            result["NativeCanonicalRowProofs"] = sources["NativeCanonicalRowProofs"]
            from native_row_abstraction_v2 import row_abstraction_audit_source

            result["RowAbstractionAudit"] = row_abstraction_audit_source().encode()
            result["NativeWholeCanonicalSpec"] = sources["NativeWholeCanonicalSpec"]
            result["NativeWholeCanonicalExact"] = sources["NativeWholeCanonicalExact"]
            result["NativeWholeCanonicalFold"] = sources["NativeWholeCanonicalFold"]
            result["NativeWholeTypedText"] = sources["NativeWholeTypedText"]
            result["NativeWholeTypedSeedSpec"] = sources["NativeWholeTypedSeedSpec"]
            result["NativeWholeTypedSeedProofs"] = sources["NativeWholeTypedSeedProofs"]
            raw = b"module\npublic import NativeWholeViewsMaterialize\npublic import NativeCanonicalRowProofs\npublic import RowAbstractionAudit\npublic import NativeWholeCanonicalFold\npublic import NativeWholeTypedText\npublic import NativeWholeTypedSeedProofs\n@[expose] public section\n"
        result[name] = raw
    _validate_local_imports(result)
    return result, {
        **report,
        "scope": "whole Views materialization and exact actual canonical row/fold/function results with read-dictionary noninterference under candidate APIs",
        "bindings": bindings,
        "unbound_external_nodes": unbound,
        "inactive_error_carriers_not_native_error_admission": True,
        "read_dictionary_proof_reused_unchanged": True,
        "mutable_json_api_admitted": False,
    }


def roots():
    from native_row_context_v2 import row_dictionary_roots

    ns = "Correspondence036.NativeWholeCanonicalRow"
    folded = "Correspondence036.NativeWholeCanonicalFold"
    vec = f"Aeneas.Std.alloc.vec.Vec {ns}.Row"
    typed = "Correspondence036.NativeWholeTypedText"
    bt = "alloc.collections.btree.map.BTreeMap"
    global_type = "Aeneas.Std.alloc.alloc.Global"
    seeded = "Correspondence036.NativeWholeTypedSeed"
    return [
        *view_roots(),
        *row_dictionary_roots(),
        {
            "id": "whole_canonical_row.exact",
            "declaration": ns + ".state_fact_row_exact",
            "expected_type": f"∀ (row : {ns}.Row) (parents children : {ns}.Rows) (domain : {ns}.InputDomain row), transition_study036.reference.state_fact_row row ⟨parents⟩ ⟨children⟩ = Aeneas.Std.Result.ok (let step := {ns}.rowSpec row parents children; (step.1, serde_json.map.Map.mk step.2.1, serde_json.map.Map.mk step.2.2))",
        },
        {
            "id": "whole_canonical_rows.loop_fold",
            "declaration": folded + ".canonical_loop_fold",
            "expected_type": f"∀ (rows : {vec}) (parents children : {ns}.Rows) (domain : ∀ row ∈ rows.val, {ns}.InputDomain row), transition_study036.reference.state_fact_rows_loop rows ⟨parents⟩ ⟨children⟩ = Aeneas.Std.Result.ok ({folded}.pack ({ns}.foldRows rows.val parents children))",
        },
        {
            "id": "whole_canonical_rows.exact",
            "declaration": folded + ".canonical_rows_exact",
            "expected_type": f"∀ (rows : {vec}) (domain : ∀ row ∈ rows.val, {ns}.InputDomain row), transition_study036.reference.state_fact_rows rows = Aeneas.Std.Result.ok ({folded}.encoded ({ns}.foldRows rows.val .nil .nil))",
        },
        {
            "id": "whole_typed.text_exact",
            "declaration": typed + ".text_exact",
            "expected_type": f"∀ (value : {ns}.Value) (key : Aeneas.Std.Str) (label : String) (decoded : Correspondence036.NativeStringCodec.decode key = some label) (domain : {typed}.TextDomain value), transition_study036.views.text value key = Aeneas.Std.Result.ok ({typed}.textSpec value label)",
        },
        {
            "id": "whole_typed.seed_metadata_frame",
            "declaration": typed + ".seed_metadata_frame",
            "expected_type": f"∀ (key : {typed}.Key) (left right : {typed}.Version) (sameEntity : left.entity = right.entity) (sameValue : left.value = right.value) (parents : {bt} String String {global_type}) (children : {bt} String transition_study036.views.ChildRow {global_type}) (active : {bt} String (alloc.collections.btree.set.BTreeSet String {global_type}) {global_type}), transition_study036.views.seed_row key left parents children active = transition_study036.views.seed_row key right parents children active",
        },
        {
            "id": "whole_typed.public_error_exact",
            "declaration": typed + ".public_error_exact",
            "expected_type": f"∀ (failure : {typed}.Failure), transition_study036.views.SeedFailure.impl.into_study failure = Aeneas.Std.Result.ok ({typed}.publicError failure)",
        },
        {
            "id": "whole_typed.public_error_prerequisite",
            "declaration": typed + ".public_error_prerequisite",
            "expected_type": f"∀ (failure : {typed}.Failure), ∃ message : Aeneas.Std.Str, transition_study036.views.SeedFailure.impl.into_study failure = Aeneas.Std.Result.ok (transition_study036.error.StudyError.Prerequisite message)",
        },
        {
            "id": "whole_typed.insert_put",
            "declaration": seeded + ".typed_insert_put",
            "expected_type": f"∀ {{V : Type}} (rows : {seeded}.Map V) (key : String) (value : V), ∃ old : Option V, alloc.collections.btree.map.BTreeMap.impl.insert transition_study036.alloc.alloc.Global.Insts.CoreAllocAllocatorClone transition_study036.alloc.string.String.Insts.CoreCmpOrd ⟨rows⟩ key value = Aeneas.Std.Result.ok (old, (⟨{seeded}.put key value rows⟩ : {seeded}.NativeMap V))",
        },
        {
            "id": "whole_typed.seed_row_exact",
            "declaration": seeded + ".seed_row_exact",
            "expected_type": f"∀ (key : {seeded}.Key) (version : {seeded}.Version) (parents : {seeded}.Parents) (children : {seeded}.Children) (active : {seeded}.Active) (domain : {seeded}.InputDomain key version), transition_study036.views.seed_row key version ⟨parents⟩ ⟨children⟩ ⟨active⟩ = Aeneas.Std.Result.ok ({seeded}.pack ({seeded}.seedSpec key version parents children active))",
        },
    ]
