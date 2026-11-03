import Core033.PairedPathRound

namespace Core033.PairedPathRouting
open WordIR WordStage PairedPathRound
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
attribute [local irreducible] WordStage.compile WordStage.emit WordSequence.compileAll WordInline.inline

def selectorExpressions : List Expr :=
  [newActivation,secondActivation,thirdActivation,equalPhase 3,equalPhase 6,admission]

theorem selectors_bounded : ∀ expression∈selectorExpressions,expression.Bounded 96 := by
  simp [selectorExpressions,newActivation,secondActivation,thirdActivation,admission,equalPhase,
    WordEquality.expression,ControlPrimitives.zero,ControlPrimitives.less,ControlPrimitives.carry,Expr.Bounded]

theorem selector_value (inputs : Nat → Word) (index : Nat) (bound : index<6) :
    Meaning selectors.2 inputs (selectors.1.getD index 0)
      ((selectorExpressions.map (fun expression=>expression.eval inputs)).getD index 0) :=
  WordSequenceOutputs.exact_output initial selectorExpressions selectors_bounded inputs index bound

theorem original_at_selectors (inputs : Nat → Word) (index : Nat) (bound : index<96) :
    selectors.2.values inputs index=inputs index :=
  extends_values initial selectors.2 (WordSequence.all_extends selectorExpressions initial) inputs index bound

theorem original_bound (index : Nat) (bound : index<96) : index<selectors.2.next :=
  Nat.lt_of_lt_of_le bound (extends_next initial selectors.2 (WordSequence.all_extends selectorExpressions initial))

theorem chosen_bounded (old later : Nat) (oldBound : old<96) (laterBound : later<96) :
    (chooseNew old later).Bounded selectors.2.next := by
  have mask:=(selector_value (fun _=>0) 0 (by decide)).1
  have oldKept:=original_bound old oldBound
  have laterKept:=original_bound later laterBound
  simp only [chooseNew,selected,ControlPrimitives.select,Expr.Bounded]
  tauto

theorem local_bounded (index : Nat) (bound : index<43) : (localExpression index).Bounded selectors.2.next := by
  have secondMask:=(selector_value (fun _=>0) 1 (by decide)).1
  have thirdMask:=(selector_value (fun _=>0) 2 (by decide)).1
  unfold localExpression
  split_ifs with phase original child sibling low high siblingLow siblingHigh positive siblingPositive covered siblingCovered
  · simp only [ControlPrimitives.select,selected,Expr.Bounded]
    tauto
  · exact original_bound index (by omega)
  · exact chosen_bounded _ _ (by omega) (by omega)
  · exact original_bound _ (by omega)
  · exact chosen_bounded _ _ (by decide) (by decide)
  · exact chosen_bounded _ _ (by decide) (by decide)
  · exact original_bound _ (by decide)
  · exact original_bound _ (by decide)
  · exact chosen_bounded _ _ (by decide) (by decide)
  · exact original_bound _ (by decide)
  · exact chosen_bounded _ _ (by decide) (by decide)
  · exact original_bound _ (by decide)
  · exact original_bound _ (by omega)

theorem routed_bounded : ∀ expression∈routedExpressions,expression.Bounded selectors.2.next := by
  intro expression member
  obtain ⟨index,inRange,rfl⟩:=List.mem_map.mp member
  exact local_bounded index (List.mem_range.mp inRange)

def routedWord (inputs : Nat → Word) (index : Nat) : Word :=
  (localExpression index).eval (selectors.2.values inputs)

theorem routed_value (inputs : Nat → Word) (index : Nat) (bound : index<43) :
    Meaning routed.2 inputs (localInput index) (routedWord inputs index) := by
  have value:=WordSequenceOutputs.exact_output selectors.2 routedExpressions routed_bounded inputs index
    (by simp only [routedExpressions,List.length_map,List.length_range];exact bound)
  simpa only [routedExpressions,List.map_map,Function.comp_def,List.getD_eq_getElem?_getD,
    List.getElem?_map,List.getElem?_range bound,Option.map_some,Option.getD_some,routedWord] using value

theorem round_ports : ∀ index,index<PathRoundDispatch.program.inputCount → localInput index<routed.2.next := by
  intro index bound
  exact (routed_value (fun _=>0) index bound).1

theorem round_output (inputs : Nat → Word) (index : Nat) (bound : index<133) :
    Meaning round.2 inputs (localOutput index)
      ((PathRoundDispatch.program.eval (routedWord inputs)).getD index 0) := by
  have value:=WordInlineOutputs.exact_output routed.2 PathRoundDispatch.program
    PathRoundDispatchGuards.program_valid localInput round_ports inputs index
    (by rw [PathRoundDispatchGuards.output_count];exact bound)
  have same:=WordInline.input_congr PathRoundDispatch.program PathRoundDispatchGuards.program_valid
    (fun position=>routed.2.values inputs (localInput position)) (routedWord inputs)
    (by intro position bounded;exact (routed_value inputs position bounded).2)
  exact ⟨value.1,value.2.trans (congrArg (fun words : List Word=>words.getD index 0) same)⟩

end Core033.PairedPathRouting
