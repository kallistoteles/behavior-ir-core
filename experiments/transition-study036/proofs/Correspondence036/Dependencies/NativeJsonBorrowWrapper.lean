module
public import NativeStringBorrow
public import CanonicalRowNames.Funs
@[expose] public section

/- Prospective roots over the untouched selected generated accessor, not a
second implementation. The external std node has a separately source-bound
byte-view interpretation. This file alone establishes no full Core claim. -/
namespace Correspondence036.NativeJsonBorrowWrapper
open Aeneas.Std Result
open Correspondence036.NativeStringBorrow
abbrev Value := transition_study036.serde_json.value.Value

def SourceBound : Value → Prop
  | .String value => (ownedBytes value).length ≤ Usize.max
  | _ => True

def Spec : Value → Option (List UInt8)
  | .String value => some (ownedBytes value)
  | _ => none

theorem string_deref_exact (value : String)
    (bound : (ownedBytes value).length ≤ Usize.max) :
    alloc.string.String.Insts.CoreOpsDerefDerefStr.deref value =
      ok (borrow value bound) := by
  exact borrow_result_valid value bound

theorem value_as_str_string (value : String)
    (bound : (ownedBytes value).length ≤ Usize.max) :
    transition_study036.serde_json.value.Value.impl.as_str (.String value) =
      ok (some (borrow value bound)) := by
  simp [transition_study036.serde_json.value.Value.impl.as_str,
        string_deref_exact value bound]

theorem value_as_str_bytes (value : Value) (bound : SourceBound value) :
    (do
      let result ← transition_study036.serde_json.value.Value.impl.as_str value
      ok (result.map borrowedBytes)) = ok (Spec value) := by
  cases value with
  | String value =>
      change (ownedBytes value).length ≤ Usize.max at bound
      rw [value_as_str_string value bound]
      simp [Spec]
  | Null =>
      simp [transition_study036.serde_json.value.Value.impl.as_str, Spec]
  | Bool _ =>
      simp [transition_study036.serde_json.value.Value.impl.as_str, Spec]
  | Number _ =>
      simp [transition_study036.serde_json.value.Value.impl.as_str, Spec]
  | Array _ =>
      simp [transition_study036.serde_json.value.Value.impl.as_str, Spec]
  | Object _ =>
      simp [transition_study036.serde_json.value.Value.impl.as_str, Spec]

theorem value_as_str_null :
    transition_study036.serde_json.value.Value.impl.as_str .Null = ok none := rfl

theorem value_as_str_bool (value : Bool) :
    transition_study036.serde_json.value.Value.impl.as_str (.Bool value) = ok none := rfl

theorem value_as_str_number (value : transition_study036.serde_json.number.Number) :
    transition_study036.serde_json.value.Value.impl.as_str (.Number value) = ok none := rfl

theorem value_as_str_array (value : alloc.vec.Vec Value) :
    transition_study036.serde_json.value.Value.impl.as_str (.Array value) = ok none := rfl

theorem value_as_str_object (value : serde_json.map.Map String Value) :
    transition_study036.serde_json.value.Value.impl.as_str (.Object value) = ok none := rfl

end Correspondence036.NativeJsonBorrowWrapper
