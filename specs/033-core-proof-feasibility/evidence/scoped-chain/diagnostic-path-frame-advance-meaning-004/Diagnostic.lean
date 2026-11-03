import Core033.PathFrameAdvance
import Core033.WordSequenceOutputs

namespace Core033.PathFrameAdvanceMeaning
open WordIR WordStage PathFrameAdvance
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
attribute [local irreducible] WordInline.inline WordSequence.compileAll WordStage.compile WordStage.emit

theorem digest_valid : DigestWords.program.Valid := by
  apply WordSourceValidity.safe_program_valid
  apply (WordSource.check_safe_exact _).mp
  core033_kernel_decide

theorem metadata_valid : ParentMetadataProgram.program.Valid := by
  apply WordSourceValidity.safe_program_valid
  apply (WordSource.check_safe_exact _).mp
  core033_kernel_decide

theorem geometry_valid : PathCounterProgram.program.Valid := by
  apply WordSourceValidity.safe_program_valid
  apply (WordSource.check_safe_exact _).mp
  core033_kernel_decide

theorem arities : DigestWords.program.outputs.length=8 ∧ ParentMetadataProgram.program.outputs.length=9 ∧
    PathCounterProgram.program.outputs.length=5 := by core033_kernel_decide

theorem digested_input_count : digested.2.inputCount=43 :=
  (WordInline.builder_extends initial DigestWords.program digestPorts).1

theorem metadata_input_count : metadata.2.inputCount=43 :=
  (WordInline.builder_extends digested.2 ParentMetadataProgram.program metadataPorts).1.trans digested_input_count

theorem geometry_input_count : geometry.2.inputCount=43 :=
  (WordInline.builder_extends metadata.2 PathCounterProgram.program geometryPorts).1.trans metadata_input_count

theorem original_output (builder : Builder) (inputCount : builder.inputCount=43)
    (body : Program) (valid : body.Valid) (ports : Nat → Nat)
    (bounded : ∀ index,index<body.inputCount → ports index<43)
    (inputs : Nat → Word) (position : Nat) (bound : position<body.outputs.length) :
    Meaning (WordInline.inline builder body ports).2 inputs
      (WordInlineOutputs.register builder body ports position)
      ((body.eval (fun index=>inputs (ports index))).getD position 0) := by
  have portBounds : ∀ index,index<body.inputCount → ports index<builder.next := by
    intro index bound
    have old:=bounded index bound
    unfold Builder.next
    rw [inputCount]
    omega
  have actual:=WordInlineOutputs.exact_output builder body valid ports portBounds inputs position bound
  have same:=WordInline.input_congr body valid (fun index=>builder.values inputs (ports index))
    (fun index=>inputs (ports index)) (by
      intro index bound
      exact WordIR.run_keeps_prefix builder.operations builder.inputCount inputs (ports index)
        (by rw [inputCount];exact bounded index bound))
  exact ⟨actual.1,actual.2.trans (congrArg (fun words : List Word=>words.getD position 0) same)⟩

theorem digest_ports : ∀ index,index<DigestWords.program.inputCount → digestPorts index<43 := by
  intro index bound
  change index<8 at bound
  unfold digestPorts
  omega

theorem metadata_ports : ∀ index,index<ParentMetadataProgram.program.inputCount → metadataPorts index<43 := by
  intro index bound
  change index<8 at bound
  unfold metadataPorts
  omega

theorem geometry_ports : ∀ index,index<PathCounterProgram.program.inputCount → geometryPorts index<43 := by
  intro index bound
  change 2<43
  decide

def digestInputs (inputs : Nat → Word) (index : Nat) := inputs (digestPorts index)
def metadataInputs (inputs : Nat → Word) (index : Nat) := inputs (metadataPorts index)
def geometryInputs (inputs : Nat → Word) (_ : Nat) := inputs 2

theorem digest_value (inputs : Nat → Word) (index : Nat) (bound : index<8) :
    Meaning digested.2 inputs (digestRegister index) ((DigestWords.program.eval (digestInputs inputs)).getD index 0) :=
  original_output initial rfl DigestWords.program digest_valid digestPorts digest_ports inputs index
    (by rw [arities.1];exact bound)

