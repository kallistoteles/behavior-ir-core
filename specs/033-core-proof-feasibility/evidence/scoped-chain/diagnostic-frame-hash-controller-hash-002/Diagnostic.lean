import Core033.FrameHashControllerBytes

namespace Core033.FrameHashControllerHash
open WordIR FrameHashController FrameHashControllerMeaning FrameHashControllerInputs
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000

theorem first_inputs (inputs : Nat → Word) (phase : inputs phasePort=1)
    (index : Nat) (bound : index<72) :
    hashInputs inputs index=PathFrameHashPipeline.firstInputs (frameInputs inputs) index := by
  have notSecond : inputs phasePort≠2 := by rw [phase];decide
  unfold PathFrameHashPipeline.firstInputs HashBlockMeaning.typedInputs
  by_cases stateWord : index<8
  · rw [if_pos stateWord,state_operand inputs index stateWord,if_neg notSecond]
  · rw [if_neg stateWord]
    have byteBound : index-8<64 := by omega
    have position : index=8+(index-8) := by omega
    rw [position,byte_operand inputs (index-8) byteBound,if_neg notSecond,Nat.add_sub_cancel_left]
    exact (FrameHashControllerBytes.first_block_byte inputs (index-8) byteBound).symm

theorem second_inputs (inputs : Nat → Word) (phase : inputs phasePort=2)
    (continuation : ∀ index,index<8 → inputs (shaPort index)=
      (SHA256.stateWords (PathFrameHashPipeline.first (frameInputs inputs)).current).getD index 0)
    (index : Nat) (bound : index<72) :
    hashInputs inputs index=PathFrameHashPipeline.secondInputs (frameInputs inputs) index := by
  unfold PathFrameHashPipeline.secondInputs HashBlockMeaning.typedInputs
  by_cases stateWord : index<8
  · rw [if_pos stateWord,state_operand inputs index stateWord,if_pos phase]
    exact continuation index stateWord
  · rw [if_neg stateWord]
    have byteBound : index-8<64 := by omega
    have position : index=8+(index-8) := by omega
    rw [position,byte_operand inputs (index-8) byteBound,if_pos phase,Nat.add_sub_cancel_left]
    exact (FrameHashControllerBytes.second_block_byte inputs (index-8) byteBound).symm

theorem first_hash (inputs : Nat → Word) (phase : inputs phasePort=1) :
    HashBlockProgram.program.eval (hashInputs inputs)=
      SHA256.stateWords (PathFrameHashPipeline.first (frameInputs inputs)).current++List.replicate 64 1 := by
  have same:=WordInline.input_congr HashBlockProgram.program HashBlockProgram.program_valid
    (hashInputs inputs) (PathFrameHashPipeline.firstInputs (frameInputs inputs)) (first_inputs inputs phase)
  exact same.trans (PathFrameHashPipeline.first_block (frameInputs inputs))

theorem second_hash (inputs : Nat → Word) (phase : inputs phasePort=2)
    (continuation : ∀ index,index<8 → inputs (shaPort index)=
      (SHA256.stateWords (PathFrameHashPipeline.first (frameInputs inputs)).current).getD index 0) :
    HashBlockProgram.program.eval (hashInputs inputs)=
      SHA256.stateWords (PathFrameHashPipeline.after (frameInputs inputs)).current++List.replicate 64 1 := by
  have same:=WordInline.input_congr HashBlockProgram.program HashBlockProgram.program_valid
    (hashInputs inputs) (PathFrameHashPipeline.secondInputs (frameInputs inputs)) (second_inputs inputs phase continuation)
  exact same.trans (PathFrameHashPipeline.second_block (frameInputs inputs))

end Core033.FrameHashControllerHash
