
namespace Correspondence036.NativeJsonIndexOperations
abbrev NativeValue := transition_study036.serde_json.value.Value
open Correspondence036.CollectionsData

theorem decode_key (key : Str) (owned : String)
    (decoded : NativeStringCodec.decode key = some owned) :
    decodeKey key = ok owned := by
  simp [decodeKey, decoded]

theorem read_object (key : Str) (owned : String) (rows : Map String NativeValue)
    (decoded : NativeStringCodec.decode key = some owned) :
    _root_.Str.Insts.Serde_jsonValueIndexIndex.index_into key (.Object ⟨rows⟩) =
      ok (lookup owned rows) := by
  simp [_root_.Str.Insts.Serde_jsonValueIndexIndex.index_into, decode_key key owned decoded]

theorem read_null (key : Str) :
    _root_.Str.Insts.Serde_jsonValueIndexIndex.index_into key .Null = ok none := rfl

theorem read_bool (key : Str) (value : Bool) :
    _root_.Str.Insts.Serde_jsonValueIndexIndex.index_into key (.Bool value) = ok none := rfl

theorem read_number (key : Str) (value : transition_study036.serde_json.number.Number) :
    _root_.Str.Insts.Serde_jsonValueIndexIndex.index_into key (.Number value) = ok none := rfl

theorem read_string (key : Str) (value : String) :
    _root_.Str.Insts.Serde_jsonValueIndexIndex.index_into key (.String value) = ok none := rfl

theorem read_array (key : Str) (value : alloc.vec.Vec NativeValue) :
    _root_.Str.Insts.Serde_jsonValueIndexIndex.index_into key (.Array value) = ok none := rfl

theorem mutable_object (key : Str) (owned : String) (rows : Map String NativeValue)
    (decoded : NativeStringCodec.decode key = some owned) :
    _root_.Str.Insts.Serde_jsonValueIndexIndex.index_into_mut key (.Object ⟨rows⟩) =
      let focus := CollectionsFocus.capture owned rows
      ok (CollectionsFocus.readValue focus, fun replacement =>
        NativeValue.Object ⟨CollectionsFocus.writeValue focus replacement⟩) := by
  simp [_root_.Str.Insts.Serde_jsonValueIndexIndex.index_into_mut, decode_key key owned decoded]

theorem mutable_roundtrip (key : Str) (owned : String) (rows : Map String NativeValue)
    (decoded : NativeStringCodec.decode key = some owned) :
    (do let (_, backward) ← _root_.Str.Insts.Serde_jsonValueIndexIndex.index_into_mut key (.Object ⟨rows⟩)
        ok (backward (lookup owned rows))) = ok (NativeValue.Object ⟨rows⟩) := by
  simp [mutable_object key owned rows decoded, CollectionsFocus.capture_write_old]

theorem mutable_null (key : Str) :
    _root_.Str.Insts.Serde_jsonValueIndexIndex.index_into_mut key .Null =
      ok (none, fun _ => NativeValue.Null) := rfl

theorem shared_read {T : Type} (dictionary : serde_json.value.index.Index T)
    (key : T) (value : NativeValue) :
    Shared0T.Insts.Serde_jsonValueIndexIndex.index_into dictionary key value =
      dictionary.index_into key value := rfl

theorem shared_mutable {T : Type} (dictionary : serde_json.value.index.Index T)
    (key : T) (value : NativeValue) :
    Shared0T.Insts.Serde_jsonValueIndexIndex.index_into_mut dictionary key value =
      dictionary.index_into_mut key value := rfl

theorem shared_insert {T : Type} (dictionary : serde_json.value.index.Index T)
    (key : T) (value : NativeValue) :
    Shared0T.Insts.Serde_jsonValueIndexIndex.index_or_insert dictionary key value =
      dictionary.index_or_insert key value := rfl

theorem index_some {T : Type} (dictionary : serde_json.value.index.Index T)
    (key : T) (value found : NativeValue)
    (read : dictionary.index_into key value = ok (some found)) :
    serde_json.value.Value.Insts.CoreOpsIndexIndexIValue.index dictionary value key =
      ok found := by
  simp [serde_json.value.Value.Insts.CoreOpsIndexIndexIValue.index, read]

theorem index_none {T : Type} (dictionary : serde_json.value.index.Index T)
    (key : T) (value : NativeValue)
    (read : dictionary.index_into key value = ok none) :
    serde_json.value.Value.Insts.CoreOpsIndexIndexIValue.index dictionary value key =
      ok NativeValue.Null := by
  simp [serde_json.value.Value.Insts.CoreOpsIndexIndexIValue.index, read]

theorem index_failure {T : Type} (dictionary : serde_json.value.index.Index T)
    (key : T) (value : NativeValue) (error : Error)
    (read : dictionary.index_into key value = fail error) :
    serde_json.value.Value.Insts.CoreOpsIndexIndexIValue.index dictionary value key =
      fail error := by
  simp [serde_json.value.Value.Insts.CoreOpsIndexIndexIValue.index, read]

theorem index_divergence {T : Type} (dictionary : serde_json.value.index.Index T)
    (key : T) (value : NativeValue)
    (read : dictionary.index_into key value = .div) :
    serde_json.value.Value.Insts.CoreOpsIndexIndexIValue.index dictionary value key =
      .div := by
  simp [serde_json.value.Value.Insts.CoreOpsIndexIndexIValue.index, read]

theorem insert_null (key : Str) (owned : String)
    (decoded : NativeStringCodec.decode key = some owned) :
    _root_.Str.Insts.Serde_jsonValueIndexIndex.index_or_insert key .Null =
      ok (NativeValue.Null, fun replacement => NativeValue.Object ⟨.cons owned replacement .nil⟩) := by
  simp [_root_.Str.Insts.Serde_jsonValueIndexIndex.index_or_insert,
    _root_.Str.Insts.AllocBorrowToOwnedString.to_owned,
    NativeStringCodec.own_result_decoded key owned decoded,
    CollectionsGap.captureM, CollectionsFocus.append]

end Correspondence036.NativeJsonIndexOperations
