import Core033.AuthenticatedBranchOwnFrame
import Core033.AuthenticatedBranchStateMeaning
import Core033.AuthenticatedBranchTrace
import Core033.PathRoundDispatchTrace

namespace Core033.AuthenticatedBranchOwnContinuity
open WordIR AuthenticatedBranchRound AuthenticatedBranchTrace AuthenticatedBranchOwnProjection
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
attribute [local irreducible] WordIR.Program.eval

def Compressing (phase : Word) : Prop := phase=1 ∨ phase=2

theorem own_phase (phase : Word) (compressing : Compressing phase) : phase=1 ∨ phase=2 ∨ phase=3 := by
  rcases compressing with one|two
  · exact Or.inl one
  · exact Or.inr (Or.inl two)

theorem next_own_phase (inputs : Nat → Word) (compressing : Compressing (inputs 0)) :
    next inputs 0=1 ∨ next inputs 0=2 ∨ next inputs 0=3 := by
  have phase:=next_phase inputs
  rcases compressing with one|two
  · exact Or.inr (Or.inl (phase.trans (congrArg (fun word : Word=>word+1) one)))
  · exact Or.inr (Or.inr (phase.trans (congrArg (fun word : Word=>word+1) two)))

theorem not_nine (phase : Word) (compressing : Compressing phase) : phase≠9 := by
  rcases compressing with rfl|rfl
  all_goals decide

theorem counter_word (inputs : Nat → Word) (notNine : inputs 0≠9) : next inputs 2=inputs 2 :=
  (AuthenticatedBranchPorts.state_word inputs 2 (by decide)).trans
    ((AuthenticatedBranchState.counter_expression inputs).trans (if_neg notNine))

theorem kind_word (inputs : Nat → Word) : next inputs 1=inputs 1 :=
  AuthenticatedBranchPorts.preserved_original_port inputs 1 (by decide) (by decide) (by decide) (by decide)

theorem record_word (inputs : Nat → Word) (index : Nat) (bound : index<22) :
    next inputs (96+index)=inputs (96+index) :=
  AuthenticatedBranchPorts.preserved_original_port inputs (96+index) (by omega) (by omega) (by omega) (by omega)

theorem continued_frame (inputs : Nat → Word) (compressing : Compressing (inputs 0))
    (index : Nat) (positive : 0<index) (bound : index<35) :
    AuthenticatedBranchRouting.routedWord (next inputs) index=AuthenticatedBranchRouting.routedWord inputs index := by
  have left:=own_original_operands (next inputs) (next_own_phase inputs compressing) index (by omega)
  have right:=own_original_operands inputs (own_phase (inputs 0) compressing) index (by omega)
  have leftProject:=own_routed_projected (next inputs) (next inputs 0) index (by omega)
  have rightProject:=own_routed_projected inputs (inputs 0) index (by omega)
  have fields:=AuthenticatedBranchOwnFrame.frame_congr (next inputs) inputs (next inputs 0) (inputs 0)
    (kind_word inputs) (counter_word inputs (not_nine (inputs 0) compressing)) (record_word inputs) index positive bound
  exact left.trans (leftProject.trans (fields.trans (rightProject.symm.trans right.symm)))

theorem routed_sha (inputs : Nat → Word) (own : inputs 0=1 ∨ inputs 0=2 ∨ inputs 0=3)
    (index : Nat) (bound : index<8) : AuthenticatedBranchRouting.routedWord inputs (35+index)=inputs (47+index) :=
  (own_original_operands inputs own (35+index) (by omega)).trans
    ((own_routed_projected inputs (inputs 0) (35+index) (by omega)).trans
      (AuthenticatedBranchOwnFrame.sha_projection inputs (inputs 0) index bound))

theorem continued_sha (inputs : Nat → Word) (compressing : Compressing (inputs 0))
    (index : Nat) (bound : index<8) :
    AuthenticatedBranchRouting.routedWord (next inputs) (35+index)=
      PathRoundDispatchTrace.next (AuthenticatedBranchRouting.routedWord inputs) (35+index) :=
  (routed_sha (next inputs) (next_own_phase inputs compressing) index bound).trans
    (AuthenticatedBranchStateMeaning.sha_word inputs index bound)

end Core033.AuthenticatedBranchOwnContinuity
