import Core033.FrameHashController
import Core033.WordSequenceOutputs

namespace Core033.FrameHashControllerMeaning
open WordIR WordStage FrameHashController
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
attribute [local irreducible] WordInline.inline WordSequence.compileAll WordStage.compile WordStage.emit

def frameInputs (inputs : Nat → Word) (index : Nat) : Word := inputs (framePort index)
def hashInputs (inputs : Nat → Word) (index : Nat) : Word :=
  (routedExpressions.map (fun expression=>expression.eval (framed.2.values inputs))).getD index 0

theorem frame_value (inputs : Nat → Word) (index : Nat) (bound : index<133) :
    Meaning framed.2 inputs (frameRegister index)
      ((PathFrameProgram.program.eval (frameInputs inputs)).getD index 0) :=
  WordInlineOutputs.exact_output initial PathFrameProgram.program PathFrameProgram.program_valid
    framePort frame_ports inputs index (by rw [PathFrameProgram.output_count];exact bound)

theorem routed_arity : routedExpressions.length=72 := by
  simp only [routedExpressions,List.length_append,List.length_map,List.length_range]

theorem hash_port_value (inputs : Nat → Word) (index : Nat) (bound : index<72) :
    Meaning routed.2 inputs (hashPort index) (hashInputs inputs index) :=
  WordSequenceOutputs.exact_output framed.2 routedExpressions routed_bounded inputs index
    (by rw [routed_arity];exact bound)

theorem hash_ports : ∀ index,index<HashBlockProgram.program.inputCount → hashPort index<routed.2.next := by
  intro index bound
  exact (hash_port_value (fun _=>0) index bound).1

theorem hash_meaning (inputs : Nat → Word) :
    hashed.1.map (hashed.2.values inputs)=HashBlockProgram.program.eval (hashInputs inputs) := by
  have value:=WordInline.complete_meaning routed.2 HashBlockProgram.program
    HashBlockProgram.program_valid hashPort hash_ports inputs
  have same:=WordInline.input_congr HashBlockProgram.program HashBlockProgram.program_valid
    (fun index=>routed.2.values inputs (hashPort index)) (hashInputs inputs)
    (by intro index bound;exact (hash_port_value inputs index bound).2)
  exact value.trans same

theorem phase_input_bound : phasePort<hashed.2.next :=
  Nat.lt_of_lt_of_le (original_bound phasePort (by decide))
    (extends_next framed.2 hashed.2 (extends_trans _ _ _
      (WordSequence.all_extends routedExpressions framed.2) (WordInline.builder_extends _ _ _)))

theorem final_bounded : ∀ expression∈[phaseExpression,admissionExpression],expression.Bounded hashed.2.next := by
  intro expression member
  simp only [List.mem_cons,List.not_mem_nil,or_false] at member
  rcases member with rfl|rfl
  · exact select_bounded _ _ _ phase_input_bound trivial trivial
  · simp only [admissionExpression,second,WordEquality.expression,ControlPrimitives.zero,
      ControlPrimitives.less,ControlPrimitives.carry,Expr.Bounded,phase_input_bound]
    trivial

theorem phase_result (inputs : Nat → Word) :
    finalized.1.map (finalized.2.values inputs)=
      [phaseExpression.eval (hashed.2.values inputs),admissionExpression.eval (hashed.2.values inputs)] :=
  (WordSequence.all_sound [phaseExpression,admissionExpression] hashed.2 inputs final_bounded).2

theorem frame_kept_after_hash (inputs : Nat → Word) (index : Nat) (bound : index<133) :
    Meaning hashed.2 inputs (frameRegister index)
      ((PathFrameProgram.program.eval (frameInputs inputs)).getD index 0) :=
  meaning_extends framed.2 hashed.2 (extends_trans _ _ _
    (WordSequence.all_extends routedExpressions framed.2) (WordInline.builder_extends _ _ _))
    inputs _ _ (frame_value inputs index bound)

theorem original_kept_after_hash (inputs : Nat → Word) (index : Nat) (bound : index<inputCount) :
    hashed.2.values inputs index=inputs index :=
  extends_values initial hashed.2 (extends_trans _ _ _ (WordInline.builder_extends _ _ _)
    (extends_trans _ _ _ (WordSequence.all_extends routedExpressions framed.2) (WordInline.builder_extends _ _ _))) inputs index bound

