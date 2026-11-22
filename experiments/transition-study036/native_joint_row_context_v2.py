"""Compose row contexts without rewriting any generated executable/type body."""

import hashlib
import re

from native_seed_bindings_v2 import SEED_PRIMITIVES
from native_row_bindings_v2 import (
    ROW_PRIMITIVES,
    ROW_DICTIONARY_PRIMITIVES,
    _bind_named_primitives,
)
from native_seed_context_v2 import (
    complete_seed_external_types,
    SPECIFICATION_SHA256 as SEED_SPEC_SHA,
)
from native_canonical_row_context_v2 import SPECIFICATION_SHA256 as ROW_SPEC_SHA

SOURCE_NAMES = (
    "NativeStringBorrow",
    "RuntimeNames",
    "NativeCanonicalRowOperations",
    "NativeCanonicalRowProofs",
    "NativeCanonicalRowSpec",
    "NativeCanonicalRowBridges",
    "NativeCanonicalRowExact",
    "NativeTypedSeedOperations",
    "NativeTypedSeedSpec",
    "NativeTypedSeedProofs",
    "NativeJointRowSpec",
    "NativeJointRowProofs",
)
JOINT_SPEC_SHA = "8a6b8218640a5dd35996667faff2402ffdcc79a0064b00e4a2ee82fb7b967af0"
JOINT_PRIMITIVES = {**SEED_PRIMITIVES, **ROW_PRIMITIVES, **ROW_DICTIONARY_PRIMITIVES}
PROOF_ADAPTATION = {"lookup": 2, "indexStr": 3, "ownResult": 1, "eqStr": 6}


def validate_joint_probe_config(selection):
    from artifact_registration_v2 import guard_reference

    refs = {
        "extraction_checkpoint_ref",
        "extraction_result_ref",
        "borrow_selection_ref",
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
        or selection["format"] != "core036.native-joint-row-probe.v2"
        or selection["scope"] != "generated_joint_row_model_only"
        or selection["native_proof"] != "unestablished"
        or selection["feature_complete"] is not False
        or selection["runtime_totality_established"] is not False
        or not isinstance(selection["source_refs"], dict)
        or set(selection["source_refs"]) != set(SOURCE_NAMES)
        or not isinstance(selection["bindings"], list)
        or len(selection["bindings"]) != 20
        or any(not isinstance(row, dict) for row in selection["bindings"])
    ):
        raise ValueError("JointRowProbeSelection")
    for reference in [
        *[selection[key] for key in refs],
        *selection["source_refs"].values(),
    ]:
        guard_reference(reference)


def adapt_seed_proofs(original):
    if type(original) is not bytes:
        raise ValueError("JointRowProofAdaptationSource")
    text = original.decode()
    report = {}
    for name, expected in PROOF_ADAPTATION.items():
        pattern = r"\bNativeTypedSeedOperations\." + name + r"\b"
        text, count = re.subn(pattern, "NativeCanonicalRowOperations." + name, text)
        if count != expected:
            raise ValueError("JointRowProofAdaptationSites")
        report[name] = count
    header = "public import TypedSeedRowNames.Funs\n"
    if (
        text.count(header) != 1
        or "public import NativeCanonicalRowOperations\n" in text
    ):
        raise ValueError("JointRowProofAdaptationImport")
    text = text.replace(
        header, header + "public import NativeCanonicalRowOperations\n", 1
    )
    return text.encode(), report


def joint_roots():
    from native_row_context_v2 import row_dictionary_roots
    from native_canonical_row_context_v2 import canonical_row_roots
    from native_seed_context_v2 import seed_roots

    namespace = "Correspondence036.NativeJointRow"
    typed = "Correspondence036.NativeTypedSeed"
    return row_dictionary_roots() + canonical_row_roots() + seed_roots() + [
        dict(
            id="joint_row.rows_commute",
            declaration=namespace + ".rows_commute",
            expected_type=f"∀ (key : {typed}.Key) (version : {typed}.Version) (ps : {typed}.Parents) (cs : {typed}.Children) (active : {typed}.Active) (domain : {typed}.InputDomain key version) (compatible : {namespace}.Compatible key version), let stepped := {typed}.seedSpec key version ps cs active; transition_study036.views.seed_row key version ps cs active = Aeneas.Std.Result.ok stepped ∧ stepped.1 = .Ok () ∧ transition_study036.reference.state_fact_row ({namespace}.fromVersion version) ({namespace}.parents ps) ({namespace}.children cs) = Aeneas.Std.Result.ok (.Ok (), {namespace}.parents stepped.2.1, {namespace}.children stepped.2.2.1)",
        )
    ]


