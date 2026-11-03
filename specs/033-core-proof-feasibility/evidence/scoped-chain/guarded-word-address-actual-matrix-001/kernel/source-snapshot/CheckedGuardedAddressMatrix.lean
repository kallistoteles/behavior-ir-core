import ActualGuardedAddressMatrixData4
import ActualAddressMatrixPacket
import Core033.WordAddressGuards
import Core033.KernelDecide
namespace CheckedGuardedAddressMatrix
open Core033
namespace Data
abbrev modulus := ActualGuardedAddressData.actualModulus
end Data
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
abbrev original := ActualAddressMatrixPacket.actualMatrix
abbrev program := WordAddressGuards.program

theorem expected_program : ActualAddressMatrixPacket.expectedProgram=program :=
  ActualAddressMatrixPacket.expected_program_exact.trans ActualAddressIR.ir_exact

theorem program_valid : program.Valid := by
  rw [←expected_program]
  exact ActualAddressMatrixPacket.program_valid

theorem output_base : WordMatrix.outputBase program=9079 := by
  have counts:=ActualAddressMatrixPacket.program_counts
  rw [expected_program] at counts
  simp only [WordMatrix.outputBase,WordMatrix.wordCount,counts.1,counts.2.1]

theorem guard_tail_exact : ActualGuardedAddressData.actualRows268=
    WordAddressGuards.wires.map (fun wire=>SHA256Circuit.literalRow wire true) := by
  simp only [WordAddressGuards.wires,output_base,List.range_succ,List.range_zero,List.map_cons,List.map_nil]
  core033_kernel_decide

def actualMatrix : R1CS.Matrix :=
  ⟨Data.modulus,ActualGuardedAddressData.actualVariableCount,
    ActualGuardedAddressData.actualInputPorts,ActualGuardedAddressData.actualPrivatePorts,
    ActualGuardedAddressData.actualOutputPorts,ActualGuardedAddressData.actualConstantOne,
    original.rows++ActualGuardedAddressData.actualRows268⟩

theorem forced_base_exact : actualMatrix=GuardMatrix.force original WordAddressGuards.wires := by
  unfold actualMatrix GuardMatrix.force
  rw [guard_tail_exact]
  rfl

theorem guarded_model_exact : actualMatrix=WordAddressGuards.compile Data.modulus := by
  rw [forced_base_exact]
  unfold original
  rw [ActualAddressMatrixPacket.actual_matrix_exact,expected_program]
  rfl

theorem actual_shape : actualMatrix.wellFormed=true := by
  rw [forced_base_exact]
  apply GuardMatrix.well_formed
  · exact ActualAddressMatrixPacket.actual_well_formed
  · decide
  · unfold original
    rw [ActualAddressMatrixPacket.actual_matrix_exact,expected_program]
    exact WordAddressGuards.guard_wire_bounds _

theorem tail_stats : ActualGuardedAddressData.actualRows268.length=3 ∧
    MatrixRowBlocks.rowsWeight ActualGuardedAddressData.actualRows268=360 := by core033_kernel_decide

theorem row_stats : actualMatrix.rows.length=9112 ∧ MatrixRowBlocks.rowsWeight actualMatrix.rows=1327404 := by
  change (original.rows++ActualGuardedAddressData.actualRows268).length=9112 ∧
    MatrixRowBlocks.rowsWeight (original.rows++ActualGuardedAddressData.actualRows268)=1327404
  simp only [List.length_append,MatrixRowBlocks.rows_weight_append,
    ActualAddressMatrixPacket.actual_rows_size.1,ActualAddressMatrixPacket.actual_rows_size.2,
    tail_stats.1,tail_stats.2]
  decide

theorem port_stats : actualMatrix.inputPorts.length=9 ∧ actualMatrix.privatePorts.length=9069 ∧
    actualMatrix.outputPorts.length=4 := by
  change ActualGuardedAddressData.actualInputPorts.length=9 ∧
    ActualGuardedAddressData.actualPrivatePorts.length=9069 ∧ ActualGuardedAddressData.actualOutputPorts.length=4
  simp only [ActualGuardedAddressData.actualInputPorts,ActualGuardedAddressData.actualPrivatePorts,
    ActualGuardedAddressData.actualOutputPorts,List.length_append,List.length_range',List.length_cons,List.length_nil]
  decide

theorem binary_size : (MatrixCodec.encode actualMatrix).length=1363818 := by
  rw [MatrixRowBlocks.encoded_matrix_size,port_stats.1,port_stats.2.1,port_stats.2.2,row_stats.2]

theorem parsed_actual : Matrix.parse (MatrixCodec.encode actualMatrix)=some actualMatrix := by
  apply MatrixCodecPayload.matrix_roundtrip actualMatrix actual_shape
  · rw [row_stats.1];decide
  · rw [binary_size];decide

theorem actual_guards {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : actualMatrix.satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    (inputs 8).toNat<256 := by
  rw [guarded_model_exact] at accepted
  exact WordAddressGuards.accepted_depth (p:=R1CS.pallasScalarModulus)
    R1CS.modulus_larger_than_word program_valid valuation inputs accepted inputValues

theorem actual_address_bit {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : actualMatrix.satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    (program.eval inputs).getD 0 0=WordControl.boolWord
      ((inputs ((inputs 8).toNat/32)).getLsbD (31-(inputs 8).toNat%32)) := by
  rw [guarded_model_exact] at accepted
  exact WordAddressGuards.accepted_address_bit R1CS.modulus_larger_than_word program_valid valuation inputs accepted inputValues

end CheckedGuardedAddressMatrix
