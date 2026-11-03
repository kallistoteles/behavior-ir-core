import Core033.AuthenticatedBranchParentProjection
import Core033.PairedPathFrameProjection
import Core033.PairedPathLocalView

namespace Core033.AuthenticatedBranchPairProjection
open WordIR AuthenticatedBranchRound AuthenticatedBranchParentProjection
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
attribute [local irreducible] WordIR.Program.eval

def pairedInputs (inputs : Nat → Word) (index : Nat) : Word :=
  if index=0 then inputs 0-3 else inputs index

def ParentPhase (phase : Word) : Prop := phase=4 ∨ phase=5 ∨ phase=6 ∨ phase=7 ∨ phase=8 ∨ phase=9

theorem not_own (phase : Word) (parent : ParentPhase phase) : ¬(phase=1 ∨ phase=2 ∨ phase=3) := by
  rcases parent with rfl|rfl|rfl|rfl|rfl|rfl
  all_goals decide

theorem new_mask_same (phase : Word) (parent : ParentPhase phase) :
    WordControl.boolWord (decide (phase=7 ∨ phase=8 ∨ phase=9))=
      WordControl.boolWord (decide (phase-3=4 ∨ phase-3=5 ∨ phase-3=6)) := by
  rcases parent with rfl|rfl|rfl|rfl|rfl|rfl
  all_goals decide

theorem second_mask_same (phase : Word) (parent : ParentPhase phase) :
    WordControl.boolWord (decide (phase=2 ∨ phase=5 ∨ phase=8))=
      WordControl.boolWord (decide (phase-3=2 ∨ phase-3=5)) := by
  rcases parent with rfl|rfl|rfl|rfl|rfl|rfl
  all_goals decide

theorem third_mask_same (phase : Word) (parent : ParentPhase phase) :
    WordControl.boolWord (decide (phase=3 ∨ phase=6 ∨ phase=9))=
      WordControl.boolWord (decide (phase-3=3 ∨ phase-3=6)) := by
  rcases parent with rfl|rfl|rfl|rfl|rfl|rfl
  all_goals decide

theorem positive_inputs (inputs : Nat → Word) (index : Nat) (positive : 0<index) :
    inputs index=pairedInputs inputs index := (if_neg (by omega)).symm

theorem project_nonzero_congr (left right : Nat → Word) (newMask secondMask thirdMask : Word)
    (same : ∀ index,0<index → index<96 → left index=right index)
    (index : Nat) (bound : index<43) :
    PairedPathRouteMeaning.project left newMask secondMask thirdMask index=
      PairedPathRouteMeaning.project right newMask secondMask thirdMask index := by
  by_cases phase : index=0
  · subst index
    rfl
  · by_cases frame : index<35
    · exact PairedPathFrameProjection.frame_congr left right newMask secondMask thirdMask secondMask thirdMask
        (by intro position positive bounded;exact same position positive (by omega)) index (by omega) frame
    · have leftValue:=PairedPathLocalView.project_sha left newMask secondMask thirdMask (index-35) (by omega)
      have rightValue:=PairedPathLocalView.project_sha right newMask secondMask thirdMask (index-35) (by omega)
      have leftExact : PairedPathRouteMeaning.project left newMask secondMask thirdMask index=left (47+(index-35)) := by
        simpa only [Nat.add_sub_of_le (by omega : 35≤index)] using leftValue
      have rightExact : PairedPathRouteMeaning.project right newMask secondMask thirdMask index=right (47+(index-35)) := by
        simpa only [Nat.add_sub_of_le (by omega : 35≤index)] using rightValue
      exact leftExact.trans ((same _ (by omega) (by omega)).trans rightExact.symm)

theorem same_local_operands (inputs : Nat → Word) (parent : ParentPhase (inputs 0))
    (index : Nat) (bound : index<43) :
    AuthenticatedBranchRouting.routedWord inputs index=PairedPathRouting.routedWord (pairedInputs inputs) index := by
  have actual:=parent_active inputs (not_own (inputs 0) parent) index bound
  have first:=congrArg (fun word=>PairedPathRouteMeaning.project inputs word
    (WordControl.boolWord (decide (inputs 0=2 ∨ inputs 0=5 ∨ inputs 0=8)))
    (WordControl.boolWord (decide (inputs 0=3 ∨ inputs 0=6 ∨ inputs 0=9))) index) (new_mask_same (inputs 0) parent)
  have second:=congrArg (fun word=>PairedPathRouteMeaning.project inputs
    (WordControl.boolWord (decide (inputs 0-3=4 ∨ inputs 0-3=5 ∨ inputs 0-3=6))) word
    (WordControl.boolWord (decide (inputs 0=3 ∨ inputs 0=6 ∨ inputs 0=9))) index) (second_mask_same (inputs 0) parent)
  have third:=congrArg (fun word=>PairedPathRouteMeaning.project inputs
    (WordControl.boolWord (decide (inputs 0-3=4 ∨ inputs 0-3=5 ∨ inputs 0-3=6)))
    (WordControl.boolWord (decide (inputs 0-3=2 ∨ inputs 0-3=5))) word index) (third_mask_same (inputs 0) parent)
  have fields:=project_nonzero_congr inputs (pairedInputs inputs)
    (WordControl.boolWord (decide (inputs 0-3=4 ∨ inputs 0-3=5 ∨ inputs 0-3=6)))
    (WordControl.boolWord (decide (inputs 0-3=2 ∨ inputs 0-3=5)))
    (WordControl.boolWord (decide (inputs 0-3=3 ∨ inputs 0-3=6)))
    (by intro position positive _;exact positive_inputs inputs position positive) index bound
  have expected:=PairedPathRouteMeaning.exact_original_operands (pairedInputs inputs) index bound
  exact actual.trans (first.trans (second.trans (third.trans (fields.trans expected.symm))))

end Core033.AuthenticatedBranchPairProjection
