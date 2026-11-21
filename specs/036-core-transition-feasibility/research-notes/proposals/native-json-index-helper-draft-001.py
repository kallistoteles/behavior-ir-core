"""Full JSON index dictionary candidate APIs, not native admission."""
from pathlib import PurePosixPath
from template_function_bindings_v2 import bind_functions

FUNCTIONS = ('Str.Insts.Serde_jsonValueIndexIndex.index_into', 'Str.Insts.Serde_jsonValueIndexIndex.index_into_mut', 'Str.Insts.Serde_jsonValueIndexIndex.index_or_insert', 'Shared0T.Insts.Serde_jsonValueIndexIndex.index_into', 'Shared0T.Insts.Serde_jsonValueIndexIndex.index_into_mut', 'Shared0T.Insts.Serde_jsonValueIndexIndex.index_or_insert', 'serde_json.value.Value.Insts.CoreOpsIndexIndexIValue.index')

"""Independently stated exact types for candidate JSON index APIs."""


def roots():
    ns = "Correspondence036.NativeJsonIndexOperations"
    value = "transition_study036.serde_json.value.Value"
    number = "transition_study036.serde_json.number.Number"
    data = "Correspondence036.CollectionsData"
    focus = "Correspondence036.CollectionsFocus"
    str_type = "Aeneas.Std.Str"
    result = "Aeneas.Std.Result"
    decoded = "Correspondence036.NativeStringCodec.decode key = some owned"
    read = "Str.Insts.Serde_jsonValueIndexIndex.index_into"
    mutable = "Str.Insts.Serde_jsonValueIndexIndex.index_into_mut"
    indexing = "serde_json.value.Value.Insts.CoreOpsIndexIndexIValue.index"
    index_type = "transition_study036.serde_json.value.index.Index T"
    generic = f"∀ {{T : Type}} (dictionary : {index_type}) (key : T) (value : {value})"
    specifications = [
        ("decode_key", f"∀ (key : {str_type}) (owned : String) (decoded : {decoded}), {ns}.decodeKey key = {result}.ok owned"),
        ("read_object", f"∀ (key : {str_type}) (owned : String) (rows : {data}.Map String {value}) (decoded : {decoded}), {read} key ({value}.Object ⟨rows⟩) = {result}.ok ({data}.lookup owned rows)"),
        ("read_null", f"∀ (key : {str_type}), {read} key {value}.Null = {result}.ok none"),
        ("read_bool", f"∀ (key : {str_type}) (value : Bool), {read} key ({value}.Bool value) = {result}.ok none"),
        ("read_number", f"∀ (key : {str_type}) (value : {number}), {read} key ({value}.Number value) = {result}.ok none"),
        ("read_string", f"∀ (key : {str_type}) (value : String), {read} key ({value}.String value) = {result}.ok none"),
        ("read_array", f"∀ (key : {str_type}) (value : Aeneas.Std.alloc.vec.Vec {value}), {read} key ({value}.Array value) = {result}.ok none"),
        ("mutable_object", f"∀ (key : {str_type}) (owned : String) (rows : {data}.Map String {value}) (decoded : {decoded}), {mutable} key ({value}.Object ⟨rows⟩) = (let focus := {focus}.capture owned rows; {result}.ok ({focus}.readValue focus, fun replacement => {value}.Object ⟨{focus}.writeValue focus replacement⟩))"),
        ("mutable_roundtrip", f"∀ (key : {str_type}) (owned : String) (rows : {data}.Map String {value}) (decoded : {decoded}), (do let (_, backward) ← {mutable} key ({value}.Object ⟨rows⟩); {result}.ok (backward ({data}.lookup owned rows))) = {result}.ok ({value}.Object ⟨rows⟩)"),
        ("mutable_null", f"∀ (key : {str_type}), {mutable} key {value}.Null = {result}.ok (none, fun _ => {value}.Null)"),
        ("shared_read", f"{generic}, Shared0T.Insts.Serde_jsonValueIndexIndex.index_into dictionary key value = dictionary.index_into key value"),
        ("shared_mutable", f"{generic}, Shared0T.Insts.Serde_jsonValueIndexIndex.index_into_mut dictionary key value = dictionary.index_into_mut key value"),
        ("shared_insert", f"{generic}, Shared0T.Insts.Serde_jsonValueIndexIndex.index_or_insert dictionary key value = dictionary.index_or_insert key value"),
        ("index_some", f"∀ {{T : Type}} (dictionary : {index_type}) (key : T) (value found : {value}) (read : dictionary.index_into key value = {result}.ok (some found)), {indexing} dictionary value key = {result}.ok found"),
        ("index_none", f"{generic} (read : dictionary.index_into key value = {result}.ok none), {indexing} dictionary value key = {result}.ok {value}.Null"),
        ("index_failure", f"{generic} (error : Aeneas.Std.Error) (read : dictionary.index_into key value = {result}.fail error), {indexing} dictionary value key = {result}.fail error"),
        ("index_divergence", f"{generic} (read : dictionary.index_into key value = {result}.div), {indexing} dictionary value key = {result}.div"),
        ("insert_null", f"∀ (key : {str_type}) (owned : String) (decoded : {decoded}), Str.Insts.Serde_jsonValueIndexIndex.index_or_insert key {value}.Null = {result}.ok ({value}.Null, fun replacement => {value}.Object ⟨{data}.Map.cons owned replacement {data}.Map.nil⟩)"),
    ]
    return [
        dict(id="native.json.index." + name, declaration=ns + "." + name, expected_type=expected)
        for name, expected in specifications
    ]


