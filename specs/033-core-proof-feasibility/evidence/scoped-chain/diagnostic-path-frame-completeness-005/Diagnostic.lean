import Core033.PathFrameGuards
import Core033.ParentBranchCompleteness

namespace Core033.PathFrameCompleteness
open WordIR PathFrameProgram PathFrameMeaning PathFrameCoordinates
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000

def CanonicalChildren (inputs : Nat → Word) : Prop :=
  ∀ position,position<4 → ∃ value,BooleanValues.decode (inputs (30+position))=some value

theorem parent_left_count (inputs : Nat → Word) :
    BranchAdmission.left (parentInputs inputs)=
      if direction inputs then (⟨inputs 28,inputs 29⟩ : WideControl.Pair) else ⟨inputs 26,inputs 27⟩ := by
  change WideControl.Pair.mk ((WordSwapProgram.program.eval (swapInputs inputs)).getD 8 0)
    ((WordSwapProgram.program.eval (swapInputs inputs)).getD 9 0)=_
  rw [canonical_swap]
  cases choice : direction inputs <;> rfl

theorem parent_right_count (inputs : Nat → Word) :
    BranchAdmission.right (parentInputs inputs)=
      if direction inputs then (⟨inputs 26,inputs 27⟩ : WideControl.Pair) else ⟨inputs 28,inputs 29⟩ := by
  change WideControl.Pair.mk ((WordSwapProgram.program.eval (swapInputs inputs)).getD 20 0)
    ((WordSwapProgram.program.eval (swapInputs inputs)).getD 21 0)=_
  rw [canonical_swap]
  cases choice : direction inputs <;> rfl

theorem parent_boolean_word (inputs : Nat → Word) (position : Nat) (bound : position<4) :
    parentInputs inputs (22+position)=
      if direction inputs then inputs (if position=0 then 31 else if position=1 then 30 else if position=2 then 33 else 32)
      else inputs (30+position) := by
  have cases : position=0 ∨ position=1 ∨ position=2 ∨ position=3 := by omega
  rcases cases with rfl|rfl|rfl|rfl
  · change (WordSwapProgram.program.eval (swapInputs inputs)).getD 10 0=_
    rw [canonical_swap]
    cases choice : direction inputs <;> rfl
  · change (WordSwapProgram.program.eval (swapInputs inputs)).getD 22 0=_
    rw [canonical_swap]
    cases choice : direction inputs <;> rfl
  · change (WordSwapProgram.program.eval (swapInputs inputs)).getD 11 0=_
    rw [canonical_swap]
    cases choice : direction inputs <;> rfl
  · change (WordSwapProgram.program.eval (swapInputs inputs)).getD 23 0=_
    rw [canonical_swap]
    cases choice : direction inputs <;> rfl

theorem canonical_parent (inputs : Nat → Word) (children : CanonicalChildren inputs) :
    ParentBranchCompleteness.CanonicalChildren (parentInputs inputs) := by
  intro position bound
  rw [parent_boolean_word inputs position bound]
  by_cases side : direction inputs=true
  · rw [if_pos side]
    have cases : position=0 ∨ position=1 ∨ position=2 ∨ position=3 := by omega
    rcases cases with rfl|rfl|rfl|rfl
    · exact children 1 (by decide)
    · exact children 0 (by decide)
    · exact children 3 (by decide)
    · exact children 2 (by decide)
  · rw [if_neg side]
    exact children position bound

theorem parent_count_bound (inputs : Nat → Word)
    (bounded : WideControl.Pair.raw ⟨inputs 26,inputs 27⟩+WideControl.Pair.raw ⟨inputs 28,inputs 29⟩≤1048576) :
    WideControl.Pair.raw ⟨parentInputs inputs 18,parentInputs inputs 19⟩+
      WideControl.Pair.raw ⟨parentInputs inputs 20,parentInputs inputs 21⟩≤1048576 := by
  change (BranchAdmission.left (parentInputs inputs)).raw+(BranchAdmission.right (parentInputs inputs)).raw≤1048576
  rw [parent_left_count,parent_right_count]
  cases side : direction inputs <;> simpa only [side,Bool.false_eq_true,if_false,Bool.true_eq,if_true,Nat.add_comm] using bounded

