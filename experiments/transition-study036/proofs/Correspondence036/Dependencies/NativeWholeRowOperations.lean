module
public import NativeJsonMapOperations
@[expose] public section
open Aeneas Aeneas.Std Result
open transition_study036

/- Candidate read-side JSON APIs in the conserved whole-Views type context.
Reuse the existing read-dictionary abstraction/noninterference proof before any
contextual use of inactive mutable slots. These totalizations do not implement
or admit native mutable JSON APIs. Runtime/source/ownership adequacy stays open.
No Views, Store, projection, evaluator or desired observation is a primitive. -/
namespace Correspondence036.NativeCanonicalRowOperations
universe u
abbrev Value := transition_study036.serde_json.value.Value
abbrev Rows := CollectionsData.Map String Value
abbrev Dictionary (K : Type u) := transition_study036.serde_json.value.index.Index K

def lookup : Rows → String → Option Value
  | .nil, _ => none
  | .cons stored value rest, key =>
    if key = stored then some value else lookup rest key

def indexStr (key : Str) (value : Value) : Result (Option Value) :=
  match value with
  | .Object rows =>
    match NativeStringCodec.decode key with
    | some owned => .ok (lookup rows.data owned)
    | none => .fail .undef
  | _ => .ok none

def sharedIndex {K : Type u} (dictionary : Dictionary K) (key : K) (value : Value) :
    Result (Option Value) := dictionary.index_into key value

def valueIndex {K : Type u} (dictionary : Dictionary K) (value : Value) (key : K) :
    Result Value := do
  let found ← dictionary.index_into key value
  .ok (found.getD .Null)

def clone (value : Value) : Result Value := .ok value

def unreachedIndexIntoMut : Str → Value →
    Result ((Option Value) × (Option Value → Value)) := fun _ _ => Result.div

def unreachedIndexOrInsert : Str → Value →
    Result (Value × (Value → Value)) := fun _ _ => Result.div

def sharedIndexIntoMut {K : Type u} (dictionary : Dictionary K) (key : K) (value : Value) :
    Result ((Option Value) × (Option Value → Value)) := dictionary.index_into_mut key value

def sharedIndexOrInsert {K : Type u} (dictionary : Dictionary K) (key : K) (value : Value) :
    Result (Value × (Value → Value)) := dictionary.index_or_insert key value
end Correspondence036.NativeCanonicalRowOperations

@[rust_fun "serde_json::value::index::{serde_json::value::index::Index<str>}::index_into"] def Str.Insts.Serde_jsonValueIndexIndex.index_into : Str → serde_json.value.Value → Result (Option serde_json.value.Value) :=
  Correspondence036.NativeCanonicalRowOperations.indexStr

@[rust_fun "serde_json::value::index::{serde_json::value::index::Index<&'0 @T>}::index_into"] def Shared0T.Insts.Serde_jsonValueIndexIndex.index_into {T : Type _} (IndexInst : serde_json.value.index.Index T) : T → serde_json.value.Value → Result (Option serde_json.value.Value) :=
  Correspondence036.NativeCanonicalRowOperations.sharedIndex IndexInst

@[rust_fun "serde_json::value::index::{core::ops::index::Index<serde_json::value::Value, @I, serde_json::value::Value>}::index"] def serde_json.value.Value.Insts.CoreOpsIndexIndexIValue.index {I : Type _} (IndexInst : serde_json.value.index.Index I) : serde_json.value.Value → I → Result serde_json.value.Value :=
  Correspondence036.NativeCanonicalRowOperations.valueIndex IndexInst

@[rust_fun "serde_json::value::{core::clone::Clone<serde_json::value::Value>}::clone"] def serde_json.value.Value.Insts.CoreCloneClone.clone : serde_json.value.Value → Result serde_json.value.Value :=
  Correspondence036.NativeCanonicalRowOperations.clone

@[rust_fun "serde_json::value::index::{serde_json::value::index::Index<str>}::index_into_mut"] def Str.Insts.Serde_jsonValueIndexIndex.index_into_mut : Str → serde_json.value.Value → Result ((Option serde_json.value.Value) × (Option serde_json.value.Value → serde_json.value.Value)) :=
  Correspondence036.NativeCanonicalRowOperations.unreachedIndexIntoMut

@[rust_fun "serde_json::value::index::{serde_json::value::index::Index<str>}::index_or_insert"] def Str.Insts.Serde_jsonValueIndexIndex.index_or_insert : Str → serde_json.value.Value → Result (serde_json.value.Value × (serde_json.value.Value → serde_json.value.Value)) :=
  Correspondence036.NativeCanonicalRowOperations.unreachedIndexOrInsert

@[rust_fun "serde_json::value::index::{serde_json::value::index::Index<&'0 @T>}::index_into_mut"] def Shared0T.Insts.Serde_jsonValueIndexIndex.index_into_mut {T : Type _} (IndexInst : serde_json.value.index.Index T) : T → serde_json.value.Value → Result ((Option serde_json.value.Value) × (Option serde_json.value.Value → serde_json.value.Value)) :=
  Correspondence036.NativeCanonicalRowOperations.sharedIndexIntoMut IndexInst

@[rust_fun "serde_json::value::index::{serde_json::value::index::Index<&'0 @T>}::index_or_insert"] def Shared0T.Insts.Serde_jsonValueIndexIndex.index_or_insert {T : Type _} (IndexInst : serde_json.value.index.Index T) : T → serde_json.value.Value → Result (serde_json.value.Value × (serde_json.value.Value → serde_json.value.Value)) :=
  Correspondence036.NativeCanonicalRowOperations.sharedIndexOrInsert IndexInst

@[rust_fun "alloc::string::{core::ops::deref::Deref<alloc::string::String, str>}::deref"]
def alloc.string.String.Insts.CoreOpsDerefDerefStr.deref : String → Result Str :=
  Correspondence036.NativeStringCodec.borrowResult
