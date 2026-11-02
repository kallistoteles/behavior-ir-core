import ActualGuardedScalarBooleanMatrixData0
import ActualGuardedScalarByteMatrixData0
import ActualGuardedScalarShortMatrixData0
import ActualRangeMatrixPacket
import Core033.ScalarRangeGuards
import Core033.KernelDecide
namespace CheckedGuardedScalarMatrices
open Core033
namespace Data
abbrev modulus := ActualGuardedScalarBooleanData.actualModulus
end Data
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
abbrev original := ActualRangeMatrixPacket.actualMatrix
abbrev program := ScalarRangeGuards.program

theorem expected_program : ActualRangeMatrixPacket.expectedProgram=program :=
  ActualRangeMatrixPacket.expected_program_exact.trans ActualRangeIR.ir_exact

theorem program_valid : program.Valid := by
  rw [←expected_program]
  exact ActualRangeMatrixPacket.program_valid

theorem output_base : WordMatrix.outputBase program=1871 := by
  have counts:=ActualRangeMatrixPacket.program_counts
  rw [expected_program] at counts
  simp only [WordMatrix.outputBase,WordMatrix.wordCount,counts.1,counts.2.1]

def actualTail : ScalarRangeGuards.Kind → List R1CS.Row
  | .boolean=>ActualGuardedScalarBooleanData.actualRows56
  | .byte=>ActualGuardedScalarByteData.actualRows56
  | .short=>ActualGuardedScalarShortData.actualRows56

theorem guard_tail_exact (kind : ScalarRangeGuards.Kind) : actualTail kind=
    (ScalarRangeGuards.wires kind).map (fun wire=>SHA256Circuit.literalRow wire true) := by
  cases kind <;> simp only [actualTail,ScalarRangeGuards.wires,ScalarRangeGuards.Kind.position,
    output_base,List.map_cons,List.map_nil]
  all_goals core033_kernel_decide

def actualMatrix (kind : ScalarRangeGuards.Kind) : R1CS.Matrix :=
  ⟨Data.modulus,ActualGuardedScalarBooleanData.actualVariableCount,
    ActualGuardedScalarBooleanData.actualInputPorts,ActualGuardedScalarBooleanData.actualPrivatePorts,
    ActualGuardedScalarBooleanData.actualOutputPorts,ActualGuardedScalarBooleanData.actualConstantOne,
    original.rows++actualTail kind⟩

theorem forced_base_exact (kind : ScalarRangeGuards.Kind) : actualMatrix kind=GuardMatrix.force original (ScalarRangeGuards.wires kind) := by
  unfold actualMatrix GuardMatrix.force
  rw [guard_tail_exact]
  rfl

theorem guarded_model_exact (kind : ScalarRangeGuards.Kind) : actualMatrix kind=ScalarRangeGuards.compile Data.modulus kind := by
  rw [forced_base_exact]
  unfold original
  rw [ActualRangeMatrixPacket.actual_matrix_exact,expected_program]
  rfl

theorem actual_shape (kind : ScalarRangeGuards.Kind) : (actualMatrix kind).wellFormed=true := by
  rw [forced_base_exact]
  apply GuardMatrix.well_formed
  · exact ActualRangeMatrixPacket.actual_well_formed
  · decide
  · unfold original
    rw [ActualRangeMatrixPacket.actual_matrix_exact,expected_program]
    exact ScalarRangeGuards.guard_wire_bounds _ kind

theorem tail_stats (kind : ScalarRangeGuards.Kind) : (actualTail kind).length=1 ∧
    MatrixRowBlocks.rowsWeight (actualTail kind)=120 := by
  cases kind <;> unfold actualTail <;> core033_kernel_decide

theorem row_stats (kind : ScalarRangeGuards.Kind) : (actualMatrix kind).rows.length=1877 ∧ MatrixRowBlocks.rowsWeight (actualMatrix kind).rows=278124 := by
  change (original.rows++actualTail kind).length=1877 ∧
    MatrixRowBlocks.rowsWeight (original.rows++actualTail kind)=278124
  simp only [List.length_append,MatrixRowBlocks.rows_weight_append,
    ActualRangeMatrixPacket.actual_rows_size.1,ActualRangeMatrixPacket.actual_rows_size.2,
    (tail_stats kind).1,(tail_stats kind).2]
  decide

theorem port_stats (kind : ScalarRangeGuards.Kind) : (actualMatrix kind).inputPorts.length=1 ∧ (actualMatrix kind).privatePorts.length=1869 ∧
    (actualMatrix kind).outputPorts.length=3 := by
  change ActualGuardedScalarBooleanData.actualInputPorts.length=1 ∧
    ActualGuardedScalarBooleanData.actualPrivatePorts.length=1869 ∧ ActualGuardedScalarBooleanData.actualOutputPorts.length=3
  simp only [ActualGuardedScalarBooleanData.actualInputPorts,ActualGuardedScalarBooleanData.actualPrivatePorts,
    ActualGuardedScalarBooleanData.actualOutputPorts,List.length_append,List.length_range',List.length_cons,List.length_nil]
  decide

theorem binary_size (kind : ScalarRangeGuards.Kind) : (MatrixCodec.encode (actualMatrix kind)).length=285702 := by
  rw [MatrixRowBlocks.encoded_matrix_size,(port_stats kind).1,(port_stats kind).2.1,(port_stats kind).2.2,(row_stats kind).2]

theorem parsed_actual (kind : ScalarRangeGuards.Kind) : Matrix.parse (MatrixCodec.encode (actualMatrix kind))=some (actualMatrix kind) := by
  apply MatrixCodecPayload.matrix_roundtrip (actualMatrix kind) (actual_shape kind)
  · rw [row_stats.1];decide
  · rw [binary_size];decide

theorem actual_guards {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (kind : ScalarRangeGuards.Kind) (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : (actualMatrix kind).satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    (inputs 0).toNat<2^kind.bits := by
  rw [guarded_model_exact] at accepted
  exact ScalarRangeGuards.accepted_range R1CS.modulus_larger_than_word program_valid kind valuation inputs accepted inputValues

def actualBoolean := actualMatrix .boolean
def actualByte := actualMatrix .byte
def actualShort := actualMatrix .short

end CheckedGuardedScalarMatrices
