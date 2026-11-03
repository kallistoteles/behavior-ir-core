import Core033.AuthenticatedBranchTerminal

namespace Core033.AuthenticatedBranchGuardTransfer
open WordIR AuthenticatedBranchRound
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
attribute [local irreducible] WordIR.Program.eval

theorem local_suffix (state localValues : List Word) (flag : Word)
    (stateLength : state.length=118) (localLength : localValues.length=133)
    (index : Nat) (bound : index<90) :
    (state++localValues.drop 43++[flag]).getD (118+index) 0=localValues.getD (43+index) 0 := by
  simp only [PaddingStream.getD_append_cases,List.length_append,List.length_drop,stateLength,localLength]
  rw [if_pos (by omega : 118+index<118+(133-43)),if_neg (by omega : ¬118+index<118)]
  rw [Nat.add_sub_cancel_left]
  simp only [List.getD_eq_getElem?_getD,List.getElem?_drop]

theorem local_guard_port (inputs : Nat → Word) (index : Nat) (bound : index<90) :
    (program.eval inputs).getD (118+index) 0=
      (PathRoundDispatch.program.eval (AuthenticatedBranchRouting.routedWord inputs)).getD (43+index) 0 := by
  have value:=congrArg (fun words : List Word=>words.getD (118+index) 0)
    (AuthenticatedBranchPorts.program_meaning inputs)
  have stateLength : ((List.range 118).map (AuthenticatedBranchState.nextWord inputs)).length=118 := by
    simp only [List.length_map,List.length_range]
  have localLength : (PathRoundDispatch.program.eval (AuthenticatedBranchRouting.routedWord inputs)).length=133 := by
    simp only [Program.eval,List.length_map,PathRoundDispatchGuards.output_count]
  exact value.trans (local_suffix _ _ _ stateLength localLength index bound)

theorem forced_one {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valuation : Nat → F) (inputs : Nat → Word)
    (accepted : (AuthenticatedBranchValidity.compile p).satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F))
    (index : Nat) (bound : index<91) : (program.eval inputs).getD (118+index) 0=1 :=
  WordGuardSuffix.forced_output_one large program AuthenticatedBranchValidity.program_valid 118 91
    (by rw [AuthenticatedBranchValidity.output_count]) valuation inputs accepted inputValues index bound

theorem accepted_local_guards {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valuation : Nat → F) (inputs : Nat → Word)
    (accepted : (AuthenticatedBranchValidity.compile p).satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    ∀ index,index<90 →
      (PathRoundDispatch.program.eval (AuthenticatedBranchRouting.routedWord inputs)).getD (43+index) 0=1 := by
  intro index bound
  exact (local_guard_port inputs index bound).symm.trans
    (forced_one large valuation inputs accepted inputValues index (by omega))

/- This transfers actual enforced guards. It does not assume that an honest
full tree opening exists, or supply the remaining caller/genesis binding. -/
theorem honest_component_complete {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (inputs : Nat → Word)
    (localGuards : ∀ index,index<90 →
      (PathRoundDispatch.program.eval (AuthenticatedBranchRouting.routedWord inputs)).getD (43+index) 0=1)
    (admission : AuthenticatedBranchRound.admission.eval inputs=1) :
    ∃ valuation : Nat → F,(AuthenticatedBranchValidity.compile p).satisfies valuation ∧
      ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F) := by
  apply WordGuardSuffix.admitted_complete large program AuthenticatedBranchValidity.program_valid 118 91
    (by rw [AuthenticatedBranchValidity.output_count]) inputs
  intro index bound
  by_cases localBound : index<90
  · exact (local_guard_port inputs index localBound).trans (localGuards index localBound)
  · have last : index=90 := by omega
    subst index
    exact (AuthenticatedBranchTerminal.admission_port inputs).trans admission

end Core033.AuthenticatedBranchGuardTransfer
