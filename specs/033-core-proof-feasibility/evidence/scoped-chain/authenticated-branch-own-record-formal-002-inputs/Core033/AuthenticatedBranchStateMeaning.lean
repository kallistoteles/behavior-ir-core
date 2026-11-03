import Core033.AuthenticatedBranchPorts

namespace Core033.AuthenticatedBranchStateMeaning
open WordIR WordStage AuthenticatedBranchRound AuthenticatedBranchRouting AuthenticatedBranchState
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
attribute [local irreducible] WordIR.Program.eval WordInline.inline WordSequence.compileAll AuthenticatedBranchRound.selectors

def project (inputs localWords : Nat → Word) (ownMask oldMask newMask : Word) (index : Nat) : Word :=
  if index=0 then inputs 0+1
  else if index=2 then ControlPrimitives.selectRaw newMask (localWords 2) (inputs 2)
  else if 35≤index ∧ index<47 then ControlPrimitives.selectRaw ownMask
    (localWords (parentIndex (index-35))) (inputs index)
  else if 47≤index ∧ index<55 then localWords (35+(index-47))
  else if 55≤index ∧ index<67 then ControlPrimitives.selectRaw oldMask
    (localWords (parentIndex (index-55))) (inputs index)
  else if 67≤index ∧ index<79 then ControlPrimitives.selectRaw newMask
    (localWords (parentIndex (index-67))) (inputs index)
  else inputs index

theorem expression_projected (values : Nat → Word) (index : Nat) :
    (stateExpression index).eval values=project values (fun position=>values (localOutput position))
      (values (selectors.1.getD 4 0)) (values (selectors.1.getD 5 0)) (values (selectors.1.getD 6 0)) index := by
  unfold stateExpression project
  by_cases phase : index=0
  · simp only [if_pos phase];rfl
  · simp only [if_neg phase]
    by_cases counter : index=2
    · simp only [if_pos counter];rfl
    · simp only [if_neg counter]
      by_cases sibling : 35≤index ∧ index<47
      · simp only [if_pos sibling];rfl
      · simp only [if_neg sibling]
        by_cases sha : 47≤index ∧ index<55
        · simp only [if_pos sha];rfl
        · simp only [if_neg sha]
          by_cases old : 55≤index ∧ index<67
          · simp only [if_pos old];rfl
          · simp only [if_neg old]
            by_cases later : 67≤index ∧ index<79
            · simp only [if_pos later];rfl
            · simp only [if_neg later];rfl

theorem select_congr (mask a b c d : Word) (first : a=b) (second : c=d) :
    ControlPrimitives.selectRaw mask a c=ControlPrimitives.selectRaw mask b d := by
  cases first
  cases second
  rfl

theorem project_congr (left right localLeft localRight : Nat → Word) (ownMask oldMask newMask : Word)
    (original : ∀ index,index<118 → left index=right index)
    (localSame : ∀ index,index<43 → localLeft index=localRight index)
    (index : Nat) (bound : index<118) :
    project left localLeft ownMask oldMask newMask index=project right localRight ownMask oldMask newMask index := by
  unfold project
  by_cases phase : index=0
  · simp only [if_pos phase]
    exact congrArg (fun word : Word=>word+1) (original 0 (by decide))
  · simp only [if_neg phase]
    by_cases counter : index=2
    · simp only [if_pos counter]
      exact select_congr _ _ _ _ _ (localSame 2 (by decide)) (original 2 (by decide))
    · simp only [if_neg counter]
      by_cases sibling : 35≤index ∧ index<47
      · simp only [if_pos sibling]
        exact select_congr _ _ _ _ _ (localSame _ (parent_index_bound _ (by omega))) (original index bound)
      · simp only [if_neg sibling]
        by_cases sha : 47≤index ∧ index<55
        · simp only [if_pos sha]
          exact localSame _ (by omega)
        · simp only [if_neg sha]
          by_cases old : 55≤index ∧ index<67
          · simp only [if_pos old]
            exact select_congr _ _ _ _ _ (localSame _ (parent_index_bound _ (by omega))) (original index bound)
          · simp only [if_neg old]
            by_cases later : 67≤index ∧ index<79
            · simp only [if_pos later]
              exact select_congr _ _ _ _ _ (localSame _ (parent_index_bound _ (by omega))) (original index bound)
            · simp only [if_neg later]
              exact original index bound

def localWords (inputs : Nat → Word) (index : Nat) : Word :=
  (PathRoundDispatch.program.eval (routedWord inputs)).getD index 0

theorem original_projected (inputs : Nat → Word) (index : Nat) (bound : index<118) :
    nextWord inputs index=project inputs (localWords inputs)
      (round.2.values inputs (selectors.1.getD 4 0))
      (round.2.values inputs (selectors.1.getD 5 0))
      (round.2.values inputs (selectors.1.getD 6 0)) index :=
  (expression_projected (round.2.values inputs) index).trans
    (project_congr _ inputs _ (localWords inputs) _ _ _ (original_at_round inputs)
      (by intro position bounded;exact (round_output inputs position (by omega)).2) index bound)

