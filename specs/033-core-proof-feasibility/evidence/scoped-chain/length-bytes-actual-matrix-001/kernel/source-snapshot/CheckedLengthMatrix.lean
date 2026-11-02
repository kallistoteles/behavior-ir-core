import ActualLengthMatrixData0
import ActualLengthIR
import ActualLengthBytes
import Core033.WordMatrixShape
import Core033.WordSourceValidity
import Core033.MatrixRowBlocks
import Core033.KernelDecide
namespace CheckedLengthMatrix
open Core033 ActualLengthMatrixData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def actualMatrix : R1CS.Matrix := ⟨actualModulus,actualVariableCount,actualInputPorts,actualPrivatePorts,actualOutputPorts,actualConstantOne,[actualRows0,actualRows1,actualRows2,actualRows3,actualRows4,actualRows5,actualRows6,actualRows7,actualRows8,actualRows9,actualRows10].flatten⟩
theorem matrix_exact : actualMatrix=WordMatrix.compile actualModulus ActualLengthIR.program := by core033_kernel_decide
theorem field_identity : actualModulus=R1CS.pallasScalarModulus := by decide
theorem program_valid : ActualLengthIR.program.Valid :=
  WordSourceValidity.safe_program_valid _ ((WordSource.check_safe_exact _).mp ActualLengthIR.safe_checked)
theorem matrix_shape : actualMatrix.wellFormed=true := by
  rw [matrix_exact]
  apply WordMatrixShape.complete_well_formedness
  · decide
  · decide
  · decide
  · exact program_valid
theorem row_stats : actualMatrix.rows.length=654 ∧ MatrixRowBlocks.rowsWeight actualMatrix.rows=79380 := by core033_kernel_decide
theorem port_stats : actualMatrix.inputPorts.length=1 ∧ actualMatrix.privatePorts.length=645 ∧ actualMatrix.outputPorts.length=8 := by core033_kernel_decide
theorem binary_size : (MatrixCodec.encode actualMatrix).length=82082 := by
  rw [MatrixRowBlocks.encoded_matrix_size,port_stats.1,port_stats.2.1,port_stats.2.2,row_stats.2]
theorem actual_parsed : Matrix.parse (MatrixCodec.encode actualMatrix)=some actualMatrix := by
  apply MatrixCodecPayload.matrix_roundtrip actualMatrix matrix_shape
  · rw [row_stats.1];decide
  · rw [binary_size];decide
theorem exact_program_meaning (inputs : Nat → WordIR.Word) : ActualLengthIR.program.eval inputs=LengthBytes.words (inputs 0) := by
  rw [ActualLengthIR.ir_exact,LengthBytes.program_meaning]
theorem actual_output_sound {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (satisfied : actualMatrix.satisfies valuation)
    (inputValues : ∀ i,i<1 → valuation (WordField.packed i)=((inputs i).toNat : F))
    (position register : Nat) (found : ActualLengthIR.program.outputs[position]?=some register) :
    valuation (WordMatrix.outputBase ActualLengthIR.program+position)=
      ((WordIR.run ActualLengthIR.program.inputCount ActualLengthIR.program.operations inputs register).toNat : F) := by
  have standard : (WordMatrix.compile R1CS.pallasScalarModulus ActualLengthIR.program).satisfies valuation := by
    rw [←field_identity,←matrix_exact];exact satisfied
  exact WordMatrix.matrix_sound_at_output R1CS.modulus_larger_than_word ActualLengthIR.program program_valid
    valuation inputs standard inputValues position register found
end CheckedLengthMatrix
