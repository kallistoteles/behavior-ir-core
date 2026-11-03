import ActualGuardedPathFrameMatrixData21
import ActualPathFrameMatrixPacket
import Core033.PathFrameGuards
import Core033.KernelDecide
namespace CheckedGuardedPathFrameMatrix
open Core033
namespace Data
abbrev modulus := ActualGuardedPathFrameData.actualModulus
end Data
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
abbrev original := ActualPathFrameMatrixPacket.actualMatrix
abbrev program := PathFrameGuards.program

theorem expected_program : ActualPathFrameMatrixPacket.expectedProgram=program :=
  ActualPathFrameMatrixPacket.expected_program_exact.trans ActualPathFrameIR.ir_exact

theorem program_valid : program.Valid := by
  rw [←expected_program]
  exact ActualPathFrameMatrixPacket.program_valid

theorem output_base : WordMatrix.outputBase program=47295 := by
  have counts:=ActualPathFrameMatrixPacket.program_counts
  rw [expected_program] at counts
  simp only [WordMatrix.outputBase,WordMatrix.wordCount,counts.1,counts.2.1]

theorem guard_tail_exact : ActualGuardedPathFrameData.actualRows1392=
    PathFrameGuards.wires.map (fun wire=>SHA256Circuit.literalRow wire true) := by
  simp only [PathFrameGuards.wires,output_base]
  core033_kernel_decide

def actualMatrix : R1CS.Matrix :=
  ⟨Data.modulus,ActualGuardedPathFrameData.actualVariableCount,
    ActualGuardedPathFrameData.actualInputPorts,ActualGuardedPathFrameData.actualPrivatePorts,
    ActualGuardedPathFrameData.actualOutputPorts,ActualGuardedPathFrameData.actualConstantOne,
    original.rows++ActualGuardedPathFrameData.actualRows1392⟩

theorem forced_base_exact : actualMatrix=GuardMatrix.force original PathFrameGuards.wires := by
  unfold actualMatrix GuardMatrix.force
  rw [guard_tail_exact]
  rfl

theorem guarded_model_exact : actualMatrix=PathFrameGuards.compile Data.modulus := by
  rw [forced_base_exact]
  unfold original
  rw [ActualPathFrameMatrixPacket.actual_matrix_exact,expected_program]
  rfl

theorem actual_shape : actualMatrix.wellFormed=true := by
  rw [forced_base_exact]
  apply GuardMatrix.well_formed
  · exact ActualPathFrameMatrixPacket.actual_well_formed
  · decide
  · unfold original
    rw [ActualPathFrameMatrixPacket.actual_matrix_exact,expected_program]
    exact PathFrameGuards.guard_wire_bounds _

theorem tail_stats : ActualGuardedPathFrameData.actualRows1392.length=17 ∧
    MatrixRowBlocks.rowsWeight ActualGuardedPathFrameData.actualRows1392=2040 := by core033_kernel_decide

theorem row_stats : actualMatrix.rows.length=47587 ∧ MatrixRowBlocks.rowsWeight actualMatrix.rows=6930732 := by
  change (original.rows++ActualGuardedPathFrameData.actualRows1392).length=47587 ∧
    MatrixRowBlocks.rowsWeight (original.rows++ActualGuardedPathFrameData.actualRows1392)=6930732
  simp only [List.length_append,MatrixRowBlocks.rows_weight_append,
    ActualPathFrameMatrixPacket.actual_rows_size.1,ActualPathFrameMatrixPacket.actual_rows_size.2,
    tail_stats.1,tail_stats.2]
  decide

theorem port_stats : actualMatrix.inputPorts.length=34 ∧ actualMatrix.privatePorts.length=47260 ∧
    actualMatrix.outputPorts.length=133 := by
  change ActualGuardedPathFrameData.actualInputPorts.length=34 ∧
    ActualGuardedPathFrameData.actualPrivatePorts.length=47260 ∧ ActualGuardedPathFrameData.actualOutputPorts.length=133
  simp only [ActualGuardedPathFrameData.actualInputPorts,ActualGuardedPathFrameData.actualPrivatePorts,
    ActualGuardedPathFrameData.actualOutputPorts,List.length_append,List.length_range',List.length_cons,List.length_nil]
  decide

theorem binary_size : (MatrixCodec.encode actualMatrix).length=7120526 := by
  rw [MatrixRowBlocks.encoded_matrix_size,port_stats.1,port_stats.2.1,port_stats.2.2,row_stats.2]

theorem parsed_actual : Matrix.parse (MatrixCodec.encode actualMatrix)=some actualMatrix := by
  apply MatrixCodecPayload.matrix_roundtrip actualMatrix actual_shape
  · rw [row_stats.1];decide
  · rw [binary_size];decide

theorem actual_forced_flags {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : actualMatrix.satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F))
    (position : Nat) (bound : position<17) :
    (program.eval inputs).getD (115+position) 0=1 := by
  rw [guarded_model_exact] at accepted
  exact PathFrameGuards.forced_one R1CS.modulus_larger_than_word valuation inputs accepted inputValues position bound

theorem actual_active_counter {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : actualMatrix.satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    (inputs 1).toNat<256 := by
  rw [guarded_model_exact] at accepted
  exact PathFrameGuards.accepted_active R1CS.modulus_larger_than_word valuation inputs accepted inputValues

theorem actual_next_height {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : actualMatrix.satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    valuation (WordMatrix.outputBase program+132)=((inputs 1).toNat+1 : Nat) := by
  rw [guarded_model_exact] at accepted
  exact PathFrameGuards.accepted_height_output R1CS.modulus_larger_than_word valuation inputs accepted inputValues

theorem actual_original_branch_admitted {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : actualMatrix.satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    BranchAdmission.Admitted (ParentBranchProgram.branchInputs (PathFrameMeaning.parentInputs inputs)) := by
  rw [guarded_model_exact] at accepted
  exact PathFrameGuards.accepted_original_branch_admission R1CS.modulus_larger_than_word valuation inputs accepted inputValues

end CheckedGuardedPathFrameMatrix
