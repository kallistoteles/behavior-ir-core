module
public import NativeCanonicalRowBridges
@[expose] public section

/- Prospective full row proof candidates. No compilation, audit, kernel check,
native interpretation or feature completion is claimed. -/
namespace Correspondence036.NativeCanonicalRow
open Aeneas.Std

abbrev concreteDictionary := NativeRowDictionary.concreteDictionary

theorem generated_index_field (key : Str) (label : String) (value : Value)
    (decoded : NativeStringBorrow.decode key = some label) :
    _root_.serde_json.value.Value.Insts.CoreOpsIndexIndexIValue.index
      concreteDictionary value key = Result.ok (field value label) := by
  change (do
    let found ← NativeCanonicalRowOperations.indexStr key value
    Result.ok (found.getD .Null)) = _
  rw [index_read key label value decoded]
  cases value <;> simp only [field, Option.getD, bind_ok, bind_tc_ok]

theorem generated_as_str_string (s : String)
    (bound : (NativeStringBorrow.ownedBytes s).length ≤ Usize.max) :
    transition_study036.serde_json.value.Value.impl.as_str (.String s) =
      Result.ok (some (NativeStringBorrow.borrow s bound)) := by
  change (do
    let borrowed ← NativeStringBorrow.borrowResult s
    Result.ok (some borrowed)) = _
  rw [NativeStringBorrow.borrow_result_valid s bound]
  simp only [bind_ok, bind_tc_ok]

theorem own_phase : NativeCanonicalRowOperations.ownResult (toStr "phase") =
    Result.ok "phase" := by
  simp [NativeCanonicalRowOperations.ownResult, B.phase_decodes]

theorem own_owner : NativeCanonicalRowOperations.ownResult (toStr "owner") =
    Result.ok "owner" := by
  simp [NativeCanonicalRowOperations.ownResult, B.owner_decodes]

theorem state_fact_row_exact (row : Row) (parents children : Map)
    (domain : InputDomain row parents children) :
    transition_study036.reference.state_fact_row row parents children =
      Result.ok (rowSpec row parents children) := by
  have readId := generated_index_field (toStr "id") "id" row.value B.id_decodes
  have readPhase := generated_index_field (toStr "phase") "phase" row.value B.phase_decodes
  have readOwner := generated_index_field (toStr "owner") "owner" row.value B.owner_decodes
  dsimp only [concreteDictionary, NativeRowDictionary.concreteDictionary]
    at readId readPhase readOwner
  unfold transition_study036.reference.state_fact_row
  simp only [readId, readPhase, readOwner, bind_ok, bind_tc_ok]
  cases idField : field row.value "id" with
  | String id =>
    have idPresent : textId row = some id := by simp [textId, idField]
    have idBound := domain.2 id idPresent
    have entityBound := domain.1
    rw [generated_as_str_string id idBound]
    simp only [bind_ok, bind_tc_ok, core.option.Option.ok_or_some,
      core.result.Result.Insts.CoreOpsTry.branch]
    have copiedId :
        NativeCanonicalRowOperations.ownResult (NativeStringBorrow.borrow id idBound) =
          Result.ok id := by
      simp only [NativeCanonicalRowOperations.ownResult, NativeStringBorrow.decode_borrow]
    simp only [Str.Insts.AllocBorrowToOwnedString.to_owned,
      alloc.string.String.impl.as_str, Str.Insts.CoreCmpPartialEqStr.eq, copiedId,
      bind_ok, bind_tc_ok, NativeStringBorrow.borrow_result_valid row.entity entityBound,
      B.parent_comparison row.entity entityBound]
    by_cases parent : row.entity = "Parent"
    · simp [parent, rowSpec, idPresent, put,
        serde_json.map.MapStringValue.impl.insert,
        NativeCanonicalRowOperations.insert,
        serde_json.value.Value.Insts.CoreCloneClone.clone,
        NativeCanonicalRowOperations.clone]
      cases inserted : NativeCanonicalRowOperations.orderedInsert id (field row.value "phase") parents
      rfl
    · simp only [parent, decide_false, Bool.false_eq_true, ↓reduceIte,
        Str.Insts.CoreCmpPartialEqStr.eq,
        B.child_comparison row.entity entityBound, bind_ok, bind_tc_ok]
      by_cases child : row.entity = "Child"
      · simp [child, parent, rowSpec, idPresent, childFields, put,
          Str.Insts.AllocBorrowToOwnedString.to_owned,
          serde_json.map.MapStringValue.impl.new, NativeCanonicalRowOperations.newMap,
          serde_json.map.MapStringValue.impl.insert, NativeCanonicalRowOperations.insert,
          serde_json.value.Value.Insts.CoreCloneClone.clone, NativeCanonicalRowOperations.clone,
          own_phase, own_owner]
        cases phaseInsert : NativeCanonicalRowOperations.orderedInsert
            "phase" (field row.value "phase") (.nil : Map) with
        | mk previousPhase phaseFields =>
          simp only [Aeneas.Std.uncurry_apply_pair]
          cases ownerInsert : NativeCanonicalRowOperations.orderedInsert
              "owner" (field row.value "owner") phaseFields with
          | mk previousOwner ownerFields =>
            simp only [Aeneas.Std.uncurry_apply_pair]
            cases childInsert : NativeCanonicalRowOperations.orderedInsert
              id (.Object ownerFields) children
            rfl
      · simp [child, parent, rowSpec, idPresent]
  | Null | Bool _ | Number _ | Array _ | Object _ =>
    simp [transition_study036.serde_json.value.Value.impl.as_str,
      rowSpec, textId, idField,
      core.result.Result.Insts.CoreOpsTry.branch,
      core.result.Result.Insts.CoreOpsTry_traitFromResidualResult.from_residual,
      core.convert.FromSame, core.convert.FromSame.from]

theorem seed_identity_first (row : Row) (parents children : Map)
    (domain : InputDomain row parents children) (missing : textId row = none) :
    transition_study036.reference.state_fact_row row parents children =
      Result.ok (.Err (.Prerequisite (toStr "SeedIdentity")), parents, children) := by
  rw [state_fact_row_exact row parents children domain]
  simp only [rowSpec, missing]

theorem other_keys (row : Row) (parents children : Map) (id query : String)
    (domain : InputDomain row parents children) (present : textId row = some id)
    (different : query ≠ id) :
    (do
      let (_, parents1, children1) ←
        transition_study036.reference.state_fact_row row parents children
      Result.ok (lookup parents1 query, lookup children1 query)) =
      Result.ok (lookup parents query, lookup children query) := by
  rw [state_fact_row_exact row parents children domain]
  by_cases parent : row.entity = "Parent"
  · simp [rowSpec, present, parent, put_other_key, different]
  · by_cases child : row.entity = "Child"
    · simp [rowSpec, present, parent, child, put_other_key, different]
    · simp [rowSpec, present, parent, child]

end Correspondence036.NativeCanonicalRow