theorem metadata_value (inputs : Nat → Word) (index : Nat) (bound : index<9) :
    Meaning metadata.2 inputs (metadataRegister index) ((ParentMetadataProgram.program.eval (metadataInputs inputs)).getD index 0) :=
  original_output digested.2 digested_input_count ParentMetadataProgram.program metadata_valid metadataPorts metadata_ports inputs index
    (by rw [arities.2.1];exact bound)

theorem geometry_value (inputs : Nat → Word) (index : Nat) (bound : index<5) :
    Meaning geometry.2 inputs (geometryRegister index) ((PathCounterProgram.program.eval (geometryInputs inputs)).getD index 0) :=
  original_output metadata.2 metadata_input_count PathCounterProgram.program geometry_valid geometryPorts geometry_ports inputs index
    (by rw [arities.2.2];exact bound)

theorem final_bounded : ∀ expression∈finalExpressions,expression.Bounded geometry.2.next := by
  intro expression member
  have phaseBound : 0<geometry.2.next := by
    unfold Builder.next
    rw [geometry_input_count]
    omega
  simp only [finalExpressions,List.mem_cons,List.not_mem_nil,or_false] at member
  rcases member with rfl|rfl
  · trivial
  · simp only [WordEquality.expression,ControlPrimitives.zero,ControlPrimitives.less,
      ControlPrimitives.carry,Expr.Bounded,phaseBound]
    trivial

theorem geometry_at_end (inputs : Nat → Word) (index : Nat) (bound : index<5) :
    Meaning finalized.2 inputs (geometryRegister index) ((PathCounterProgram.program.eval (geometryInputs inputs)).getD index 0) :=
  meaning_extends geometry.2 finalized.2 (WordSequence.all_extends finalExpressions geometry.2)
    inputs _ _ (geometry_value inputs index bound)

theorem metadata_at_end (inputs : Nat → Word) (index : Nat) (bound : index<9) :
    Meaning finalized.2 inputs (metadataRegister index) ((ParentMetadataProgram.program.eval (metadataInputs inputs)).getD index 0) :=
  meaning_extends metadata.2 finalized.2 (extends_trans _ _ _ (WordInline.builder_extends _ _ _)
    (WordSequence.all_extends finalExpressions geometry.2)) inputs _ _ (metadata_value inputs index bound)

theorem digest_at_end (inputs : Nat → Word) (index : Nat) (bound : index<8) :
    Meaning finalized.2 inputs (digestRegister index) ((DigestWords.program.eval (digestInputs inputs)).getD index 0) :=
  meaning_extends digested.2 finalized.2 (extends_trans _ _ _ (WordInline.builder_extends _ _ _)
    (extends_trans _ _ _ (WordInline.builder_extends _ _ _) (WordSequence.all_extends finalExpressions geometry.2)))
    inputs _ _ (digest_value inputs index bound)

theorem original_at_end (inputs : Nat → Word) (index : Nat) (bound : index<43) :
    finalized.2.values inputs index=inputs index :=
  extends_values initial finalized.2 (extends_trans _ _ _ (WordInline.builder_extends _ _ _)
    (extends_trans _ _ _ (WordInline.builder_extends _ _ _) (extends_trans _ _ _
      (WordInline.builder_extends _ _ _) (WordSequence.all_extends finalExpressions geometry.2)))) inputs index bound

theorem final_first (inputs : Nat → Word) : Meaning finalized.2 inputs (finalized.1.getD 0 0) 4 :=
  WordSequenceOutputs.exact_output geometry.2 finalExpressions final_bounded inputs 0 (by decide)

theorem final_flag (inputs : Nat → Word) :
    Meaning finalized.2 inputs (finalized.1.getD 1 0) (WordEquality.equalWord (inputs 0) 3) := by
  have value:=WordSequenceOutputs.exact_output geometry.2 finalExpressions final_bounded inputs 1 (by decide)
  change Meaning finalized.2 inputs (finalized.1.getD 1 0) (WordEquality.equalWord (geometry.2.values inputs 0) 3) at value
  have original : geometry.2.values inputs 0=inputs 0 :=
    WordIR.run_keeps_prefix geometry.2.operations geometry.2.inputCount inputs 0 (by rw [geometry_input_count];decide)
  rw [original] at value
  exact value

