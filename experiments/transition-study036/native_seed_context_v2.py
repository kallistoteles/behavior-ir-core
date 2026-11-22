"""Conserved generated typed-seed context under explicit model interpretations."""

import re
import hashlib
from native_json_borrow_probe_v2 import complete_borrow_types

SPECIFICATION_SHA256 = (
    "36b5c313c898be0a97f54d0fafe06bdc53fb399e6585127d4568314d3c08857b"
)


def complete_seed_external_types(external):
    completed = complete_borrow_types(external)
    for rust_type in (
        "alloc::collections::btree::map::BTreeMap",
        "alloc::collections::btree::set::BTreeSet",
    ):
        tag = '@[rust_type "' + rust_type + '"]'
        if completed.count(tag) != 1:
            raise ValueError("NativeSeedCollectionTypeAttribute")
        completed = completed.replace(
            tag, '@[rust_type "' + rust_type + '" (body := .opaque)]', 1
        )
    types = {
        r"axiom alloc\.collections\.btree\.map\.BTreeMap\s*\(K : Type _\)\s*\(V : Type _\)\s*\(A :\s*Type _\) : Type": "inductive alloc.collections.btree.map.BTreeMap (K V A : Type) where\n| nil : alloc.collections.btree.map.BTreeMap K V A\n| cons : K → V → alloc.collections.btree.map.BTreeMap K V A → alloc.collections.btree.map.BTreeMap K V A",
        r"axiom alloc\.collections\.btree\.set\.BTreeSet\s*\(T : Type _\)\s*\(A : Type _\) : Type": "abbrev alloc.collections.btree.set.BTreeSet (T A : Type) := List T",
    }
    for pattern, replacement in types.items():
        completed, count = re.subn(pattern, lambda _match: replacement, completed)
        if count != 1:
            raise ValueError("NativeSeedCollectionTypeContext")
    for name in ("core.io.error.Error", "serde_json.error.Error"):
        declaration = "axiom " + name + " : Type"
        if completed.count(declaration) != 1:
            raise ValueError("NativeSeedInactiveErrorSort")
        completed = completed.replace(
            declaration, "structure " + name + " where\n  opaqueToken : List UInt8", 1
        )
    if re.search(r"\baxiom\s+", completed):
        raise ValueError("NativeSeedUnresolvedTypeAxiom")
    return completed


def seed_roots():
    namespace = "Correspondence036.NativeTypedSeed"
    failure = "transition_study036.views.SeedFailure"
    actual = "transition_study036.views.SeedFailure.impl.into_study"
    return [
        dict(
            id="typed_seed.text_exact",
            declaration=namespace + ".text_exact",
            expected_type=f"∀ (value : {namespace}.Value) (key : Aeneas.Std.Str) (label : String) (decoded : Correspondence036.NativeStringBorrow.decode key = some label) (domain : {namespace}.TextDomain value), transition_study036.views.text value key = Aeneas.Std.Result.ok ({namespace}.textSpec value label)",
        ),
        dict(
            id="typed_seed.seed_metadata_frame",
            declaration=namespace + ".seed_metadata_frame",
            expected_type=f"∀ (key : {namespace}.Key) (left right : {namespace}.Version) (sameEntity : left.entity = right.entity) (sameValue : left.value = right.value) (parents : {namespace}.Parents) (children : {namespace}.Children) (active : {namespace}.Active), transition_study036.views.seed_row key left parents children active = transition_study036.views.seed_row key right parents children active",
        ),
        dict(
            id="typed_seed.public_error_exact",
            declaration=namespace + ".public_error_exact",
            expected_type=f"∀ (failure : {failure}), {actual} failure = Aeneas.Std.Result.ok ({namespace}.publicError failure)",
        ),
        dict(
            id="typed_seed.public_error_prerequisite",
            declaration=namespace + ".public_error_prerequisite",
            expected_type=f"∀ (failure : {failure}), ∃ message : Aeneas.Std.Str, {actual} failure = Aeneas.Std.Result.ok (transition_study036.error.StudyError.Prerequisite message)",
        ),
        dict(
            id="typed_seed.seed_row_exact",
            declaration=namespace + ".seed_row_exact",
            expected_type=f"∀ (key : {namespace}.Key) (version : {namespace}.Version) (parents : {namespace}.Parents) (children : {namespace}.Children) (active : {namespace}.Active) (domain : {namespace}.InputDomain key version), transition_study036.views.seed_row key version parents children active = Aeneas.Std.Result.ok ({namespace}.seedSpec key version parents children active)",
        ),
    ]


def seed_project_files(
    generated, borrow, runtime, operations, specification, proofs, bindings
):
    from native_seed_bindings_v2 import bind_seed_primitives

    names = {
        "Types.lean",
        "Funs.lean",
        "TypesExternal_Template.lean",
        "FunsExternal_Template.lean",
    }
    if not isinstance(generated, dict) or set(generated) != names:
        raise ValueError("NativeSeedProjectInputs")
    sources = [*generated.values(), borrow, runtime, operations, specification, proofs]
    if any(type(raw) is not bytes or len(raw) > 4 * 1024**2 for raw in sources):
        raise ValueError("NativeSeedProjectSourceBound")
    if hashlib.sha256(specification).hexdigest() != SPECIFICATION_SHA256:
        raise ValueError("NativeSeedIndependentSpecification")
    for raw in (
        generated["Types.lean"],
        generated["Funs.lean"],
        borrow,
        runtime,
        operations,
        specification,
        proofs,
    ):
        if re.search(rb"^\s*(axiom|sorry)\b", raw, re.M):
            raise ValueError("NativeSeedProjectUnprovedSource")
    types = complete_seed_external_types(
        generated["TypesExternal_Template.lean"].decode()
    )
    functions, definitions = bind_seed_primitives(
        generated["FunsExternal_Template.lean"].decode(), bindings
    )
    if (
        re.search(r"\baxiom\s+", functions)
        or functions.count("public import Aeneas\n") != 1
    ):
        raise ValueError("NativeSeedUnresolvedExternal")
    functions = (
        functions.replace(
            "public import Aeneas\n",
            "public import Aeneas\npublic import NativeStringBorrow\npublic import NativeTypedSeedOperations\n",
            1,
        )
        + definitions
    )
    return {
        "NativeStringBorrow": borrow,
        "RuntimeNames": runtime,
        "TypedSeedRowNames.TypesExternal": types.encode(),
        "TypedSeedRowNames.Types": generated["Types.lean"],
        "NativeTypedSeedOperations": operations,
        "TypedSeedRowNames.FunsExternal": functions.encode(),
        "TypedSeedRowNames.Funs": generated["Funs.lean"],
        "NativeTypedSeedSpec": specification,
        "NativeTypedSeedProofs": proofs,
        "ProofRoot": b"module\npublic import NativeTypedSeedProofs\n@[expose] public section\n",
    }
