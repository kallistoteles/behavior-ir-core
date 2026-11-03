import Core033.FrameHashControllerRegisters

namespace Core033.FrameHashControllerMeaning
open WordIR WordStage FrameHashController
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
attribute [local irreducible] WordInline.inline WordSequence.compileAll WordStage.compile WordStage.emit

theorem append_congr {a b c d : List Word} (first : a=b) (second : c=d) : a++c=b++d := by
  cases first
  cases second
  rfl

theorem frame_flag_values (inputs : Nat → Word) :
    ((List.range 17).map (fun index=>frameRegister (115+index))).map (finalized.2.values inputs)=
      (List.range 17).map (fun index=>(PathFrameProgram.program.eval (frameInputs inputs)).getD (115+index) 0) := by
  simp only [List.map_map,Function.comp_def]
  apply List.map_congr_left
  intro index member
  exact (frame_kept_at_end inputs (115+index) (by have bound:=List.mem_range.mp member;omega)).2

theorem frame_input_values (inputs : Nat → Word) :
    ((List.range 34).map framePort).map (finalized.2.values inputs)=
      (List.range 34).map (frameInputs inputs) := by
  simp only [List.map_map,Function.comp_def]
  apply List.map_congr_left
  intro index member
  exact original_kept_at_end inputs (framePort index)
    (by have bound:=List.mem_range.mp member;unfold framePort inputCount;omega)


end Core033.FrameHashControllerMeaning
