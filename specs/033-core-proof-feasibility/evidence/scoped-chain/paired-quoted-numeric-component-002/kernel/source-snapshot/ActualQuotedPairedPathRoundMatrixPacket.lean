import QuotedPairedPathRoundMatrixPrefix
import QuotedPairedPathRoundRowsGuards
import Core033.WordGuardSuffix
import Core033.MatrixCodecChunks
namespace ActualQuotedPairedPathRoundMatrixPacket
open Core033
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 16000000
abbrev base := QuotedPairedPathRoundMatrixPrefix.actualMatrix
abbrev program := QuotedPairedPathRoundIR.program

theorem expected_program : QuotedPairedPathRoundMatrixPrefix.expectedProgram=program :=
  QuotedPairedPathRoundMatrixPrefix.expected_program_exact

def wires := WordGuardSuffix.wires program 96 91

theorem actual_guard_rows : QuotedPairedPathRoundCheckedRows.partRowsGuards=
    wires.map (fun wire=>SHA256Circuit.literalRow wire true) := by
  simp only [QuotedPairedPathRoundCheckedRows.partRowsGuards,QuotedPairedPathRoundCheckedRows.rows13300,
    wires,WordGuardSuffix.wires,Nat.add_assoc]

def actualMatrix : R1CS.Matrix :=
  ⟨base.modulus,base.variableCount,base.inputPorts,base.privatePorts,base.outputPorts,base.constantOne,
    base.rows++QuotedPairedPathRoundCheckedRows.partRowsGuards⟩

theorem actual_forced_base : actualMatrix=GuardMatrix.force base wires := by
  unfold actualMatrix GuardMatrix.force
  rw [actual_guard_rows]

theorem actual_model : actualMatrix=WordGuardSuffix.compile R1CS.pallasScalarModulus program 96 91 := by
  rw [actual_forced_base]
  unfold base
  rw [QuotedPairedPathRoundMatrixPrefix.actual_matrix_exact,expected_program,QuotedPairedPathRoundMatrixPrefix.constants.1]
  rfl

theorem actual_shape : actualMatrix.wellFormed=true := by
  rw [actual_forced_base]
  apply GuardMatrix.well_formed
  · exact QuotedPairedPathRoundMatrixPrefix.actual_well_formed
  · decide
  · unfold base
    rw [QuotedPairedPathRoundMatrixPrefix.actual_matrix_exact,expected_program]
    exact WordGuardSuffix.wire_bounds _ program 96 91 (by rw [QuotedPairedPathRoundIR.output_count])

theorem actual_rows_size : actualMatrix.rows.length=454068 ∧ MatrixRowBlocks.rowsWeight actualMatrix.rows=69895764 := by
  change (base.rows++QuotedPairedPathRoundCheckedRows.partRowsGuards).length=454068 ∧
    MatrixRowBlocks.rowsWeight (base.rows++QuotedPairedPathRoundCheckedRows.partRowsGuards)=69895764
  simp only [List.length_append,MatrixRowBlocks.rows_weight_append,
    QuotedPairedPathRoundMatrixPrefix.actual_rows_size.1,QuotedPairedPathRoundMatrixPrefix.actual_rows_size.2,
    QuotedPairedPathRoundCheckedRows.partStatsGuards.1,QuotedPairedPathRoundCheckedRows.partStatsGuards.2]
  decide

theorem actual_encoded_size : (MatrixCodec.encode actualMatrix).length=71705262 := by
  rw [MatrixRowBlocks.encoded_matrix_size]
  have inputs : actualMatrix.inputPorts.length=96 := QuotedPairedPathRoundMatrixPrefix.port_lengths.1
  have privatePorts : actualMatrix.privatePorts.length=452070 := QuotedPairedPathRoundMatrixPrefix.port_lengths.2.1
  have outputs : actualMatrix.outputPorts.length=187 := QuotedPairedPathRoundMatrixPrefix.port_lengths.2.2
  rw [inputs,privatePorts,outputs,actual_rows_size.2]

theorem actual_parsed : Matrix.parse (MatrixCodec.encode actualMatrix)=some actualMatrix := by
  apply MatrixCodecPayload.matrix_roundtrip actualMatrix actual_shape
  · rw [actual_rows_size.1];decide
  · rw [actual_encoded_size];decide

theorem actual_guard {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : actualMatrix.satisfies valuation)
    (inputValues : ∀ index,index<96 → valuation (WordField.packed index)=((inputs index).toNat : F))
    (position : Nat) (bound : position<91) : (program.eval inputs).getD (96+position) 0=1 := by
  rw [actual_model] at accepted
  exact WordGuardSuffix.forced_output_one R1CS.modulus_larger_than_word program QuotedPairedPathRoundIR.program_valid
    96 91 (by rw [QuotedPairedPathRoundIR.output_count]) valuation inputs accepted inputValues position bound

theorem actual_output {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : actualMatrix.satisfies valuation)
    (inputValues : ∀ index,index<96 → valuation (WordField.packed index)=((inputs index).toNat : F))
    (position : Nat) (bound : position<187) :
    valuation (WordMatrix.outputBase program+position)=(((program.eval inputs).getD position 0).toNat : F) := by
  have forced:=(GuardMatrix.satisfaction_exact base wires rfl valuation).mp
    (by rw [←actual_forced_base];exact accepted)
  have standard : (WordMatrix.compile R1CS.pallasScalarModulus program).satisfies valuation := by
    have baseSatisfied:=forced.1
    change QuotedPairedPathRoundMatrixPrefix.actualMatrix.satisfies valuation at baseSatisfied
    rw [QuotedPairedPathRoundMatrixPrefix.actual_matrix_exact,expected_program,QuotedPairedPathRoundMatrixPrefix.constants.1] at baseSatisfied
    exact baseSatisfied
  exact WordMatrixOutputs.evaluated_output R1CS.modulus_larger_than_word program
    QuotedPairedPathRoundIR.program_valid valuation inputs standard inputValues position
    (by rw [QuotedPairedPathRoundIR.output_count];exact bound)
end ActualQuotedPairedPathRoundMatrixPacket
