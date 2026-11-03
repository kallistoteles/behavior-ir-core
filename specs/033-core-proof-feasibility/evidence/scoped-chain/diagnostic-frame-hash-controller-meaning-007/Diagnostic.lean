import Core033.FrameHashControllerRegisters

namespace Core033.FrameHashControllerMeaning
open WordIR WordStage FrameHashController
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
attribute [local irreducible] WordInline.inline WordSequence.compileAll WordStage.compile WordStage.emit

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
