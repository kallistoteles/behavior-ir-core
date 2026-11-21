module
public import NativeJsonMapOperations
public import NativeStringCodec
@[expose] public section
open Aeneas Aeneas.Std Result
open transition_study036

/- Candidate data interpretation, not native JSON/runtime admission. Decoding a
borrowed key is a pure representation operation, not a native allocation. Invalid
UTF8/Usize inputs are off-source totalizations. Incompatible mutable continuation
arguments preserve the original data; actual callers must prove compatibility.
Null-to-Object mutation on a failing key-copy path is not modeled by this
value-success abstraction. The coarse panic constructor does not discharge
performed panic/error effects; runtime correspondence remains unestablished. -/
namespace Correspondence036.NativeJsonIndexOperations

def decodeKey (key : Str) : Result String :=
  match NativeStringCodec.decode key with
  | some owned => ok owned
  | none => fail .undef

end Correspondence036.NativeJsonIndexOperations

/-- [serde_json::value::index::{impl serde_json::value::index::Index for str}::index_into]:
    Source: '/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/value/index.rs', lines 84:4-84:63
    Name pattern: [serde_json::value::index::{serde_json::value::index::Index<str>}::index_into]
    Visibility: public -/
@[rust_fun "serde_json::value::index::{serde_json::value::index::Index<str>}::index_into"] def Str.Insts.Serde_jsonValueIndexIndex.index_into : Str → serde_json.value.Value → Result (Option serde_json.value.Value) :=
  fun key value => match value with
  | .Object map => do
    let owned ← Correspondence036.NativeJsonIndexOperations.decodeKey key
    ok (Correspondence036.CollectionsData.lookup owned map.data)
  | _ => ok none

/-- [serde_json::value::index::{impl serde_json::value::index::Index for str}::index_into_mut]:
    Source: '/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/value/index.rs', lines 90:4-90:75
    Name pattern: [serde_json::value::index::{serde_json::value::index::Index<str>}::index_into_mut]
    Visibility: public -/
@[rust_fun "serde_json::value::index::{serde_json::value::index::Index<str>}::index_into_mut"] def Str.Insts.Serde_jsonValueIndexIndex.index_into_mut : Str → serde_json.value.Value → Result ((Option serde_json.value.Value) × (Option serde_json.value.Value → serde_json.value.Value)) :=
  fun key value => match value with
  | .Object map => do
    let owned ← Correspondence036.NativeJsonIndexOperations.decodeKey key
    let focus := Correspondence036.CollectionsFocus.capture owned map.data
    ok (Correspondence036.CollectionsFocus.readValue focus,
      fun replacement => .Object ⟨Correspondence036.CollectionsFocus.writeValue focus replacement⟩)
  | _ => ok (none, fun _ => value)

/-- [serde_json::value::index::{impl serde_json::value::index::Index for str}::index_or_insert]:
    Source: '/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/value/index.rs', lines 96:4-96:68
    Name pattern: [serde_json::value::index::{serde_json::value::index::Index<str>}::index_or_insert]
    Visibility: public -/
@[rust_fun "serde_json::value::index::{serde_json::value::index::Index<str>}::index_or_insert"] def Str.Insts.Serde_jsonValueIndexIndex.index_or_insert : Str → serde_json.value.Value → Result (serde_json.value.Value × (serde_json.value.Value → serde_json.value.Value)) :=
  fun key value => do
    let rows ← match value with
      | .Null => ok Correspondence036.CollectionsData.Map.nil
      | .Object map => ok map.data
      | _ => fail .panic
    let owned ← Str.Insts.AllocBorrowToOwnedString.to_owned key
    let captured ← Correspondence036.CollectionsGap.captureM
      alloc.string.String.Insts.CoreCmpOrd.cmp owned rows
    match captured with
    | .vacant front stored suffix =>
      ok (.Null, fun replacement => .Object ⟨Correspondence036.CollectionsFocus.append
        front (.cons stored replacement suffix)⟩)
    | .occupied front stored previous suffix =>
      ok (previous, fun replacement => .Object ⟨Correspondence036.CollectionsFocus.append
        front (.cons stored replacement suffix)⟩)

