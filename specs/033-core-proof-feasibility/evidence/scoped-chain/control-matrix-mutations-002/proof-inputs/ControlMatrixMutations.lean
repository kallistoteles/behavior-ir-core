import CheckedControlMatrix
import Core033.MatrixPacket
import Core033.KernelDecide
import MutatedControlMatrixDeletedData0
import MutatedControlMatrixModulusData0
import MutatedControlMatrixCoefficientData0
namespace ControlMatrixMutations
open Core033
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
abbrev good := CheckedControlMatrix.actualMatrix
def deleted : R1CS.Matrix := {good with rows:=good.rows.tail}
def changedModulus : R1CS.Matrix := {good with modulus:=good.modulus+2}
def wrongRow : R1CS.Row := ⟨[⟨2,1⟩],[⟨0,good.modulus-2⟩,⟨2,1⟩],[]⟩
def changedCoefficient : R1CS.Matrix := {good with rows:=wrongRow::good.rows.tail}
theorem original_accepted : MatrixPacket.validate good (MatrixCodec.encode good)=true :=
  (MatrixPacket.decoded_acceptance good good _ CheckedControlMatrix.actual_parsed).mpr rfl
theorem deleted_shape : deleted.wellFormed=true :=
  MatrixPacket.row_subset_preserves_shape good CheckedControlMatrix.matrix_shape _ (by intro row member;exact List.mem_of_mem_tail member)
theorem modulus_shape : changedModulus.wellFormed=true :=
  MatrixPacket.modulus_increase_preserves_shape good CheckedControlMatrix.matrix_shape _ (by omega) (by decide)
theorem wrong_row_shape : R1CS.linearWellFormed good.modulus good.variableCount wrongRow.a=true ∧
    R1CS.linearWellFormed good.modulus good.variableCount wrongRow.b=true ∧
    R1CS.linearWellFormed good.modulus good.variableCount wrongRow.c=true := by core033_kernel_decide
theorem coefficient_shape : changedCoefficient.wellFormed=true := by
  apply MatrixPacket.replacement_rows_preserve_shape good CheckedControlMatrix.matrix_shape
  intro row member
  change row∈wrongRow::good.rows.tail at member
  rcases List.mem_cons.mp member with same|inside
  · subst row;exact wrong_row_shape
  · exact MatrixPacket.rows_are_well_formed good CheckedControlMatrix.matrix_shape row (List.mem_of_mem_tail inside)
def quotedDeleted : R1CS.Matrix := ⟨MutatedControlDataDeleted.actualModulus,MutatedControlDataDeleted.actualVariableCount,MutatedControlDataDeleted.actualInputPorts,MutatedControlDataDeleted.actualPrivatePorts,MutatedControlDataDeleted.actualOutputPorts,MutatedControlDataDeleted.actualConstantOne,[MutatedControlDataDeleted.actualRows0,MutatedControlDataDeleted.actualRows1,MutatedControlDataDeleted.actualRows2,MutatedControlDataDeleted.actualRows3,MutatedControlDataDeleted.actualRows4,MutatedControlDataDeleted.actualRows5,MutatedControlDataDeleted.actualRows6,MutatedControlDataDeleted.actualRows7,MutatedControlDataDeleted.actualRows8,MutatedControlDataDeleted.actualRows9,MutatedControlDataDeleted.actualRows10,MutatedControlDataDeleted.actualRows11,MutatedControlDataDeleted.actualRows12,MutatedControlDataDeleted.actualRows13,MutatedControlDataDeleted.actualRows14,MutatedControlDataDeleted.actualRows15,MutatedControlDataDeleted.actualRows16,MutatedControlDataDeleted.actualRows17,MutatedControlDataDeleted.actualRows18,MutatedControlDataDeleted.actualRows19,MutatedControlDataDeleted.actualRows20,MutatedControlDataDeleted.actualRows21,MutatedControlDataDeleted.actualRows22,MutatedControlDataDeleted.actualRows23,MutatedControlDataDeleted.actualRows24,MutatedControlDataDeleted.actualRows25,MutatedControlDataDeleted.actualRows26,MutatedControlDataDeleted.actualRows27,MutatedControlDataDeleted.actualRows28,MutatedControlDataDeleted.actualRows29,MutatedControlDataDeleted.actualRows30,MutatedControlDataDeleted.actualRows31,MutatedControlDataDeleted.actualRows32].flatten⟩
theorem actual_changeDeleted : quotedDeleted=deleted := by core033_kernel_decide
theorem row_boundDeleted : 0<deleted.rows.length ∧ deleted.rows.length≤16777216 := by core033_kernel_decide
theorem byte_boundDeleted : (MatrixCodec.encode deleted).length≤1073741824 := by
  rw [MatrixRowBlocks.encoded_matrix_size]
  core033_kernel_decide
