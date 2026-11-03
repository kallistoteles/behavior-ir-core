import Core033.HashBlockMeaning
import Core033.GuardMatrix
import Core033.WordMatrixOutputs

namespace Core033.HashBlockGuards
open WordIR
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
abbrev program := HashBlockProgram.program

def wires : List Nat := (List.range 64).map (fun position=>WordMatrix.outputBase program+(8+position))
def compile (p : Nat) : R1CS.Matrix := GuardMatrix.force (WordMatrix.compile p program) wires

theorem output_count : program.outputs.length=72 := by
  simp only [program,HashBlockProgram.program,HashBlockProgram.outputs,List.length_append,List.length_map,List.length_range]

theorem guard_wire_bounds (p : Nat) : ∀ wire∈wires,
    0<wire ∧ wire<(WordMatrix.compile p program).variableCount := by
  intro wire member
  obtain ⟨position,inRange,same⟩:=List.mem_map.mp member
  have bound:=List.mem_range.mp inRange
  subst wire
  have positive : 0<WordMatrix.outputBase program := by unfold WordMatrix.outputBase;omega
  constructor
  · omega
  · change WordMatrix.outputBase program+(8+position)<WordMatrix.outputBase program+program.outputs.length
    rw [output_count]
    omega

theorem accepted_bytes {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valuation : Nat → F) (inputs : Nat → Word)
    (accepted : (compile p).satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    ∀ index,index<64 → (inputs (8+index)).toNat<256 := by
  have forced:=(GuardMatrix.satisfaction_exact (WordMatrix.compile p program) wires rfl valuation).mp accepted
  intro index bound
  have evaluated:=WordMatrixOutputs.evaluated_output large program HashBlockProgram.program_valid valuation inputs
    forced.1 inputValues (8+index) (by rw [output_count];omega)
  have one : valuation (WordMatrix.outputBase program+(8+index))=1 :=
    forced.2 _ (List.mem_map.mpr ⟨index,List.mem_range.mpr bound,rfl⟩)
  have wordOne:=evaluated.symm.trans one
  rw [HashBlockMeaning.admission_output inputs index bound,BlockIngress.byte_guard_exact] at wordOne
  exact of_decide_eq_true (GuardMatrix.bool_word_forced_true _ wordOne)

theorem typed_complete {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (state : SHA256.HashState) (bytes : SHA256.Bytes) :
    ∃ valuation : Nat → F,(compile p).satisfies valuation ∧
      ∀ index,index<program.inputCount → valuation (WordField.packed index)=
        ((HashBlockMeaning.typedInputs state bytes index).toNat : F) := by
  let inputs:=HashBlockMeaning.typedInputs state bytes
  obtain ⟨valuation,satisfied,inputValues,_⟩:=WordMatrix.matrix_complete (F:=F) large program HashBlockProgram.program_valid inputs
  refine ⟨valuation,?_,inputValues⟩
  apply (GuardMatrix.satisfaction_exact (WordMatrix.compile p program) wires rfl valuation).mpr
  refine ⟨satisfied,?_⟩
  intro wire member
  obtain ⟨position,inRange,same⟩:=List.mem_map.mp member
  have bound:=List.mem_range.mp inRange
  subst wire
  have evaluated:=WordMatrixOutputs.evaluated_output large program HashBlockProgram.program_valid valuation inputs
    satisfied inputValues (8+position) (by rw [output_count];omega)
  rw [HashBlockMeaning.admission_output inputs position bound] at evaluated
  have one : BlockIngress.byteGuard (inputs (8+position))=1 := by
    simp only [inputs,HashBlockMeaning.typedInputs,if_neg (by omega : ¬8+position<8),
      Nat.add_sub_cancel_left,BlockIngress.byte_input_guard]
  rw [one] at evaluated
  simpa using evaluated

end Core033.HashBlockGuards