/-- [serde_json::value::index::{impl serde_json::value::index::Index for &'_0 T}::index_into]:
    Source: '/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/value/index.rs', lines 123:4-123:63
    Name pattern: [serde_json::value::index::{serde_json::value::index::Index<&'0 @T>}::index_into]
    Visibility: public -/
@[rust_fun "serde_json::value::index::{serde_json::value::index::Index<&'0 @T>}::index_into"] def Shared0T.Insts.Serde_jsonValueIndexIndex.index_into {T : Type _} (IndexInst : serde_json.value.index.Index T) : T → serde_json.value.Value → Result (Option serde_json.value.Value) :=
  fun key value => IndexInst.index_into key value

/-- [serde_json::value::index::{impl serde_json::value::index::Index for &'_0 T}::index_into_mut]:
    Source: '/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/value/index.rs', lines 126:4-126:75
    Name pattern: [serde_json::value::index::{serde_json::value::index::Index<&'0 @T>}::index_into_mut]
    Visibility: public -/
@[rust_fun "serde_json::value::index::{serde_json::value::index::Index<&'0 @T>}::index_into_mut"] def Shared0T.Insts.Serde_jsonValueIndexIndex.index_into_mut {T : Type _} (IndexInst : serde_json.value.index.Index T) : T → serde_json.value.Value → Result ((Option serde_json.value.Value) × (Option serde_json.value.Value → serde_json.value.Value)) :=
  fun key value => IndexInst.index_into_mut key value

/-- [serde_json::value::index::{impl serde_json::value::index::Index for &'_0 T}::index_or_insert]:
    Source: '/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/value/index.rs', lines 129:4-129:68
    Name pattern: [serde_json::value::index::{serde_json::value::index::Index<&'0 @T>}::index_or_insert]
    Visibility: public -/
@[rust_fun "serde_json::value::index::{serde_json::value::index::Index<&'0 @T>}::index_or_insert"] def Shared0T.Insts.Serde_jsonValueIndexIndex.index_or_insert {T : Type _} (IndexInst : serde_json.value.index.Index T) : T → serde_json.value.Value → Result (serde_json.value.Value × (serde_json.value.Value → serde_json.value.Value)) :=
  fun key value => IndexInst.index_or_insert key value

/-- [serde_json::value::index::{impl core::ops::index::Index<I, serde_json::value::Value> for serde_json::value::Value}::index]:
    Source: '/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/value/index.rs', lines 212:4-212:39
    Name pattern: [serde_json::value::index::{core::ops::index::Index<serde_json::value::Value, @I, serde_json::value::Value>}::index]
    Visibility: public -/
@[rust_fun "serde_json::value::index::{core::ops::index::Index<serde_json::value::Value, @I, serde_json::value::Value>}::index"] def serde_json.value.Value.Insts.CoreOpsIndexIndexIValue.index {I : Type _} (IndexInst : serde_json.value.index.Index I) : serde_json.value.Value → I → Result serde_json.value.Value :=
  fun value index => do
    let found ← IndexInst.index_into index value
    ok (found.getD .Null)


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
        transition_study036.serde_json.value.Value.Object ⟨CollectionsFocus.writeValue focus replacement⟩) := by
  simp [_root_.Str.Insts.Serde_jsonValueIndexIndex.index_into_mut, decode_key key owned decoded]

theorem mutable_roundtrip (key : Str) (owned : String) (rows : Map String NativeValue)
    (decoded : NativeStringCodec.decode key = some owned) :
    (do let (_, backward) ← _root_.Str.Insts.Serde_jsonValueIndexIndex.index_into_mut key (.Object ⟨rows⟩)
        ok (backward (lookup owned rows))) = ok (transition_study036.serde_json.value.Value.Object ⟨rows⟩) := by
  simp [mutable_object key owned rows decoded, CollectionsFocus.capture_write_old]

theorem mutable_null (key : Str) :
    _root_.Str.Insts.Serde_jsonValueIndexIndex.index_into_mut key .Null =
      ok (none, fun _ => transition_study036.serde_json.value.Value.Null) := rfl

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
      ok transition_study036.serde_json.value.Value.Null := by
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
      ok (transition_study036.serde_json.value.Value.Null, fun replacement => transition_study036.serde_json.value.Value.Object ⟨.cons owned replacement .nil⟩) := by
  simp [_root_.Str.Insts.Serde_jsonValueIndexIndex.index_or_insert,
    _root_.Str.Insts.AllocBorrowToOwnedString.to_owned,
    NativeStringCodec.own_result_decoded key owned decoded,
    CollectionsGap.captureM, CollectionsFocus.append]

end Correspondence036.NativeJsonIndexOperations
