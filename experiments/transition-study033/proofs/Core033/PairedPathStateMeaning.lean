import Core033.PairedPathPorts

namespace Core033.PairedPathStateMeaning
open WordIR WordStage PairedPathRound PairedPathState PairedPathRouting
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
attribute [local irreducible] WordInline.inline WordSequence.compileAll PairedPathRound.selectors

def project (inputs localWords : Nat → Word) (oldMask newMask : Word) (index : Nat) : Word :=
  if index=0 then inputs 0+1
  else if index=2 then ControlPrimitives.selectRaw newMask (localWords 2) (inputs 2)
  else if 47≤index ∧ index<55 then localWords (35+(index-47))
  else if 55≤index ∧ index<67 then ControlPrimitives.selectRaw oldMask
    (localWords (parentIndex (index-55))) (inputs index)
  else if 67≤index ∧ index<79 then ControlPrimitives.selectRaw newMask
    (localWords (parentIndex (index-67))) (inputs index)
  else inputs index

theorem expression_projected (values : Nat → Word) (index : Nat) :
    (stateExpression index).eval values=project values (fun position=>values (localOutput position))
      (values (selectors.1.getD 3 0)) (values (selectors.1.getD 4 0)) index := by
  unfold stateExpression project
  by_cases phase : index=0
  · simp only [if_pos phase];rfl
  · simp only [if_neg phase]
    by_cases counter : index=2
    · simp only [if_pos counter];rfl
    · simp only [if_neg counter]
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

theorem project_congr (left right localLeft localRight : Nat → Word) (oldMask newMask : Word)
    (original : ∀ index,index<96 → left index=right index)
    (localSame : ∀ index,index<43 → localLeft index=localRight index)
    (index : Nat) (bound : index<96) :
    project left localLeft oldMask newMask index=project right localRight oldMask newMask index := by
  unfold project
  by_cases phase : index=0
  · simp only [if_pos phase]
    exact congrArg (fun word : Word=>word+1) (original 0 (by decide))
  · simp only [if_neg phase]
    by_cases counter : index=2
    · simp only [if_pos counter]
      exact select_congr _ _ _ _ _ (localSame 2 (by decide)) (original 2 (by decide))
    · simp only [if_neg counter]
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

theorem original_projected (inputs : Nat → Word) (index : Nat) (bound : index<96) :
    nextWord inputs index=project inputs (localWords inputs)
      (round.2.values inputs (selectors.1.getD 3 0))
      (round.2.values inputs (selectors.1.getD 4 0)) index :=
  (expression_projected (round.2.values inputs) index).trans
    (project_congr _ inputs _ (localWords inputs) _ _ (original_at_round inputs)
      (by intro position bounded;exact (round_output inputs position (by omega)).2) index bound)

end Core033.PairedPathStateMeaning
