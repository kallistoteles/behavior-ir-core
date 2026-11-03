import Core033.FrameHashControllerMeaning
import Core033.FrameHashControllerControl

namespace Core033.FrameHashControllerState
open WordIR FrameHashController FrameHashControllerMeaning
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
attribute [local irreducible] WordInline.inline WordSequence.compileAll WordStage.compile WordStage.emit

def next (inputs : Nat → Word) (index : Nat) : Word := (program.eval inputs).getD index 0

theorem hash_length (inputs : Nat → Word) : (HashBlockProgram.program.eval (hashInputs inputs)).length=72 := by
  simp only [WordIR.Program.eval,List.length_map,HashBlockGuards.output_count]

theorem hash_take_length (inputs : Nat → Word) : ((HashBlockProgram.program.eval (hashInputs inputs)).take 8).length=8 := by
  rw [List.length_take,hash_length]

theorem next_phase (inputs : Nat → Word) : next inputs 0=if inputs phasePort=2 then 3 else 2 := by
  rw [next,program_meaning]
  simp only [PaddingStream.getD_append_cases,List.length_append,List.length_cons,List.length_nil,
    List.length_map,List.length_range,List.length_take,hash_length]
  rw [if_pos (by decide : 0<1+34+8+17+64),if_pos (by decide : 0<1+34+8+17),
    if_pos (by decide : 0<1+34+8),if_pos (by decide : 0<1+34),if_pos (by decide : 0<1)]
  change phaseExpression.eval (hashed.2.values inputs)=_
  rw [FrameHashControllerControl.next_phase,original_kept_after_hash inputs phasePort (by decide)]

theorem preserved_frame (inputs : Nat → Word) (index : Nat) (bound : index<34) :
    next inputs (framePort index)=inputs (framePort index) := by
  rw [next,program_meaning]
  simp only [PaddingStream.getD_append_cases,List.length_append,List.length_cons,List.length_nil,
    List.length_map,List.length_range,List.length_take,hash_length]
  unfold framePort
  rw [if_pos (by omega : 1+index<1+34+8+17+64),if_pos (by omega : 1+index<1+34+8+17),
    if_pos (by omega : 1+index<1+34+8),if_pos (by omega : 1+index<1+34),if_neg (by omega : ¬1+index<1)]
  simp only [Nat.add_sub_cancel_left,List.getD_eq_getElem?_getD,List.getElem?_map,
    List.getElem?_range bound,Option.map_some,Option.getD_some,frameInputs,framePort]

theorem next_sha (inputs : Nat → Word) (index : Nat) (bound : index<8) :
    next inputs (shaPort index)=(HashBlockProgram.program.eval (hashInputs inputs)).getD index 0 := by
  rw [next,program_meaning]
  simp only [PaddingStream.getD_append_cases,List.length_append,List.length_cons,List.length_nil,
    List.length_map,List.length_range,List.length_take,hash_length]
  unfold shaPort
  rw [if_pos (by omega : 35+index<1+34+8+17+64),if_pos (by omega : 35+index<1+34+8+17),
    if_pos (by omega : 35+index<1+34+8),if_neg (by omega : ¬35+index<1+34)]
  change ((HashBlockProgram.program.eval (hashInputs inputs)).take 8).getD index 0=_
  simp only [List.getD_eq_getElem?_getD,List.getElem?_take,if_pos bound]

end Core033.FrameHashControllerState
