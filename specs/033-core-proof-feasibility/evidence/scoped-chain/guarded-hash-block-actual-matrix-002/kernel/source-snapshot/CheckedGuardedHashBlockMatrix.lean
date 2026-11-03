import ActualGuardedHashBlockMatrixData57
import ActualHashBlockMatrixPacket
import Core033.MatrixCodecChunks
import Core033.HashBlockRaw
import Core033.KernelDecide
namespace CheckedGuardedHashBlockMatrix
open Core033
namespace Data
abbrev modulus := ActualGuardedHashBlockData.actualModulus
end Data
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
abbrev original := ActualHashBlockMatrixPacket.actualMatrix
abbrev program := HashBlockGuards.program

theorem expected_program : ActualHashBlockMatrixPacket.expectedProgram=program :=
  ActualHashBlockMatrixPacket.expected_program_exact.trans ActualHashBlockIR.ir_exact

theorem program_valid : program.Valid := by
  rw [←expected_program]
  exact ActualHashBlockMatrixPacket.program_valid

theorem output_base : WordMatrix.outputBase program=125121 := by
  have counts:=ActualHashBlockMatrixPacket.program_counts
  rw [expected_program] at counts
  simp only [WordMatrix.outputBase,WordMatrix.wordCount,counts.1,counts.2.1]

theorem guard_tail_exact : ActualGuardedHashBlockData.actualRows3681=
    HashBlockGuards.wires.map (fun wire=>SHA256Circuit.literalRow wire true) := by
  simp only [HashBlockGuards.wires,output_base]
  core033_kernel_decide

def actualMatrix : R1CS.Matrix :=
  ⟨Data.modulus,ActualGuardedHashBlockData.actualVariableCount,
    ActualGuardedHashBlockData.actualInputPorts,ActualGuardedHashBlockData.actualPrivatePorts,
    ActualGuardedHashBlockData.actualOutputPorts,ActualGuardedHashBlockData.actualConstantOne,
    original.rows++ActualGuardedHashBlockData.actualRows3681⟩

theorem forced_base_exact : actualMatrix=GuardMatrix.force original HashBlockGuards.wires := by
  unfold actualMatrix GuardMatrix.force
  rw [guard_tail_exact]
  rfl

theorem guarded_model_exact : actualMatrix=HashBlockGuards.compile Data.modulus := by
  rw [forced_base_exact]
  unfold original
  rw [ActualHashBlockMatrixPacket.actual_matrix_exact,expected_program]
  rfl

theorem actual_shape : actualMatrix.wellFormed=true := by
  rw [forced_base_exact]
  apply GuardMatrix.well_formed
  · exact ActualHashBlockMatrixPacket.actual_well_formed
  · decide
  · unfold original
    rw [ActualHashBlockMatrixPacket.actual_matrix_exact,expected_program]
    exact HashBlockGuards.guard_wire_bounds _

theorem tail_stats : ActualGuardedHashBlockData.actualRows3681.length=64 ∧
    MatrixRowBlocks.rowsWeight ActualGuardedHashBlockData.actualRows3681=7680 := by core033_kernel_decide

theorem row_stats : actualMatrix.rows.length=125968 ∧ MatrixRowBlocks.rowsWeight actualMatrix.rows=20386632 := by
  change (original.rows++ActualGuardedHashBlockData.actualRows3681).length=125968 ∧
    MatrixRowBlocks.rowsWeight (original.rows++ActualGuardedHashBlockData.actualRows3681)=20386632
  simp only [List.length_append,MatrixRowBlocks.rows_weight_append,
    ActualHashBlockMatrixPacket.actual_rows_size.1,ActualHashBlockMatrixPacket.actual_rows_size.2,
    tail_stats.1,tail_stats.2]
  decide

theorem port_stats : actualMatrix.inputPorts.length=72 ∧ actualMatrix.privatePorts.length=125048 ∧
    actualMatrix.outputPorts.length=72 := by
  change ActualGuardedHashBlockData.actualInputPorts.length=72 ∧
    ActualGuardedHashBlockData.actualPrivatePorts.length=125048 ∧ ActualGuardedHashBlockData.actualOutputPorts.length=72
  simp only [ActualGuardedHashBlockData.actualInputPorts,ActualGuardedHashBlockData.actualPrivatePorts,
    ActualGuardedHashBlockData.actualOutputPorts,List.length_append,List.length_range',List.length_cons,List.length_nil]
  decide

theorem binary_size : (MatrixCodec.encode actualMatrix).length=20887486 := by
  rw [MatrixRowBlocks.encoded_matrix_size,port_stats.1,port_stats.2.1,port_stats.2.2,row_stats.2]

theorem parsed_actual : Matrix.parse (MatrixCodec.encode actualMatrix)=some actualMatrix := by
  apply MatrixCodecPayload.matrix_roundtrip actualMatrix actual_shape
  · rw [row_stats.1];decide
  · rw [binary_size];decide

theorem actual_guards {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : actualMatrix.satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    ∀ index,index<64 → (inputs (8+index)).toNat<256 := by
  rw [guarded_model_exact] at accepted
  exact HashBlockGuards.accepted_bytes (p:=R1CS.pallasScalarModulus)
    R1CS.modulus_larger_than_word valuation inputs accepted inputValues

theorem actual_compression_output {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : actualMatrix.satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F))
    (index : Nat) (bound : index<8) :
    valuation (WordMatrix.outputBase program+index)=
      (((SHA256.stateWords (SHA256.compress (HashBlockRaw.state inputs)
        (SHA256.parseBlock (HashBlockRaw.bytes inputs)))).getD index 0).toNat : F) := by
  rw [guarded_model_exact] at accepted
  exact HashBlockRaw.accepted_output R1CS.modulus_larger_than_word valuation inputs accepted inputValues index bound

end CheckedGuardedHashBlockMatrix
