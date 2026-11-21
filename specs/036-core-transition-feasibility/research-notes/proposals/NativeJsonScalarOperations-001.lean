module
public import NativeJsonIterators
public import NativeStringCodec
@[expose] public section
open Aeneas Aeneas.Std Result
open transition_study036

/- Candidate value interpretation only. Identity clone equations do not prove
native allocation/ownership/derive semantics. Every full recursive Number/Array/
Object payload is retained. Borrow failure on an oversized model String is an
explicit off-native-domain totalization, not a new valid-source refusal.
Source/feature/allocator/clone/runtime/compiler admission remains open. -/
/-- [alloc::string::{impl core::clone::Clone for alloc::string::String}::clone]:
    Source: '/rustc/library/alloc/src/string.rs', lines 2425:4-2425:27
    Name pattern: [alloc::string::{core::clone::Clone<alloc::string::String>}::clone]
    Visibility: public -/
@[rust_fun "alloc::string::{core::clone::Clone<alloc::string::String>}::clone"] def alloc.string.String.Insts.CoreCloneClone.clone : String → Result String :=
  fun value => ok value

/-- [serde_json::value::{impl core::clone::Clone for serde_json::value::Value}::clone]:
    Source: '/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/value/mod.rs', lines 115:9-115:14
    Name pattern: [serde_json::value::{core::clone::Clone<serde_json::value::Value>}::clone]
    Visibility: public -/
@[rust_fun "serde_json::value::{core::clone::Clone<serde_json::value::Value>}::clone"] def serde_json.value.Value.Insts.CoreCloneClone.clone : serde_json.value.Value → Result serde_json.value.Value :=
  fun value => ok value

/-- [serde_json::value::{serde_json::value::Value}::as_str]:
    Source: '/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/value/mod.rs', lines 492:4-492:40
    Name pattern: [serde_json::value::{serde_json::value::Value}::as_str]
    Visibility: public -/
@[rust_fun "serde_json::value::{serde_json::value::Value}::as_str"] def serde_json.value.Value.impl.as_str : serde_json.value.Value → Result (Option Str) :=
  fun value => match value with
  | .String owned => do
    let borrowed ← Correspondence036.NativeStringCodec.borrowResult owned
    ok (some borrowed)
  | _ => ok none

namespace Correspondence036.NativeJsonScalarOperations
abbrev NativeValue := transition_study036.serde_json.value.Value
open Correspondence036.NativeKeyOrder Correspondence036.NativeStringCodec

theorem string_clone (value : String) :
    alloc.string.String.Insts.CoreCloneClone.clone value = ok value := rfl

theorem value_clone (value : NativeValue) :
    serde_json.value.Value.Insts.CoreCloneClone.clone value = ok value := rfl

theorem string_clone_bytes (value : String) :
    (do let copied ← alloc.string.String.Insts.CoreCloneClone.clone value
        ok (ownedBytes copied)) = ok (ownedBytes value) := by
  simp [alloc.string.String.Insts.CoreCloneClone.clone]

theorem as_str_string (value : String) (bound : (ownedBytes value).length ≤ Usize.max) :
    serde_json.value.Value.impl.as_str (.String value) = ok (some (borrow value bound)) := by
  simp [serde_json.value.Value.impl.as_str, borrow_result_valid value bound]

theorem as_str_null : serde_json.value.Value.impl.as_str .Null = ok none := rfl

theorem as_str_bool (value : Bool) :
    serde_json.value.Value.impl.as_str (.Bool value) = ok none := rfl

theorem as_str_number (value : transition_study036.serde_json.number.Number) :
    serde_json.value.Value.impl.as_str (.Number value) = ok none := rfl

theorem as_str_array (value : alloc.vec.Vec NativeValue) :
    serde_json.value.Value.impl.as_str (.Array value) = ok none := rfl

theorem as_str_object (value : serde_json.map.Map String NativeValue) :
    serde_json.value.Value.impl.as_str (.Object value) = ok none := rfl

end Correspondence036.NativeJsonScalarOperations
