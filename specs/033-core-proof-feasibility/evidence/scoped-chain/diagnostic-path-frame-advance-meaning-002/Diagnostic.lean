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
  original_output digested.2 rfl ParentMetadataProgram.program metadata_valid metadataPorts metadata_ports inputs index
    (by rw [arities.2.1];exact bound)

theorem geometry_value (inputs : Nat → Word) (index : Nat) (bound : index<5) :
    Meaning geometry.2 inputs (geometryRegister index) ((PathCounterProgram.program.eval (geometryInputs inputs)).getD index 0) :=
  original_output metadata.2 rfl PathCounterProgram.program geometry_valid geometryPorts geometry_ports inputs index
    (by rw [arities.2.2];exact bound)

theorem final_bounded : ∀ expression∈finalExpressions,expression.Bounded geometry.2.next := by
  intro expression member
  have phaseBound : 0<geometry.2.next := by
    change 0<43+_
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

end Core033.PathFrameAdvanceMeaning
