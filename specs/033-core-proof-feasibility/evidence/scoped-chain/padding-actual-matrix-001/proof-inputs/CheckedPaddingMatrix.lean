import ActualPaddingMatrixData0
import ActualPaddingIR
import ActualPaddingBytes
import Core033.WordMatrixShape
import Core033.WordSourceValidity
import Core033.MatrixRowBlocks
import Core033.KernelDecide
namespace CheckedPaddingMatrix
open Core033 ActualPaddingMatrixData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def actualMatrix : R1CS.Matrix := ⟨actualModulus,actualVariableCount,actualInputPorts,actualPrivatePorts,actualOutputPorts,actualConstantOne,[actualRows0,actualRows1,actualRows2,actualRows3,actualRows4,actualRows5,actualRows6,actualRows7,actualRows8,actualRows9,actualRows10,actualRows11,actualRows12,actualRows13,actualRows14,actualRows15,actualRows16,actualRows17,actualRows18,actualRows19,actualRows20,actualRows21,actualRows22,actualRows23,actualRows24,actualRows25,actualRows26,actualRows27].flatten⟩
theorem matrix_exact : actualMatrix=WordMatrix.compile actualModulus ActualPaddingIR.program := by core033_kernel_decide
theorem field_identity : actualModulus=R1CS.pallasScalarModulus := by decide
theorem program_valid : ActualPaddingIR.program.Valid :=
  WordSourceValidity.safe_program_valid _ ((WordSource.check_safe_exact _).mp ActualPaddingIR.safe_checked)
theorem matrix_shape : actualMatrix.wellFormed=true := by
  rw [matrix_exact]
  apply WordMatrixShape.complete_well_formedness
  · decide
  · decide
  · decide
  · exact program_valid
theorem row_stats : actualMatrix.rows.length=1785 ∧ MatrixRowBlocks.rowsWeight actualMatrix.rows=243432 := by core033_kernel_decide
theorem port_stats : actualMatrix.inputPorts.length=1 ∧ actualMatrix.privatePorts.length=1767 ∧ actualMatrix.outputPorts.length=6 := by core033_kernel_decide
theorem binary_size : (MatrixCodec.encode actualMatrix).length=250614 := by
  rw [MatrixRowBlocks.encoded_matrix_size,port_stats.1,port_stats.2.1,port_stats.2.2,row_stats.2]
theorem actual_parsed : Matrix.parse (MatrixCodec.encode actualMatrix)=some actualMatrix := by
  apply MatrixCodecPayload.matrix_roundtrip actualMatrix matrix_shape
  · rw [row_stats.1];decide
  · rw [binary_size];decide
theorem exact_program_meaning (inputs : Nat → WordIR.Word) : ActualPaddingIR.program.eval inputs=PaddingWords.expected inputs := by
  rw [ActualPaddingIR.ir_exact,PaddingWords.program_meaning]
theorem actual_output_sound {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (satisfied : actualMatrix.satisfies valuation)
    (inputValues : ∀ i,i<1 → valuation (WordField.packed i)=((inputs i).toNat : F))
    (position register : Nat) (found : ActualPaddingIR.program.outputs[position]?=some register) :
    valuation (WordMatrix.outputBase ActualPaddingIR.program+position)=
      ((WordIR.run ActualPaddingIR.program.inputCount ActualPaddingIR.program.operations inputs register).toNat : F) := by
  have standard : (WordMatrix.compile R1CS.pallasScalarModulus ActualPaddingIR.program).satisfies valuation := by
    rw [←field_identity,←matrix_exact];exact satisfied
  exact WordMatrix.matrix_sound_at_output R1CS.modulus_larger_than_word ActualPaddingIR.program program_valid
    valuation inputs standard inputValues position register found
end CheckedPaddingMatrix
