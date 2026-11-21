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
The coarse panic constructor does not discharge performed panic/error effects. -/
namespace Correspondence036.NativeJsonIndexOperations

def decodeKey (key : Str) : Result String :=
  match NativeStringCodec.decode key with
  | some owned => ok owned
  | none => fail .undef

end Correspondence036.NativeJsonIndexOperations

/-- [serde_json::value::index::{impl serde_json::value::index::Index for str}::index_into_mut]:
    Source: '/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/value/index.rs', lines 90:4-90:75
    Name pattern: [serde_json::value::index::{serde_json::value::index::Index<str>}::index_into_mut]
    Visibility: public -/
@[rust_fun "serde_json::value::index::{serde_json::value::index::Index<str>}::index_into_mut"] def Str.Insts.Serde_jsonValueIndexIndex.index_into_mut : Str → serde_json.value.Value → Result ((Option serde_json.value.Value) × (Option serde_json.value.Value → serde_json.value.Value)) :=
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

/-- [serde_json::value::index::{impl serde_json::value::index::Index for &'_0 T}::index_into_mut]:
    Source: '/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/value/index.rs', lines 126:4-126:75
    Name pattern: [serde_json::value::index::{serde_json::value::index::Index<&'0 @T>}::index_into_mut]
    Visibility: public -/
@[rust_fun "serde_json::value::index::{serde_json::value::index::Index<&'0 @T>}::index_into_mut"] def Shared0T.Insts.Serde_jsonValueIndexIndex.index_into_mut {T : Type _} (IndexInst : serde_json.value.index.Index T) : T → serde_json.value.Value → Result ((Option serde_json.value.Value) × (Option serde_json.value.Value → serde_json.value.Value)) :=
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

