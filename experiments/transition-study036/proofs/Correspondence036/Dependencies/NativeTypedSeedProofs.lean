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
  dsimp only [concreteDictionary] at read
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

namespace B
open NativeStringBorrow

theorem owned_bytes_injective (left right : String) :
    ownedBytes left = ownedBytes right ↔ left = right := by
  constructor
  · intro same
    apply String.toByteArray_inj.mp
    apply ByteArray.ext
    exact Array.toList_inj.mp same
  · intro same; subst right; rfl

theorem id_decodes : decode (toStr "id") = some "id" := by decide +kernel
theorem phase_decodes : decode (toStr "phase") = some "phase" := by decide +kernel
theorem owner_decodes : decode (toStr "owner") = some "owner" := by decide +kernel

theorem parent_bytes : borrowedBytes (toStr "Parent") = ownedBytes "Parent" := by decide +kernel
theorem child_bytes : borrowedBytes (toStr "Child") = ownedBytes "Child" := by decide +kernel
theorem open_bytes : borrowedBytes (toStr "Open") = ownedBytes "Open" := by decide +kernel
theorem gone_bytes : borrowedBytes (toStr "Gone") = ownedBytes "Gone" := by decide +kernel
theorem abandoned_bytes : borrowedBytes (toStr "Abandoned") = ownedBytes "Abandoned" := by decide +kernel
theorem active_bytes : borrowedBytes (toStr "Active") = ownedBytes "Active" := by decide +kernel
theorem terminal_bytes : borrowedBytes (toStr "Terminal") = ownedBytes "Terminal" := by decide +kernel

theorem parent_comparison (text : String) (bound : (ownedBytes text).length ≤ Usize.max) :
    NativeTypedSeedOperations.eqStr (borrow text bound) (toStr "Parent") =
      Result.ok (decide (text = "Parent")) := by
  simp [NativeTypedSeedOperations.eqStr, parent_bytes, owned_bytes_injective]
theorem child_comparison (text : String) (bound : (ownedBytes text).length ≤ Usize.max) :
    NativeTypedSeedOperations.eqStr (borrow text bound) (toStr "Child") =
      Result.ok (decide (text = "Child")) := by
  simp [NativeTypedSeedOperations.eqStr, child_bytes, owned_bytes_injective]

