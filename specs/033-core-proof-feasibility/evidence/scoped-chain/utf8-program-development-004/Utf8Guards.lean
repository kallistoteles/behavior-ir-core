import Core033.GuardMatrix
import Core033.WordMatrixOutputs
import Core033.Utf8Program

namespace Core033.Utf8Guards
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 4000000
open R1CS
abbrev program := Utf8Program.program

def wires : List Nat := [WordMatrix.outputBase program+5]
def compile (p : Nat) : Matrix := GuardMatrix.force (WordMatrix.compile p program) wires

theorem output_count : program.outputs.length=6 := by decide

theorem guard_wire_bounds (p : Nat) : ∀ wire∈wires,
    0<wire ∧ wire<(WordMatrix.compile p program).variableCount := by
  intro wire member
  simp only [wires,List.mem_singleton] at member
  subst wire
  have positive : 0<WordMatrix.outputBase program := by
    unfold WordMatrix.outputBase
    omega
  constructor
  · omega
  · change WordMatrix.outputBase program+5<WordMatrix.outputBase program+program.outputs.length
    rw [output_count]
    omega

theorem well_formed (p : Nat) (large : 2^64<p) (fieldBound : p<2^256)
    (limit : (WordMatrix.compile p program).variableCount≤16777216) (valid : program.Valid) :
    (compile p).wellFormed=true :=
  GuardMatrix.well_formed (WordMatrix.compile p program) wires
    (WordMatrixShape.complete_well_formedness p program large fieldBound limit valid)
    large (guard_wire_bounds p)

theorem accepted_scalar {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valid : program.Valid) (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : (compile p).satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    Utf8Encoding.Scalar (inputs 0) := by
  have forced:=(GuardMatrix.satisfaction_exact (WordMatrix.compile p program) wires rfl valuation).mp accepted
  have evaluated:=WordMatrixOutputs.evaluated_output large program valid valuation inputs
    forced.1 inputValues 5 (by rw [output_count];decide)
  have guardOne : valuation (WordMatrix.outputBase program+5)=1 := forced.2 _ (by simp [wires])
  have wordOne:=evaluated.symm.trans guardOne
  rw [Utf8Program.exact_scalar_guard] at wordOne
  exact of_decide_eq_true (GuardMatrix.bool_word_forced_true _ wordOne)

theorem accepted_encoding {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valid : program.Valid) (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : (compile p).satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    ∃ char,Utf8Program.emittedBytes (program.eval inputs)=String.utf8EncodeChar char := by
  have scalar:=accepted_scalar large valid valuation inputs accepted inputValues
  refine ⟨Utf8Encoding.toChar (inputs 0) scalar,?_⟩
  rw [Utf8Program.exact_encoding]
  exact Utf8Encoding.scalar_encoding_exact _ scalar

end Core033.Utf8Guards