theorem own_mask (inputs : Nat → Word) :
    round.2.values inputs (selectors.1.getD 4 0)=WordControl.boolWord (decide (inputs 0=3)) := by
  have value:=(selector_at_round inputs 4 (by decide)).2
  change round.2.values inputs (selectors.1.getD 4 0)=WordEquality.equalWord (inputs 0) 3 at value
  exact value.trans (WordEquality.equal_word_exact _ _)

theorem old_mask (inputs : Nat → Word) :
    round.2.values inputs (selectors.1.getD 5 0)=WordControl.boolWord (decide (inputs 0=6)) := by
  have value:=(selector_at_round inputs 5 (by decide)).2
  change round.2.values inputs (selectors.1.getD 5 0)=WordEquality.equalWord (inputs 0) 6 at value
  exact value.trans (WordEquality.equal_word_exact _ _)

theorem new_mask (inputs : Nat → Word) :
    round.2.values inputs (selectors.1.getD 6 0)=WordControl.boolWord (decide (inputs 0=9)) := by
  have value:=(selector_at_round inputs 6 (by decide)).2
  change round.2.values inputs (selectors.1.getD 6 0)=WordEquality.equalWord (inputs 0) 9 at value
  exact value.trans (WordEquality.equal_word_exact _ _)

theorem physical_state (inputs : Nat → Word) (index : Nat) (bound : index<118) :
    (program.eval inputs).getD index 0=project inputs (localWords inputs)
      (WordControl.boolWord (decide (inputs 0=3))) (WordControl.boolWord (decide (inputs 0=6)))
      (WordControl.boolWord (decide (inputs 0=9))) index := by
  have first:=congrArg (fun mask=>project inputs (localWords inputs) mask
    (round.2.values inputs (selectors.1.getD 5 0)) (round.2.values inputs (selectors.1.getD 6 0)) index) (own_mask inputs)
  have second:=congrArg (fun mask=>project inputs (localWords inputs)
    (WordControl.boolWord (decide (inputs 0=3))) mask
    (round.2.values inputs (selectors.1.getD 6 0)) index) (old_mask inputs)
  have third:=congrArg (fun mask=>project inputs (localWords inputs)
    (WordControl.boolWord (decide (inputs 0=3))) (WordControl.boolWord (decide (inputs 0=6))) mask index) (new_mask inputs)
  exact (AuthenticatedBranchPorts.state_word inputs index bound).trans
    ((original_projected inputs index bound).trans (first.trans (second.trans third)))

theorem sibling_projection (inputs localValues : Nat → Word) (ownMask oldMask newMask : Word)
    (index : Nat) (bound : index<12) : project inputs localValues ownMask oldMask newMask (35+index)=
      ControlPrimitives.selectRaw ownMask (localValues (parentIndex index)) (inputs (35+index)) := by
  simp only [project,if_neg (by omega : 35+index≠0),if_neg (by omega : 35+index≠2),
    if_pos (by omega : 35≤35+index ∧ 35+index<47),Nat.add_sub_cancel_left]

theorem sibling_word (inputs : Nat → Word) (index : Nat) (bound : index<12) :
    (program.eval inputs).getD (35+index) 0=
      if inputs 0=3 then localWords inputs (parentIndex index) else inputs (35+index) := by
  have state:=physical_state inputs (35+index) (by omega)
  have projection:=sibling_projection inputs (localWords inputs)
    (WordControl.boolWord (decide (inputs 0=3))) (WordControl.boolWord (decide (inputs 0=6)))
    (WordControl.boolWord (decide (inputs 0=9))) index bound
  have selected:=WordControl.select_word_exact (decide (inputs 0=3))
    (localWords inputs (parentIndex index)) (inputs (35+index))
  exact state.trans (projection.trans (by simpa only [decide_eq_true_eq] using selected))

theorem sha_projection (inputs localValues : Nat → Word) (ownMask oldMask newMask : Word)
    (index : Nat) (bound : index<8) : project inputs localValues ownMask oldMask newMask (47+index)=localValues (35+index) := by
  simp only [project,if_neg (by omega : 47+index≠0),if_neg (by omega : 47+index≠2),
    if_neg (by omega : ¬(35≤47+index ∧ 47+index<47)),
    if_pos (by omega : 47≤47+index ∧ 47+index<55),Nat.add_sub_cancel_left]

theorem sha_word (inputs : Nat → Word) (index : Nat) (bound : index<8) :
    (program.eval inputs).getD (47+index) 0=localWords inputs (35+index) :=
  (physical_state inputs (47+index) (by omega)).trans (sha_projection inputs (localWords inputs) _ _ _ index bound)

end Core033.AuthenticatedBranchStateMeaning
