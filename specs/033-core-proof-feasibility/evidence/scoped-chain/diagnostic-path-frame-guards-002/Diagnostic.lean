import Core033.PathFrameMeaning
import Core033.ParentBranchGuards

namespace Core033.PathFrameGuards
open WordIR PathFrameProgram PathFrameMeaning
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
abbrev wires := WordGuardSuffix.wires program 115 17
def compile (p : Nat) : R1CS.Matrix := WordGuardSuffix.compile p program 115 17

theorem parent_length (inputs : Nat → Word) : (ParentBranchProgram.program.eval (parentInputs inputs)).length=127 := by
  simp only [WordIR.Program.eval,List.length_map,ParentBranchGuards.output_count]

theorem active_flag (inputs : Nat → Word) : (program.eval inputs).getD 127 0=ScalarRanges.flag 8 (inputs 1) := by
  rw [PathFrameMeaning.program_meaning,PaddingStream.getD_append_cases,parent_length,if_neg (by decide)]
  rfl

theorem parent_flag (inputs : Nat → Word) (position : Nat) (bound : position<12) :
    (program.eval inputs).getD (115+position) 0=
      (ParentBranchProgram.program.eval (parentInputs inputs)).getD (115+position) 0 := by
  rw [PathFrameMeaning.program_meaning,PaddingStream.getD_append_cases,parent_length,if_pos (by omega)]

theorem address_flag (inputs : Nat → Word) (position : Nat) (bound : position<3) :
    (program.eval inputs).getD (128+position) 0=
      (WordAddressProgram.program.eval (addressInputs inputs)).getD (1+position) 0 := by
  rw [PathFrameMeaning.program_meaning,PaddingStream.getD_append_cases,parent_length,if_neg (by omega)]
  have cases : position=0 ∨ position=1 ∨ position=2 := by omega
  rcases cases with rfl|rfl|rfl <;> rfl

theorem swap_flag (inputs : Nat → Word) :
    (program.eval inputs).getD 131 0=(WordSwapProgram.program.eval (swapInputs inputs)).getD 24 0 := by
  rw [PathFrameMeaning.program_meaning,PaddingStream.getD_append_cases,parent_length,if_neg (by decide)]
  rfl

theorem next_height (inputs : Nat → Word) : (program.eval inputs).getD 132 0=inputs 1+1 := by
  rw [PathFrameMeaning.program_meaning,PaddingStream.getD_append_cases,parent_length,if_neg (by decide)]
  rfl

theorem guard_wire_bounds (p : Nat) : ∀ wire∈wires,
    0<wire ∧ wire<(WordMatrix.compile p program).variableCount :=
  WordGuardSuffix.wire_bounds p program 115 17 (by rw [PathFrameProgram.output_count];decide)

theorem forced_one {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valuation : Nat → F) (inputs : Nat → Word)
    (accepted : (compile p).satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F))
    (position : Nat) (bound : position<17) : (program.eval inputs).getD (115+position) 0=1 :=
  WordGuardSuffix.forced_output_one large program PathFrameProgram.program_valid 115 17
    (by rw [PathFrameProgram.output_count];decide) valuation inputs accepted inputValues position bound

theorem accepted_active {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valuation : Nat → F) (inputs : Nat → Word)
    (accepted : (compile p).satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    (inputs 1).toNat<256 := by
  have one:=forced_one large valuation inputs accepted inputValues 12 (by decide)
  change (program.eval inputs).getD 127 0=1 at one
  rw [active_flag,ScalarRanges.flag_exact,BranchAdmission.bool_word_one] at one
  exact of_decide_eq_true one

theorem parent_all_flags_one {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valuation : Nat → F) (inputs : Nat → Word)
    (accepted : (compile p).satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    ∀ position,position<12 → (ParentBranchProgram.program.eval (parentInputs inputs)).getD (115+position) 0=1 := by
  intro position bound
  rw [←parent_flag inputs position bound]
  exact forced_one large valuation inputs accepted inputValues position (by omega)

theorem accepted_original_branch_admission {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valuation : Nat → F) (inputs : Nat → Word)
    (accepted : (compile p).satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    BranchAdmission.Admitted (ParentBranchProgram.branchInputs (parentInputs inputs)) := by
  obtain ⟨parentValuation,parentAccepted,parentInputsExact⟩:=ParentBranchGuards.admitted_complete (F:=F) large
    (parentInputs inputs) (parent_all_flags_one large valuation inputs accepted inputValues)
  exact ParentBranchGuards.accepted_branch_admission large parentValuation (parentInputs inputs) parentAccepted parentInputsExact

theorem accepted_height_output {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valuation : Nat → F) (inputs : Nat → Word)
    (accepted : (compile p).satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    valuation (WordMatrix.outputBase program+132)=((inputs 1).toNat+1 : Nat) := by
  have base:=(GuardMatrix.satisfaction_exact (WordMatrix.compile p program) wires rfl valuation).mp accepted
  have evaluated:=WordMatrixOutputs.evaluated_output large program PathFrameProgram.program_valid valuation inputs
    base.1 inputValues 132 (by rw [PathFrameProgram.output_count];decide)
  rw [next_height,(PathCounterProgram.branch_coordinates (inputs 1) (accepted_active large valuation inputs accepted inputValues)).1] at evaluated
  exact evaluated

end Core033.PathFrameGuards
