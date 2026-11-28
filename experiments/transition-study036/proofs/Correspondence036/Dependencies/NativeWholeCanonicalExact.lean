module
public import NativeWholeCanonicalSpec
@[expose] public section
open Aeneas Aeneas.Std Result
open transition_study036

namespace Correspondence036.NativeWholeCanonicalRow
open NativeKeyOrder NativeStringCodec

theorem index_str_decoded (key : Str) (label : String) (value : Value)
    (decoded : decode key = some label) :
    NativeCanonicalRowOperations.indexStr key value =
      ok (match value with | .Object rows => lookup rows.data label | _ => none) := by
  cases value <;> simp [NativeCanonicalRowOperations.indexStr, decoded]

theorem generated_index_field (key : Str) (label : String) (value : Value)
    (decoded : decode key = some label) :
    _root_.serde_json.value.Value.Insts.CoreOpsIndexIndexIValue.index
      NativeRowDictionary.concreteDictionary value key = ok (field value label) := by
  change (do
    let found ← NativeCanonicalRowOperations.indexStr key value
    ok (found.getD .Null)) = _
  rw [index_str_decoded key label value decoded]
  cases value <;> simp [field]

theorem generated_as_str_string (text : String)
    (bound : (ownedBytes text).length ≤ Usize.max) :
    serde_json.value.Value.impl.as_str (.String text) = ok (some (borrow text bound)) := by
  simp [serde_json.value.Value.impl.as_str,
    alloc.string.String.Insts.CoreOpsDerefDerefStr.deref,
    NativeStringCodec.borrow_result_valid text bound]

theorem borrow_eq_decoded (value : String) (bound : (ownedBytes value).length ≤ Usize.max)
    (literal : Str) (text : String) (decoded : decode literal = some text) :
    borrow value bound = literal ↔ value = text := by
  constructor
  · intro same
    have decodedSame := congrArg decode same
    rw [decode_borrow value bound, decoded] at decodedSame
    exact Option.some.inj decodedSame
  · intro same
    subst value
    simpa using NativeStringCodec.borrow_decoded literal text decoded

theorem str_eq_decoded (value : String) (bound : (ownedBytes value).length ≤ Usize.max)
    (literal : Str) (text : String) (decoded : decode literal = some text) :
    _root_.Str.Insts.CoreCmpPartialEqStr.eq (borrow value bound) literal =
      ok (decide (value = text)) := by
  simp only [_root_.Str.Insts.CoreCmpPartialEqStr.eq,
    borrow_eq_decoded value bound literal text decoded]

theorem id_decoded : decode (toStr "id") = some "id" := by decide +kernel
theorem phase_decoded : decode (toStr "phase") = some "phase" := by decide +kernel
theorem owner_decoded : decode (toStr "owner") = some "owner" := by decide +kernel
theorem parent_decoded : decode (toStr "Parent") = some "Parent" := by decide +kernel
theorem child_decoded : decode (toStr "Child") = some "Child" := by decide +kernel

theorem state_fact_row_exact (row : Row) (parents children : Rows)
    (domain : InputDomain row) :
    reference.state_fact_row row ⟨parents⟩ ⟨children⟩ =
      ok (let step := rowSpec row parents children;
        (step.1, serde_json.map.Map.mk step.2.1, serde_json.map.Map.mk step.2.2)) := by
  have readId := generated_index_field (toStr "id") "id" row.value id_decoded
  have readPhase := generated_index_field (toStr "phase") "phase" row.value phase_decoded
  have readOwner := generated_index_field (toStr "owner") "owner" row.value owner_decoded
  dsimp only [NativeRowDictionary.concreteDictionary] at readId readPhase readOwner
  unfold reference.state_fact_row
  simp only [readId, readPhase, readOwner, bind_ok, Aeneas.Std.uncurry_apply_pair]
  cases idField : field row.value "id" with
  | String id =>
    have present : textId row = some id := by simp [textId, idField]
    have idBound := domain.2 id present
    rw [generated_as_str_string id idBound]
    simp only [bind_ok, Aeneas.Std.uncurry_apply_pair,
      core.option.Option.ok_or_some, core.result.Result.Insts.CoreOpsTry.branch]
    have copiedId : ownResult (borrow id idBound) = ok id := by
      simp [ownResult, decode_borrow]
    simp only [_root_.Str.Insts.AllocBorrowToOwnedString.to_owned,
      alloc.string.String.impl.as_str, copiedId, bind_ok,
      NativeStringCodec.borrow_result_valid row.entity domain.1,
      str_eq_decoded row.entity domain.1 (toStr "Parent") "Parent" parent_decoded,
      str_eq_decoded row.entity domain.1 (toStr "Child") "Child" child_decoded]
    by_cases parent : row.entity = "Parent"
    · simp [parent, rowSpec, present, put, NativeProjectionLaws.put,
        serde_json.value.Value.Insts.CoreCloneClone.clone,
        NativeCanonicalRowOperations.clone,
        NativeJsonMapOperations.insert_spec, Aeneas.Std.uncurry_apply_pair]
    · by_cases child : row.entity = "Child"
      · simp [parent, child, rowSpec, present, childFields, put, NativeProjectionLaws.put,
          serde_json.value.Value.Insts.CoreCloneClone.clone,
          NativeCanonicalRowOperations.clone, NativeJsonMapOperations.empty_new,
          NativeJsonMapOperations.insert_spec, NativeStringCodec.own_result_decoded _ _ phase_decoded,
          NativeStringCodec.own_result_decoded _ _ owner_decoded,
          Aeneas.Std.uncurry_apply_pair]
      · simp [parent, child, rowSpec, present]
  | Null | Bool _ | Number _ | Array _ | Object _ =>
    simp [serde_json.value.Value.impl.as_str, rowSpec, textId, idField,
      core.result.Result.Insts.CoreOpsTry.branch,
      core.result.Result.Insts.CoreOpsTry_traitFromResidualResult.from_residual,
      core.convert.FromSame, core.convert.FromSame.from]

end Correspondence036.NativeWholeCanonicalRow
