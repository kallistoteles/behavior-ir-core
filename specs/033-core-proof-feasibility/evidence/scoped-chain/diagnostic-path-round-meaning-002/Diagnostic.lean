import Core033.PathRoundDispatch
import Core033.PathFrameAdvanceMeaning

namespace Core033.PathRoundDispatchMeaning
open WordIR WordStage PathRoundDispatch
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
attribute [local irreducible] WordInline.inline WordSequence.compileAll WordStage.compile WordStage.emit

theorem hash_router_valid : hashRouter.program.Valid := by
  apply WordSourceValidity.safe_program_valid
  apply (WordSource.check_safe_exact _).mp
  core033_kernel_decide

theorem advance_router_valid : advanceRouter.program.Valid := by
  apply WordSourceValidity.safe_program_valid
  apply (WordSource.check_safe_exact _).mp
  core033_kernel_decide

def hashInputs (inputs : Nat → Word) (index : Nat) : Word :=
  if inputs 0=1 ∨ inputs 0=2 then inputs index else hashFallback index
def advanceInputs (inputs : Nat → Word) (index : Nat) : Word :=
  if inputs 0=3 then inputs index else advanceFallback index

theorem counts : hashRouted.2.inputCount=43 ∧ hashed.2.inputCount=43 ∧
    advanceRouted.2.inputCount=43 ∧ advanced.2.inputCount=43 ∧ finalized.2.inputCount=43 := by
  have first : hashRouted.2.inputCount=43 := (WordInline.builder_extends initial hashRouter.program id).1
  have second : hashed.2.inputCount=43 := (WordInline.builder_extends hashRouted.2 FrameHashController.program hashInput).1.trans first
  have third : advanceRouted.2.inputCount=43 := (WordInline.builder_extends hashed.2 advanceRouter.program id).1.trans second
  have fourth : advanced.2.inputCount=43 := (WordInline.builder_extends advanceRouted.2 PathFrameAdvance.program advanceInput).1.trans third
  exact ⟨first,second,third,fourth,(WordSequence.all_extends finalExpressions advanced.2).1.trans fourth⟩

theorem router_value (builder : Builder) (count : builder.inputCount=43)
    (router : MaskedRouting.Config) (inputsCount : router.inputCount=43) (outputCount : router.count=43)
    (valid : router.program.Valid) (selected : Nat → Word) (inputs : Nat → Word)
    (exactRouter : router.program.eval (fun index=>inputs index)=(List.range 43).map selected)
    (index : Nat) (bound : index<43) :
    Meaning (WordInline.inline builder router.program id).2 inputs
      (WordInlineOutputs.register builder router.program id index) (selected index) := by
  have value:=PathFrameAdvanceMeaning.original_output builder count router.program valid id
    (by intro position bounded;change position<router.inputCount at bounded;rw [inputsCount] at bounded;exact bounded)
    inputs index (by rw [MaskedRouting.output_count,outputCount];exact bound)
  change Meaning (WordInline.inline builder router.program id).2 inputs
    (WordInlineOutputs.register builder router.program id index)
    ((router.program.eval (fun index=>inputs index)).getD index 0) at value
  rw [exactRouter] at value
  simpa only [List.getD_eq_getElem?_getD,List.getElem?_map,List.getElem?_range bound,
    Option.map_some,Option.getD_some] using value

theorem hash_routing_value (inputs : Nat → Word) (index : Nat) (bound : index<43) :
    Meaning hashRouted.2 inputs (hashInput index) (hashInputs inputs index) :=
  router_value initial rfl hashRouter rfl rfl hash_router_valid (hashInputs inputs) inputs
    (hash_router_meaning inputs) index bound

theorem advance_routing_value (inputs : Nat → Word) (index : Nat) (bound : index<43) :
    Meaning advanceRouted.2 inputs (advanceInput index) (advanceInputs inputs index) :=
  router_value hashed.2 counts.2.1 advanceRouter rfl rfl advance_router_valid (advanceInputs inputs) inputs
    (advance_router_meaning inputs) index bound

theorem hash_ports : ∀ index,index<FrameHashController.program.inputCount → hashInput index<hashRouted.2.next := by
  intro index bound
  exact (hash_routing_value (fun _=>0) index bound).1

theorem advance_ports : ∀ index,index<PathFrameAdvance.program.inputCount → advanceInput index<advanceRouted.2.next := by
  intro index bound
  exact (advance_routing_value (fun _=>0) index bound).1