def stateWord (inputs : Nat → Word) (index : Nat) : Word :=
  if index=0 then 4
  else if index=2 then (PathCounterProgram.program.eval (geometryInputs inputs)).getD 0 0
  else if 11≤index ∧ index<19 then (DigestWords.program.eval (digestInputs inputs)).getD (index-11) 0
  else if index=27 then (ParentMetadataProgram.program.eval (metadataInputs inputs)).getD 0 0
  else if index=28 then (ParentMetadataProgram.program.eval (metadataInputs inputs)).getD 1 0
  else if index=31 then (ParentMetadataProgram.program.eval (metadataInputs inputs)).getD 3 0
  else if index=33 then (ParentMetadataProgram.program.eval (metadataInputs inputs)).getD 4 0
  else inputs index

def guardWords (inputs : Nat → Word) : List Word :=
  [(ParentMetadataProgram.program.eval (metadataInputs inputs)).getD 2 0,
   (ParentMetadataProgram.program.eval (metadataInputs inputs)).getD 5 0,
   (ParentMetadataProgram.program.eval (metadataInputs inputs)).getD 6 0,
   (ParentMetadataProgram.program.eval (metadataInputs inputs)).getD 7 0,
   (ParentMetadataProgram.program.eval (metadataInputs inputs)).getD 8 0,
   (PathCounterProgram.program.eval (geometryInputs inputs)).getD 2 0,
   WordEquality.equalWord (inputs 0) 3]

theorem state_port_value (inputs : Nat → Word) (index : Nat) (bound : index<43) :
    finalized.2.values inputs (statePort index)=stateWord inputs index := by
  unfold statePort stateWord
  split_ifs with phase counter root low high positive covered
  · exact (final_first inputs).2
  · exact (geometry_at_end inputs 0 (by decide)).2
  · exact (digest_at_end inputs (index-11) (by omega)).2
  · exact (metadata_at_end inputs 0 (by decide)).2
  · exact (metadata_at_end inputs 1 (by decide)).2
  · exact (metadata_at_end inputs 3 (by decide)).2
  · exact (metadata_at_end inputs 4 (by decide)).2
  · exact original_at_end inputs index bound

theorem program_meaning (inputs : Nat → Word) :
    program.eval inputs=(List.range 43).map (stateWord inputs)++guardWords inputs := by
  have inputsExact : finalized.2.inputCount=43 :=
    (WordSequence.all_extends finalExpressions geometry.2).1.trans geometry_input_count
  change outputs.map (WordIR.run 43 finalized.2.operations inputs)=_
  have execution:=congrArg (fun count=>WordIR.run count finalized.2.operations inputs) inputsExact.symm
  apply (congrArg (fun values=>outputs.map values) execution).trans
  simp only [outputs,List.map_append,List.map_map,Function.comp_def]
  have stateExact : (List.range 43).map (fun index=>finalized.2.values inputs (statePort index))=
      (List.range 43).map (stateWord inputs) := by
    apply List.map_congr_left
    intro index member
    exact state_port_value inputs index (List.mem_range.mp member)
  rw [stateExact]
  apply congrArg (fun words=>(List.range 43).map (stateWord inputs)++words)
  change [finalized.2.values inputs (metadataRegister 2),finalized.2.values inputs (metadataRegister 5),
    finalized.2.values inputs (metadataRegister 6),finalized.2.values inputs (metadataRegister 7),
    finalized.2.values inputs (metadataRegister 8),finalized.2.values inputs (geometryRegister 2),
    finalized.2.values inputs (finalized.1.getD 1 0)]=guardWords inputs
  rw [(metadata_at_end inputs 2 (by decide)).2,(metadata_at_end inputs 5 (by decide)).2,
    (metadata_at_end inputs 6 (by decide)).2,(metadata_at_end inputs 7 (by decide)).2,
    (metadata_at_end inputs 8 (by decide)).2,(geometry_at_end inputs 2 (by decide)).2,(final_flag inputs).2]
  rfl

end Core033.PathFrameAdvanceMeaning
