"""Fixed conditional canonical-row target; no native/runtime admission."""
import hashlib
import re

from artifact_registration_v2 import guard_reference
from records import validate_ref_v2

SPECIFICATION_SHA256 = '21aa0cf03ce32139c1ea0778140798548a5e4de1fd48965ce2d640c7146158b3'
EXPECTED_ROOTS = [{'id': 'canonical_row.exact', 'declaration': 'Correspondence036.NativeCanonicalRow.state_fact_row_exact', 'expected_type': '∀ (row : transition_study036.behavior_store.documents.SeedEntity) (parents children : Correspondence036.NativeCanonicalRow.Map), Correspondence036.NativeCanonicalRow.InputDomain row parents children → transition_study036.reference.state_fact_row row parents children = Aeneas.Std.Result.ok (Correspondence036.NativeCanonicalRow.rowSpec row parents children)'}, {'id': 'canonical_row.seed_identity_first', 'declaration': 'Correspondence036.NativeCanonicalRow.seed_identity_first', 'expected_type': '∀ (row : transition_study036.behavior_store.documents.SeedEntity) (parents children : Correspondence036.NativeCanonicalRow.Map), Correspondence036.NativeCanonicalRow.InputDomain row parents children → Correspondence036.NativeCanonicalRow.textId row = none → transition_study036.reference.state_fact_row row parents children = Aeneas.Std.Result.ok (.Err (.Prerequisite (Aeneas.Std.toStr "SeedIdentity")), parents, children)'}, {'id': 'canonical_row.other_keys', 'declaration': 'Correspondence036.NativeCanonicalRow.other_keys', 'expected_type': '∀ (row : transition_study036.behavior_store.documents.SeedEntity) (parents children : Correspondence036.NativeCanonicalRow.Map) (id query : String), Correspondence036.NativeCanonicalRow.InputDomain row parents children → Correspondence036.NativeCanonicalRow.textId row = some id → query ≠ id → (do let (_, parents1, children1) ← transition_study036.reference.state_fact_row row parents children; Aeneas.Std.Result.ok (Correspondence036.NativeCanonicalRow.lookup parents1 query, Correspondence036.NativeCanonicalRow.lookup children1 query)) = Aeneas.Std.Result.ok (Correspondence036.NativeCanonicalRow.lookup parents query, Correspondence036.NativeCanonicalRow.lookup children query)'}]
SOURCE_NAMES = {
    "specification_source_ref": "NativeCanonicalRowSpec.lean",
    "bridges_source_ref": "NativeCanonicalRowBridges.lean",
    "exact_source_ref": "NativeCanonicalRowExact.lean",
}
BASE_MODULES = {
    "NativeStringBorrow", "RuntimeNames", "CanonicalRowNames.TypesExternal",
    "CanonicalRowNames.Types", "NativeCanonicalRowOperations",
    "CanonicalRowNames.FunsExternal", "CanonicalRowNames.Funs",
    "NativeCanonicalRowProofs", "RowAbstractionAudit", "ProofRoot",
}
BASE_ROOT = b"module\npublic import NativeCanonicalRowProofs\npublic import RowAbstractionAudit\n@[expose] public section\n"


def canonical_row_roots():
    return [dict(row) for row in EXPECTED_ROOTS]


def validate_canonical_sources(packet):
    if (not isinstance(packet, dict)
        or set(packet) != {"format", *SOURCE_NAMES}
        or packet["format"] != "core036.native-canonical-row-sources.v2"):
        raise ValueError("NativeCanonicalRowSources")
    for key in SOURCE_NAMES:
        guard_reference(packet[key])
        validate_ref_v2(packet[key])


def extend_canonical_row_project(base, specification, bridges, exact):
    if (not isinstance(base, dict) or set(base) != BASE_MODULES
        or base.get("ProofRoot") != BASE_ROOT
        or any(type(raw) is not bytes or len(raw) > 4 * 1024**2
               for raw in (specification, bridges, exact))):
        raise ValueError("NativeCanonicalRowProject")
    if hashlib.sha256(specification).hexdigest() != SPECIFICATION_SHA256:
        raise ValueError("NativeCanonicalRowSpecificationBinding")
    for raw in (specification, bridges, exact):
        if re.search(rb"^\s*(axiom|sorry)\b", raw, re.M):
            raise ValueError("NativeCanonicalRowUnprovedSource")
    result = {name: raw for name, raw in base.items() if name != "ProofRoot"}
    result.update(NativeCanonicalRowSpec=specification,
                  NativeCanonicalRowBridges=bridges, NativeCanonicalRowExact=exact)
    result["ProofRoot"] = b"module\npublic import NativeCanonicalRowExact\npublic import RowAbstractionAudit\n@[expose] public section\n"
    return result
