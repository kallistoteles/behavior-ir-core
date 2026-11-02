import ActualGuardedBranchAdmissionMatrixData4
import ActualBranchAdmissionMatrixPacket
import Core033.BranchAdmissionGuards
import Core033.KernelDecide
namespace CheckedGuardedBranchAdmissionMatrix
open Core033
namespace Data
abbrev modulus := ActualGuardedBranchAdmissionData.actualModulus
end Data
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
abbrev original := ActualBranchAdmissionMatrixPacket.actualMatrix
abbrev program := BranchAdmissionGuards.program

theorem expected_program : ActualBranchAdmissionMatrixPacket.expectedProgram=program :=
  ActualBranchAdmissionMatrixPacket.expected_program_exact.trans ActualBranchAdmissionIR.ir_exact

theorem program_valid : program.Valid := by
  rw [←expected_program]
  exact ActualBranchAdmissionMatrixPacket.program_valid

theorem output_base : WordMatrix.outputBase program=10133 := by
  have counts:=ActualBranchAdmissionMatrixPacket.program_counts
  rw [expected_program] at counts
  simp only [WordMatrix.outputBase,WordMatrix.wordCount,counts.1,counts.2.1]

theorem guard_tail_exact : ActualGuardedBranchAdmissionData.actualRows299=
    BranchAdmissionGuards.wires.map (fun wire=>SHA256Circuit.literalRow wire true) := by
  simp only [BranchAdmissionGuards.wires,output_base,List.map_cons,List.map_nil,List.range]
  core033_kernel_decide

def actualMatrix : R1CS.Matrix :=
  ⟨Data.modulus,ActualGuardedBranchAdmissionData.actualVariableCount,
    ActualGuardedBranchAdmissionData.actualInputPorts,ActualGuardedBranchAdmissionData.actualPrivatePorts,
    ActualGuardedBranchAdmissionData.actualOutputPorts,ActualGuardedBranchAdmissionData.actualConstantOne,
    original.rows++ActualGuardedBranchAdmissionData.actualRows299⟩

theorem forced_base_exact : actualMatrix=GuardMatrix.force original BranchAdmissionGuards.wires := by
  unfold actualMatrix GuardMatrix.force
  rw [guard_tail_exact]
  rfl

theorem guarded_model_exact : actualMatrix=BranchAdmissionGuards.compile Data.modulus := by
  rw [forced_base_exact]
  unfold original
  rw [ActualBranchAdmissionMatrixPacket.actual_matrix_exact,expected_program]
  rfl

theorem actual_shape : actualMatrix.wellFormed=true := by
  rw [forced_base_exact]
  apply GuardMatrix.well_formed
  · exact ActualBranchAdmissionMatrixPacket.actual_well_formed
  · decide
  · unfold original
    rw [ActualBranchAdmissionMatrixPacket.actual_matrix_exact,expected_program]
    exact BranchAdmissionGuards.guard_wire_bounds _

theorem tail_stats : ActualGuardedBranchAdmissionData.actualRows299.length=7 ∧
    MatrixRowBlocks.rowsWeight ActualGuardedBranchAdmissionData.actualRows299=840 := by core033_kernel_decide

theorem row_stats : actualMatrix.rows.length=10183 ∧ MatrixRowBlocks.rowsWeight actualMatrix.rows=1574040 := by
  change (original.rows++ActualGuardedBranchAdmissionData.actualRows299).length=10183 ∧
    MatrixRowBlocks.rowsWeight (original.rows++ActualGuardedBranchAdmissionData.actualRows299)=1574040
  simp only [List.length_append,MatrixRowBlocks.rows_weight_append,
    ActualBranchAdmissionMatrixPacket.actual_rows_size.1,ActualBranchAdmissionMatrixPacket.actual_rows_size.2,
    tail_stats.1,tail_stats.2]
  decide

theorem port_stats : actualMatrix.inputPorts.length=26 ∧ actualMatrix.privatePorts.length=10106 ∧
    actualMatrix.outputPorts.length=7 := by
  change ActualGuardedBranchAdmissionData.actualInputPorts.length=26 ∧
    ActualGuardedBranchAdmissionData.actualPrivatePorts.length=10106 ∧ ActualGuardedBranchAdmissionData.actualOutputPorts.length=7
  simp only [ActualGuardedBranchAdmissionData.actualInputPorts,ActualGuardedBranchAdmissionData.actualPrivatePorts,
    ActualGuardedBranchAdmissionData.actualOutputPorts,List.length_append,List.length_range',List.length_cons,List.length_nil]
  decide

theorem binary_size : (MatrixCodec.encode actualMatrix).length=1614682 := by
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
  exact BranchAdmissionGuards.accepted_admission (p:=R1CS.pallasScalarModulus)
    R1CS.modulus_larger_than_word program_valid valuation inputs accepted inputValues

theorem actual_complete {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (inputs : Nat → WordIR.Word) (admitted : BranchAdmission.Admitted inputs) :
    ∃ valuation : Nat → F,actualMatrix.satisfies valuation ∧
      ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F) := by
  rw [guarded_model_exact]
  exact BranchAdmissionGuards.admitted_complete (p:=R1CS.pallasScalarModulus)
    R1CS.modulus_larger_than_word program_valid inputs admitted

end CheckedGuardedBranchAdmissionMatrix
