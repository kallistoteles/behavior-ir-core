import Core033.PairedPathRouting

namespace Core033.PairedPathState
open WordIR WordStage PairedPathRound PairedPathRouting
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
attribute [local irreducible] WordStage.compile WordStage.emit WordSequence.compileAll WordInline.inline

theorem counts : selectors.2.inputCount=96 ∧ routed.2.inputCount=96 ∧
    round.2.inputCount=96 ∧ finalized.2.inputCount=96 := by
  have first : selectors.2.inputCount=96 := (WordSequence.all_extends selectorExpressions initial).1
  have second : routed.2.inputCount=96 := (WordSequence.all_extends routedExpressions selectors.2).1.trans first
  have third : round.2.inputCount=96 := (WordInline.builder_extends routed.2 PathRoundDispatch.program localInput).1.trans second
  exact ⟨first,second,third,(WordSequence.all_extends finalExpressions round.2).1.trans third⟩

theorem selectors_to_round : Extends selectors.2 round.2 :=
  extends_trans _ _ _ (WordSequence.all_extends routedExpressions selectors.2) (WordInline.builder_extends _ _ _)

theorem selector_at_round (inputs : Nat → Word) (index : Nat) (bound : index<6) :
    Meaning round.2 inputs (selectors.1.getD index 0)
      ((selectorExpressions.map (fun expression=>expression.eval inputs)).getD index 0) :=
  meaning_extends _ _ selectors_to_round inputs _ _ (selector_value inputs index bound)

theorem original_at_round (inputs : Nat → Word) (index : Nat) (bound : index<96) :
    round.2.values inputs index=inputs index :=
  WordIR.run_keeps_prefix round.2.operations round.2.inputCount inputs index (by rw [counts.2.2.1];exact bound)

theorem original_bound_at_round (index : Nat) (bound : index<96) : index<round.2.next := by
  unfold Builder.next
  rw [counts.2.2.1]
  omega

theorem parent_index_bound (index : Nat) (bound : index<12) : parentIndex index<43 := by
  unfold parentIndex
  split_ifs <;> omega

theorem state_bounded (index : Nat) (bound : index<96) : (stateExpression index).Bounded round.2.next := by
  have oldMask:=(selector_at_round (fun _=>0) 3 (by decide)).1
  have newMask:=(selector_at_round (fun _=>0) 4 (by decide)).1
  unfold stateExpression
  split_ifs with phase counter sha oldParent newParent
  · exact ⟨original_bound_at_round 0 (by decide),trivial⟩
  · have resultBound:=(round_output (fun _=>0) 2 (by decide)).1
    have originalBound:=original_bound_at_round 2 (by decide)
    simp only [ControlPrimitives.select,selected,Expr.Bounded]
    tauto
  · exact (round_output (fun _=>0) (35+(index-47)) (by omega)).1
  · have parentBound:=parent_index_bound (index-55) (by omega)
    have resultBound:=(round_output (fun _=>0) (parentIndex (index-55)) (by omega)).1
    have originalBound:=original_bound_at_round index bound
    simp only [ControlPrimitives.select,selected,Expr.Bounded]
    tauto
  · have parentBound:=parent_index_bound (index-67) (by omega)
    have resultBound:=(round_output (fun _=>0) (parentIndex (index-67)) (by omega)).1
    have originalBound:=original_bound_at_round index bound
    simp only [ControlPrimitives.select,selected,Expr.Bounded]
    tauto
  · exact original_bound_at_round index bound

theorem final_bounded : ∀ expression∈finalExpressions,expression.Bounded round.2.next := by
  intro expression member
  obtain ⟨index,inRange,rfl⟩:=List.mem_map.mp member
  exact state_bounded index (List.mem_range.mp inRange)

def nextWord (inputs : Nat → Word) (index : Nat) := (stateExpression index).eval (round.2.values inputs)

theorem final_values (inputs : Nat → Word) : finalized.1.map (finalized.2.values inputs)=
    (List.range 96).map (nextWord inputs) := by
  have actual:=(WordSequence.all_sound finalExpressions round.2 inputs final_bounded).2
  simpa only [finalExpressions,List.map_map,Function.comp_def,nextWord] using actual

theorem original_preserved (inputs : Nat → Word) (index : Nat) (bound : index<96)
    (notPhase : index≠0) (notCounter : index≠2) (notWork : ¬(47≤index ∧ index<79)) :
    nextWord inputs index=inputs index := by
  run_tac liftIO do
    let output ← IO.getStderr
    output.putStrLn "PAIRED PRESERVATION: before expression identity"
    output.flush
  have sameExpression : stateExpression index=Expr.input index := by
    run_tac liftIO do
      let output ← IO.getStderr
      output.putStrLn "PAIRED PRESERVATION: before unfold"
      output.flush
    unfold stateExpression
    run_tac liftIO do
      let output ← IO.getStderr
      output.putStrLn "PAIRED PRESERVATION: before simp"
      output.flush
    simp only [if_neg notPhase,if_neg notCounter,if_neg (by omega : ¬(47≤index ∧ index<55)),
      if_neg (by omega : ¬(55≤index ∧ index<67)),if_neg (by omega : ¬(67≤index ∧ index<79))]
  run_tac liftIO do
    let output ← IO.getStderr
    output.putStrLn "PAIRED PRESERVATION: before value congruence"
    output.flush
  exact (congrArg (fun expression : Expr=>expression.eval (round.2.values inputs)) sameExpression).trans
    (original_at_round inputs index bound)

end Core033.PairedPathState
