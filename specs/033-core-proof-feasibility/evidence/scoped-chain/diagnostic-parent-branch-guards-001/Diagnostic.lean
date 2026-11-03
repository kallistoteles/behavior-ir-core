import Core033.ParentBranchEncoding
import Core033.BranchCheckedGuards
import Core033.WordGuardSuffix

namespace Core033.ParentBranchGuards
open WordIR
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
abbrev program := ParentBranchProgram.program
abbrev wires := WordGuardSuffix.wires program 115 12
def compile (p : Nat) : R1CS.Matrix := WordGuardSuffix.compile p program 115 12

theorem output_count : program.outputs.length=127 := by core033_kernel_decide

theorem program_valid : program.Valid := by
  apply WordSourceValidity.safe_program_valid
  apply (WordSource.check_safe_exact _).mp
  core033_kernel_decide

theorem branch_output_count (inputs : Nat → Word) :
    (BranchCheckedProgram.program.eval inputs).length=122 := by
  simp only [WordIR.Program.eval,List.length_map,BranchCheckedGuards.output_count]

theorem branch_flag (inputs : Nat → Word) (position : Nat) (bound : position<7) :
    (program.eval inputs).getD (115+position) 0=
      (BranchAdmission.flags (ParentBranchProgram.branchInputs inputs)).getD position 0 := by
  rw [ParentBranchProgram.program_meaning,PaddingStream.getD_append_cases,branch_output_count,if_pos (by omega)]
  exact BranchCheckedGuards.flag_output _ _

theorem count_flag (inputs : Nat → Word) :
    (program.eval inputs).getD 122 0=WordControl.boolWord
      (decide (WideControl.Pair.raw ⟨inputs 18,inputs 19⟩+WideControl.Pair.raw ⟨inputs 20,inputs 21⟩≤1048576)) := by
  rw [ParentBranchProgram.program_meaning,PaddingStream.getD_append_cases,branch_output_count,if_neg (by decide)]
  change NodeCounts.allowed ⟨inputs 18,inputs 19⟩ ⟨inputs 20,inputs 21⟩=_
  exact NodeCounts.allowed_exact _ _

theorem child_boolean_flag (inputs : Nat → Word) (position : Nat) (bound : position<4) :
    (program.eval inputs).getD (123+position) 0=ScalarRanges.flag 1 (inputs (22+position)) := by
  rw [ParentBranchProgram.program_meaning,PaddingStream.getD_append_cases,branch_output_count,if_neg (by omega)]
  have cases : position=0 ∨ position=1 ∨ position=2 ∨ position=3 := by omega
  rcases cases with rfl|rfl|rfl|rfl <;> rfl

theorem guard_wire_bounds (p : Nat) : ∀ wire∈wires,
    0<wire ∧ wire<(WordMatrix.compile p program).variableCount :=
  WordGuardSuffix.wire_bounds p program 115 12 (by rw [output_count])

theorem forced_one {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valuation : Nat → F) (inputs : Nat → Word)
    (accepted : (compile p).satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F))
    (position : Nat) (bound : position<12) : (program.eval inputs).getD (115+position) 0=1 :=
  WordGuardSuffix.forced_output_one large program program_valid 115 12 (by rw [output_count])
    valuation inputs accepted inputValues position bound

theorem accepted_count {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valuation : Nat → F) (inputs : Nat → Word)
    (accepted : (compile p).satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    WideControl.Pair.raw ⟨inputs 18,inputs 19⟩+WideControl.Pair.raw ⟨inputs 20,inputs 21⟩≤1048576 := by
  have one:=forced_one large valuation inputs accepted inputValues 7 (by decide)
  change (program.eval inputs).getD 122 0=1 at one
  rw [count_flag,BranchAdmission.bool_word_one] at one
  exact of_decide_eq_true one

theorem accepted_child_booleans {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valuation : Nat → F) (inputs : Nat → Word)
    (accepted : (compile p).satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    ∀ position,position<4 → ∃ value,BooleanValues.decode (inputs (22+position))=some value := by
  intro position bound
  have one:=forced_one large valuation inputs accepted inputValues (8+position) (by omega)
  rw [show 115+(8+position)=123+position by omega,child_boolean_flag inputs position bound] at one
  exact (BooleanValues.guard_admits_exactly_booleans _).mp one

theorem admitted_complete {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (inputs : Nat → Word)
    (admitted : ∀ position,position<12 → (program.eval inputs).getD (115+position) 0=1) :
    ∃ valuation : Nat → F,(compile p).satisfies valuation ∧
      ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F) :=
  WordGuardSuffix.admitted_complete large program program_valid 115 12 (by rw [output_count]) inputs admitted

end Core033.ParentBranchGuards