def joint_project_files(generated, sources, bindings):
    from native_row_abstraction_v2 import row_abstraction_audit_source

    expected = {
        "Types.lean",
        "Funs.lean",
        "TypesExternal_Template.lean",
        "FunsExternal_Template.lean",
    }
    if (
        not isinstance(generated, dict)
        or set(generated) != expected
        or not isinstance(sources, dict)
        or set(sources) != set(SOURCE_NAMES)
    ):
        raise ValueError("JointRowProjectInputs")
    if any(
        type(raw) is not bytes or len(raw) > 4 * 1024**2
        for raw in [*generated.values(), *sources.values()]
    ):
        raise ValueError("JointRowProjectSourceBound")
    for name, sha in (
        ("NativeCanonicalRowSpec", ROW_SPEC_SHA),
        ("NativeTypedSeedSpec", SEED_SPEC_SHA),
        ("NativeJointRowSpec", JOINT_SPEC_SHA),
    ):
        if hashlib.sha256(sources[name]).hexdigest() != sha:
            raise ValueError("JointRowIndependentSpecification")
    for raw in [generated["Types.lean"], generated["Funs.lean"], *sources.values()]:
        if re.search(rb"^\s*(axiom|sorry)\b", raw, re.M):
            raise ValueError("JointRowUnprovedSource")
    for name, header in (
        ("Types.lean", b"public import SeedCanonicalNames.TypesExternal\n"),
        (
            "Funs.lean",
            b"public import SeedCanonicalNames.Types\npublic import SeedCanonicalNames.FunsExternal\n",
        ),
    ):
        if generated[name].count(header) != 1:
            raise ValueError("JointRowGeneratedModuleContext")
    types = complete_seed_external_types(
        generated["TypesExternal_Template.lean"].decode()
    )
    functions, definitions = _bind_named_primitives(
        generated["FunsExternal_Template.lean"].decode(), bindings, JOINT_PRIMITIVES
    )
    if (
        re.search(r"\baxiom\s+", functions)
        or functions.count("public import Aeneas\n") != 1
    ):
        raise ValueError("JointRowUnresolvedExternal")
    functions = (
        functions.replace(
            "public import Aeneas\n",
            "public import Aeneas\npublic import NativeStringBorrow\npublic import NativeCanonicalRowOperations\npublic import NativeTypedSeedOperations\n",
            1,
        )
        + definitions
    )
    adapted, _report = adapt_seed_proofs(sources["NativeTypedSeedProofs"])
    types_shim = (
        b"module\npublic import SeedCanonicalNames.Types\n@[expose] public section\n"
    )
    funs_shim = (
        b"module\npublic import SeedCanonicalNames.Funs\n@[expose] public section\n"
    )
    return {
        "NativeStringBorrow": sources["NativeStringBorrow"],
        "RuntimeNames": sources["RuntimeNames"],
        "SeedCanonicalNames.TypesExternal": types.encode(),
        "SeedCanonicalNames.Types": generated["Types.lean"],
        "CanonicalRowNames.Types": types_shim,
        "TypedSeedRowNames.Types": types_shim,
        "NativeCanonicalRowOperations": sources["NativeCanonicalRowOperations"],
        "NativeTypedSeedOperations": sources["NativeTypedSeedOperations"],
        "SeedCanonicalNames.FunsExternal": functions.encode(),
        "SeedCanonicalNames.Funs": generated["Funs.lean"],
        "CanonicalRowNames.Funs": funs_shim,
        "TypedSeedRowNames.Funs": funs_shim,
        "NativeCanonicalRowProofs": sources["NativeCanonicalRowProofs"],
        "RowAbstractionAudit": row_abstraction_audit_source().encode(),
        "NativeCanonicalRowSpec": sources["NativeCanonicalRowSpec"],
        "NativeCanonicalRowBridges": sources["NativeCanonicalRowBridges"],
        "NativeCanonicalRowExact": sources["NativeCanonicalRowExact"],
        "NativeTypedSeedSpec": sources["NativeTypedSeedSpec"],
        "NativeTypedSeedProofs": adapted,
        "NativeJointRowSpec": sources["NativeJointRowSpec"],
        "NativeJointRowProofs": sources["NativeJointRowProofs"],
        "ProofRoot": b"module\npublic import NativeJointRowProofs\npublic import RowAbstractionAudit\n@[expose] public section\n",
    }
