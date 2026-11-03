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

theorem map_preserved (before after : Builder) (extended : Extends before after)
    (inputs : Nat → Word) (registers : List Nat)
    (bounded : ∀ register∈registers,register<before.next) :
    registers.map (after.values inputs)=registers.map (before.values inputs) := by
  apply List.map_congr_left
  intro register member
  exact extends_values before after extended inputs register (bounded register member)

theorem hash_outputs_at_end (inputs : Nat → Word) :
    hashed.1.map (finalized.2.values inputs)=FrameHashController.program.eval (hashInputs inputs) := by
  rw [map_preserved hashed.2 finalized.2
    (extends_trans _ _ _ hash_to_advanced (WordSequence.all_extends _ _)) inputs hashed.1
    (WordInline.output_bounds hashRouted.2 FrameHashController.program
      FrameHashControllerValidity.program_valid hashInput hash_ports)]
  have actual:=WordInline.complete_meaning hashRouted.2 FrameHashController.program
    FrameHashControllerValidity.program_valid hashInput hash_ports inputs
  have same:=WordInline.input_congr FrameHashController.program FrameHashControllerValidity.program_valid
    (fun position=>hashRouted.2.values inputs (hashInput position)) (hashInputs inputs)
    (by intro position bounded;exact (hash_routing_value inputs position bounded).2)
  exact actual.trans same

theorem advance_outputs_at_end (inputs : Nat → Word) :
    advanced.1.map (finalized.2.values inputs)=PathFrameAdvance.program.eval (advanceInputs inputs) := by
  rw [map_preserved advanced.2 finalized.2 (WordSequence.all_extends _ _) inputs advanced.1
    (WordInline.output_bounds advanceRouted.2 PathFrameAdvance.program
      PathFrameAdvanceGuards.program_valid advanceInput advance_ports)]
  have actual:=WordInline.complete_meaning advanceRouted.2 PathFrameAdvance.program
    PathFrameAdvanceGuards.program_valid advanceInput advance_ports inputs
  have same:=WordInline.input_congr PathFrameAdvance.program PathFrameAdvanceGuards.program_valid
    (fun position=>advanceRouted.2.values inputs (advanceInput position)) (advanceInputs inputs)
    (by intro position bounded;exact (advance_routing_value inputs position bounded).2)
  exact actual.trans same

def finalWords (inputs : Nat → Word) : List Word := (List.range 43).map (nextWord inputs)++
  [WordControl.boolWord (decide (inputs 0=1 ∨ inputs 0=2 ∨ inputs 0=3))]

theorem final_outputs (inputs : Nat → Word) : finalized.1.map (finalized.2.values inputs)=finalWords inputs := by
  have actual:=(WordSequence.all_sound finalExpressions advanced.2 inputs final_bounded).2
  change finalized.1.map (finalized.2.values inputs)=_ at actual
  rw [actual]
  simp only [finalExpressions,List.map_append,List.map_map,List.map_cons,List.map_nil,Function.comp_def,finalWords]
  have states : (List.range 43).map (fun index=>(stateExpression index).eval (advanced.2.values inputs))=
      (List.range 43).map (nextWord inputs) := by
    apply List.map_congr_left
    intro index member
    exact state_expression inputs index (List.mem_range.mp member)
  rw [states]
  have kept:=WordStage.eval_congr admission 43 (advanced.2.values inputs) inputs
    (show admission.Bounded 43 from ⟨hash_activation_bounded,advance_activation_bounded⟩)
    (original_at_advanced inputs)
  rw [kept,admission_exact]

def expectedOutputs (inputs : Nat → Word) : List Word :=
  (finalWords inputs).take 43++(FrameHashController.program.eval (hashInputs inputs)).drop 43++
    (PathFrameAdvance.program.eval (advanceInputs inputs)).drop 43++(finalWords inputs).drop 43

theorem program_meaning (inputs : Nat → Word) : program.eval inputs=expectedOutputs inputs := by
  change outputs.map (WordIR.run 43 finalized.2.operations inputs)=_
  have execution:=congrArg (fun count=>outputs.map (WordIR.run count finalized.2.operations inputs)) counts.2.2.2.2.symm
  dsimp only at execution
  rw [execution]
  change outputs.map (finalized.2.values inputs)=_
  simp only [outputs,List.map_append,List.map_take,List.map_drop]
  rw [final_outputs,hash_outputs_at_end,advance_outputs_at_end]
  rfl

theorem active_hash_state (inputs : Nat → Word) (phase : inputs 0=1 ∨ inputs 0=2)
    (index : Nat) : nextWord inputs index=(FrameHashController.program.eval inputs).getD index 0 := by
  have other : inputs 0≠3 := by
    rcases phase with first|second
    · rw [first];decide
    · rw [second];decide
  have same : hashInputs inputs=inputs := by
    funext position
    exact if_pos phase
  rw [nextWord,if_neg other,same]

theorem active_advance_state (inputs : Nat → Word) (phase : inputs 0=3)
    (index : Nat) : nextWord inputs index=(PathFrameAdvance.program.eval inputs).getD index 0 := by
  have same : advanceInputs inputs=inputs := by
    funext position
    exact if_pos phase
  rw [nextWord,if_pos phase,same]

end Core033.PathRoundDispatchMeaning
