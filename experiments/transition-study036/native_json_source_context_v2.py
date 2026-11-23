"""Preserve actual JSON source with explicit, unadmitted external data models.

External function declarations remain untouched. Each checked root must freshly
exclude their axioms; this factory never establishes native or runtime adequacy.
"""

import re


def validate_json_source_probe_config(selection):
    from artifact_registration_v2 import guard_reference

    refs = {
        "extraction_checkpoint_ref",
        "extraction_result_ref",
        "borrow_selection_ref",
        "source_decomposition_ref",
    }
    if (
        not isinstance(selection, dict)
        or set(selection)
        != refs
        | {
            "format",
            "source_refs",
            "bindings",
            "scope",
            "native_proof",
            "feature_complete",
            "runtime_totality_established",
        }
        or selection["format"] != "core036.native-json-source-probe.v2"
        or selection["scope"] != "generated_json_source_index_only"
        or selection["native_proof"] != "unestablished"
        or selection["feature_complete"] is not False
        or selection["runtime_totality_established"] is not False
        or selection["bindings"] != []
        or not isinstance(selection["source_refs"], dict)
        or set(selection["source_refs"]) != {"RuntimeNames", "NativeJsonSourceIndex"}
    ):
        raise ValueError("JsonSourceProbeSelection")
    for reference in [
        *[selection[key] for key in refs],
        *selection["source_refs"].values(),
    ]:
        guard_reference(reference)


def json_source_roots():
    namespace = "Correspondence036.NativeJsonSourceIndex"
    value = "transition_study036.serde_json.value.Value"
    dictionary = "transition_study036.serde_json.value.index.Index"
    actual = "serde_json.value.Value.Insts.CoreOpsIndexIndexIValue.index"
    result = "Aeneas.Std.Result"
    prefix = (
        f"∀ {{I : Type}} (dictionary : {dictionary} I) (value : {value}) (key : I), "
    )
    rows = [
        (
            "null_exact",
            f"serde_json.value.index.IndexValueIValue.index.NULL = {value}.Null",
        ),
        (
            "index_exact",
            prefix
            + f"{actual} dictionary value key = (do let found ← dictionary.index_into key value; {result}.ok (found.getD {value}.Null))",
        ),
        (
            "index_none",
            prefix
            + f"dictionary.index_into key value = {result}.ok none → {actual} dictionary value key = {result}.ok {value}.Null",
        ),
        (
            "index_some",
            prefix
            + f"∀ (found : {value}), dictionary.index_into key value = {result}.ok (some found) → {actual} dictionary value key = {result}.ok found",
        ),
        (
            "index_failure",
            prefix
            + f"∀ (failure : Aeneas.Std.Error), dictionary.index_into key value = {result}.fail failure → {actual} dictionary value key = {result}.fail failure",
        ),
        (
            "index_divergence",
            prefix
            + f"dictionary.index_into key value = {result}.div → {actual} dictionary value key = {result}.div",
        ),
        (
            "index_read_field_only",
            f"∀ {{I : Type}} (left right : {dictionary} I) (same : left.index_into = right.index_into) (value : {value}) (key : I), {actual} left value key = {actual} right value key",
        ),
    ]
    return [
        {
            "id": "json_source." + name,
            "declaration": namespace + "." + name,
            "expected_type": type_,
        }
        for name, type_ in rows
    ]


