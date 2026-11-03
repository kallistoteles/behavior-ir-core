import Core033.HashBlockGuards

/- Accepted full-word ports determine exactly the original bytes and all eight
compression outputs. No typed-byte premise or silent truncation is assumed. -/
namespace Core033.HashBlockRaw
open WordIR
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000

def state (inputs : Nat → Word) : SHA256.HashState :=
  ⟨inputs 0,inputs 1,inputs 2,inputs 3,inputs 4,inputs 5,inputs 6,inputs 7⟩
def bytes (inputs : Nat → Word) : SHA256.Bytes :=
  (List.range 64).map (fun index=>UInt8.ofNat (inputs (8+index)).toNat)

theorem byte_count (inputs : Nat → Word) : (bytes inputs).length=64 := by
  simp only [bytes,List.length_map,List.length_range]

theorem state_word (inputs : Nat → Word) (index : Nat) (bound : index<8) :
    (SHA256.stateWords (state inputs)).getD index 0=inputs index := by
  have cases : index=0 ∨ index=1 ∨ index=2 ∨ index=3 ∨ index=4 ∨ index=5 ∨ index=6 ∨ index=7 := by omega
  rcases cases with rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl <;> rfl

theorem exact_byte (inputs : Nat → Word)
    (admitted : ∀ index,index<64 → (inputs (8+index)).toNat<256)
    (index : Nat) (bound : index<64) : BlockIngress.byteInputs (bytes inputs) index=inputs (8+index) := by
  apply BitVec.eq_of_toNat_eq
  rw [BlockIngress.byte_inputs_nat]
  simp only [bytes,List.getD_eq_getElem?_getD,List.getElem?_map,List.getElem?_range bound,
    Option.map_some,Option.getD_some,UInt8.toNat_ofNat]
  exact Nat.mod_eq_of_lt (admitted index bound)

theorem exact_typed_input (inputs : Nat → Word)
    (admitted : ∀ index,index<64 → (inputs (8+index)).toNat<256)
    (index : Nat) (bound : index<72) :
    HashBlockMeaning.typedInputs (state inputs) (bytes inputs) index=inputs index := by
  unfold HashBlockMeaning.typedInputs
  by_cases first : index<8
  · rw [if_pos first]
    exact state_word inputs index first
  · rw [if_neg first,exact_byte inputs admitted (index-8) (by omega)]
    rw [show 8+(index-8)=index by omega]

theorem admitted_program (inputs : Nat → Word)
    (admitted : ∀ index,index<64 → (inputs (8+index)).toNat<256) :
    HashBlockProgram.program.eval inputs=
      SHA256.stateWords (SHA256.compress (state inputs) (SHA256.parseBlock (bytes inputs)))++List.replicate 64 1 := by
  have same:=WordInline.input_congr HashBlockProgram.program HashBlockProgram.program_valid inputs
    (HashBlockMeaning.typedInputs (state inputs) (bytes inputs))
    (by intro index bound;exact (exact_typed_input inputs admitted index bound).symm)
  rw [same,HashBlockMeaning.complete_typed_block]

theorem accepted_program {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valuation : Nat → F) (inputs : Nat → Word)
    (accepted : (HashBlockGuards.compile p).satisfies valuation)
    (inputValues : ∀ index,index<72 → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    HashBlockProgram.program.eval inputs=
      SHA256.stateWords (SHA256.compress (state inputs) (SHA256.parseBlock (bytes inputs)))++List.replicate 64 1 :=
  admitted_program inputs (HashBlockGuards.accepted_bytes large valuation inputs accepted inputValues)

theorem accepted_output {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valuation : Nat → F) (inputs : Nat → Word)
    (accepted : (HashBlockGuards.compile p).satisfies valuation)
    (inputValues : ∀ index,index<72 → valuation (WordField.packed index)=((inputs index).toNat : F))
    (index : Nat) (bound : index<8) :
    valuation (WordMatrix.outputBase HashBlockProgram.program+index)=
      (((SHA256.stateWords (SHA256.compress (state inputs) (SHA256.parseBlock (bytes inputs)))).getD index 0).toNat : F) := by
  have base:=(GuardMatrix.satisfaction_exact (WordMatrix.compile p HashBlockProgram.program)
    HashBlockGuards.wires rfl valuation).mp accepted
  have evaluated:=WordMatrixOutputs.evaluated_output large HashBlockProgram.program HashBlockProgram.program_valid
    valuation inputs base.1 inputValues index (by rw [HashBlockGuards.output_count];omega)
  rw [accepted_program large valuation inputs accepted inputValues,PaddingStream.getD_append_cases] at evaluated
  have stateLength : (SHA256.stateWords (SHA256.compress (state inputs) (SHA256.parseBlock (bytes inputs)))).length=8 := by
    simp only [SHA256.stateWords,List.length_cons,List.length_nil]
  rw [stateLength,if_pos bound] at evaluated
  exact evaluated

end Core033.HashBlockRaw