def prepare(refs, reference, external, template_sha256, source_dir):
    def guard(ref):
        if isinstance(ref, dict) and PurePosixPath(ref.get("path", "")).name in {
            "parameters.bin", "compression_prover_key.bin"
        }:
            raise ValueError("ProtectedArtifact")

    guard(reference)
    selection = refs.read(reference)
    if set(selection) != {"format", "model_ref", "contract_ref"} or selection["format"] != "core036.native-json-index-operations.v2":
        raise ValueError("NativeJsonIndexOperationsSelection")
    for key in ("model_ref", "contract_ref"):
        guard(selection[key])
    source = refs.verify(selection["model_ref"])
    if source != source_dir / "NativeJsonIndexOperations.lean":
        raise ValueError("NativeJsonIndexOperationsSourcePath")
    contract = refs.read(selection["contract_ref"])
    if (
        set(contract) != {"format", "scope", "template_sha256", "bindings", "native_proof", "feature_complete"}
        or contract["format"] != "core036.native-json-index-operations-contract.v2"
        or contract["scope"] != "exact_signature_candidate_api_not_native_admission"
        or contract["template_sha256"] != template_sha256
        or contract["native_proof"] != "unestablished"
        or contract["feature_complete"] is not False
    ):
        raise ValueError("NativeJsonIndexOperationsContract")
    model = source.read_text()
    external = bind_functions(external, model, contract["bindings"], FUNCTIONS)
    marker = "public import NativeJsonIterators\n"
    if external.count(marker) != 1:
        raise ValueError("NativeJsonIndexOperationsImport")
    external = external.replace(marker, marker + "public import NativeJsonIndexOperations\n")
    return source, model.encode(), external, roots(), controls(model)


"""Actual candidate-body corruption controls; no native primitive claim."""


def controls(model):
    boundary = "\nnamespace Correspondence036.NativeJsonIndexOperations\n"
    if model.count(boundary) != 2:
        raise ValueError("NativeJsonIndexProofBoundary")
    implementations = boundary.join(model.split(boundary)[:2])
    result = []
    for label, old, new, goal in [
        (
            "wrong-json-read-data",
            "ok (Correspondence036.CollectionsData.lookup owned map.data)",
            "ok (some .Null)",
            """
example (key : Str) (owned : String)
    (decoded : Correspondence036.NativeStringCodec.decode key = some owned) :
    _root_.Str.Insts.Serde_jsonValueIndexIndex.index_into key
      (.Object ⟨.cons owned (.Bool true) .nil⟩) = .ok (some (transition_study036.serde_json.value.Value.Bool true)) := by
  simp [_root_.Str.Insts.Serde_jsonValueIndexIndex.index_into,
    Correspondence036.NativeJsonIndexOperations.decodeKey, decoded,
    Correspondence036.CollectionsData.lookup]
""",
        ),
        (
            "wrong-json-mutable-frame",
            "fun replacement => .Object ⟨Correspondence036.CollectionsFocus.writeValue focus replacement⟩",
            "fun _ => .Object ⟨.nil⟩",
            """
example (key : Str) (owned : String)
    (decoded : Correspondence036.NativeStringCodec.decode key = some owned) :
    (do let (_, backward) ← _root_.Str.Insts.Serde_jsonValueIndexIndex.index_into_mut key
          (.Object ⟨.cons owned (.Bool true) (.cons "unrelated" .Null .nil)⟩)
        .ok (backward (some (.Bool false)))) =
      .ok (transition_study036.serde_json.value.Value.Object
        ⟨.cons owned (.Bool false) (.cons "unrelated" .Null .nil)⟩) := by
  simp [_root_.Str.Insts.Serde_jsonValueIndexIndex.index_into_mut,
    Correspondence036.NativeJsonIndexOperations.decodeKey, decoded,
    Correspondence036.CollectionsFocus.capture,
    Correspondence036.CollectionsFocus.writeValue,
    Correspondence036.CollectionsFocus.append]
""",
        ),
        (
            "wrong-json-null-backward",
            "ok (.Null, fun replacement => .Object ⟨Correspondence036.CollectionsFocus.append\n        front (.cons stored replacement suffix)⟩)",
            "ok (.Null, fun _ => .Null)",
            """
example (key : Str) (owned : String)
    (decoded : Correspondence036.NativeStringCodec.decode key = some owned) :
    (do let (_, backward) ← _root_.Str.Insts.Serde_jsonValueIndexIndex.index_or_insert key .Null
        .ok (backward (.Bool true))) =
      .ok (transition_study036.serde_json.value.Value.Object ⟨.cons owned (.Bool true) .nil⟩) := by
  simp [_root_.Str.Insts.Serde_jsonValueIndexIndex.index_or_insert,
    _root_.Str.Insts.AllocBorrowToOwnedString.to_owned,
    Correspondence036.NativeStringCodec.own_result_decoded key owned decoded,
    Correspondence036.CollectionsGap.captureM, Correspondence036.CollectionsFocus.append]
""",
        ),
    ]:
        if implementations.count(old) != 1:
            raise ValueError("NativeJsonIndexMutationPoint")
        result.append((label, implementations.replace(old, new) + goal, "normalized-False"))
    return result