theorem parent_flags_one (inputs : Nat → Word)
    (kind : (inputs 0).toNat=1 ∨ (inputs 0).toNat=2) (children : CanonicalChildren inputs)
    (bounded : WideControl.Pair.raw ⟨inputs 26,inputs 27⟩+WideControl.Pair.raw ⟨inputs 28,inputs 29⟩≤1048576) :
    ∀ position,position<12 → (ParentBranchProgram.program.eval (parentInputs inputs)).getD (115+position) 0=1 :=
  ParentBranchCompleteness.all_flags_one (parentInputs inputs) kind (depth_bounded inputs)
    (canonical_parent inputs children) (parent_count_bound inputs bounded)

theorem address_flags_one (inputs : Nat → Word) (position : Nat) (bound : position<3) :
    (WordAddressProgram.program.eval (addressInputs inputs)).getD (1+position) 0=1 := by
  have flags:=WordAddressNative.all_native_admission_flags (keyState inputs) (PathCounterProgram.depth (inputs 1)) (depth_bounded inputs)
  rw [←address_inputs inputs] at flags
  have lookup:=congrArg (fun values : List Word=>values.getD position 0) flags
  have dropped : ((WordAddressProgram.program.eval (addressInputs inputs)).drop 1).getD position 0=
      (WordAddressProgram.program.eval (addressInputs inputs)).getD (1+position) 0 := by
    simp only [List.getD_eq_getElem?_getD,List.getElem?_drop]
  dsimp only at lookup
  rw [dropped] at lookup
  have cases : position=0 ∨ position=1 ∨ position=2 := by omega
  rcases cases with rfl|rfl|rfl <;> exact lookup

theorem swap_flag_one (inputs : Nat → Word) : (WordSwapProgram.program.eval (swapInputs inputs)).getD 24 0=1 := by
  rw [canonical_swap]
  rfl

theorem all_flags_one (inputs : Nat → Word)
    (kind : (inputs 0).toNat=1 ∨ (inputs 0).toNat=2) (active : (inputs 1).toNat<256)
    (children : CanonicalChildren inputs)
    (bounded : WideControl.Pair.raw ⟨inputs 26,inputs 27⟩+WideControl.Pair.raw ⟨inputs 28,inputs 29⟩≤1048576) :
    ∀ position,position<17 → (program.eval inputs).getD (115+position) 0=1 := by
  intro position bound
  by_cases parentFlag : position<12
  · rw [PathFrameGuards.parent_flag inputs position parentFlag]
    exact parent_flags_one inputs kind children bounded position parentFlag
  · by_cases activeFlag : position=12
    · subst position
      rw [show 115+12=127 by decide,PathFrameGuards.active_flag,ScalarRanges.flag_exact,BranchAdmission.bool_word_one]
      exact decide_eq_true active
    · by_cases addressFlag : position<16
      · have indexBound : position-13<3 := by omega
        rw [show 115+position=128+(position-13) by omega,PathFrameGuards.address_flag inputs _ indexBound]
        exact address_flags_one inputs _ indexBound
      · have last : position=16 := by omega
        subst position
        rw [show 115+16=131 by decide,PathFrameGuards.swap_flag]
        exact swap_flag_one inputs

theorem typed_complete {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (inputs : Nat → Word)
    (kind : (inputs 0).toNat=1 ∨ (inputs 0).toNat=2) (active : (inputs 1).toNat<256)
    (children : CanonicalChildren inputs)
    (bounded : WideControl.Pair.raw ⟨inputs 26,inputs 27⟩+WideControl.Pair.raw ⟨inputs 28,inputs 29⟩≤1048576) :
    ∃ valuation : Nat → F,(PathFrameGuards.compile p).satisfies valuation ∧
      ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F) :=
  WordGuardSuffix.admitted_complete large program PathFrameProgram.program_valid 115 17
    (by rw [PathFrameProgram.output_count];decide) inputs (all_flags_one inputs kind active children bounded)

end Core033.PathFrameCompleteness
