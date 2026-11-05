import SharedFrameMatrixPrefix
import SharedFrameRowsGuards
import Core033.WordGuardSuffix
import Core033.MatrixCodecChunks
namespace ActualSharedFrameMatrixPacket
open Core033
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 16000000
abbrev base := SharedFrameMatrixPrefix.actualMatrix
abbrev program := SharedFrameProgram.program

theorem expected_program : SharedFrameMatrixPrefix.expectedProgram=program :=
  SharedFrameMatrixPrefix.expected_program_exact

def wires := WordGuardSuffix.wires program 43 82

theorem actual_guard_rows : SharedFrameCheckedRows.partRowsGuards=
    wires.map (fun wire=>SHA256Circuit.literalRow wire true) := by
  simp only [SharedFrameCheckedRows.partRowsGuards,SharedFrameCheckedRows.rows3839,
    wires,WordGuardSuffix.wires,Nat.add_assoc]

def actualMatrix : R1CS.Matrix :=
  ⟨base.modulus,base.variableCount,base.inputPorts,base.privatePorts,base.outputPorts,base.constantOne,
    base.rows++SharedFrameCheckedRows.partRowsGuards⟩

theorem actual_forced_base : actualMatrix=GuardMatrix.force base wires := by
  unfold actualMatrix GuardMatrix.force
  rw [actual_guard_rows]

theorem actual_model : actualMatrix=WordGuardSuffix.compile R1CS.pallasScalarModulus program 43 82 := by
  rw [actual_forced_base]
  unfold base
  rw [SharedFrameMatrixPrefix.actual_matrix_exact,expected_program,SharedFrameMatrixPrefix.constants.1]
  rfl

theorem actual_shape : actualMatrix.wellFormed=true := by
  rw [actual_forced_base]
  apply GuardMatrix.well_formed
  · exact SharedFrameMatrixPrefix.actual_well_formed
  · decide
  · unfold base
    rw [SharedFrameMatrixPrefix.actual_matrix_exact,expected_program]
    exact WordGuardSuffix.wire_bounds _ program 43 82 (by rw [SharedFrameProgram.output_count])

theorem actual_rows_size : actualMatrix.rows.length=131450 ∧ MatrixRowBlocks.rowsWeight actualMatrix.rows=21946128 := by
  change (base.rows++SharedFrameCheckedRows.partRowsGuards).length=131450 ∧
    MatrixRowBlocks.rowsWeight (base.rows++SharedFrameCheckedRows.partRowsGuards)=21946128
  simp only [List.length_append,MatrixRowBlocks.rows_weight_append,
    SharedFrameMatrixPrefix.actual_rows_size.1,SharedFrameMatrixPrefix.actual_rows_size.2,
    SharedFrameCheckedRows.partStatsGuards.1,SharedFrameCheckedRows.partStatsGuards.2]
  decide

theorem actual_encoded_size : (MatrixCodec.encode actualMatrix).length=22468682 := by
  rw [MatrixRowBlocks.encoded_matrix_size]
  have inputs : actualMatrix.inputPorts.length=43 := SharedFrameMatrixPrefix.port_lengths.1
  have privatePorts : actualMatrix.privatePorts.length=130449 := SharedFrameMatrixPrefix.port_lengths.2.1
  have outputs : actualMatrix.outputPorts.length=125 := SharedFrameMatrixPrefix.port_lengths.2.2
  rw [inputs,privatePorts,outputs,actual_rows_size.2]

theorem actual_parsed : Matrix.parse (MatrixCodec.encode actualMatrix)=some actualMatrix := by
  apply MatrixCodecPayload.matrix_roundtrip actualMatrix actual_shape
  · rw [actual_rows_size.1];decide
  · rw [actual_encoded_size];decide

theorem actual_guard {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : actualMatrix.satisfies valuation)
    (inputValues : ∀ index,index<43 → valuation (WordField.packed index)=((inputs index).toNat : F))
    (position : Nat) (bound : position<82) : (program.eval inputs).getD (43+position) 0=1 := by
  rw [actual_model] at accepted
  exact WordGuardSuffix.forced_output_one R1CS.modulus_larger_than_word program SharedFrameProgram.program_valid
    43 82 (by rw [SharedFrameProgram.output_count]) valuation inputs accepted inputValues position bound

theorem actual_output {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : actualMatrix.satisfies valuation)
    (inputValues : ∀ index,index<43 → valuation (WordField.packed index)=((inputs index).toNat : F))
    (position : Nat) (bound : position<125) :
    valuation (WordMatrix.outputBase program+position)=(((program.eval inputs).getD position 0).toNat : F) := by
  have forced:=(GuardMatrix.satisfaction_exact base wires rfl valuation).mp
    (by rw [←actual_forced_base];exact accepted)
  have standard : (WordMatrix.compile R1CS.pallasScalarModulus program).satisfies valuation := by
    have baseSatisfied:=forced.1
    change SharedFrameMatrixPrefix.actualMatrix.satisfies valuation at baseSatisfied
    rw [SharedFrameMatrixPrefix.actual_matrix_exact,expected_program,SharedFrameMatrixPrefix.constants.1] at baseSatisfied
    exact baseSatisfied
  exact WordMatrixOutputs.evaluated_output R1CS.modulus_larger_than_word program
    SharedFrameProgram.program_valid valuation inputs standard inputValues position
    (by rw [SharedFrameProgram.output_count];exact bound)
theorem actual_admitted_complete {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (inputs : Nat → WordIR.Word)
    (admitted : ∀ position,position<82 → (program.eval inputs).getD (43+position) 0=1) :
    ∃ valuation : Nat → F,actualMatrix.satisfies valuation ∧
      (∀ index,index<43 → valuation (WordField.packed index)=((inputs index).toNat : F)) ∧
      ∀ position,position<125 → valuation (WordMatrix.outputBase program+position)=
        (((program.eval inputs).getD position 0).toNat : F) := by
  obtain ⟨valuation,satisfied,inputValues⟩:=WordGuardSuffix.admitted_complete (F:=F)
    R1CS.modulus_larger_than_word program SharedFrameProgram.program_valid
    43 82 (by rw [SharedFrameProgram.output_count]) inputs admitted
  have actualSatisfied : actualMatrix.satisfies valuation := by
    rw [actual_model]
    exact satisfied
  exact ⟨valuation,actualSatisfied,inputValues,fun position bound=>
    actual_output valuation inputs actualSatisfied inputValues position bound⟩

end ActualSharedFrameMatrixPacket
