import ActualGuardedIntegerMatrixData2
import ActualIntegerMatrixPacket
import Core033.IntegerIngressGuards
import Core033.IntegerPublicValue
import Core033.KernelDecide
namespace CheckedGuardedIntegerMatrix
open Core033
namespace Data
abbrev modulus := ActualGuardedIntegerData.actualModulus
end Data
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
abbrev original := ActualIntegerMatrixPacket.actualMatrix
abbrev program := IntegerIngressGuards.program

theorem expected_program : ActualIntegerMatrixPacket.expectedProgram=program :=
  ActualIntegerMatrixPacket.expected_program_exact.trans ActualIntegerIR.ir_exact

theorem program_valid : program.Valid := by
  rw [←expected_program]
  exact ActualIntegerMatrixPacket.program_valid

theorem output_base : WordMatrix.outputBase program=5577 := by
  have counts:=ActualIntegerMatrixPacket.program_counts
  rw [expected_program] at counts
  simp only [WordMatrix.outputBase,WordMatrix.wordCount,counts.1,counts.2.1]

theorem guard_tail_exact : ActualGuardedIntegerData.actualRows165=
    IntegerIngressGuards.wires.map (fun wire=>SHA256Circuit.literalRow wire true) := by
  simp only [IntegerIngressGuards.wires,output_base,List.map_cons,List.map_nil]
  core033_kernel_decide

def actualMatrix : R1CS.Matrix :=
  ⟨Data.modulus,ActualGuardedIntegerData.actualVariableCount,
    ActualGuardedIntegerData.actualInputPorts,ActualGuardedIntegerData.actualPrivatePorts,
    ActualGuardedIntegerData.actualOutputPorts,ActualGuardedIntegerData.actualConstantOne,
    original.rows++ActualGuardedIntegerData.actualRows165⟩

theorem forced_base_exact : actualMatrix=GuardMatrix.force original IntegerIngressGuards.wires := by
  unfold actualMatrix GuardMatrix.force
  rw [guard_tail_exact]
  rfl

theorem guarded_model_exact : actualMatrix=IntegerIngressGuards.compile Data.modulus := by
  rw [forced_base_exact]
  unfold original
  rw [ActualIntegerMatrixPacket.actual_matrix_exact,expected_program]
  rfl

theorem actual_shape : actualMatrix.wellFormed=true := by
  rw [forced_base_exact]
  apply GuardMatrix.well_formed
  · exact ActualIntegerMatrixPacket.actual_well_formed
  · decide
  · unfold original
    rw [ActualIntegerMatrixPacket.actual_matrix_exact,expected_program]
    exact IntegerIngressGuards.guard_wire_bounds _

theorem tail_stats : ActualGuardedIntegerData.actualRows165.length=8 ∧
    MatrixRowBlocks.rowsWeight ActualGuardedIntegerData.actualRows165=960 := by core033_kernel_decide

theorem row_stats : actualMatrix.rows.length=5608 ∧ MatrixRowBlocks.rowsWeight actualMatrix.rows=833520 := by
  change (original.rows++ActualGuardedIntegerData.actualRows165).length=5608 ∧
    MatrixRowBlocks.rowsWeight (original.rows++ActualGuardedIntegerData.actualRows165)=833520
  simp only [List.length_append,MatrixRowBlocks.rows_weight_append,
    ActualIntegerMatrixPacket.actual_rows_size.1,ActualIntegerMatrixPacket.actual_rows_size.2,
    tail_stats.1,tail_stats.2]
  decide

theorem port_stats : actualMatrix.inputPorts.length=8 ∧ actualMatrix.privatePorts.length=5568 ∧
    actualMatrix.outputPorts.length=10 := by
  change ActualGuardedIntegerData.actualInputPorts.length=8 ∧
    ActualGuardedIntegerData.actualPrivatePorts.length=5568 ∧ ActualGuardedIntegerData.actualOutputPorts.length=10
  simp only [ActualGuardedIntegerData.actualInputPorts,ActualGuardedIntegerData.actualPrivatePorts,
    ActualGuardedIntegerData.actualOutputPorts,List.length_append,List.length_range',List.length_cons,List.length_nil]
  decide

theorem binary_size : (MatrixCodec.encode actualMatrix).length=855950 := by
  rw [MatrixRowBlocks.encoded_matrix_size,port_stats.1,port_stats.2.1,port_stats.2.2,row_stats.2]

theorem parsed_actual : Matrix.parse (MatrixCodec.encode actualMatrix)=some actualMatrix := by
  apply MatrixCodecPayload.matrix_roundtrip actualMatrix actual_shape
  · rw [row_stats.1];decide
  · rw [binary_size];decide

theorem actual_guards {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : actualMatrix.satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    ∀ index,index<8 → (inputs index).toNat<256 := by
  rw [guarded_model_exact] at accepted
  exact IntegerIngressGuards.accepted_bytes (p:=R1CS.pallasScalarModulus)
    R1CS.modulus_larger_than_word program_valid valuation inputs accepted inputValues

theorem actual_public_integer {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : actualMatrix.satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    valuation (WordMatrix.outputBase program)+4294967296*valuation (WordMatrix.outputBase program+1)=
      ((Codec.decodeLE ((List.range 8).map (fun index=>UInt8.ofNat (inputs index).toNat))) : F) := by
  rw [guarded_model_exact] at accepted
  exact IntegerPublicValue.accepted_public_integer R1CS.modulus_larger_than_word
    program_valid valuation inputs accepted inputValues

end CheckedGuardedIntegerMatrix
