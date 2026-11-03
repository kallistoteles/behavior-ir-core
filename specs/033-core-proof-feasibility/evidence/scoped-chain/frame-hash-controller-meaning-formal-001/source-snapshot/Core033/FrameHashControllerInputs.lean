import Core033.FrameHashControllerRegisters
import Core033.FrameHashControllerControl
import Core033.FrameHashControllerPadding

namespace Core033.FrameHashControllerInputs
open WordIR WordStage FrameHashController FrameHashControllerMeaning
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
attribute [local irreducible] WordInline.inline WordSequence.compileAll WordStage.compile WordStage.emit

def frameWord (inputs : Nat → Word) (index : Nat) : Word :=
  (PathFrameProgram.program.eval (frameInputs inputs)).getD index 0

theorem original_framed_value (inputs : Nat → Word) (index : Nat) (bound : index<inputCount) :
    framed.2.values inputs index=inputs index :=
  extends_values initial framed.2 (WordInline.builder_extends _ _ _) inputs index bound

theorem state_operand (inputs : Nat → Word) (index : Nat) (bound : index<8) :
    hashInputs inputs index=if inputs phasePort=2 then inputs (shaPort index)
      else (SHA256.stateWords SHA256.initial).getD index 0 := by
  unfold hashInputs
  rw [routedExpressions,List.map_append,PaddingStream.getD_append_cases]
  simp only [List.length_map,List.length_range,if_pos bound,List.map_map,Function.comp_def,
    List.getD_eq_getElem?_getD,List.getElem?_map,List.getElem?_range bound,Option.map_some,Option.getD_some]
  rw [FrameHashControllerControl.state_selection,original_framed_value inputs phasePort (by decide),
    original_framed_value inputs (shaPort index) (by unfold shaPort inputCount;omega)]
  simp only [List.getD_eq_getElem?_getD]

theorem byte_operand (inputs : Nat → Word) (index : Nat) (bound : index<64) :
    hashInputs inputs (8+index)=if inputs phasePort=2 then
      (if index<51 then frameWord inputs (64+index)
       else if index=51 then 128 else if index=62 then 3 else if index=63 then 152 else 0)
      else frameWord inputs index := by
  unfold hashInputs
  rw [routedExpressions,List.map_append,PaddingStream.getD_append_cases]
  simp only [List.length_map,List.length_range,if_neg (by omega : ¬8+index<8),Nat.add_sub_cancel_left,
    List.map_map,Function.comp_def,List.getD_eq_getElem?_getD,List.getElem?_map,
    List.getElem?_range bound,Option.map_some,Option.getD_some]
  rw [FrameHashControllerControl.byte_selection,original_framed_value inputs phasePort (by decide),
    (frame_value inputs index (by omega)).2]
  by_cases finalBlock : inputs phasePort=2
  · rw [if_pos finalBlock,if_pos finalBlock]
    unfold finalByteExpression
    split_ifs with message
    · exact (frame_value inputs (64+index) (by omega)).2
    all_goals rfl
  · rw [if_neg finalBlock,if_neg finalBlock]
    rfl

end Core033.FrameHashControllerInputs
