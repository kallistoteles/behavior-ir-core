import Core033.FrameHashControllerRegisters

namespace Core033.FrameHashControllerMeaning
open WordIR WordStage FrameHashController
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
attribute [local irreducible] WordInline.inline WordSequence.compileAll WordStage.compile WordStage.emit

#eval (IO.eprintln "BEGIN APPEND CONGR" : IO Unit)

theorem append_congr {a b c d : List Word} (first : a=b) (second : c=d) : a++c=b++d := by
  cases first
  cases second
  rfl

#eval (IO.eprintln "BEGIN FRAME FLAGS" : IO Unit)

theorem frame_flag_values (inputs : Nat → Word) :
    ((List.range 17).map (fun index=>frameRegister (115+index))).map (finalized.2.values inputs)=
      (List.range 17).map (fun index=>(PathFrameProgram.program.eval (frameInputs inputs)).getD (115+index) 0) := by
  rw [List.map_map]
  apply List.map_congr_left
  intro index member
  exact (frame_kept_at_end inputs (115+index) (by have bound:=List.mem_range.mp member;omega)).2

#eval (IO.eprintln "BEGIN FRAME INPUTS" : IO Unit)

theorem frame_input_values (inputs : Nat → Word) :
    ((List.range 34).map framePort).map (finalized.2.values inputs)=
      (List.range 34).map (frameInputs inputs) := by
  rw [List.map_map]
  apply List.map_congr_left
  intro index member
  exact original_kept_at_end inputs (framePort index)
    (by have bound:=List.mem_range.mp member;unfold framePort inputCount;omega)

#eval (IO.eprintln "BEGIN COMPLETE PROGRAM" : IO Unit)

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
  simp only [outputs,List.map_append,←List.map_take,←List.map_drop]
  have phaseParts:=phase_result inputs
  have hashParts:=hash_kept_at_end inputs
  have headPhase:=congrArg (fun words : List Word=>words.take 1) phaseParts
  have tailPhase:=congrArg (fun words : List Word=>words.drop 1) phaseParts
  have headHash:=congrArg (fun words : List Word=>words.take 8) hashParts
  have tailHash:=congrArg (fun words : List Word=>words.drop 8) hashParts
  dsimp only at headPhase tailPhase headHash tailHash
  simp only [List.take_cons,List.take_nil,List.take_zero] at headPhase
  simp only [List.drop_cons,List.drop_zero] at tailPhase
  exact (append_congr
    (append_congr
      (append_congr
        (append_congr
          (append_congr headPhase (frame_input_values inputs)) headHash)
        (frame_flag_values inputs)) tailHash) tailPhase)

#eval (IO.eprintln "END COMPLETE PROGRAM" : IO Unit)

end Core033.FrameHashControllerMeaning