def complete_json_source_types(external):
    if (
        not isinstance(external, str)
        or external.count("public import Aeneas\n") != 1
        or re.search(r"\b(?:axiom|structure|abbrev)\s+serde_json\.map\.Map\b", external)
        or re.search(r"\baxiom\s+serde_json\.number\.", external)
    ):
        raise ValueError("JsonSourceExternalTypeContext")
    definitions = [
        (
            r"axiom alloc\.collections\.btree\.map\.BTreeMap\s*\(K : Type _\)\s*\(V : Type _\)\s*\(A :\s*Type _\) : Type",
            "inductive alloc.collections.btree.map.BTreeMap (K V A : Type) where\n"
            "| nil : alloc.collections.btree.map.BTreeMap K V A\n"
            "| cons : K → V → alloc.collections.btree.map.BTreeMap K V A → alloc.collections.btree.map.BTreeMap K V A",
        ),
        (
            r"axiom alloc\.collections\.btree\.map\.IntoIter\s*\(K : Type _\)\s*\(V : Type _\)\s*\(A :\s*Type _\) : Type",
            "structure alloc.collections.btree.map.IntoIter (K V A : Type) where\n"
            "  remaining : List (K × V)",
        ),
        (
            r"axiom alloc\.collections\.btree\.set\.BTreeSet\s*\(T : Type _\)\s*\(A : Type _\) : Type",
            "abbrev alloc.collections.btree.set.BTreeSet (T A : Type) := List T",
        ),
        (
            r"axiom core\.io\.error\.Error : Type",
            "structure core.io.error.Error where\n  opaqueToken : List UInt8",
        ),
        (
            r"axiom serde_json\.error\.Error : Type",
            "structure serde_json.error.Error where\n  opaqueToken : List UInt8",
        ),
    ]
    for pattern, definition in definitions:
        external, count = re.subn(pattern, lambda _match: definition, external)
        if count != 1:
            raise ValueError("JsonSourceRequiredExternalType")
    for name in [
        "alloc::collections::btree::map::BTreeMap",
        "alloc::collections::btree::map::IntoIter",
        "alloc::collections::btree::set::BTreeSet",
    ]:
        tag = '@[rust_type "' + name + '"]'
        if external.count(tag) != 1:
            raise ValueError("JsonSourceExternalTypeAttribute")
        external = external.replace(tag, tag[:-1] + " (body := .opaque)]", 1)
    if re.search(r"\baxiom\s+", external):
        raise ValueError("JsonSourceUnresolvedExternalType")
    return external.replace(
        "public import Aeneas\n",
        "public import Aeneas\npublic import RuntimeNames\n",
        1,
    )


def json_source_project_files(generated, runtime_source, proof_source):
    expected = {
        "Types.lean",
        "Funs.lean",
        "TypesExternal_Template.lean",
        "FunsExternal_Template.lean",
    }
    if (
        not isinstance(generated, dict)
        or set(generated) != expected
        or any(
            type(raw) is not bytes or len(raw) > 4 * 1024**2
            for raw in [*generated.values(), runtime_source, proof_source]
        )
    ):
        raise ValueError("JsonSourceProjectInputs")
    for raw in [
        generated["Types.lean"],
        generated["Funs.lean"],
        runtime_source,
        proof_source,
    ]:
        if re.search(rb"\b(?:axiom|sorry)\b", raw):
            raise ValueError("JsonSourcePartialOrUnprovedInput")
    for name, header in [
        ("Types.lean", b"public import SeedFoldsNames.TypesExternal\n"),
        (
            "Funs.lean",
            b"public import SeedFoldsNames.Types\npublic import SeedFoldsNames.FunsExternal\n",
        ),
        ("FunsExternal_Template.lean", b"public import SeedFoldsNames.Types\n"),
    ]:
        if generated[name].count(header) != 1:
            raise ValueError("JsonSourceGeneratedModuleContext")
    if generated["Types.lean"].count(b"structure serde_json.map.Map ") != 1:
        raise ValueError("JsonSourceActualMapLayoutRequired")
    for declaration in [
        b"serde_json.value.index.IndexValueIValue.index.NULL",
        b"serde_json.value.Value.Insts.CoreOpsIndexIndexIValue.index",
        b"Str.Insts.Serde_jsonValueIndexIndex.index_into",
        b"Shared0T.Insts.Serde_jsonValueIndexIndex.index_into",
        b"serde_json.map.MapStringValue.impl.get",
    ]:
        if (
            len(
                re.findall(
                    rb"^def " + re.escape(declaration) + rb"(?=\s|:)",
                    generated["Funs.lean"],
                    re.M,
                )
            )
            != 1
        ):
            raise ValueError("JsonSourceRequiredActualBody")
    external = complete_json_source_types(
        generated["TypesExternal_Template.lean"].decode()
    )
    return {
        "RuntimeNames": runtime_source,
        "SeedFoldsNames.TypesExternal": external.encode(),
        "SeedFoldsNames.Types": generated["Types.lean"],
        "SeedFoldsNames.FunsExternal": generated["FunsExternal_Template.lean"],
        "SeedFoldsNames.Funs": generated["Funs.lean"],
        "NativeJsonSourceIndex": proof_source,
        "ProofRoot": b"module\npublic import NativeJsonSourceIndex\n@[expose] public section\n",
    }
