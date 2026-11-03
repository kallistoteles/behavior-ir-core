import ArtifactOwnBranchRoutingBlocks
import OwnBranchRoutingMatrixPrefix
import OwnBranchRoutingRowsGuards
import Core033.OwnBranchRoutingGuards
import Core033.OwnBranchHash
import Core033.MatrixCodecChunks
namespace ActualOwnBranchRoutingMatrixPacket
open Core033
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 16000000
abbrev base := OwnBranchRoutingMatrixPrefix.actualMatrix
abbrev program := OwnBranchRouting.program

theorem expected_program : OwnBranchRoutingMatrixPrefix.expectedProgram=program :=
  OwnBranchRoutingMatrixPrefix.expected_program_exact.trans ActualOwnBranchRoutingIR.ir_exact

def wires := WordGuardSuffix.wires program 43 2

theorem actual_guard_rows : OwnBranchRoutingCheckedRows.partRowsGuards=
    wires.map (fun wire=>SHA256Circuit.literalRow wire true) := by
  simp only [OwnBranchRoutingCheckedRows.partRowsGuards,OwnBranchRoutingCheckedRows.rows77,
    wires,WordGuardSuffix.wires,ActualOwnBranchRoutingIR.ir_exact,Nat.add_assoc]

def actualMatrix : R1CS.Matrix :=
  ⟨base.modulus,base.variableCount,base.inputPorts,base.privatePorts,base.outputPorts,base.constantOne,
    base.rows++OwnBranchRoutingCheckedRows.partRowsGuards⟩

theorem actual_forced_base : actualMatrix=GuardMatrix.force base wires := by
  unfold actualMatrix GuardMatrix.force
  rw [actual_guard_rows]

theorem actual_model : actualMatrix=OwnBranchRoutingGuards.compile R1CS.pallasScalarModulus := by
  rw [actual_forced_base]
  unfold base
  rw [OwnBranchRoutingMatrixPrefix.actual_matrix_exact,expected_program,OwnBranchRoutingMatrixPrefix.constants.1]
  rfl

theorem actual_shape : actualMatrix.wellFormed=true := by
  rw [actual_forced_base]
  apply GuardMatrix.well_formed
  · exact OwnBranchRoutingMatrixPrefix.actual_well_formed
  · decide
  · unfold base
    rw [OwnBranchRoutingMatrixPrefix.actual_matrix_exact,expected_program]
    exact OwnBranchRoutingGuards.guard_wire_bounds _

theorem actual_rows_size : actualMatrix.rows.length=2634 ∧ MatrixRowBlocks.rowsWeight actualMatrix.rows=371448 := by
  change (base.rows++OwnBranchRoutingCheckedRows.partRowsGuards).length=2634 ∧
    MatrixRowBlocks.rowsWeight (base.rows++OwnBranchRoutingCheckedRows.partRowsGuards)=371448
  simp only [List.length_append,MatrixRowBlocks.rows_weight_append,
    OwnBranchRoutingMatrixPrefix.actual_rows_size.1,OwnBranchRoutingMatrixPrefix.actual_rows_size.2,
    OwnBranchRoutingCheckedRows.partStatsGuards.1,OwnBranchRoutingCheckedRows.partStatsGuards.2]
  decide

theorem actual_encoded_size : (MatrixCodec.encode actualMatrix).length=382050 := by
  rw [MatrixRowBlocks.encoded_matrix_size]
  have inputs : actualMatrix.inputPorts.length=33 := OwnBranchRoutingMatrixPrefix.port_lengths.1
  have privatePorts : actualMatrix.privatePorts.length=2551 := OwnBranchRoutingMatrixPrefix.port_lengths.2.1
  have outputs : actualMatrix.outputPorts.length=45 := OwnBranchRoutingMatrixPrefix.port_lengths.2.2
  rw [inputs,privatePorts,outputs,actual_rows_size.2]

theorem actual_parsed : Matrix.parse (MatrixCodec.encode actualMatrix)=some actualMatrix := by
  apply MatrixCodecPayload.matrix_roundtrip actualMatrix actual_shape
  · rw [actual_rows_size.1];decide
  · rw [actual_encoded_size];decide

theorem actual_guard {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : actualMatrix.satisfies valuation)
    (inputValues : ∀ index,index<33 → valuation (WordField.packed index)=((inputs index).toNat : F))
    (position : Nat) (bound : position<2) : (program.eval inputs).getD (43+position) 0=1 := by
  rw [actual_model] at accepted
  exact WordGuardSuffix.forced_output_one R1CS.modulus_larger_than_word program OwnBranchRoutingGuards.program_valid
    43 2 (by rw [OwnBranchRoutingGuards.output_count]) valuation inputs accepted inputValues position bound

theorem actual_output {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : actualMatrix.satisfies valuation)
    (inputValues : ∀ index,index<33 → valuation (WordField.packed index)=((inputs index).toNat : F))
    (position : Nat) (bound : position<45) :
    valuation (WordMatrix.outputBase program+position)=(((program.eval inputs).getD position 0).toNat : F) := by
  have forced:=(GuardMatrix.satisfaction_exact base wires rfl valuation).mp
    (by rw [←actual_forced_base];exact accepted)
  have standard : (WordMatrix.compile R1CS.pallasScalarModulus program).satisfies valuation := by
    have baseSatisfied:=forced.1
    change OwnBranchRoutingMatrixPrefix.actualMatrix.satisfies valuation at baseSatisfied
    rw [OwnBranchRoutingMatrixPrefix.actual_matrix_exact,expected_program,OwnBranchRoutingMatrixPrefix.constants.1] at baseSatisfied
    exact baseSatisfied
  exact WordMatrixOutputs.evaluated_output R1CS.modulus_larger_than_word program
    OwnBranchRoutingGuards.program_valid valuation inputs standard inputValues position
    (by rw [OwnBranchRoutingGuards.output_count];exact bound)
end ActualOwnBranchRoutingMatrixPacket
