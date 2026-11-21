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
