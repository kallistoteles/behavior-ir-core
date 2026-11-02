import ActualGuardedBranchCheckedMatrixData9
import ActualCheckedBranchMatrixPacket
import Core033.BranchCheckedGuards
import Core033.KernelDecide
namespace CheckedGuardedBranchCheckedMatrix
open Core033
namespace Data
abbrev modulus := ActualGuardedBranchCheckedData.actualModulus
end Data
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
abbrev original := ActualCheckedBranchMatrixPacket.actualMatrix
abbrev program := BranchCheckedGuards.program

theorem expected_program : ActualCheckedBranchMatrixPacket.expectedProgram=program :=
  ActualCheckedBranchMatrixPacket.expected_program_exact.trans ActualCheckedBranchIR.ir_exact

theorem program_valid : program.Valid := by
  rw [←expected_program]
  exact ActualCheckedBranchMatrixPacket.program_valid

theorem output_base : WordMatrix.outputBase program=20367 := by
  have counts:=ActualCheckedBranchMatrixPacket.program_counts
  rw [expected_program] at counts
  simp only [WordMatrix.outputBase,WordMatrix.wordCount,counts.1,counts.2.1]

theorem guard_tail_exact : ActualGuardedBranchCheckedData.actualRows600=
    BranchCheckedGuards.wires.map (fun wire=>SHA256Circuit.literalRow wire true) := by
  simp only [BranchCheckedGuards.wires,output_base,List.map_cons,List.map_nil,List.range]
  core033_kernel_decide

def actualMatrix : R1CS.Matrix :=
  ⟨Data.modulus,ActualGuardedBranchCheckedData.actualVariableCount,
    ActualGuardedBranchCheckedData.actualInputPorts,ActualGuardedBranchCheckedData.actualPrivatePorts,
    ActualGuardedBranchCheckedData.actualOutputPorts,ActualGuardedBranchCheckedData.actualConstantOne,
    original.rows++ActualGuardedBranchCheckedData.actualRows600⟩

theorem forced_base_exact : actualMatrix=GuardMatrix.force original BranchCheckedGuards.wires := by
  unfold actualMatrix GuardMatrix.force
  rw [guard_tail_exact]
  rfl

theorem guarded_model_exact : actualMatrix=BranchCheckedGuards.compile Data.modulus := by
  rw [forced_base_exact]
  unfold original
  rw [ActualCheckedBranchMatrixPacket.actual_matrix_exact,expected_program]
  rfl

theorem actual_shape : actualMatrix.wellFormed=true := by
  rw [forced_base_exact]
  apply GuardMatrix.well_formed
  · exact ActualCheckedBranchMatrixPacket.actual_well_formed
  · decide
  · unfold original
    rw [ActualCheckedBranchMatrixPacket.actual_matrix_exact,expected_program]
    exact BranchCheckedGuards.guard_wire_bounds _

theorem tail_stats : ActualGuardedBranchCheckedData.actualRows600.length=7 ∧
    MatrixRowBlocks.rowsWeight ActualGuardedBranchCheckedData.actualRows600=840 := by core033_kernel_decide

theorem row_stats : actualMatrix.rows.length=20532 ∧ MatrixRowBlocks.rowsWeight actualMatrix.rows=2847996 := by
  change (original.rows++ActualGuardedBranchCheckedData.actualRows600).length=20532 ∧
    MatrixRowBlocks.rowsWeight (original.rows++ActualGuardedBranchCheckedData.actualRows600)=2847996
  simp only [List.length_append,MatrixRowBlocks.rows_weight_append,
    ActualCheckedBranchMatrixPacket.actual_rows_size.1,ActualCheckedBranchMatrixPacket.actual_rows_size.2,
    tail_stats.1,tail_stats.2]
  decide

theorem port_stats : actualMatrix.inputPorts.length=26 ∧ actualMatrix.privatePorts.length=20340 ∧
    actualMatrix.outputPorts.length=122 := by
  change ActualGuardedBranchCheckedData.actualInputPorts.length=26 ∧
    ActualGuardedBranchCheckedData.actualPrivatePorts.length=20340 ∧ ActualGuardedBranchCheckedData.actualOutputPorts.length=122
  simp only [ActualGuardedBranchCheckedData.actualInputPorts,ActualGuardedBranchCheckedData.actualPrivatePorts,
    ActualGuardedBranchCheckedData.actualOutputPorts,List.length_append,List.length_range',List.length_cons,List.length_nil]
  decide

theorem binary_size : (MatrixCodec.encode actualMatrix).length=2930034 := by
  rw [MatrixRowBlocks.encoded_matrix_size,port_stats.1,port_stats.2.1,port_stats.2.2,row_stats.2]

theorem parsed_actual : Matrix.parse (MatrixCodec.encode actualMatrix)=some actualMatrix := by
  apply MatrixCodecPayload.matrix_roundtrip actualMatrix actual_shape
  · rw [row_stats.1];decide
  · rw [binary_size];decide

theorem actual_guards {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : actualMatrix.satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    BranchAdmission.Admitted inputs := by
  rw [guarded_model_exact] at accepted
  exact BranchCheckedGuards.accepted_admission (p:=R1CS.pallasScalarModulus)
    R1CS.modulus_larger_than_word program_valid valuation inputs accepted inputValues

theorem actual_complete {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (inputs : Nat → WordIR.Word) (admitted : BranchAdmission.Admitted inputs) :
    ∃ valuation : Nat → F,actualMatrix.satisfies valuation ∧
      ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F) := by
  rw [guarded_model_exact]
  exact BranchCheckedGuards.admitted_complete (p:=R1CS.pallasScalarModulus)
    R1CS.modulus_larger_than_word program_valid inputs admitted

end CheckedGuardedBranchCheckedMatrix
