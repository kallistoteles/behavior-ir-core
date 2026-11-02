import ActualGuardedPadByteMatrixData12
import ActualPadByteMatrixPacket
import Core033.PaddingByteGuards
import Core033.KernelDecide
namespace CheckedGuardedPadByteMatrix
open Core033
namespace Data
abbrev modulus := ActualGuardedPadByteData.actualModulus
end Data
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
abbrev original := ActualPadByteMatrixPacket.actualMatrix
abbrev program := PaddingByteGuards.program

theorem expected_program : ActualPadByteMatrixPacket.expectedProgram=program :=
  ActualPadByteMatrixPacket.expected_program_exact.trans ActualPadByteIR.ir_exact

theorem program_valid : program.Valid := by
  rw [←expected_program]
  exact ActualPadByteMatrixPacket.program_valid

theorem output_base : WordMatrix.outputBase program=27983 := by
  have counts:=ActualPadByteMatrixPacket.program_counts
  rw [expected_program] at counts
  simp only [WordMatrix.outputBase,WordMatrix.wordCount,counts.1,counts.2.1]

theorem guard_tail_exact : ActualGuardedPadByteData.actualRows824=
    PaddingByteGuards.wires.map (fun wire=>SHA256Circuit.literalRow wire true) := by
  simp only [PaddingByteGuards.wires,output_base,List.map_cons,List.map_nil]
  core033_kernel_decide

def actualMatrix : R1CS.Matrix :=
  ⟨Data.modulus,ActualGuardedPadByteData.actualVariableCount,
    ActualGuardedPadByteData.actualInputPorts,ActualGuardedPadByteData.actualPrivatePorts,
    ActualGuardedPadByteData.actualOutputPorts,ActualGuardedPadByteData.actualConstantOne,
    original.rows++ActualGuardedPadByteData.actualRows824⟩

theorem forced_base_exact : actualMatrix=GuardMatrix.force original PaddingByteGuards.wires := by
  unfold actualMatrix GuardMatrix.force
  rw [guard_tail_exact]
  rfl

theorem guarded_model_exact : actualMatrix=PaddingByteGuards.compile Data.modulus := by
  rw [forced_base_exact,ActualPadByteMatrixPacket.actual_matrix_exact,expected_program]
  rfl

theorem actual_shape : actualMatrix.wellFormed=true := by
  rw [forced_base_exact]
  apply GuardMatrix.well_formed
  · exact ActualPadByteMatrixPacket.actual_well_formed
  · decide
  · rw [ActualPadByteMatrixPacket.actual_matrix_exact,expected_program]
    exact PaddingByteGuards.guard_wire_bounds _

theorem tail_stats : ActualGuardedPadByteData.actualRows824.length=3 ∧
    MatrixRowBlocks.rowsWeight ActualGuardedPadByteData.actualRows824=360 := by core033_kernel_decide

theorem row_stats : actualMatrix.rows.length=28182 ∧ MatrixRowBlocks.rowsWeight actualMatrix.rows=4071492 := by
  change (original.rows++ActualGuardedPadByteData.actualRows824).length=28182 ∧
    MatrixRowBlocks.rowsWeight (original.rows++ActualGuardedPadByteData.actualRows824)=4071492
  simp only [List.length_append,MatrixRowBlocks.rows_weight_append,
    ActualPadByteMatrixPacket.actual_rows_size.1,ActualPadByteMatrixPacket.actual_rows_size.2,
    tail_stats.1,tail_stats.2]
  decide

theorem port_stats : actualMatrix.inputPorts.length=3 ∧ actualMatrix.privatePorts.length=27979 ∧
    actualMatrix.outputPorts.length=4 := by
  change ActualGuardedPadByteData.actualInputPorts.length=3 ∧
    ActualGuardedPadByteData.actualPrivatePorts.length=27979 ∧ ActualGuardedPadByteData.actualOutputPorts.length=4
  simp only [ActualGuardedPadByteData.actualInputPorts,ActualGuardedPadByteData.actualPrivatePorts,
    ActualGuardedPadByteData.actualOutputPorts,List.length_append,List.length_range',List.length_cons,List.length_nil]
  decide

theorem binary_size : (MatrixCodec.encode actualMatrix).length=4183522 := by
  rw [MatrixRowBlocks.encoded_matrix_size,port_stats.1,port_stats.2.1,port_stats.2.2,row_stats.2]

theorem parsed_actual : Matrix.parse (MatrixCodec.encode actualMatrix)=some actualMatrix := by
  apply MatrixCodecPayload.matrix_roundtrip actualMatrix actual_shape
  · rw [row_stats.1];decide
  · rw [binary_size];decide

theorem actual_guards {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : actualMatrix.satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    (inputs 0).toNat≤1073741824 ∧ (inputs 1).toNat<(PaddingWords.totalSize (inputs 0)).toNat ∧
    (inputs 2).toNat<256 := by
  rw [guarded_model_exact] at accepted
  exact PaddingByteGuards.accepted_guards (p:=R1CS.pallasScalarModulus)
    R1CS.modulus_larger_than_word program_valid valuation inputs accepted inputValues

end CheckedGuardedPadByteMatrix
