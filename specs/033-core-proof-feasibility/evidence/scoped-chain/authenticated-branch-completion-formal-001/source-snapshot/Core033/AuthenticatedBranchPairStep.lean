import Core033.AuthenticatedBranchPairState
import Core033.AuthenticatedBranchTrace
import Core033.PairedPathTrace

namespace Core033.AuthenticatedBranchPairStep
open WordIR AuthenticatedBranchPairProjection AuthenticatedBranchPairState
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
attribute [local irreducible] WordIR.Program.eval

theorem phase_shift (phase : Word) (parent : ParentPhase phase) : (phase+1)-3=(phase-3)+1 := by
  rcases parent with rfl|rfl|rfl|rfl|rfl|rfl
  all_goals decide

theorem paired_next_phase (inputs : Nat → Word) (parent : ParentPhase (inputs 0)) :
    pairedInputs (AuthenticatedBranchTrace.next inputs) 0=PairedPathTrace.next (pairedInputs inputs) 0 := by
  have first:=congrArg (fun word : Word=>word-3) (AuthenticatedBranchTrace.next_phase inputs)
  have second:=phase_shift (inputs 0) parent
  have third:=PairedPathTrace.next_phase (pairedInputs inputs)
  exact first.trans (second.trans third.symm)

theorem step_refines (inputs : Nat → Word) (parent : ParentPhase (inputs 0))
    (index : Nat) (bound : index<96) : pairedInputs (AuthenticatedBranchTrace.next inputs) index=
      PairedPathTrace.next (pairedInputs inputs) index := by
  by_cases phase : index=0
  · subst index
    exact paired_next_phase inputs parent
  · have original : pairedInputs (AuthenticatedBranchTrace.next inputs) index=
        AuthenticatedBranchTrace.next inputs index := if_neg phase
    exact original.trans (physical_positive_state inputs parent index (by omega) bound)

theorem pair_step_congr (left right : Nat → Word) (same : ∀ index,index<96 → left index=right index)
    (index : Nat) : PairedPathTrace.next left index=PairedPathTrace.next right index :=
  congrArg (fun words : List Word=>words.getD index 0)
    (WordInline.input_congr PairedPathRound.program PairedPathValidity.program_valid left right same)

theorem parent_phase_count (count : Nat) (bound : count<6) : ParentPhase ((4 : Word)+BitVec.ofNat 32 count) := by
  have alternatives : count=0 ∨ count=1 ∨ count=2 ∨ count=3 ∨ count=4 ∨ count=5 := by omega
  rcases alternatives with rfl|rfl|rfl|rfl|rfl|rfl
  all_goals unfold ParentPhase
  all_goals decide

theorem iterate_refines (count : Nat) (inputs : Nat → Word) (start : inputs 0=4) (bound : count≤6) : ∀ index,index<96 →
    pairedInputs (AuthenticatedBranchTrace.iterate count inputs) index=
      PairedPathTrace.iterate count (pairedInputs inputs) index := by
  induction count with
  | zero => intro index _;rfl
  | succ count induction =>
    intro index portBound
    have phase:=(AuthenticatedBranchTrace.phase_iterate count inputs).trans
      (congrArg (fun word : Word=>word+BitVec.ofNat 32 count) start)
    have parent : ParentPhase (AuthenticatedBranchTrace.iterate count inputs 0) :=
      Eq.mpr (congrArg ParentPhase phase) (parent_phase_count count (by omega))
    have current:=step_refines (AuthenticatedBranchTrace.iterate count inputs) parent index portBound
    have same:=pair_step_congr (pairedInputs (AuthenticatedBranchTrace.iterate count inputs))
      (PairedPathTrace.iterate count (pairedInputs inputs))
      (by intro position bounded;exact induction (by omega) position bounded) index
    exact current.trans same

end Core033.AuthenticatedBranchPairStep
