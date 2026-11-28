module
public import NativeWholeTypedSeedSpec
import all Init.Data.List.Control
import all Aeneas.Std.Core.Cmp
@[expose] public section
open Aeneas Aeneas.Std Result
open transition_study036

/- Port of the already checked isolated typed-row argument to the actual
complete context and positive collection wrappers. No generated body changes. -/
namespace Correspondence036.NativeWholeTypedSeed
open NativeKeyOrder NativeStringCodec
open NativeWholeTypedText (text_exact)

namespace B

theorem id_decodes : decode (toStr "id") = some "id" := by decide +kernel
theorem phase_decodes : decode (toStr "phase") = some "phase" := by decide +kernel
theorem owner_decodes : decode (toStr "owner") = some "owner" := by decide +kernel
theorem parent_decodes : decode (toStr "Parent") = some "Parent" := by decide +kernel
theorem child_decodes : decode (toStr "Child") = some "Child" := by decide +kernel
theorem open_decodes : decode (toStr "Open") = some "Open" := by decide +kernel
theorem gone_decodes : decode (toStr "Gone") = some "Gone" := by decide +kernel
theorem abandoned_decodes : decode (toStr "Abandoned") = some "Abandoned" := by decide +kernel
theorem active_decodes : decode (toStr "Active") = some "Active" := by decide +kernel
theorem terminal_decodes : decode (toStr "Terminal") = some "Terminal" := by decide +kernel

theorem borrow_open_eq (text : String) (bound : (ownedBytes text).length ≤ Usize.max) :
    borrow text bound = toStr "Open" ↔ text = "Open" :=
  NativeWholeCanonicalRow.borrow_eq_decoded text bound _ _ open_decodes
theorem borrow_gone_eq (text : String) (bound : (ownedBytes text).length ≤ Usize.max) :
    borrow text bound = toStr "Gone" ↔ text = "Gone" :=
  NativeWholeCanonicalRow.borrow_eq_decoded text bound _ _ gone_decodes
theorem borrow_abandoned_eq (text : String) (bound : (ownedBytes text).length ≤ Usize.max) :
    borrow text bound = toStr "Abandoned" ↔ text = "Abandoned" :=
  NativeWholeCanonicalRow.borrow_eq_decoded text bound _ _ abandoned_decodes
theorem borrow_active_eq (text : String) (bound : (ownedBytes text).length ≤ Usize.max) :
    borrow text bound = toStr "Active" ↔ text = "Active" :=
  NativeWholeCanonicalRow.borrow_eq_decoded text bound _ _ active_decodes
theorem borrow_terminal_eq (text : String) (bound : (ownedBytes text).length ≤ Usize.max) :
    borrow text bound = toStr "Terminal" ↔ text = "Terminal" :=
  NativeWholeCanonicalRow.borrow_eq_decoded text bound _ _ terminal_decodes

theorem parent_comparison (text : String) (bound : (ownedBytes text).length ≤ Usize.max) :
    _root_.Str.Insts.CoreCmpPartialEqStr.eq (borrow text bound) (toStr "Parent") =
      ok (decide (text = "Parent")) :=
  NativeWholeCanonicalRow.str_eq_decoded text bound _ _ parent_decodes

theorem child_comparison (text : String) (bound : (ownedBytes text).length ≤ Usize.max) :
    _root_.Str.Insts.CoreCmpPartialEqStr.eq (borrow text bound) (toStr "Child") =
      ok (decide (text = "Child")) :=
  NativeWholeCanonicalRow.str_eq_decoded text bound _ _ child_decodes

