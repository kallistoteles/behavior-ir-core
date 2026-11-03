import ActualGuardedShiftMatrixData1
import ActualShiftMatrixPacket
import Core033.WordShiftGuards
import Core033.KernelDecide
namespace CheckedGuardedShiftMatrix
open Core033
namespace Data
abbrev modulus := ActualGuardedShiftData.actualModulus
end Data
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
abbrev original := ActualShiftMatrixPacket.actualMatrix
abbrev program := WordShiftGuards.program

theorem expected_program : ActualShiftMatrixPacket.expectedProgram=program :=
  ActualShiftMatrixPacket.expected_program_exact.trans ActualShiftIR.ir_exact

theorem program_valid : program.Valid := by
  rw [←expected_program]
  exact ActualShiftMatrixPacket.program_valid

theorem output_base : WordMatrix.outputBase program=3571 := by
  have counts:=ActualShiftMatrixPacket.program_counts
  rw [expected_program] at counts
  simp only [WordMatrix.outputBase,WordMatrix.wordCount,counts.1,counts.2.1]

theorem guard_tail_exact : ActualGuardedShiftData.actualRows106=
    WordShiftGuards.wires.map (fun wire=>SHA256Circuit.literalRow wire true) := by
  simp only [WordShiftGuards.wires,output_base,List.map_cons,List.map_nil]
  core033_kernel_decide

def actualMatrix : R1CS.Matrix :=
  ⟨Data.modulus,ActualGuardedShiftData.actualVariableCount,
    ActualGuardedShiftData.actualInputPorts,ActualGuardedShiftData.actualPrivatePorts,
    ActualGuardedShiftData.actualOutputPorts,ActualGuardedShiftData.actualConstantOne,
    original.rows++ActualGuardedShiftData.actualRows106⟩

theorem forced_base_exact : actualMatrix=GuardMatrix.force original WordShiftGuards.wires := by
  unfold actualMatrix GuardMatrix.force
  rw [guard_tail_exact]
  rfl

theorem guarded_model_exact : actualMatrix=WordShiftGuards.compile Data.modulus := by
  rw [forced_base_exact]
  unfold original
  rw [ActualShiftMatrixPacket.actual_matrix_exact,expected_program]
  rfl

theorem actual_shape : actualMatrix.wellFormed=true := by
  rw [forced_base_exact]
  apply GuardMatrix.well_formed
  · exact ActualShiftMatrixPacket.actual_well_formed
  · decide
  · unfold original
    rw [ActualShiftMatrixPacket.actual_matrix_exact,expected_program]
    exact WordShiftGuards.guard_wire_bounds _

theorem tail_stats : ActualGuardedShiftData.actualRows106.length=1 ∧
    MatrixRowBlocks.rowsWeight ActualGuardedShiftData.actualRows106=120 := by core033_kernel_decide

theorem row_stats : actualMatrix.rows.length=3584 ∧ MatrixRowBlocks.rowsWeight actualMatrix.rows=520836 := by
  change (original.rows++ActualGuardedShiftData.actualRows106).length=3584 ∧
    MatrixRowBlocks.rowsWeight (original.rows++ActualGuardedShiftData.actualRows106)=520836
  simp only [List.length_append,MatrixRowBlocks.rows_weight_append,
    ActualShiftMatrixPacket.actual_rows_size.1,ActualShiftMatrixPacket.actual_rows_size.2,
    tail_stats.1,tail_stats.2]
  decide

theorem port_stats : actualMatrix.inputPorts.length=2 ∧ actualMatrix.privatePorts.length=3568 ∧
    actualMatrix.outputPorts.length=2 := by
  change ActualGuardedShiftData.actualInputPorts.length=2 ∧
    ActualGuardedShiftData.actualPrivatePorts.length=3568 ∧ ActualGuardedShiftData.actualOutputPorts.length=2
  simp only [ActualGuardedShiftData.actualInputPorts,ActualGuardedShiftData.actualPrivatePorts,
    ActualGuardedShiftData.actualOutputPorts,List.length_append,List.length_range',List.length_cons,List.length_nil]
  decide

theorem binary_size : (MatrixCodec.encode actualMatrix).length=535210 := by
  rw [MatrixRowBlocks.encoded_matrix_size,port_stats.1,port_stats.2.1,port_stats.2.2,row_stats.2]

theorem parsed_actual : Matrix.parse (MatrixCodec.encode actualMatrix)=some actualMatrix := by
  apply MatrixCodecPayload.matrix_roundtrip actualMatrix actual_shape
  · rw [row_stats.1];decide
  · rw [binary_size];decide

theorem actual_guards {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : actualMatrix.satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    (inputs 1).toNat<32 := by
  rw [guarded_model_exact] at accepted
  exact WordShiftGuards.accepted_admission (p:=R1CS.pallasScalarModulus)
    R1CS.modulus_larger_than_word program_valid valuation inputs accepted inputValues

theorem actual_shift {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : actualMatrix.satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    (program.eval inputs).getD 0 0=(inputs 0).ushiftRight (inputs 1).toNat := by
  rw [guarded_model_exact] at accepted
  exact WordShiftGuards.accepted_shift R1CS.modulus_larger_than_word program_valid valuation inputs accepted inputValues

end CheckedGuardedShiftMatrix