theorem parsedDeleted : Matrix.parse (MatrixCodec.encode quotedDeleted)=some quotedDeleted := by
  rw [actual_changeDeleted]
  exact MatrixCodecPayload.matrix_roundtrip deleted deleted_shape row_boundDeleted byte_boundDeleted
def quotedModulus : R1CS.Matrix := ⟨MutatedControlDataModulus.actualModulus,MutatedControlDataModulus.actualVariableCount,MutatedControlDataModulus.actualInputPorts,MutatedControlDataModulus.actualPrivatePorts,MutatedControlDataModulus.actualOutputPorts,MutatedControlDataModulus.actualConstantOne,[MutatedControlDataModulus.actualRows0,MutatedControlDataModulus.actualRows1,MutatedControlDataModulus.actualRows2,MutatedControlDataModulus.actualRows3,MutatedControlDataModulus.actualRows4,MutatedControlDataModulus.actualRows5,MutatedControlDataModulus.actualRows6,MutatedControlDataModulus.actualRows7,MutatedControlDataModulus.actualRows8,MutatedControlDataModulus.actualRows9,MutatedControlDataModulus.actualRows10,MutatedControlDataModulus.actualRows11,MutatedControlDataModulus.actualRows12,MutatedControlDataModulus.actualRows13,MutatedControlDataModulus.actualRows14,MutatedControlDataModulus.actualRows15,MutatedControlDataModulus.actualRows16,MutatedControlDataModulus.actualRows17,MutatedControlDataModulus.actualRows18,MutatedControlDataModulus.actualRows19,MutatedControlDataModulus.actualRows20,MutatedControlDataModulus.actualRows21,MutatedControlDataModulus.actualRows22,MutatedControlDataModulus.actualRows23,MutatedControlDataModulus.actualRows24,MutatedControlDataModulus.actualRows25,MutatedControlDataModulus.actualRows26,MutatedControlDataModulus.actualRows27,MutatedControlDataModulus.actualRows28,MutatedControlDataModulus.actualRows29,MutatedControlDataModulus.actualRows30,MutatedControlDataModulus.actualRows31,MutatedControlDataModulus.actualRows32].flatten⟩
theorem actual_changeModulus : quotedModulus=changedModulus := by core033_kernel_decide
theorem row_boundModulus : 0<changedModulus.rows.length ∧ changedModulus.rows.length≤16777216 := by core033_kernel_decide
theorem byte_boundModulus : (MatrixCodec.encode changedModulus).length≤1073741824 := by
  rw [MatrixRowBlocks.encoded_matrix_size]
  core033_kernel_decide
theorem parsedModulus : Matrix.parse (MatrixCodec.encode quotedModulus)=some quotedModulus := by
  rw [actual_changeModulus]
  exact MatrixCodecPayload.matrix_roundtrip changedModulus modulus_shape row_boundModulus byte_boundModulus
