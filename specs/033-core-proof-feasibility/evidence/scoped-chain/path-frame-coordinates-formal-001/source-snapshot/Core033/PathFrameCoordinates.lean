import Core033.PathFrameMeaning
import Core033.WordAddressNative

namespace Core033.PathFrameCoordinates
open WordIR PathFrameProgram PathFrameMeaning

def keyState (inputs : Nat → Word) : SHA256.HashState :=
  ⟨inputs 2,inputs 3,inputs 4,inputs 5,inputs 6,inputs 7,inputs 8,inputs 9⟩
def direction (inputs : Nat → Word) : Bool :=
  AddressBits.direction (SHA256.stateBytes (keyState inputs)) (PathCounterProgram.depth (inputs 1)).toNat

theorem key_word (inputs : Nat → Word) (index : Nat) (bound : index<8) :
    (SHA256.stateWords (keyState inputs)).getD index 0=inputs (2+index) := by
  have cases : index=0 ∨ index=1 ∨ index=2 ∨ index=3 ∨ index=4 ∨ index=5 ∨ index=6 ∨ index=7 := by omega
  rcases cases with rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl <;> rfl

theorem address_inputs (inputs : Nat → Word) :
    addressInputs inputs=WordAddressNative.inputs (keyState inputs) (PathCounterProgram.depth (inputs 1)) := by
  funext index
  by_cases original : index<8
  · simp only [addressInputs,WordAddressNative.inputs,if_pos original]
    exact (key_word inputs index original).symm
  · simp only [addressInputs,WordAddressNative.inputs,if_neg original]

theorem depth_bounded (inputs : Nat → Word) : (PathCounterProgram.depth (inputs 1)).toNat<256 := by
  rw [PathCounterProgram.depth_exact]
  omega

theorem direction_word (inputs : Nat → Word) :
    (WordAddressProgram.program.eval (addressInputs inputs)).getD 0 0=WordControl.boolWord (direction inputs) := by
  rw [address_inputs]
  exact WordAddressNative.exact_native_direction _ _ (depth_bounded inputs)

theorem native_active_direction (inputs : Nat → Word) (active : (inputs 1).toNat<256) :
    direction inputs=AddressBits.direction (SHA256.stateBytes (keyState inputs)) (255-(inputs 1).toNat) := by
  rw [direction,(PathCounterProgram.branch_coordinates (inputs 1) active).2.1]

theorem original_message_direction (inputs : Nat → Word) (message : Codec.Bytes) (after : HashStream.State) (count : Nat)
    (trace : HashStream.Trace (HashStream.start message) after count) (ready : HashStream.Ready after)
    (keyStateExact : keyState inputs=after.current) (active : (inputs 1).toNat<256) :
    direction inputs=AddressBits.direction (SHA256.digestBytes message) (255-(inputs 1).toNat) := by
  rw [native_active_direction inputs active,keyStateExact,(HashPipeline.complete_stream_exact message after count trace ready).2]

theorem canonical_swap (inputs : Nat → Word) : WordSwapProgram.program.eval (swapInputs inputs)=
    (List.range 12).map (fun index=>if direction inputs then swapInputs inputs (13+index) else swapInputs inputs (1+index))++
    (List.range 12).map (fun index=>if direction inputs then swapInputs inputs (1+index) else swapInputs inputs (13+index))++[1] :=
  WordSwapProgram.canonical_direction _ _ (direction_word inputs)

end Core033.PathFrameCoordinates
