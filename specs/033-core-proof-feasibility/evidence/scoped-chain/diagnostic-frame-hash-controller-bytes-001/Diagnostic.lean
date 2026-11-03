import Core033.FrameHashControllerInputs

namespace Core033.FrameHashControllerBytes
open WordIR FrameHashController FrameHashControllerMeaning FrameHashControllerInputs
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000

def message (inputs : Nat → Word) := PathFrameEncoding.message (frameInputs inputs)

theorem word_prefix (inputs : Nat → Word) (index : Nat) (bound : index<115) :
    ((PathFrameProgram.program.eval (frameInputs inputs)).take 115).getD index 0=frameWord inputs index := by
  simp only [List.getD_eq_getElem?_getD,List.getElem?_take,if_pos bound,frameWord]

theorem word_range (inputs : Nat → Word) (index : Nat) (bound : index<115) :
    (frameWord inputs index).toNat<256 := by
  let words := (PathFrameProgram.program.eval (frameInputs inputs)).take 115
  have length : words.length=115 := by
    rw [PathFrameEncoding.byte_prefix,ParentBranchEncoding.byte_word_count]
  have found : words[index]?=some (words.getD index 0) := by
    rw [List.getD_eq_getElem?_getD,List.getElem?_eq_getElem (by rw [length];exact bound),Option.getD_some]
  have ranged:=PathFrameEncoding.full_byte_ranges (frameInputs inputs) _ (List.mem_of_getElem? found)
  rw [word_prefix inputs index bound] at ranged
  exact ranged

theorem message_byte (inputs : Nat → Word) (index : Nat) (bound : index<115) :
    ((message inputs).getD index 0).toNat=(frameWord inputs index).toNat := by
  have size : ((PathFrameProgram.program.eval (frameInputs inputs)).take 115).length=115 := by
    rw [PathFrameEncoding.byte_prefix,ParentBranchEncoding.byte_word_count]
  unfold message PathFrameEncoding.message
  have found : ((PathFrameProgram.program.eval (frameInputs inputs)).take 115)[index]?=
      some (((PathFrameProgram.program.eval (frameInputs inputs)).take 115).getD index 0) := by
    rw [List.getD_eq_getElem?_getD,List.getElem?_eq_getElem (by rw [size];exact bound),Option.getD_some]
  rw [List.getD_eq_getElem?_getD,List.getElem?_map,found,Option.map_some,Option.getD_some,UInt8.toNat_ofNat]
  rw [word_prefix inputs index bound,Nat.mod_eq_of_lt (word_range inputs index bound)]

theorem first_block_byte (inputs : Nat → Word) (index : Nat) (bound : index<64) :
    BlockIngress.byteInputs (PaddingStream.block (message inputs) 0) index=frameWord inputs index := by
  apply BitVec.eq_of_toNat_eq
  rw [BlockIngress.byte_inputs_nat,PaddingStream.block_lookup _ _ _ bound,←PaddingStream.byte_at_exact]
  change (PaddingStream.byteAt (message inputs) index).toNat=_
  rw [FrameHashControllerPadding.first_byte _ (PathFrameEncoding.message_size _) index bound]
  exact message_byte inputs index (by omega)

theorem second_block_byte (inputs : Nat → Word) (index : Nat) (bound : index<64) :
    BlockIngress.byteInputs (PaddingStream.block (message inputs) 1) index=
      if index<51 then frameWord inputs (64+index)
      else if index=51 then 128 else if index=62 then 3 else if index=63 then 152 else 0 := by
  apply BitVec.eq_of_toNat_eq
  rw [BlockIngress.byte_inputs_nat,PaddingStream.block_lookup _ _ _ bound,←PaddingStream.byte_at_exact]
  change (PaddingStream.byteAt (message inputs) (64+index)).toNat=_
  rw [FrameHashControllerPadding.final_byte _ (PathFrameEncoding.message_size _) index bound]
  by_cases dataByte : index<51
  · rw [if_pos dataByte,if_pos dataByte]
    exact message_byte inputs (64+index) (by omega)
  · simp only [if_neg dataByte]
    split_ifs <;> rfl

end Core033.FrameHashControllerBytes
