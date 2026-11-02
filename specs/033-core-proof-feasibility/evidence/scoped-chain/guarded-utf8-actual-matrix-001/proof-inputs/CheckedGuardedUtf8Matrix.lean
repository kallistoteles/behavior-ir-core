import ActualGuardedUtf8MatrixData8
import ActualUtf8MatrixPacket
import Core033.Utf8Guards
import Core033.KernelDecide
namespace CheckedGuardedUtf8Matrix
open Core033
namespace Data
abbrev modulus := ActualGuardedUtf8Data.actualModulus
end Data
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
abbrev original := ActualUtf8MatrixPacket.actualMatrix
abbrev program := Utf8Guards.program

theorem expected_program : ActualUtf8MatrixPacket.expectedProgram=program :=
  ActualUtf8MatrixPacket.expected_program_exact.trans ActualUtf8IR.ir_exact

theorem program_valid : program.Valid := by
  rw [←expected_program]
  exact ActualUtf8MatrixPacket.program_valid

theorem output_base : WordMatrix.outputBase program=17953 := by
  have counts:=ActualUtf8MatrixPacket.program_counts
  rw [expected_program] at counts
  simp only [WordMatrix.outputBase,WordMatrix.wordCount,counts.1,counts.2.1]

theorem guard_tail_exact : ActualGuardedUtf8Data.actualRows529=
    Utf8Guards.wires.map (fun wire=>SHA256Circuit.literalRow wire true) := by
  simp only [Utf8Guards.wires,output_base,List.map_cons,List.map_nil]
  core033_kernel_decide

def actualMatrix : R1CS.Matrix :=
  ⟨Data.modulus,ActualGuardedUtf8Data.actualVariableCount,
    ActualGuardedUtf8Data.actualInputPorts,ActualGuardedUtf8Data.actualPrivatePorts,
    ActualGuardedUtf8Data.actualOutputPorts,ActualGuardedUtf8Data.actualConstantOne,
    original.rows++ActualGuardedUtf8Data.actualRows529⟩

theorem forced_base_exact : actualMatrix=GuardMatrix.force original Utf8Guards.wires := by
  unfold actualMatrix GuardMatrix.force
  rw [guard_tail_exact]
  rfl

theorem guarded_model_exact : actualMatrix=Utf8Guards.compile Data.modulus := by
  rw [forced_base_exact]
  unfold original
  rw [ActualUtf8MatrixPacket.actual_matrix_exact,expected_program]
  rfl

theorem actual_shape : actualMatrix.wellFormed=true := by
  rw [forced_base_exact]
  apply GuardMatrix.well_formed
  · exact ActualUtf8MatrixPacket.actual_well_formed
  · decide
  · unfold original
    rw [ActualUtf8MatrixPacket.actual_matrix_exact,expected_program]
    exact Utf8Guards.guard_wire_bounds _

theorem tail_stats : ActualGuardedUtf8Data.actualRows529.length=1 ∧
    MatrixRowBlocks.rowsWeight ActualGuardedUtf8Data.actualRows529=120 := by core033_kernel_decide

theorem row_stats : actualMatrix.rows.length=18019 ∧ MatrixRowBlocks.rowsWeight actualMatrix.rows=2692128 := by
  change (original.rows++ActualGuardedUtf8Data.actualRows529).length=18019 ∧
    MatrixRowBlocks.rowsWeight (original.rows++ActualGuardedUtf8Data.actualRows529)=2692128
  simp only [List.length_append,MatrixRowBlocks.rows_weight_append,
    ActualUtf8MatrixPacket.actual_rows_size.1,ActualUtf8MatrixPacket.actual_rows_size.2,
    tail_stats.1,tail_stats.2]
  decide

theorem port_stats : actualMatrix.inputPorts.length=1 ∧ actualMatrix.privatePorts.length=17951 ∧
    actualMatrix.outputPorts.length=6 := by
  change ActualGuardedUtf8Data.actualInputPorts.length=1 ∧
    ActualGuardedUtf8Data.actualPrivatePorts.length=17951 ∧ ActualGuardedUtf8Data.actualOutputPorts.length=6
  simp only [ActualGuardedUtf8Data.actualInputPorts,ActualGuardedUtf8Data.actualPrivatePorts,
    ActualGuardedUtf8Data.actualOutputPorts,List.length_append,List.length_range',List.length_cons,List.length_nil]
  decide

theorem binary_size : (MatrixCodec.encode actualMatrix).length=2764046 := by
  rw [MatrixRowBlocks.encoded_matrix_size,port_stats.1,port_stats.2.1,port_stats.2.2,row_stats.2]

theorem parsed_actual : Matrix.parse (MatrixCodec.encode actualMatrix)=some actualMatrix := by
  apply MatrixCodecPayload.matrix_roundtrip actualMatrix actual_shape
  · rw [row_stats.1];decide
  · rw [binary_size];decide

theorem actual_guards {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : actualMatrix.satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    Utf8Encoding.Scalar (inputs 0) := by
  rw [guarded_model_exact] at accepted
  exact Utf8Guards.accepted_scalar (p:=R1CS.pallasScalarModulus)
    R1CS.modulus_larger_than_word program_valid valuation inputs accepted inputValues

end CheckedGuardedUtf8Matrix
