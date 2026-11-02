import Core033.GuardMatrix
import Core033.WordMatrixOutputs
import Core033.PaddingByteProgram

namespace Core033.PaddingByteGuards
open R1CS
abbrev program := PaddingByteProgram.program

def wires : List Nat := [WordMatrix.outputBase program+1,WordMatrix.outputBase program+2,WordMatrix.outputBase program+3]
def compile (p : Nat) : Matrix := GuardMatrix.force (WordMatrix.compile p program) wires

theorem output_count : program.outputs.length=4 := by decide

theorem accepted_word {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valid : program.Valid) (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : (compile p).satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F))
    (position : Nat) (selected : position=1 ∨ position=2 ∨ position=3) :
    (((program.eval inputs).getD position 0).toNat : F)=1 := by
  have forced:=(GuardMatrix.satisfaction_exact (WordMatrix.compile p program) wires rfl valuation).mp accepted
  have bound : position<program.outputs.length := by rw [output_count];omega
  have evaluated:=WordMatrixOutputs.evaluated_output large program valid valuation inputs forced.1 inputValues position bound
  have member : WordMatrix.outputBase program+position∈wires := by
    rcases selected with rfl|rfl|rfl <;> simp [wires]
  exact evaluated.symm.trans (forced.2 _ member)

theorem accepted_guards {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valid : program.Valid) (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : (compile p).satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    (inputs 0).toNat≤1073741824 ∧
    (inputs 1).toNat<(PaddingWords.totalSize (inputs 0)).toNat ∧ (inputs 2).toNat<256 := by
  have profile:=accepted_word large valid valuation inputs accepted inputValues 1 (by simp)
  have position:=accepted_word large valid valuation inputs accepted inputValues 2 (by simp)
  have raw:=accepted_word large valid valuation inputs accepted inputValues 3 (by simp)
  rw [PaddingByteProgram.program_meaning,PaddingByteProgram.profile_guard_exact] at profile
  rw [PaddingByteProgram.program_meaning,PaddingByteProgram.position_guard_exact] at position
  rw [PaddingByteProgram.program_meaning,PaddingByteProgram.byte_guard_exact] at raw
  exact ⟨of_decide_eq_true (GuardMatrix.bool_word_forced_true _ profile),
    of_decide_eq_true (GuardMatrix.bool_word_forced_true _ position),
    of_decide_eq_true (GuardMatrix.bool_word_forced_true _ raw)⟩

theorem exact_accepted_byte {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valid : program.Valid) (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : (compile p).satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F))
    (bytes : SHA256.Bytes) (represented : (inputs 0).toNat=bytes.length)
    (rawExact : (inputs 1).toNat<(inputs 0).toNat → inputs 2=PaddingByte.encodeByte (bytes.getD (inputs 1).toNat 0)) :
    valuation (WordMatrix.outputBase program)=
      ((PaddingByte.encodeByte (PaddingStream.byteAt bytes (inputs 1).toNat)).toNat : F) := by
  have guards:=accepted_guards large valid valuation inputs accepted inputValues
  have original:=((GuardMatrix.satisfaction_exact (WordMatrix.compile p program) wires rfl valuation).mp accepted).1
  have result:=WordMatrixOutputs.evaluated_output large program valid valuation inputs original inputValues 0 (by rw [output_count];decide)
  rw [PaddingByteProgram.exact_stream_byte bytes inputs represented guards.1 guards.2.1 rawExact] at result
  simpa only [Nat.add_zero] using result

end Core033.PaddingByteGuards