theorem parent_phase (text : String) (bound : (ownedBytes text).length ≤ Usize.max) :
    core.slice.Slice.contains (core.cmp.PartialEqShared transition_study036.Str.Insts.CoreCmpPartialEqStr)
      (Array.to_slice (Array.make 3#usize [toStr "Open", toStr "Gone", toStr "Abandoned"]))
      (borrow text bound) = ok (decide (text ∈ ["Open", "Gone", "Abandoned"])) := by
  by_cases isOpen : text = "Open" <;>
    by_cases isGone : text = "Gone" <;>
    by_cases isAbandoned : text = "Abandoned" <;>
    simp [← bind_pure_comp, pure_tc_eq,
      core.slice.Slice.contains, List.anyM, core.cmp.PartialEqShared,
      transition_study036.Str.Insts.CoreCmpPartialEqStr,
      _root_.Str.Insts.CoreCmpPartialEqStr.eq,
      Array.val_to_slice, Array.make_val,
      borrow_open_eq, borrow_gone_eq, borrow_abandoned_eq,
      isOpen, isGone, isAbandoned]

theorem child_phase (text : String) (bound : (ownedBytes text).length ≤ Usize.max) :
    core.slice.Slice.contains (core.cmp.PartialEqShared transition_study036.Str.Insts.CoreCmpPartialEqStr)
      (Array.to_slice (Array.make 2#usize [toStr "Active", toStr "Terminal"]))
      (borrow text bound) = ok (decide (text ∈ ["Active", "Terminal"])) := by
  by_cases isActive : text = "Active" <;>
    by_cases isTerminal : text = "Terminal" <;>
    simp [← bind_pure_comp, pure_tc_eq,
      core.slice.Slice.contains, List.anyM, core.cmp.PartialEqShared,
      transition_study036.Str.Insts.CoreCmpPartialEqStr,
      _root_.Str.Insts.CoreCmpPartialEqStr.eq,
      Array.val_to_slice, Array.make_val,
      borrow_active_eq, borrow_terminal_eq,
      isActive, isTerminal]
end B

theorem insertRows_put {V : Type} (rows : Map V) (key : String) (value : V) :
    ∃ old : Option V, NativeWholeTypedOperations.insertRows
      transition_study036.alloc.string.String.Insts.CoreCmpOrd key value rows =
      ok (old, put key value rows) := by
  induction rows with
  | nil => exact ⟨none, rfl⟩
  | cons stored previous rest ih =>
    rcases ih with ⟨old, step⟩
    unfold NativeWholeTypedOperations.insertRows
    simp only [transition_study036.alloc.string.String.Insts.CoreCmpOrd,
      alloc.string.String.Insts.CoreCmpOrd.cmp, bind_ok, Aeneas.Std.uncurry_apply_pair]
    cases compared : NativeKeyOrder.cmpString key stored with
    | lt => exact ⟨none, by simp [compared, put]⟩
    | eq => exact ⟨some previous, by simp [compared, put]⟩
    | gt => exact ⟨old, by simp [compared, put, step]⟩

theorem typed_insert_put {V : Type} (rows : Map V) (key : String) (value : V) :
    ∃ old : Option V, _root_.alloc.collections.btree.map.BTreeMap.impl.insert
      transition_study036.alloc.alloc.Global.Insts.CoreAllocAllocatorClone
      transition_study036.alloc.string.String.Insts.CoreCmpOrd ⟨rows⟩ key value =
      ok (old, (⟨put key value rows⟩ : NativeMap V)) := by
  obtain ⟨old, step⟩ := insertRows_put rows key value
  refine ⟨old, ?_⟩
  simp [alloc.collections.btree.map.BTreeMap.impl.insert, step,
    Aeneas.Std.uncurry_apply_pair]

theorem text_success_bound (value : Value) (label text : String)
    (domain : TextDomain value) (success : textSpec value label = .Ok text) :
    (NativeKeyOrder.ownedBytes text).length ≤ Usize.max := by
  have found : field value label = .String text := by
    cases found : field value label <;> simp_all [textSpec, NativeWholeTypedText.textSpec]
  exact domain label text found

theorem seed_row_exact (key : Key) (version : Version) (parents : Parents)
    (children : Children) (active : Active) (domain : InputDomain key version) :
    transition_study036.views.seed_row key version ⟨parents⟩ ⟨children⟩ ⟨active⟩ =
      Result.ok (pack (seedSpec key version parents children active)) := by
  have readId := text_exact version.value (toStr "id") "id" B.id_decodes domain.2
  have readPhase := text_exact version.value (toStr "phase") "phase" B.phase_decodes domain.2
  have readOwner := text_exact version.value (toStr "owner") "owner" B.owner_decodes domain.2
  unfold transition_study036.views.seed_row
  rw [readId]
  cases idResult : textSpec version.value "id" with
  | Err failure =>
    simp_all [pack, idResult, seedSpec, errorFrame,
      core.result.Result.Insts.CoreOpsTry.branch,
      core.result.Result.Insts.CoreOpsTry_traitFromResidualResult.from_residual,
      core.convert.FromSame.from]
  | Ok id =>
    simp only [idResult, bind_ok, bind_tc_ok,
      core.result.Result.Insts.CoreOpsTry.branch]
    simp only [core.cmp.PartialEq.ne.trait_default, core.cmp.PartialEq.ne.default,
      transition_study036.alloc.string.String.Insts.CoreCmpPartialEqString,
      alloc.string.String.Insts.CoreCmpPartialEqString.eq,
      alloc.string.String.impl.as_str,
      bind_ok, bind_tc_ok]
    by_cases sameId : key.id = id
    · have idTest : decide (key.id = id) = true := by simp_all [pack, sameId]
      simp only [idTest, Bool.not_true, Bool.false_eq_true, ↓reduceIte]
      by_cases sameEntity : key.entity = version.entity
      · have entityTest : decide (key.entity = version.entity) = true := by simp_all [pack, sameEntity]
        simp only [entityTest, Bool.not_true, Bool.false_eq_true, ↓reduceIte]
        rw [NativeStringCodec.borrow_result_valid key.entity domain.1]
        simp only [bind_ok, bind_tc_ok,
          B.parent_comparison key.entity domain.1]
        by_cases parent : key.entity = "Parent"
        · simp only [parent, decide_true, ↓reduceIte]
          rw [readPhase]
          cases phaseResult : textSpec version.value "phase" with
          | Err failure =>
            simp_all [pack, phaseResult, seedSpec, idResult, sameId, sameEntity, parent, errorFrame,
              core.result.Result.Insts.CoreOpsTry.branch,
              core.result.Result.Insts.CoreOpsTry_traitFromResidualResult.from_residual,
              core.convert.FromSame.from]
          | Ok phase =>
            have phaseBound := text_success_bound version.value "phase" phase domain.2 phaseResult
            simp only [phaseResult, bind_ok, bind_tc_ok,
              core.result.Result.Insts.CoreOpsTry.branch, lift]
            rw [NativeStringCodec.borrow_result_valid phase phaseBound]
            simp only [bind_ok, bind_tc_ok, B.parent_phase phase phaseBound]
            by_cases valid : phase ∈ ["Open", "Gone", "Abandoned"]
            · obtain ⟨oldParent, parentPut⟩ := typed_insert_put parents key.id phase
              obtain ⟨oldActive, activePut⟩ := typed_insert_put active key.id (⟨[]⟩ : Set)
              simp_all [pack, valid, alloc.string.String.Insts.CoreCloneClone.clone,
                 parentPut,
                alloc.collections.btree.set.BTreeSetTGlobal.impl.new,
                 activePut,
                seedSpec, idResult, sameId, sameEntity, parent, phaseResult]
            · simp_all [pack, valid, seedSpec, idResult, sameId, sameEntity, parent, phaseResult, errorFrame]
        · simp only [parent, decide_false, Bool.false_eq_true, ↓reduceIte,
            B.child_comparison key.entity domain.1]
          by_cases child : key.entity = "Child"
          · simp only [child, decide_true, ↓reduceIte]
            rw [readOwner]
            cases ownerResult : textSpec version.value "owner" with
            | Err failure =>
              simp_all [pack, ownerResult, seedSpec, idResult, sameId, sameEntity, parent, child, errorFrame,
                core.result.Result.Insts.CoreOpsTry.branch,
                core.result.Result.Insts.CoreOpsTry_traitFromResidualResult.from_residual,
                core.convert.FromSame.from]
            | Ok owner =>
              simp only [ownerResult, bind_ok, bind_tc_ok,
                core.result.Result.Insts.CoreOpsTry.branch]
              rw [readPhase]
              cases phaseResult : textSpec version.value "phase" with
              | Err failure =>
                simp_all [pack, phaseResult, seedSpec, idResult, sameId, sameEntity, parent, child, ownerResult, errorFrame,
                  core.result.Result.Insts.CoreOpsTry.branch,
                  core.result.Result.Insts.CoreOpsTry_traitFromResidualResult.from_residual,
                  core.convert.FromSame.from]
              | Ok phase =>
                have phaseBound := text_success_bound version.value "phase" phase domain.2 phaseResult
                simp only [phaseResult, bind_ok, bind_tc_ok,
                  core.result.Result.Insts.CoreOpsTry.branch, lift]
                rw [NativeStringCodec.borrow_result_valid phase phaseBound]
                simp only [bind_ok, bind_tc_ok, B.child_phase phase phaseBound]
                by_cases valid : phase ∈ ["Active", "Terminal"]
                · obtain ⟨oldChild, childPut⟩ := typed_insert_put children key.id ({owner := owner, phase := phase} : Child)
                  simp_all [pack, valid, alloc.string.String.Insts.CoreCloneClone.clone,
                     childPut,
                    seedSpec, idResult, sameId, sameEntity, parent, child, ownerResult, phaseResult]
                · simp_all [pack, valid, seedSpec, idResult, sameId, sameEntity, parent, child, ownerResult, phaseResult, errorFrame]
          · simp_all [pack, child, seedSpec, idResult, sameId, sameEntity, parent, errorFrame]
      · simp_all [pack, sameEntity, seedSpec, idResult, sameId, errorFrame]
    · simp_all [pack, sameId, seedSpec, idResult, errorFrame]

end Correspondence036.NativeWholeTypedSeed
