import Core033.WordAddressMeaning
import Core033.AddressBitsStream
import Core033.HashPipeline

namespace Core033.WordAddressNative
open WordIR

def inputs (state : SHA256.HashState) (depth : Word) (index : Nat) : Word :=
  if index<8 then (SHA256.stateWords state).getD index 0 else depth

theorem exact_native_direction (state : SHA256.HashState) (depth : Word) (bound : depth.toNat<256) :
    (WordAddressProgram.program.eval (inputs state depth)).getD 0 0=
      WordControl.boolWord (AddressBits.direction (SHA256.stateBytes state) depth.toNat) := by
  have wordIndex : depth.toNat/32<8 := by omega
  have exactBit:=WordAddressMeaning.exact_admitted_address_bit (inputs state depth) (by simpa [inputs] using bound)
  rw [AddressBitsStream.complete_native_digest_word_bit state depth.toNat bound]
  simpa only [inputs,show ¬(8:Nat)<8 by decide,if_false,if_pos wordIndex] using exactBit

theorem all_native_admission_flags (state : SHA256.HashState) (depth : Word) (bound : depth.toNat<256) :
    (WordAddressProgram.program.eval (inputs state depth)).drop 1=[1,1,1] :=
  WordAddressMeaning.all_valid_admission_flags _ (by simpa [inputs] using bound)

theorem complete_hashed_message_direction (message : Codec.Bytes) (after : HashStream.State) (count : Nat)
    (trace : HashStream.Trace (HashStream.start message) after count) (ready : HashStream.Ready after)
    (depth : Word) (bound : depth.toNat<256) :
    (WordAddressProgram.program.eval (inputs after.current depth)).getD 0 0=
      WordControl.boolWord (AddressBits.direction (SHA256.digestBytes message) depth.toNat) := by
  rw [exact_native_direction after.current depth bound,
    (HashPipeline.complete_stream_exact message after count trace ready).2]

end Core033.WordAddressNative
