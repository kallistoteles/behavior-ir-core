import Core033.PathRoundDispatchMeaning

namespace Core033.PathRoundDispatchPorts
open WordIR PathRoundDispatch PathRoundDispatchMeaning
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
attribute [local irreducible] WordIR.Program.eval

theorem final_state (inputs : Nat → Word) : (finalWords inputs).take 43=(List.range 43).map (nextWord inputs) := by
  exact List.take_left

theorem final_flag (inputs : Nat → Word) : (finalWords inputs).drop 43=
    [WordControl.boolWord (decide (inputs 0=1 ∨ inputs 0=2 ∨ inputs 0=3))] := by
  exact List.drop_left

theorem hash_length (inputs : Nat → Word) : (FrameHashController.program.eval inputs).length=125 := by
  simp only [Program.eval,List.length_map,FrameHashControllerGuards.output_count]

theorem advance_length (inputs : Nat → Word) : (PathFrameAdvance.program.eval inputs).length=50 := by
  simp only [Program.eval,List.length_map,PathFrameAdvanceGuards.output_count]

theorem program_meaning (inputs : Nat → Word) : program.eval inputs=
    (List.range 43).map (nextWord inputs)++
      (FrameHashController.program.eval (hashInputs inputs)).drop 43++
      (PathFrameAdvance.program.eval (advanceInputs inputs)).drop 43++
      [WordControl.boolWord (decide (inputs 0=1 ∨ inputs 0=2 ∨ inputs 0=3))] := by
  rw [PathRoundDispatchMeaning.program_meaning,expectedOutputs,final_state,final_flag]

theorem state_word (inputs : Nat → Word) (index : Nat) (bound : index<43) :
    (program.eval inputs).getD index 0=nextWord inputs index := by
  rw [program_meaning]
  simp only [PaddingStream.getD_append_cases,List.length_append,List.length_map,List.length_range,
    List.length_drop,hash_length,advance_length]
  rw [if_pos (by omega : index<43+(125-43)+(50-43)),if_pos (by omega : index<43+(125-43)),if_pos bound]
  simp only [List.getD_eq_getElem?_getD,List.getElem?_map,List.getElem?_range bound,
    Option.map_some,Option.getD_some]

theorem phase_flag (inputs : Nat → Word) : (program.eval inputs).getD 132 0=
    WordControl.boolWord (decide (inputs 0=1 ∨ inputs 0=2 ∨ inputs 0=3)) := by
  rw [program_meaning]
  simp only [PaddingStream.getD_append_cases,List.length_append,List.length_map,List.length_range,
    List.length_drop,hash_length,advance_length]
  rw [if_neg (by decide : ¬132<43+(125-43)+(50-43))]
  rfl

end Core033.PathRoundDispatchPorts
