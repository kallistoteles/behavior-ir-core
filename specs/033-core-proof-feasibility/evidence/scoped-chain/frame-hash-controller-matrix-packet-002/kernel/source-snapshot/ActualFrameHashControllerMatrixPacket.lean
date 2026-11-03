import ArtifactFrameHashControllerBlocks
import FrameHashControllerMatrixPrefix
import FrameHashControllerRowsGuards
import Core033.FrameHashControllerGuards
import Core033.FrameHashControllerTrace
import Core033.MatrixCodecChunks
namespace ActualFrameHashControllerMatrixPacket
open Core033
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 16000000
abbrev base := FrameHashControllerMatrixPrefix.actualMatrix
abbrev program := FrameHashController.program

theorem expected_program : FrameHashControllerMatrixPrefix.expectedProgram=program :=
  FrameHashControllerMatrixPrefix.expected_program_exact.trans ActualFrameHashControllerIR.ir_exact

theorem actual_guard_rows : FrameHashControllerCheckedRows.partRowsGuards=
    FrameHashControllerGuards.wires.map (fun wire=>SHA256Circuit.literalRow wire true) := by
  simp only [FrameHashControllerCheckedRows.partRowsGuards,FrameHashControllerCheckedRows.rows8871,
    FrameHashControllerGuards.wires,WordGuardSuffix.wires,ActualFrameHashControllerIR.ir_exact,Nat.add_assoc]

def actualMatrix : R1CS.Matrix :=
  ⟨base.modulus,base.variableCount,base.inputPorts,base.privatePorts,base.outputPorts,base.constantOne,
    base.rows++FrameHashControllerCheckedRows.partRowsGuards⟩

theorem actual_forced_base : actualMatrix=GuardMatrix.force base FrameHashControllerGuards.wires := by
  unfold actualMatrix GuardMatrix.force
  rw [actual_guard_rows]

theorem actual_model : actualMatrix=FrameHashControllerGuards.compile R1CS.pallasScalarModulus := by
  rw [actual_forced_base]
  unfold base
  rw [FrameHashControllerMatrixPrefix.actual_matrix_exact,expected_program,FrameHashControllerMatrixPrefix.constants.1]
  rfl

theorem actual_shape : actualMatrix.wellFormed=true := by
  rw [actual_forced_base]
  apply GuardMatrix.well_formed
  · exact FrameHashControllerMatrixPrefix.actual_well_formed
  · decide
  · unfold base
    rw [FrameHashControllerMatrixPrefix.actual_matrix_exact,expected_program]
    exact FrameHashControllerGuards.guard_wire_bounds _

theorem actual_rows_size : actualMatrix.rows.length=302936 ∧ MatrixRowBlocks.rowsWeight actualMatrix.rows=46959216 := by
  change (base.rows++FrameHashControllerCheckedRows.partRowsGuards).length=302936 ∧
    MatrixRowBlocks.rowsWeight (base.rows++FrameHashControllerCheckedRows.partRowsGuards)=46959216
  simp only [List.length_append,MatrixRowBlocks.rows_weight_append,
    FrameHashControllerMatrixPrefix.actual_rows_size.1,FrameHashControllerMatrixPrefix.actual_rows_size.2,
    FrameHashControllerCheckedRows.partStatsGuards.1,FrameHashControllerCheckedRows.partStatsGuards.2]
  decide

theorem actual_encoded_size : (MatrixCodec.encode actualMatrix).length=48166122 := by
  rw [MatrixRowBlocks.encoded_matrix_size]
  have inputs : actualMatrix.inputPorts.length=43 := FrameHashControllerMatrixPrefix.port_lengths.1
  have privatePorts : actualMatrix.privatePorts.length=301537 := FrameHashControllerMatrixPrefix.port_lengths.2.1
  have outputs : actualMatrix.outputPorts.length=125 := FrameHashControllerMatrixPrefix.port_lengths.2.2
  rw [inputs,privatePorts,outputs,actual_rows_size.2]

theorem actual_parsed : Matrix.parse (MatrixCodec.encode actualMatrix)=some actualMatrix := by
  apply MatrixCodecPayload.matrix_roundtrip actualMatrix actual_shape
  · rw [actual_rows_size.1];decide
  · rw [actual_encoded_size];decide

theorem actual_phase {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : actualMatrix.satisfies valuation)
    (inputValues : ∀ index,index<43 → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    inputs FrameHashController.phasePort=1 ∨ inputs FrameHashController.phasePort=2 := by
  rw [actual_model] at accepted
  exact FrameHashControllerGuards.accepted_phase R1CS.modulus_larger_than_word valuation inputs accepted inputValues

theorem actual_frame_flags {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : actualMatrix.satisfies valuation)
    (inputValues : ∀ index,index<43 → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    ∀ position,position<17 → (PathFrameProgram.program.eval (FrameHashControllerMeaning.frameInputs inputs)).getD (115+position) 0=1 := by
  rw [actual_model] at accepted
  exact FrameHashControllerGuards.accepted_frame_flags R1CS.modulus_larger_than_word valuation inputs accepted inputValues

theorem actual_output {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : actualMatrix.satisfies valuation)
    (inputValues : ∀ index,index<43 → valuation (WordField.packed index)=((inputs index).toNat : F))
    (position : Nat) (bound : position<125) :
    valuation (WordMatrix.outputBase program+position)=(((program.eval inputs).getD position 0).toNat : F) := by
  have forced:=(GuardMatrix.satisfaction_exact base FrameHashControllerGuards.wires rfl valuation).mp
    (by rw [←actual_forced_base];exact accepted)
  have standard : (WordMatrix.compile R1CS.pallasScalarModulus program).satisfies valuation := by
    have baseSatisfied:=forced.1
    change FrameHashControllerMatrixPrefix.actualMatrix.satisfies valuation at baseSatisfied
    rw [FrameHashControllerMatrixPrefix.actual_matrix_exact,expected_program,
      FrameHashControllerMatrixPrefix.constants.1] at baseSatisfied
    exact baseSatisfied
  exact WordMatrixOutputs.evaluated_output R1CS.modulus_larger_than_word program
    FrameHashControllerValidity.program_valid valuation inputs standard inputValues position
    (by rw [FrameHashControllerGuards.output_count];exact bound)
end ActualFrameHashControllerMatrixPacket
