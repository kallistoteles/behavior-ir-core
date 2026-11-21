"""Full candidate-map laws; native library/runtime admission remains separate."""

from artifact_registration_v2 import guard_reference


def roots():
    ns = "Correspondence036.NativeJsonMapRefinement"
    data = "Correspondence036.CollectionsData"
    ops = "Correspondence036.NativeJsonMapOperations"
    compare = "Correspondence036.NativeKeyOrder.cmpString"
    value = "transition_study036.serde_json.value.Value"
    rows = f"{data}.Map String {value}"
    arguments = f"∀ (key : String) (replacement : {value}) (rows : {rows}) (ordered : ({data}.keys rows).Pairwise (fun left right => {compare} left right = .lt)), "
    tail = (
        f"{data}.lookup key result.2 = some replacement ∧ "
        f"(∀ query, query ≠ key → {data}.lookup query result.2 = {data}.lookup query rows) ∧ "
        f"({data}.keys result.2).Pairwise (fun left right => {compare} left right = .lt) ∧ "
        f"{data}.WellFormed result.2 ∧ "
        f"{data}.length result.2 = {data}.length rows + (if ({data}.lookup key rows).isNone then 1 else 0)"
    )
    statements = [
        (
            "string_orderedInsert_contract",
            arguments
            + f"let result := {ops}.orderedInsert {compare} key replacement rows; result.1 = {data}.lookup key rows ∧ "
            + tail,
        ),
        (
            "actual_insert_contract",
            arguments
            + f"∃ updated : {rows}, serde_json.map.MapStringValue.impl.insert ⟨rows⟩ key replacement = Aeneas.Std.Result.ok ({data}.lookup key rows, serde_json.map.Map.mk updated) ∧ "
            + tail.replace("result.2", "updated"),
        ),
        (
            "ordered_unordered_lookup_bridge",
            arguments
            + f"let actual := {ops}.orderedInsert {compare} key replacement rows; let abstract := {data}.insert key replacement rows; actual.1 = abstract.1 ∧ ∀ query, {data}.lookup query actual.2 = {data}.lookup query abstract.2",
        ),
    ]
    return [
        dict(
            id="candidate.json.map.refinement." + name,
            declaration=ns + "." + name,
            expected_type=expected,
        )
        for name, expected in statements
    ]


def prepare(refs, reference, source_dir):
    guard_reference(reference)
    selected = refs.read(reference)
    if (
        not isinstance(selected, dict)
        or set(selected)
        != {
            "format",
            "scope",
            "model_ref",
            "invariant_ref",
            "native_proof",
            "feature_complete",
        }
        or selected["format"] != "core036.native-json-map-refinement.v2"
        or selected["scope"] != "candidate_map_laws_only"
        or selected["native_proof"] != "unestablished"
        or selected["feature_complete"] is not False
    ):
        raise ValueError("NativeJsonMapRefinementSelection")
    guard_reference(selected["model_ref"])
    guard_reference(selected["invariant_ref"])
    source = refs.verify(selected["model_ref"])
    if source != source_dir / "NativeJsonMapRefinement.lean":
        raise ValueError("NativeJsonMapRefinementSourcePath")
    invariant = refs.verify(selected["invariant_ref"])
    if invariant != source_dir / "CollectionsInvariant.lean":
        raise ValueError("NativeJsonMapRefinementInvariantPath")
    raw = source.read_bytes()
    if len(raw) > 64 * 1024 or any(
        raw.count(line) != 1
        for line in (
            b"public import NativeJsonMapOperations\n",
            b"public import CollectionsInvariant\n",
        )
    ):
        raise ValueError("NativeJsonMapRefinementSourceBoundary")
    return source, raw, roots(), invariant
