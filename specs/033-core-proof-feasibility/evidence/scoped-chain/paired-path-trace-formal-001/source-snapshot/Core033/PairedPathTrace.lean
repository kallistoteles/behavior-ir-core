import Core033.PairedPathPorts

namespace Core033.PairedPathTrace
open WordIR PairedPathRound PairedPathState
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
attribute [local irreducible] WordIR.Program.eval

def next (inputs : Nat → Word) (index : Nat) := (program.eval inputs).getD index 0

theorem phase_expression (values : Nat → Word) :
    (stateExpression 0).eval values=values 0+1 := rfl

theorem next_phase (inputs : Nat → Word) : next inputs 0=inputs 0+1 := by
  have state:=PairedPathPorts.state_word inputs 0 (by decide)
  have original:=original_at_round inputs 0 (by decide)
  exact state.trans ((phase_expression (round.2.values inputs)).trans
    (congrArg (fun word : Word=>word+1) original))

def iterate : Nat → (Nat → Word) → (Nat → Word)
  | 0, inputs=>inputs
  | count+1,inputs=>next (iterate count inputs)

theorem phase_iterate (count : Nat) (inputs : Nat → Word) :
    iterate count inputs 0=inputs 0+BitVec.ofNat 32 count := by
  induction count with
  | zero => exact (BitVec.add_zero (inputs 0)).symm
  | succ count induction =>
    rw [iterate,next_phase,induction]
    simp only [BitVec.ofNat_add]
    exact BitVec.add_assoc _ _ _

theorem complete_return_phase (inputs : Nat → Word) (start : inputs 0=1) :
    iterate 6 inputs 0=7 := by
  rw [phase_iterate,start]
  rfl

theorem original_iterate (count : Nat) (inputs : Nat → Word) (index : Nat)
    (bound : index<96) (notPhase : index≠0) (notCounter : index≠2)
    (notWork : ¬(47≤index ∧ index<79)) : iterate count inputs index=inputs index := by
  induction count with
  | zero => rfl
  | succ count induction =>
    exact (PairedPathPorts.preserved_original_port _ index bound notPhase notCounter notWork).trans induction

/- These phase/preservation facts do not yet establish the six-step hashes,
parent summaries, sibling authentication or whole Core transition relation. -/
end Core033.PairedPathTrace
