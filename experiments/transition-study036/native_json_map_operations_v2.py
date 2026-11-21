"""BTree JSON map candidates; no native primitive admission."""

from pathlib import PurePosixPath
from template_function_bindings_v2 import bind_functions

FUNCTIONS = (
    "serde_json.map.MapStringValue.impl.new",
    "serde_json.map.MapStringValue.impl.insert",
)


def roots():
    ns = "Correspondence036.NativeJsonMapOperations"
    data = "Correspondence036.CollectionsData"
    gap = "Correspondence036.CollectionsGap"
    focus = "Correspondence036.CollectionsFocus"
    value = "transition_study036.serde_json.value.Value"
    rows = f"{data}.Map String {value}"
    specifications = [
        (
            "write_prepend",
            f"∀ {{K V : Type}} (stored : K) (previous replacement : V) (entry : {gap}.Entry K V), {ns}.writeEntry replacement ({gap}.prepend stored previous entry) = (let result := {ns}.writeEntry replacement entry; (result.1, {data}.Map.cons stored previous result.2))",
        ),
        (
            "capture_write",
            f"∀ {{K V : Type}} (compare : K → K → Ordering) (key : K) (replacement : V) (rows : {data}.Map K V), {ns}.writeEntry replacement ({gap}.capture compare key rows) = {ns}.orderedInsert compare key replacement rows",
        ),
        (
            "insert_spec",
            f"∀ (rows : {rows}) (key : String) (replacement : {value}), serde_json.map.MapStringValue.impl.insert ⟨rows⟩ key replacement = (let result := {ns}.orderedInsert Correspondence036.NativeKeyOrder.cmpString key replacement rows; Aeneas.Std.Result.ok (result.1, serde_json.map.Map.mk result.2))",
        ),
        (
            "empty_new",
            f"serde_json.map.MapStringValue.impl.new = Aeneas.Std.Result.ok (serde_json.map.Map.mk ({data}.Map.nil : {rows}))",
        ),
        (
            "insert_empty",
            f"∀ (key : String) (replacement : {value}), serde_json.map.MapStringValue.impl.insert ⟨{data}.Map.nil⟩ key replacement = Aeneas.Std.Result.ok (none, serde_json.map.Map.mk ({data}.Map.cons key replacement {data}.Map.nil))",
        ),
        (
            "write_vacant",
            f"∀ (front suffix : {rows}) (key : String) (replacement : {value}), {ns}.writeEntry replacement ({gap}.Entry.vacant front key suffix) = (none, {focus}.append front ({data}.Map.cons key replacement suffix))",
        ),
        (
            "write_occupied",
            f"∀ (front suffix : {rows}) (stored : String) (previous replacement : {value}), {ns}.writeEntry replacement ({gap}.Entry.occupied front stored previous suffix) = (some previous, {focus}.append front ({data}.Map.cons stored replacement suffix))",
        ),
        (
            "occupied_frame",
            f"∀ (front suffix : {rows}) (stored query : String) (previous replacement : {value}) (different : query ≠ stored), {data}.lookup query ({ns}.writeEntry replacement ({gap}.Entry.occupied front stored previous suffix)).2 = {data}.lookup query ({gap}.toMap ({gap}.Entry.occupied front stored previous suffix))",
        ),
        (
            "vacant_frame",
            f"∀ (front suffix : {rows}) (key query : String) (replacement : {value}) (different : query ≠ key), {data}.lookup query ({ns}.writeEntry replacement ({gap}.Entry.vacant front key suffix)).2 = {data}.lookup query ({gap}.toMap ({gap}.Entry.vacant front key suffix))",
        ),
    ]
    return [
        dict(
            id="native.json.map." + name,
            declaration=ns + "." + name,
            expected_type=expected,
        )
        for name, expected in specifications
    ]


def prepare(refs, reference, external, template_sha256, source_dir):
    def guard(ref):
        if isinstance(ref, dict) and PurePosixPath(ref.get("path", "")).name in {
            "parameters.bin",
            "compression_prover_key.bin",
        }:
            raise ValueError("ProtectedArtifact")

    guard(reference)
    selection = refs.read(reference)
    if (
        set(selection) != {"format", "model_ref", "contract_ref"}
        or selection["format"] != "core036.native-json-map-operations.v2"
    ):
        raise ValueError("NativeJsonMapOperationsSelection")
    for key in ("model_ref", "contract_ref"):
        guard(selection[key])
    source = refs.verify(selection["model_ref"])
    if source != source_dir / "NativeJsonMapOperations.lean":
        raise ValueError("NativeJsonMapOperationsSourcePath")
    contract = refs.read(selection["contract_ref"])
    if (
        set(contract)
        != {
            "format",
            "scope",
            "template_sha256",
            "bindings",
            "native_proof",
            "feature_complete",
        }
        or contract["format"] != "core036.native-json-map-operations-contract.v2"
        or contract["scope"] != "exact_signature_candidate_api_not_native_admission"
        or contract["template_sha256"] != template_sha256
        or contract["native_proof"] != "unestablished"
        or contract["feature_complete"] is not False
    ):
        raise ValueError("NativeJsonMapOperationsContract")
    model = source.read_text()
    external = bind_functions(external, model, contract["bindings"], FUNCTIONS)
    marker = "public import NativeJsonIterators\n"
    if external.count(marker) != 1:
        raise ValueError("NativeJsonMapOperationsImport")
    external = external.replace(
        marker, marker + "public import NativeJsonMapOperations\n"
    )
    return source, model.encode(), external, roots(), controls(model)


def controls(model):
    boundary = "\nnamespace Correspondence036.NativeJsonMapOperations\n"
    if model.count(boundary) != 2:
        raise ValueError("NativeJsonMapProofBoundary")
    implementations = boundary.join(model.split(boundary)[:2])
    mutants = []
    for label, old, new in [
        ("wrong-json-map-new", "ok ⟨.nil⟩", 'ok ⟨.cons "extra" .Null .nil⟩'),
        ("wrong-json-map-old-value", "ok (result.1,", "ok (some .Null,"),
        (
            "wrong-json-map-replacement",
            "writeEntry replacement captured",
            "writeEntry .Null captured",
        ),
    ]:
        if implementations.count(old) != 1:
            raise ValueError("NativeJsonMapMutationPoint")
        mutant = implementations.replace(old, new)
        goal = """
example : serde_json.map.MapStringValue.impl.insert
    (serde_json.map.Map.mk Correspondence036.CollectionsData.Map.nil)
    "kept" (transition_study036.serde_json.value.Value.Bool true) =
    .ok (none, serde_json.map.Map.mk (Correspondence036.CollectionsData.Map.cons
      "kept" (transition_study036.serde_json.value.Value.Bool true)
      Correspondence036.CollectionsData.Map.nil)) := by
  simp [serde_json.map.MapStringValue.impl.insert,
    Correspondence036.CollectionsGap.captureM,
    Correspondence036.NativeJsonMapOperations.writeEntry,
    Correspondence036.CollectionsFocus.append]
"""
        if label == "wrong-json-map-new":
            goal = """
example : serde_json.map.MapStringValue.impl.new =
    .ok (serde_json.map.Map.mk (Correspondence036.CollectionsData.Map.nil :
      Correspondence036.CollectionsData.Map String transition_study036.serde_json.value.Value)) := by
  simp [serde_json.map.MapStringValue.impl.new]
"""
        mutants.append((label, mutant + goal, "normalized-False"))
    return mutants
