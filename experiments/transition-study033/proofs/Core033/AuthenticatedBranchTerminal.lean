import Core033.AuthenticatedBranchPorts
import Core033.WordGuardSuffix

namespace Core033.AuthenticatedBranchTerminal
open WordIR AuthenticatedBranchRound
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
attribute [local irreducible] WordIR.Program.eval

theorem last_flag (state localValues : List Word) (flag : Word)
    (stateLength : state.length=118) (localLength : localValues.length=133) :
    (state++localValues.drop 43++[flag]).getD 208 0=flag := by
  simp only [PaddingStream.getD_append_cases,List.length_append,List.length_drop,
    stateLength,localLength,if_neg (by decide : ¬208<118+(133-43))]
  rfl

theorem admission_port (inputs : Nat → Word) : (program.eval inputs).getD 208 0=admission.eval inputs := by
  have value:=congrArg (fun words : List Word=>words.getD 208 0) (AuthenticatedBranchPorts.program_meaning inputs)
  have stateLength : ((List.range 118).map (AuthenticatedBranchState.nextWord inputs)).length=118 := by simp only [List.length_map,List.length_range]
  have localLength : (PathRoundDispatch.program.eval (AuthenticatedBranchRouting.routedWord inputs)).length=133 := by
    simp only [Program.eval,List.length_map,PathRoundDispatchGuards.output_count]
  exact value.trans (last_flag _ _ _ stateLength localLength)

theorem accepted_phase {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valuation : Nat → F) (inputs : Nat → Word)
    (accepted : (AuthenticatedBranchValidity.compile p).satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    inputs 0=1 ∨ inputs 0=2 ∨ inputs 0=3 ∨ inputs 0=4 ∨ inputs 0=5 ∨ inputs 0=6 ∨ inputs 0=7 ∨ inputs 0=8 ∨ inputs 0=9 := by
  have forced:=WordGuardSuffix.forced_output_one large program AuthenticatedBranchValidity.program_valid 118 91
    (by rw [AuthenticatedBranchValidity.output_count]) valuation inputs accepted inputValues 90 (by decide)
  change (program.eval inputs).getD 208 0=1 at forced
  have admitted:=(admission_port inputs).symm.trans forced
  rw [AuthenticatedBranchPhases.admission_exact,BranchAdmission.bool_word_one] at admitted
  exact of_decide_eq_true admitted

theorem returned_phase_rejects_step {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valuation : Nat → F) (inputs : Nat → Word) (phase : inputs 0=10)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    ¬(AuthenticatedBranchValidity.compile p).satisfies valuation := by
  intro accepted
  have allowed:=accepted_phase large valuation inputs accepted inputValues
  rw [phase] at allowed
  exact (by decide : ¬((10 : Word)=1 ∨ (10 : Word)=2 ∨ (10 : Word)=3 ∨ (10 : Word)=4 ∨ (10 : Word)=5 ∨ (10 : Word)=6 ∨ (10 : Word)=7 ∨ (10 : Word)=8 ∨ (10 : Word)=9)) allowed

end Core033.AuthenticatedBranchTerminal
