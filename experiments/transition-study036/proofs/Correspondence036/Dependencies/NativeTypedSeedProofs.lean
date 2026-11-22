module
public import NativeTypedSeedSpec
public import TypedSeedRowNames.Funs
@[expose] public section

/- Actual generated error translation; no native/runtime admission. -/
namespace Correspondence036.NativeTypedSeed
open Aeneas.Std

theorem lookup_operations (rows : serde_json.map.Map String Value) (query : String) :
    NativeTypedSeedOperations.lookup rows query = lookup rows query := by
  induction rows with
  | nil => rfl
  | cons stored value rest ih =>
    simp only [NativeTypedSeedOperations.lookup, lookup, ih]

theorem index_read (key : Str) (label : String) (value : Value)
    (decoded : NativeStringBorrow.decode key = some label) :
    NativeTypedSeedOperations.indexStr key value =
      Result.ok (match value with | .Object rows => lookup rows label | _ => none) := by
  cases value <;> simp [NativeTypedSeedOperations.indexStr, decoded, lookup_operations]

abbrev concreteDictionary := transition_study036.Shared0T.Insts.Serde_jsonValueIndexIndex
  transition_study036.Str.Insts.Serde_jsonValueIndexIndex

theorem generated_index_field (key : Str) (label : String) (value : Value)
    (decoded : NativeStringBorrow.decode key = some label) :
    _root_.serde_json.value.Value.Insts.CoreOpsIndexIndexIValue.index
      concreteDictionary value key = Result.ok (field value label) := by
  change (do
    let found ← NativeTypedSeedOperations.indexStr key value
    Result.ok (found.getD .Null)) = _
  rw [index_read key label value decoded]
  cases value <;> simp only [field, Option.getD, bind_ok, bind_tc_ok]

theorem generated_as_str_string (text : String)
    (bound : (NativeStringBorrow.ownedBytes text).length ≤ Usize.max) :
    transition_study036.serde_json.value.Value.impl.as_str (.String text) =
      Result.ok (some (NativeStringBorrow.borrow text bound)) := by
  change (do
    let borrowed ← NativeStringBorrow.borrowResult text
    Result.ok (some borrowed)) = _
  rw [NativeStringBorrow.borrow_result_valid text bound]
  simp only [bind_ok, bind_tc_ok]

theorem text_exact (value : Value) (key : Str) (label : String)
    (decoded : NativeStringBorrow.decode key = some label) (domain : TextDomain value) :
    transition_study036.views.text value key = Result.ok (textSpec value label) := by
  have read := generated_index_field key label value decoded
  unfold transition_study036.views.text
  rw [read]
  simp only [bind_ok, bind_tc_ok]
  cases found : field value label with
  | String text =>
    have bound := domain label text found
    rw [generated_as_str_string text bound]
    simp [textSpec, found, Str.Insts.AllocBorrowToOwnedString.to_owned,
      NativeTypedSeedOperations.ownResult, NativeStringBorrow.decode_borrow]
  | Null | Bool _ | Number _ | Array _ | Object _ =>
    simp [textSpec, found, transition_study036.serde_json.value.Value.impl.as_str]

theorem seed_metadata_frame (key : Key) (left right : Version)
    (sameEntity : left.entity = right.entity) (sameValue : left.value = right.value)
    (parents : Parents) (children : Children) (active : Active) :
    transition_study036.views.seed_row key left parents children active =
      transition_study036.views.seed_row key right parents children active := by
  simp only [transition_study036.views.seed_row, sameEntity, sameValue]

theorem public_error_exact (failure : Failure) :
    transition_study036.views.SeedFailure.impl.into_study failure =
      Result.ok (publicError failure) := by
  cases failure <;> rfl

theorem public_error_prerequisite (failure : Failure) :
    ∃ message : Str, transition_study036.views.SeedFailure.impl.into_study failure =
      Result.ok (.Prerequisite message) := by
  cases failure <;> exact ⟨_, rfl⟩

end Correspondence036.NativeTypedSeed
