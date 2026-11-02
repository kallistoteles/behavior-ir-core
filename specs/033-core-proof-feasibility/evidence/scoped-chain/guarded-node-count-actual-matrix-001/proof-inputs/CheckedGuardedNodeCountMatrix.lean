import ActualGuardedNodeCountMatrixData2
import ActualNodeCountMatrixPacket
import Core033.NodeCountGuards
import Core033.NodeCountPublicValue
import Core033.KernelDecide
namespace CheckedGuardedNodeCountMatrix
open Core033
namespace Data
abbrev modulus := ActualGuardedNodeCountData.actualModulus
end Data
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
abbrev original := ActualNodeCountMatrixPacket.actualMatrix
abbrev program := NodeCountGuards.program

theorem expected_program : ActualNodeCountMatrixPacket.expectedProgram=program :=
  ActualNodeCountMatrixPacket.expected_program_exact.trans ActualNodeCountIR.ir_exact

theorem program_valid : program.Valid := by
  rw [←expected_program]
  exact ActualNodeCountMatrixPacket.program_valid

theorem output_base : WordMatrix.outputBase program=4727 := by
  have counts:=ActualNodeCountMatrixPacket.program_counts
  rw [expected_program] at counts
  simp only [WordMatrix.outputBase,WordMatrix.wordCount,counts.1,counts.2.1]

theorem guard_tail_exact : ActualGuardedNodeCountData.actualRows140=
    NodeCountGuards.wires.map (fun wire=>SHA256Circuit.literalRow wire true) := by
  simp only [NodeCountGuards.wires,output_base,List.map_cons,List.map_nil]
  core033_kernel_decide

def actualMatrix : R1CS.Matrix :=
  ⟨Data.modulus,ActualGuardedNodeCountData.actualVariableCount,
    ActualGuardedNodeCountData.actualInputPorts,ActualGuardedNodeCountData.actualPrivatePorts,
    ActualGuardedNodeCountData.actualOutputPorts,ActualGuardedNodeCountData.actualConstantOne,
    original.rows++ActualGuardedNodeCountData.actualRows140⟩

theorem forced_base_exact : actualMatrix=GuardMatrix.force original NodeCountGuards.wires := by
  unfold actualMatrix GuardMatrix.force
  rw [guard_tail_exact]
  rfl

theorem guarded_model_exact : actualMatrix=NodeCountGuards.compile Data.modulus := by
  rw [forced_base_exact]
  unfold original
  rw [ActualNodeCountMatrixPacket.actual_matrix_exact,expected_program]
  rfl

theorem actual_shape : actualMatrix.wellFormed=true := by
  rw [forced_base_exact]
  apply GuardMatrix.well_formed
  · exact ActualNodeCountMatrixPacket.actual_well_formed
  · decide
  · unfold original
    rw [ActualNodeCountMatrixPacket.actual_matrix_exact,expected_program]
    exact NodeCountGuards.guard_wire_bounds _

theorem tail_stats : ActualGuardedNodeCountData.actualRows140.length=1 ∧
    MatrixRowBlocks.rowsWeight ActualGuardedNodeCountData.actualRows140=120 := by core033_kernel_decide

theorem row_stats : actualMatrix.rows.length=4752 ∧ MatrixRowBlocks.rowsWeight actualMatrix.rows=734148 := by
  change (original.rows++ActualGuardedNodeCountData.actualRows140).length=4752 ∧
    MatrixRowBlocks.rowsWeight (original.rows++ActualGuardedNodeCountData.actualRows140)=734148
  simp only [List.length_append,MatrixRowBlocks.rows_weight_append,
    ActualNodeCountMatrixPacket.actual_rows_size.1,ActualNodeCountMatrixPacket.actual_rows_size.2,
    tail_stats.1,tail_stats.2]
  decide

theorem port_stats : actualMatrix.inputPorts.length=4 ∧ actualMatrix.privatePorts.length=4722 ∧
    actualMatrix.outputPorts.length=3 := by
  change ActualGuardedNodeCountData.actualInputPorts.length=4 ∧
    ActualGuardedNodeCountData.actualPrivatePorts.length=4722 ∧ ActualGuardedNodeCountData.actualOutputPorts.length=3
  simp only [ActualGuardedNodeCountData.actualInputPorts,ActualGuardedNodeCountData.actualPrivatePorts,
    ActualGuardedNodeCountData.actualOutputPorts,List.length_append,List.length_range',List.length_cons,List.length_nil]
  decide

theorem binary_size : (MatrixCodec.encode actualMatrix).length=753150 := by
  rw [MatrixRowBlocks.encoded_matrix_size,port_stats.1,port_stats.2.1,port_stats.2.2,row_stats.2]

theorem parsed_actual : Matrix.parse (MatrixCodec.encode actualMatrix)=some actualMatrix := by
  apply MatrixCodecPayload.matrix_roundtrip actualMatrix actual_shape
  · rw [row_stats.1];decide
  · rw [binary_size];decide

theorem actual_guards {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : actualMatrix.satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    (NodeCountProgram.left inputs).raw+(NodeCountProgram.right inputs).raw≤1048576 := by
  rw [guarded_model_exact] at accepted
  exact NodeCountGuards.accepted_admission (p:=R1CS.pallasScalarModulus)
    R1CS.modulus_larger_than_word program_valid valuation inputs accepted inputValues

theorem actual_public_sum {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : actualMatrix.satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    valuation (WordMatrix.outputBase program)+4294967296*valuation (WordMatrix.outputBase program+1)=
      (((NodeCountProgram.left inputs).raw+(NodeCountProgram.right inputs).raw : Nat) : F) := by
  rw [guarded_model_exact] at accepted
  exact NodeCountPublicValue.exact_public_sum R1CS.modulus_larger_than_word
    program_valid valuation inputs accepted inputValues

end CheckedGuardedNodeCountMatrix
