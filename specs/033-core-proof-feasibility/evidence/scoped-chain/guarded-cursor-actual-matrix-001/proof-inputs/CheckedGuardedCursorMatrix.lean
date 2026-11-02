import ActualGuardedCursorMatrixData1
import ActualCursorMatrixPacket
import Core033.ByteCursorGuards
import Core033.ByteCursorRead
import Core033.KernelDecide
namespace CheckedGuardedCursorMatrix
open Core033
namespace Data
abbrev modulus := ActualGuardedCursorData.actualModulus
end Data
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
abbrev original := ActualCursorMatrixPacket.actualMatrix
abbrev program := ByteCursorGuards.program

theorem expected_program : ActualCursorMatrixPacket.expectedProgram=program :=
  ActualCursorMatrixPacket.expected_program_exact.trans ActualCursorIR.ir_exact

theorem program_valid : program.Valid := by
  rw [←expected_program]
  exact ActualCursorMatrixPacket.program_valid

theorem output_base : WordMatrix.outputBase program=3129 := by
  have counts:=ActualCursorMatrixPacket.program_counts
  rw [expected_program] at counts
  simp only [WordMatrix.outputBase,WordMatrix.wordCount,counts.1,counts.2.1]

theorem guard_tail_exact : ActualGuardedCursorData.actualRows93=
    ByteCursorGuards.wires.map (fun wire=>SHA256Circuit.literalRow wire true) := by
  simp only [ByteCursorGuards.wires,output_base,List.map_cons,List.map_nil]
  core033_kernel_decide

def actualMatrix : R1CS.Matrix :=
  ⟨Data.modulus,ActualGuardedCursorData.actualVariableCount,
    ActualGuardedCursorData.actualInputPorts,ActualGuardedCursorData.actualPrivatePorts,
    ActualGuardedCursorData.actualOutputPorts,ActualGuardedCursorData.actualConstantOne,
    original.rows++ActualGuardedCursorData.actualRows93⟩

theorem forced_base_exact : actualMatrix=GuardMatrix.force original ByteCursorGuards.wires := by
  unfold actualMatrix GuardMatrix.force
  rw [guard_tail_exact]
  rfl

theorem guarded_model_exact : actualMatrix=ByteCursorGuards.compile Data.modulus := by
  rw [forced_base_exact]
  unfold original
  rw [ActualCursorMatrixPacket.actual_matrix_exact,expected_program]
  rfl

theorem actual_shape : actualMatrix.wellFormed=true := by
  rw [forced_base_exact]
  apply GuardMatrix.well_formed
  · exact ActualCursorMatrixPacket.actual_well_formed
  · decide
  · unfold original
    rw [ActualCursorMatrixPacket.actual_matrix_exact,expected_program]
    exact ByteCursorGuards.guard_wire_bounds _

theorem tail_stats : ActualGuardedCursorData.actualRows93.length=1 ∧
    MatrixRowBlocks.rowsWeight ActualGuardedCursorData.actualRows93=120 := by core033_kernel_decide

theorem row_stats : actualMatrix.rows.length=3156 ∧ MatrixRowBlocks.rowsWeight actualMatrix.rows=485136 := by
  change (original.rows++ActualGuardedCursorData.actualRows93).length=3156 ∧
    MatrixRowBlocks.rowsWeight (original.rows++ActualGuardedCursorData.actualRows93)=485136
  simp only [List.length_append,MatrixRowBlocks.rows_weight_append,
    ActualCursorMatrixPacket.actual_rows_size.1,ActualCursorMatrixPacket.actual_rows_size.2,
    tail_stats.1,tail_stats.2]
  decide

theorem port_stats : actualMatrix.inputPorts.length=3 ∧ actualMatrix.privatePorts.length=3125 ∧
    actualMatrix.outputPorts.length=4 := by
  change ActualGuardedCursorData.actualInputPorts.length=3 ∧
    ActualGuardedCursorData.actualPrivatePorts.length=3125 ∧ ActualGuardedCursorData.actualOutputPorts.length=4
  simp only [ActualGuardedCursorData.actualInputPorts,ActualGuardedCursorData.actualPrivatePorts,
    ActualGuardedCursorData.actualOutputPorts,List.length_append,List.length_range',List.length_cons,List.length_nil]
  decide

theorem binary_size : (MatrixCodec.encode actualMatrix).length=497750 := by
  rw [MatrixRowBlocks.encoded_matrix_size,port_stats.1,port_stats.2.1,port_stats.2.2,row_stats.2]

theorem parsed_actual : Matrix.parse (MatrixCodec.encode actualMatrix)=some actualMatrix := by
  apply MatrixCodecPayload.matrix_roundtrip actualMatrix actual_shape
  · rw [row_stats.1];decide
  · rw [binary_size];decide

theorem actual_guards {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : actualMatrix.satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    ByteCursor.Admitted (inputs 0) (inputs 1) (inputs 2) := by
  rw [guarded_model_exact] at accepted
  exact ByteCursorGuards.accepted_admission (p:=R1CS.pallasScalarModulus)
    R1CS.modulus_larger_than_word program_valid valuation inputs accepted inputValues

theorem actual_public_next {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : actualMatrix.satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    valuation (WordMatrix.outputBase program)=(((inputs 0).toNat+(inputs 2).toNat : Nat) : F) := by
  rw [guarded_model_exact] at accepted
  exact ByteCursorGuards.accepted_public_next R1CS.modulus_larger_than_word
    program_valid valuation inputs accepted inputValues

end CheckedGuardedCursorMatrix
