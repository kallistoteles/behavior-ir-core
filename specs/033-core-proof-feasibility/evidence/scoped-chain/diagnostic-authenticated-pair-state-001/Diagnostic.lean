import Core033.AuthenticatedBranchPairProjection
import Core033.AuthenticatedBranchStateMeaning
import Core033.PairedPathAssignments

namespace Core033.AuthenticatedBranchPairState
open WordIR AuthenticatedBranchRound AuthenticatedBranchPairProjection
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
attribute [local irreducible] WordIR.Program.eval

theorem local_outputs (inputs : Nat → Word) (parent : ParentPhase (inputs 0)) (index : Nat) :
    AuthenticatedBranchStateMeaning.localWords inputs index=
      PairedPathStateMeaning.localWords (pairedInputs inputs) index :=
  congrArg (fun words : List Word=>words.getD index 0)
    (WordInline.input_congr PathRoundDispatch.program PathRoundDispatchGuards.program_valid
      (AuthenticatedBranchRouting.routedWord inputs) (PairedPathRouting.routedWord (pairedInputs inputs))
      (same_local_operands inputs parent))

theorem own_mask_zero (phase : Word) (parent : ParentPhase phase) :
    WordControl.boolWord (decide (phase=3))=0 := by
  rcases parent with rfl|rfl|rfl|rfl|rfl|rfl
  all_goals decide

theorem old_mask_same (phase : Word) (parent : ParentPhase phase) :
    WordControl.boolWord (decide (phase=6))=WordControl.boolWord (decide (phase-3=3)) := by
  rcases parent with rfl|rfl|rfl|rfl|rfl|rfl
  all_goals decide

theorem new_mask_same (phase : Word) (parent : ParentPhase phase) :
    WordControl.boolWord (decide (phase=9))=WordControl.boolWord (decide (phase-3=6)) := by
  rcases parent with rfl|rfl|rfl|rfl|rfl|rfl
  all_goals decide

theorem parent_index_same (index : Nat) : parentIndex index=PairedPathRound.parentIndex index := rfl

theorem positive_state_congr (left right localLeft localRight : Nat → Word) (oldMask newMask : Word)
    (original : ∀ index,0<index → index<96 → left index=right index)
    (localSame : ∀ index,index<43 → localLeft index=localRight index)
    (index : Nat) (positive : 0<index) (bound : index<96) :
    AuthenticatedBranchStateMeaning.project left localLeft 0 oldMask newMask index=
      PairedPathStateMeaning.project right localRight oldMask newMask index := by
  unfold AuthenticatedBranchStateMeaning.project PairedPathStateMeaning.project
  simp only [if_neg (by omega : index≠0)]
  by_cases counter : index=2
  · simp only [if_pos counter]
    exact PairedPathStateMeaning.select_congr _ _ _ _ _ (localSame 2 (by decide)) (original 2 (by decide) (by decide))
  · simp only [if_neg counter]
    by_cases sibling : 35≤index ∧ index<47
    · simp only [if_pos sibling,if_neg (by omega : ¬(47≤index ∧ index<55)),
        if_neg (by omega : ¬(55≤index ∧ index<67)),if_neg (by omega : ¬(67≤index ∧ index<79))]
      have selected:=WordControl.select_word_exact false (localLeft (parentIndex (index-35))) (left index)
      exact selected.trans (original index positive bound)
    · simp only [if_neg sibling]
      by_cases sha : 47≤index ∧ index<55
      · simp only [if_pos sha]
        exact localSame _ (by omega)
      · simp only [if_neg sha]
        by_cases old : 55≤index ∧ index<67
        · simp only [if_pos old]
          have slot:=AuthenticatedBranchState.parent_index_bound (index-55) (by omega)
          have localWord:=(localSame _ slot).trans (congrArg localRight (parent_index_same (index-55)))
          exact PairedPathStateMeaning.select_congr _ _ _ _ _ localWord (original index positive bound)
        · simp only [if_neg old]
          by_cases later : 67≤index ∧ index<79
          · simp only [if_pos later]
            have slot:=AuthenticatedBranchState.parent_index_bound (index-67) (by omega)
            have localWord:=(localSame _ slot).trans (congrArg localRight (parent_index_same (index-67)))
            exact PairedPathStateMeaning.select_congr _ _ _ _ _ localWord (original index positive bound)
          · simp only [if_neg later]
            exact original index positive bound

theorem physical_positive_state (inputs : Nat → Word) (parent : ParentPhase (inputs 0))
    (index : Nat) (positive : 0<index) (bound : index<96) :
    (program.eval inputs).getD index 0=(PairedPathRound.program.eval (pairedInputs inputs)).getD index 0 := by
  have actual:=AuthenticatedBranchStateMeaning.physical_state inputs index (by omega)
  have first:=congrArg (fun mask=>AuthenticatedBranchStateMeaning.project inputs
    (AuthenticatedBranchStateMeaning.localWords inputs) mask
    (WordControl.boolWord (decide (inputs 0=6))) (WordControl.boolWord (decide (inputs 0=9))) index)
    (own_mask_zero (inputs 0) parent)
  have second:=congrArg (fun mask=>AuthenticatedBranchStateMeaning.project inputs
    (AuthenticatedBranchStateMeaning.localWords inputs) 0 mask
    (WordControl.boolWord (decide (inputs 0=9))) index) (old_mask_same (inputs 0) parent)
  have third:=congrArg (fun mask=>AuthenticatedBranchStateMeaning.project inputs
    (AuthenticatedBranchStateMeaning.localWords inputs) 0
    (WordControl.boolWord (decide (inputs 0-3=3))) mask index) (new_mask_same (inputs 0) parent)
  have fields:=positive_state_congr inputs (pairedInputs inputs)
    (AuthenticatedBranchStateMeaning.localWords inputs) (PairedPathStateMeaning.localWords (pairedInputs inputs))
    (WordControl.boolWord (decide (inputs 0-3=3))) (WordControl.boolWord (decide (inputs 0-3=6)))
    (by intro position nonzero _;exact positive_inputs inputs position nonzero)
    (by intro position _;exact local_outputs inputs parent position) index positive bound
  have expected:=PairedPathAssignments.physical_state (pairedInputs inputs) index bound
  exact actual.trans (first.trans (second.trans (third.trans (fields.trans expected.symm))))

end Core033.AuthenticatedBranchPairState