theorem hash_value (inputs : Nat → Word) (index : Nat) (bound : index<125) :
    Meaning hashed.2 inputs (hashOutput index)
      ((FrameHashController.program.eval (hashInputs inputs)).getD index 0) := by
  have value:=WordInlineOutputs.exact_output hashRouted.2 FrameHashController.program
    FrameHashControllerValidity.program_valid hashInput hash_ports inputs index
    (by rw [FrameHashControllerGuards.output_count];exact bound)
  have same:=WordInline.input_congr FrameHashController.program FrameHashControllerValidity.program_valid
    (fun position=>hashRouted.2.values inputs (hashInput position)) (hashInputs inputs)
    (by intro position bounded;exact (hash_routing_value inputs position bounded).2)
  exact ⟨value.1,value.2.trans (congrArg (fun words : List Word=>words.getD index 0) same)⟩

theorem advance_value (inputs : Nat → Word) (index : Nat) (bound : index<50) :
    Meaning advanced.2 inputs (advanceOutput index)
      ((PathFrameAdvance.program.eval (advanceInputs inputs)).getD index 0) := by
  have value:=WordInlineOutputs.exact_output advanceRouted.2 PathFrameAdvance.program
    PathFrameAdvanceGuards.program_valid advanceInput advance_ports inputs index
    (by rw [PathFrameAdvanceGuards.output_count];exact bound)
  have same:=WordInline.input_congr PathFrameAdvance.program PathFrameAdvanceGuards.program_valid
    (fun position=>advanceRouted.2.values inputs (advanceInput position)) (advanceInputs inputs)
    (by intro position bounded;exact (advance_routing_value inputs position bounded).2)
  exact ⟨value.1,value.2.trans (congrArg (fun words : List Word=>words.getD index 0) same)⟩

theorem hash_to_advanced : Extends hashed.2 advanced.2 :=
  extends_trans _ _ _ (WordInline.builder_extends _ _ _) (WordInline.builder_extends _ _ _)

theorem original_at_advanced (inputs : Nat → Word) (index : Nat) (bound : index<43) :
    advanced.2.values inputs index=inputs index :=
  WordIR.run_keeps_prefix advanced.2.operations advanced.2.inputCount inputs index
    (by rw [counts.2.2.2.1];exact bound)

theorem hash_at_advanced (inputs : Nat → Word) (index : Nat) (bound : index<125) :
    Meaning advanced.2 inputs (hashOutput index)
      ((FrameHashController.program.eval (hashInputs inputs)).getD index 0) :=
  meaning_extends _ _ hash_to_advanced inputs _ _ (hash_value inputs index bound)

theorem final_bounded : ∀ expression∈finalExpressions,expression.Bounded advanced.2.next := by
  intro expression member
  have originalBound : 0<advanced.2.next := by unfold Builder.next;rw [counts.2.2.2.1];omega
  have activationBound : advanceActivation.Bounded advanced.2.next :=
    bounded_mono advanceActivation 43 _ (by unfold Builder.next;rw [counts.2.2.2.1];omega) advance_activation_bounded
  simp only [finalExpressions,List.mem_append,List.mem_map,List.mem_range,List.mem_singleton] at member
  rcases member with ⟨index,bound,rfl⟩|rfl
  · have hashBound:=(hash_at_advanced (fun _=>0) index (by omega)).1
    have advanceBound:=(advance_value (fun _=>0) index (by omega)).1
    simp only [stateExpression,ControlPrimitives.select,Expr.Bounded]
    tauto
  · apply bounded_mono admission 43 _ (by unfold Builder.next;rw [counts.2.2.2.1];omega)
    exact ⟨hash_activation_bounded,advance_activation_bounded⟩

def nextWord (inputs : Nat → Word) (index : Nat) : Word :=
  if inputs 0=3 then (PathFrameAdvance.program.eval (advanceInputs inputs)).getD index 0
  else (FrameHashController.program.eval (hashInputs inputs)).getD index 0

theorem state_expression (inputs : Nat → Word) (index : Nat) (bound : index<43) :
    (stateExpression index).eval (advanced.2.values inputs)=nextWord inputs index := by
  have original : advanceActivation.eval (advanced.2.values inputs)=
      WordControl.boolWord (decide (inputs 0=3)) := by
    rw [advance_activation_exact,original_at_advanced inputs 0 (by decide)]
  change ControlPrimitives.selectRaw (advanceActivation.eval (advanced.2.values inputs))
    (advanced.2.values inputs (advanceOutput index)) (advanced.2.values inputs (hashOutput index))=_
  rw [original]
  change WordControl.selectWord (decide (inputs 0=3))
    (advanced.2.values inputs (advanceOutput index)) (advanced.2.values inputs (hashOutput index))=_
  rw [WordControl.select_word_exact,(advance_value inputs index (by omega)).2,
    (hash_at_advanced inputs index (by omega)).2]
  simp only [decide_eq_true_eq,nextWord]

end Core033.PathRoundDispatchMeaning