theorem parent_phase (text : String) (bound : (ownedBytes text).length ≤ Usize.max) :
    core.slice.Slice.contains (core.cmp.PartialEqShared transition_study036.Str.Insts.CoreCmpPartialEqStr)
      (Array.to_slice (Array.make 3#usize [toStr "Open", toStr "Gone", toStr "Abandoned"]))
      (borrow text bound) = Result.ok (decide (text ∈ ["Open", "Gone", "Abandoned"])) := by
  by_cases isOpen : text = "Open" <;>
    by_cases isGone : text = "Gone" <;>
    by_cases isAbandoned : text = "Abandoned" <;>
    simp [core.slice.Slice.contains, List.anyM, core.cmp.PartialEqShared,
    transition_study036.Str.Insts.CoreCmpPartialEqStr,
    Str.Insts.CoreCmpPartialEqStr.eq, NativeTypedSeedOperations.eqStr,
    Array.val_to_slice, Array.make_val, open_bytes, gone_bytes, abandoned_bytes,
    owned_bytes_injective, isOpen, isGone, isAbandoned]

theorem child_phase (text : String) (bound : (ownedBytes text).length ≤ Usize.max) :
    core.slice.Slice.contains (core.cmp.PartialEqShared transition_study036.Str.Insts.CoreCmpPartialEqStr)
      (Array.to_slice (Array.make 2#usize [toStr "Active", toStr "Terminal"]))
      (borrow text bound) = Result.ok (decide (text ∈ ["Active", "Terminal"])) := by
  by_cases isActive : text = "Active" <;>
    by_cases isTerminal : text = "Terminal" <;>
    simp [core.slice.Slice.contains, List.anyM, core.cmp.PartialEqShared,
    transition_study036.Str.Insts.CoreCmpPartialEqStr,
    Str.Insts.CoreCmpPartialEqStr.eq, NativeTypedSeedOperations.eqStr,
    Array.val_to_slice, Array.make_val, active_bytes, terminal_bytes,
    owned_bytes_injective, isActive, isTerminal]
end B

theorem typed_insert_put {V : Type} (rows : Map V) (key : String) (value : V) :
    ∃ old : Option V, _root_.alloc.collections.btree.map.BTreeMap.impl.insert
      transition_study036.alloc.alloc.Global.Insts.CoreAllocAllocatorClone
      transition_study036.alloc.string.String.Insts.CoreCmpOrd rows key value =
      Result.ok (old, put key value rows) := by
  induction rows with
  | nil => exact ⟨none, rfl⟩
  | cons stored previous rest ih =>
    rcases ih with ⟨old, step⟩
    change NativeTypedSeedOperations.insert _ _ rest key value = Result.ok (old, put key value rest) at step
    change ∃ found, NativeTypedSeedOperations.insert _ _ (.cons stored previous rest) key value =
      Result.ok (found, put key value (.cons stored previous rest))
    unfold NativeTypedSeedOperations.insert
    simp only [transition_study036.alloc.string.String.Insts.CoreCmpOrd,
      alloc.string.String.Insts.CoreCmpOrd.cmp, NativeTypedSeedOperations.cmpString,
      bind_ok, bind_tc_ok]
    cases compared : compare key.toByteArray stored.toByteArray with
    | lt => exact ⟨none, by simp [compared, put]⟩
    | eq => exact ⟨some previous, by simp [compared, put]⟩
    | gt => exact ⟨old, by simp [compared, put, step]⟩

theorem text_success_bound (value : Value) (label text : String)
    (domain : TextDomain value) (success : textSpec value label = .Ok text) :
    (NativeStringBorrow.ownedBytes text).length ≤ Usize.max := by
  have found : field value label = .String text := by
    cases found : field value label <;> simp_all [textSpec]
  exact domain label text found

theorem seed_row_exact (key : Key) (version : Version) (parents : Parents)
    (children : Children) (active : Active) (domain : InputDomain key version) :
    transition_study036.views.seed_row key version parents children active =
      Result.ok (seedSpec key version parents children active) := by
  have readId := text_exact version.value (toStr "id") "id" B.id_decodes domain.2
  have readPhase := text_exact version.value (toStr "phase") "phase" B.phase_decodes domain.2
  have readOwner := text_exact version.value (toStr "owner") "owner" B.owner_decodes domain.2
  unfold transition_study036.views.seed_row
  rw [readId]
  cases idResult : textSpec version.value "id" with
  | Err failure =>
    simp [idResult, seedSpec, errorFrame,
      core.result.Result.Insts.CoreOpsTry.branch,
      core.result.Result.Insts.CoreOpsTry_traitFromResidualResult.from_residual,
      core.convert.FromSame.from]
  | Ok id =>
    simp only [idResult, bind_ok, bind_tc_ok,
      core.result.Result.Insts.CoreOpsTry.branch]
    simp only [core.cmp.PartialEq.ne.trait_default, core.cmp.PartialEq.ne.default,
      transition_study036.alloc.string.String.Insts.CoreCmpPartialEqString,
      alloc.string.String.Insts.CoreCmpPartialEqString.eq, NativeTypedSeedOperations.eqString,
      alloc.string.String.impl.as_str,
      bind_ok, bind_tc_ok]
    by_cases sameId : key.id = id
    · have idTest : decide (key.id = id) = true := by simp [sameId]
      simp only [idTest, Bool.not_true, Bool.false_eq_true, ↓reduceIte]
      by_cases sameEntity : key.entity = version.entity
      · have entityTest : decide (key.entity = version.entity) = true := by simp [sameEntity]
        simp only [entityTest, Bool.not_true, Bool.false_eq_true, ↓reduceIte]
        rw [NativeStringBorrow.borrow_result_valid key.entity domain.1]
        simp only [bind_ok, bind_tc_ok, Str.Insts.CoreCmpPartialEqStr.eq,
          B.parent_comparison key.entity domain.1]
        by_cases parent : key.entity = "Parent"
        · simp only [parent, decide_true, ↓reduceIte]
          rw [readPhase]
          cases phaseResult : textSpec version.value "phase" with
          | Err failure =>
            simp [phaseResult, seedSpec, idResult, sameId, sameEntity, parent, errorFrame,
              core.result.Result.Insts.CoreOpsTry.branch,
              core.result.Result.Insts.CoreOpsTry_traitFromResidualResult.from_residual,
              core.convert.FromSame.from]
          | Ok phase =>
            have phaseBound := text_success_bound version.value "phase" phase domain.2 phaseResult
            simp only [phaseResult, bind_ok, bind_tc_ok,
              core.result.Result.Insts.CoreOpsTry.branch, lift]
            rw [NativeStringBorrow.borrow_result_valid phase phaseBound]
            simp only [bind_ok, bind_tc_ok, B.parent_phase phase phaseBound]
            by_cases valid : phase ∈ ["Open", "Gone", "Abandoned"]
            · obtain ⟨oldParent, parentPut⟩ := typed_insert_put parents key.id phase
              obtain ⟨oldActive, activePut⟩ := typed_insert_put active key.id ([] : List String)
              simp [valid, alloc.string.String.Insts.CoreCloneClone.clone,
                NativeTypedSeedOperations.cloneString, parentPut,
                alloc.collections.btree.set.BTreeSetTGlobal.impl.new,
                NativeTypedSeedOperations.newSet, activePut,
                seedSpec, idResult, sameId, sameEntity, parent, phaseResult]
            · simp [valid, seedSpec, idResult, sameId, sameEntity, parent, phaseResult, errorFrame]
        · simp only [parent, decide_false, Bool.false_eq_true, ↓reduceIte,
            Str.Insts.CoreCmpPartialEqStr.eq, B.child_comparison key.entity domain.1]
          by_cases child : key.entity = "Child"
          · simp only [child, decide_true, ↓reduceIte]
            rw [readOwner]
            cases ownerResult : textSpec version.value "owner" with
            | Err failure =>
              simp [ownerResult, seedSpec, idResult, sameId, sameEntity, parent, child, errorFrame,
                core.result.Result.Insts.CoreOpsTry.branch,
                core.result.Result.Insts.CoreOpsTry_traitFromResidualResult.from_residual,
                core.convert.FromSame.from]
            | Ok owner =>
              simp only [ownerResult, bind_ok, bind_tc_ok,
                core.result.Result.Insts.CoreOpsTry.branch]
              rw [readPhase]
              cases phaseResult : textSpec version.value "phase" with
              | Err failure =>
                simp [phaseResult, seedSpec, idResult, sameId, sameEntity, parent, child, ownerResult, errorFrame,
                  core.result.Result.Insts.CoreOpsTry.branch,
                  core.result.Result.Insts.CoreOpsTry_traitFromResidualResult.from_residual,
                  core.convert.FromSame.from]
              | Ok phase =>
                have phaseBound := text_success_bound version.value "phase" phase domain.2 phaseResult
                simp only [phaseResult, bind_ok, bind_tc_ok,
                  core.result.Result.Insts.CoreOpsTry.branch, lift]
                rw [NativeStringBorrow.borrow_result_valid phase phaseBound]
                simp only [bind_ok, bind_tc_ok, B.child_phase phase phaseBound]
                by_cases valid : phase ∈ ["Active", "Terminal"]
                · obtain ⟨oldChild, childPut⟩ := typed_insert_put children key.id ({owner := owner, phase := phase} : Child)
                  simp [valid, alloc.string.String.Insts.CoreCloneClone.clone,
                    NativeTypedSeedOperations.cloneString, childPut,
                    seedSpec, idResult, sameId, sameEntity, parent, child, ownerResult, phaseResult]
                · simp [valid, seedSpec, idResult, sameId, sameEntity, parent, child, ownerResult, phaseResult, errorFrame]
          · simp [child, seedSpec, idResult, sameId, sameEntity, parent, errorFrame]
      · simp [sameEntity, seedSpec, idResult, sameId, errorFrame]
    · simp [sameId, seedSpec, idResult, errorFrame]

theorem public_error_exact (failure : Failure) :
    transition_study036.views.SeedFailure.impl.into_study failure =
      Result.ok (publicError failure) := by
  cases failure <;> rfl

theorem public_error_prerequisite (failure : Failure) :
    ∃ message : Str, transition_study036.views.SeedFailure.impl.into_study failure =
      Result.ok (.Prerequisite message) := by
  cases failure <;> exact ⟨_, rfl⟩

end Correspondence036.NativeTypedSeed
