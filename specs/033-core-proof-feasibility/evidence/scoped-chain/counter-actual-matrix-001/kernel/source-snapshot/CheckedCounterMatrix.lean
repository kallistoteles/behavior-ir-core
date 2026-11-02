import ActualCounterMatrixData0
import ActualCounterMatrixData1
import ActualCounterMatrixData2
import ActualCounterIR
import ActualCounterBytes
import Core033.WordMatrixShape
import Core033.WordSourceValidity
import Core033.MatrixRowBlocks
import Core033.KernelDecide
namespace CheckedCounterMatrix
open Core033 ActualCounterMatrixData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def actualMatrix : R1CS.Matrix := ⟨actualModulus,actualVariableCount,actualInputPorts,actualPrivatePorts,actualOutputPorts,actualConstantOne,[actualRows0,actualRows1,actualRows2,actualRows3,actualRows4,actualRows5,actualRows6,actualRows7,actualRows8,actualRows9,actualRows10,actualRows11,actualRows12,actualRows13,actualRows14,actualRows15,actualRows16,actualRows17,actualRows18,actualRows19,actualRows20,actualRows21,actualRows22,actualRows23,actualRows24,actualRows25,actualRows26,actualRows27,actualRows28,actualRows29,actualRows30,actualRows31,actualRows32,actualRows33,actualRows34,actualRows35,actualRows36,actualRows37,actualRows38,actualRows39,actualRows40,actualRows41,actualRows42,actualRows43,actualRows44,actualRows45,actualRows46,actualRows47,actualRows48,actualRows49,actualRows50,actualRows51,actualRows52,actualRows53,actualRows54,actualRows55,actualRows56,actualRows57,actualRows58,actualRows59,actualRows60,actualRows61,actualRows62,actualRows63,actualRows64,actualRows65,actualRows66,actualRows67,actualRows68,actualRows69,actualRows70,actualRows71,actualRows72,actualRows73,actualRows74,actualRows75,actualRows76,actualRows77,actualRows78,actualRows79,actualRows80,actualRows81,actualRows82,actualRows83,actualRows84,actualRows85,actualRows86,actualRows87,actualRows88,actualRows89,actualRows90,actualRows91,actualRows92,actualRows93,actualRows94,actualRows95,actualRows96,actualRows97,actualRows98,actualRows99,actualRows100,actualRows101,actualRows102,actualRows103,actualRows104,actualRows105,actualRows106,actualRows107,actualRows108,actualRows109,actualRows110,actualRows111,actualRows112,actualRows113,actualRows114,actualRows115,actualRows116,actualRows117,actualRows118,actualRows119,actualRows120,actualRows121,actualRows122,actualRows123,actualRows124,actualRows125,actualRows126,actualRows127,actualRows128,actualRows129,actualRows130,actualRows131,actualRows132,actualRows133,actualRows134,actualRows135,actualRows136,actualRows137,actualRows138,actualRows139,actualRows140,actualRows141,actualRows142,actualRows143,actualRows144,actualRows145,actualRows146,actualRows147,actualRows148,actualRows149,actualRows150,actualRows151,actualRows152,actualRows153,actualRows154,actualRows155,actualRows156,actualRows157,actualRows158,actualRows159,actualRows160,actualRows161,actualRows162,actualRows163,actualRows164,actualRows165,actualRows166,actualRows167,actualRows168,actualRows169,actualRows170,actualRows171,actualRows172,actualRows173,actualRows174,actualRows175,actualRows176,actualRows177].flatten⟩
theorem matrix_exact : actualMatrix=WordMatrix.compile actualModulus ActualCounterIR.program := by core033_kernel_decide
theorem field_identity : actualModulus=R1CS.pallasScalarModulus := by decide
theorem program_valid : ActualCounterIR.program.Valid :=
  WordSourceValidity.safe_program_valid _ ((WordSource.check_safe_exact _).mp ActualCounterIR.safe_checked)
theorem matrix_shape : actualMatrix.wellFormed=true := by
  rw [matrix_exact]
  apply WordMatrixShape.complete_well_formedness
  · decide
  · decide
  · decide
  · exact program_valid
theorem row_stats : actualMatrix.rows.length=11384 ∧ MatrixRowBlocks.rowsWeight actualMatrix.rows=1683420 := by core033_kernel_decide
theorem port_stats : actualMatrix.inputPorts.length=4 ∧ actualMatrix.privatePorts.length=11318 ∧ actualMatrix.outputPorts.length=8 := by core033_kernel_decide
theorem binary_size : (MatrixCodec.encode actualMatrix).length=1728826 := by
  rw [MatrixRowBlocks.encoded_matrix_size,port_stats.1,port_stats.2.1,port_stats.2.2,row_stats.2]
theorem actual_parsed : Matrix.parse (MatrixCodec.encode actualMatrix)=some actualMatrix := by
  apply MatrixCodecPayload.matrix_roundtrip actualMatrix matrix_shape
  · rw [row_stats.1];decide
  · rw [binary_size];decide
theorem exact_program_meaning (inputs : Nat → WordIR.Word) : ActualCounterIR.program.eval inputs=CounterProgram.expected inputs := by
  rw [ActualCounterIR.ir_exact,CounterProgram.program_meaning]
theorem actual_output_sound {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (satisfied : actualMatrix.satisfies valuation)
    (inputValues : ∀ i,i<4 → valuation (WordField.packed i)=((inputs i).toNat : F))
    (position register : Nat) (found : ActualCounterIR.program.outputs[position]?=some register) :
    valuation (WordMatrix.outputBase ActualCounterIR.program+position)=
      ((WordIR.run ActualCounterIR.program.inputCount ActualCounterIR.program.operations inputs register).toNat : F) := by
  have standard : (WordMatrix.compile R1CS.pallasScalarModulus ActualCounterIR.program).satisfies valuation := by
    rw [←field_identity,←matrix_exact];exact satisfied
  exact WordMatrix.matrix_sound_at_output R1CS.modulus_larger_than_word ActualCounterIR.program program_valid
    valuation inputs standard inputValues position register found
end CheckedCounterMatrix