theorem original_kept_at_end (inputs : Nat → Word) (index : Nat) (bound : index<inputCount) :
    finalized.2.values inputs index=inputs index := by
  rw [extends_values hashed.2 finalized.2
    (WordSequence.all_extends [phaseExpression,admissionExpression] hashed.2) inputs index
    (Nat.lt_of_lt_of_le bound (extends_next initial hashed.2 (extends_trans _ _ _
      (WordInline.builder_extends _ _ _) (extends_trans _ _ _
        (WordSequence.all_extends routedExpressions framed.2) (WordInline.builder_extends _ _ _)))))]
  exact original_kept_after_hash inputs index bound

theorem frame_kept_at_end (inputs : Nat → Word) (index : Nat) (bound : index<133) :
    Meaning finalized.2 inputs (frameRegister index)
      ((PathFrameProgram.program.eval (frameInputs inputs)).getD index 0) :=
  meaning_extends hashed.2 finalized.2
    (WordSequence.all_extends [phaseExpression,admissionExpression] hashed.2)
    inputs _ _ (frame_kept_after_hash inputs index bound)

theorem hash_kept_at_end (inputs : Nat → Word) :
    hashed.1.map (finalized.2.values inputs)=HashBlockProgram.program.eval (hashInputs inputs) := by
  rw [←hash_meaning inputs]
  apply List.map_congr_left
  intro register member
  exact extends_values hashed.2 finalized.2
    (WordSequence.all_extends [phaseExpression,admissionExpression] hashed.2) inputs register
    (WordInline.output_bounds routed.2 HashBlockProgram.program HashBlockProgram.program_valid hashPort hash_ports register member)

theorem frame_flag_values (inputs : Nat → Word) :
    ((List.range 17).map (fun index=>frameRegister (115+index))).map (finalized.2.values inputs)=
      (List.range 17).map (fun index=>(PathFrameProgram.program.eval (frameInputs inputs)).getD (115+index) 0) := by
  rw [List.map_map]
  apply List.map_congr_left
  intro index member
  exact (frame_kept_at_end inputs (115+index) (by have bound:=List.mem_range.mp member;omega)).2

theorem frame_input_values (inputs : Nat → Word) :
    ((List.range 34).map framePort).map (finalized.2.values inputs)=
      (List.range 34).map (frameInputs inputs) := by
  rw [List.map_map]
  apply List.map_congr_left
  intro index member
  exact original_kept_at_end inputs (framePort index)
    (by have bound:=List.mem_range.mp member;unfold framePort inputCount;omega)

theorem program_meaning (inputs : Nat → Word) : program.eval inputs=
    [phaseExpression.eval (hashed.2.values inputs)]++(List.range 34).map (frameInputs inputs)++
    (HashBlockProgram.program.eval (hashInputs inputs)).take 8++
    (List.range 17).map (fun index=>(PathFrameProgram.program.eval (frameInputs inputs)).getD (115+index) 0)++
    (HashBlockProgram.program.eval (hashInputs inputs)).drop 8++
    [admissionExpression.eval (hashed.2.values inputs)] := by
  have inputsExact : finalized.2.inputCount=inputCount :=
    (extends_trans initial hashed.2 finalized.2
      (extends_trans _ _ _ (WordInline.builder_extends _ _ _)
        (extends_trans _ _ _ (WordSequence.all_extends routedExpressions framed.2) (WordInline.builder_extends _ _ _)))
      (WordSequence.all_extends [phaseExpression,admissionExpression] hashed.2)).1
  change outputs.map (WordIR.run inputCount finalized.2.operations inputs)=_
  have execution:=congrArg (fun count=>WordIR.run count finalized.2.operations inputs) inputsExact.symm
  apply (congrArg (fun values=>outputs.map values) execution).trans
  simp only [outputs,List.map_append,←List.map_take,←List.map_drop,
    phase_result,hash_kept_at_end,frame_input_values,frame_flag_values,
    List.take_cons,List.take_nil,List.drop_cons,List.drop_nil,List.take_zero,List.drop_zero]

end Core033.FrameHashControllerMeaning