def quotedCoefficient : R1CS.Matrix := ⟨MutatedControlDataCoefficient.actualModulus,MutatedControlDataCoefficient.actualVariableCount,MutatedControlDataCoefficient.actualInputPorts,MutatedControlDataCoefficient.actualPrivatePorts,MutatedControlDataCoefficient.actualOutputPorts,MutatedControlDataCoefficient.actualConstantOne,[MutatedControlDataCoefficient.actualRows0,MutatedControlDataCoefficient.actualRows1,MutatedControlDataCoefficient.actualRows2,MutatedControlDataCoefficient.actualRows3,MutatedControlDataCoefficient.actualRows4,MutatedControlDataCoefficient.actualRows5,MutatedControlDataCoefficient.actualRows6,MutatedControlDataCoefficient.actualRows7,MutatedControlDataCoefficient.actualRows8,MutatedControlDataCoefficient.actualRows9,MutatedControlDataCoefficient.actualRows10,MutatedControlDataCoefficient.actualRows11,MutatedControlDataCoefficient.actualRows12,MutatedControlDataCoefficient.actualRows13,MutatedControlDataCoefficient.actualRows14,MutatedControlDataCoefficient.actualRows15,MutatedControlDataCoefficient.actualRows16,MutatedControlDataCoefficient.actualRows17,MutatedControlDataCoefficient.actualRows18,MutatedControlDataCoefficient.actualRows19,MutatedControlDataCoefficient.actualRows20,MutatedControlDataCoefficient.actualRows21,MutatedControlDataCoefficient.actualRows22,MutatedControlDataCoefficient.actualRows23,MutatedControlDataCoefficient.actualRows24,MutatedControlDataCoefficient.actualRows25,MutatedControlDataCoefficient.actualRows26,MutatedControlDataCoefficient.actualRows27,MutatedControlDataCoefficient.actualRows28,MutatedControlDataCoefficient.actualRows29,MutatedControlDataCoefficient.actualRows30,MutatedControlDataCoefficient.actualRows31,MutatedControlDataCoefficient.actualRows32].flatten⟩
theorem actual_changeCoefficient : quotedCoefficient=changedCoefficient := by core033_kernel_decide
theorem row_boundCoefficient : 0<changedCoefficient.rows.length ∧ changedCoefficient.rows.length≤16777216 := by core033_kernel_decide
theorem byte_boundCoefficient : (MatrixCodec.encode changedCoefficient).length≤1073741824 := by
  rw [MatrixRowBlocks.encoded_matrix_size]
  core033_kernel_decide
theorem parsedCoefficient : Matrix.parse (MatrixCodec.encode quotedCoefficient)=some quotedCoefficient := by
  rw [actual_changeCoefficient]
  exact MatrixCodecPayload.matrix_roundtrip changedCoefficient coefficient_shape row_boundCoefficient byte_boundCoefficient
theorem different_deleted : quotedDeleted≠good := by
  intro same
  have count:=congrArg (fun matrix : R1CS.Matrix=>matrix.rows.length) same
  rw [actual_changeDeleted] at count
  have original : good.rows.length=2056 := CheckedControlMatrix.row_stats.1
  change good.rows.length-1=good.rows.length at count
  rw [original] at count
  omega
theorem different_modulus : quotedModulus≠good := by
  intro same
  have different : changedModulus.modulus≠good.modulus := by change good.modulus+2≠good.modulus;omega
  exact different (congrArg R1CS.Matrix.modulus (actual_changeModulus.symm.trans same))
theorem different_coefficient : quotedCoefficient≠good := by
  intro same
  have different : changedCoefficient.rows.head?≠good.rows.head? := by core033_kernel_decide
  exact different (congrArg (fun matrix : R1CS.Matrix=>matrix.rows.head?) (actual_changeCoefficient.symm.trans same))
theorem rejectedDeleted : MatrixPacket.validate good (MatrixCodec.encode quotedDeleted)=false :=
  MatrixPacket.decoded_mismatch_rejected good quotedDeleted _ parsedDeleted different_deleted
theorem rejectedModulus : MatrixPacket.validate good (MatrixCodec.encode quotedModulus)=false :=
  MatrixPacket.decoded_mismatch_rejected good quotedModulus _ parsedModulus different_modulus
theorem rejectedCoefficient : MatrixPacket.validate good (MatrixCodec.encode quotedCoefficient)=false :=
  MatrixPacket.decoded_mismatch_rejected good quotedCoefficient _ parsedCoefficient different_coefficient
end ControlMatrixMutations
