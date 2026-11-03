import Core033.PathFrameHashPipeline

namespace Core033.FrameHashControllerPadding
open WordIR
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000

theorem first_byte (message : Codec.Bytes) (size : message.length=115)
    (index : Nat) (bound : index<64) :
    PaddingStream.byteAt message index=message.getD index 0 := by
  rw [PaddingStream.byteAt,if_pos (by omega)]

theorem final_byte (message : Codec.Bytes) (size : message.length=115)
    (index : Nat) (bound : index<64) :
    PaddingStream.byteAt message (64+index)=
      if index<51 then message.getD (64+index) 0
      else if index=51 then 128 else if index=62 then 3 else if index=63 then 152 else 0 := by
  by_cases dataByte : index<51
  · rw [if_pos dataByte,PaddingStream.byteAt,if_pos (by omega)]
  · rw [if_neg dataByte]
    have cases : index=51 ∨ index=52 ∨ index=53 ∨ index=54 ∨ index=55 ∨ index=56 ∨
        index=57 ∨ index=58 ∨ index=59 ∨ index=60 ∨ index=61 ∨ index=62 ∨ index=63 := by omega
    rcases cases with rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl
    all_goals simp only [PaddingStream.byteAt,PaddingStream.dataEnd,size]
    all_goals rfl

end Core033.FrameHashControllerPadding
