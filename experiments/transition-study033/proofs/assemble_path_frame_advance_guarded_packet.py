"""Untrusted final guarded packet preparation; kernel replay/file binding required."""
import argparse,json
from pathlib import Path
p=argparse.ArgumentParser();p.add_argument('--inputs',type=Path,required=True);a=p.parse_args();inputs=a.inputs
meta=json.loads((inputs.parent/'actual-quote/quote.json').read_text());weight=sum(g['encoded_bytes'] for g in meta['groups'])
code='''import ArtifactPathFrameAdvanceBlocks
import PathFrameAdvanceMatrixPrefix
import PathFrameAdvanceRowsGuards
import Core033.PathFrameAdvanceGuards
import Core033.PathFrameAdvanceSoundness
import Core033.PathFrameThreeStage
import Core033.MatrixCodecChunks
namespace ActualPathFrameAdvanceMatrixPacket
open Core033
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 16000000
abbrev base := PathFrameAdvanceMatrixPrefix.actualMatrix
abbrev program := PathFrameAdvance.program

theorem expected_program : PathFrameAdvanceMatrixPrefix.expectedProgram=program :=
  PathFrameAdvanceMatrixPrefix.expected_program_exact.trans ActualPathFrameAdvanceIR.ir_exact

theorem actual_guard_rows : PathFrameAdvanceCheckedRows.partRowsGuards=
    PathFrameAdvanceGuards.wires.map (fun wire=>SHA256Circuit.literalRow wire true) := by
  simp only [PathFrameAdvanceCheckedRows.partRowsGuards,PathFrameAdvanceCheckedRows.rows390,
    PathFrameAdvanceGuards.wires,WordGuardSuffix.wires,ActualPathFrameAdvanceIR.ir_exact,Nat.add_assoc]

def actualMatrix : R1CS.Matrix :=
  ⟨base.modulus,base.variableCount,base.inputPorts,base.privatePorts,base.outputPorts,base.constantOne,
    base.rows++PathFrameAdvanceCheckedRows.partRowsGuards⟩

theorem actual_forced_base : actualMatrix=GuardMatrix.force base PathFrameAdvanceGuards.wires := by
  unfold actualMatrix GuardMatrix.force
  rw [actual_guard_rows]

theorem actual_model : actualMatrix=PathFrameAdvanceGuards.compile R1CS.pallasScalarModulus := by
  rw [actual_forced_base]
  unfold base
  rw [PathFrameAdvanceMatrixPrefix.actual_matrix_exact,expected_program,PathFrameAdvanceMatrixPrefix.constants.1]
  rfl

theorem actual_shape : actualMatrix.wellFormed=true := by
  rw [actual_forced_base]
  apply GuardMatrix.well_formed
  · exact PathFrameAdvanceMatrixPrefix.actual_well_formed
  · decide
  · unfold base
    rw [PathFrameAdvanceMatrixPrefix.actual_matrix_exact,expected_program]
    exact PathFrameAdvanceGuards.guard_wire_bounds _

theorem actual_rows_size : actualMatrix.rows.length=ROWS ∧ MatrixRowBlocks.rowsWeight actualMatrix.rows=WEIGHT := by
  change (base.rows++PathFrameAdvanceCheckedRows.partRowsGuards).length=ROWS ∧
    MatrixRowBlocks.rowsWeight (base.rows++PathFrameAdvanceCheckedRows.partRowsGuards)=WEIGHT
  simp only [List.length_append,MatrixRowBlocks.rows_weight_append,
    PathFrameAdvanceMatrixPrefix.actual_rows_size.1,PathFrameAdvanceMatrixPrefix.actual_rows_size.2,
    PathFrameAdvanceCheckedRows.partStatsGuards.1,PathFrameAdvanceCheckedRows.partStatsGuards.2]
  decide

theorem actual_encoded_size : (MatrixCodec.encode actualMatrix).length=BYTES := by
  rw [MatrixRowBlocks.encoded_matrix_size]
  have inputs : actualMatrix.inputPorts.length=43 := PathFrameAdvanceMatrixPrefix.port_lengths.1
  have privatePorts : actualMatrix.privatePorts.length=13183 := PathFrameAdvanceMatrixPrefix.port_lengths.2.1
  have outputs : actualMatrix.outputPorts.length=50 := PathFrameAdvanceMatrixPrefix.port_lengths.2.2
  rw [inputs,privatePorts,outputs,actual_rows_size.2]

theorem actual_parsed : Matrix.parse (MatrixCodec.encode actualMatrix)=some actualMatrix := by
  apply MatrixCodecPayload.matrix_roundtrip actualMatrix actual_shape
  · rw [actual_rows_size.1];decide
  · rw [actual_encoded_size];decide

theorem actual_phase {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : actualMatrix.satisfies valuation)
    (inputValues : ∀ index,index<43 → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    inputs 0=3 := by
  rw [actual_model] at accepted
  exact PathFrameAdvanceSoundness.accepted_phase R1CS.modulus_larger_than_word valuation inputs accepted inputValues

theorem actual_counter {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : actualMatrix.satisfies valuation)
    (inputValues : ∀ index,index<43 → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    (inputs 2).toNat<256 := by
  rw [actual_model] at accepted
  exact PathFrameAdvanceSoundness.accepted_counter R1CS.modulus_larger_than_word valuation inputs accepted inputValues

theorem actual_output {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : actualMatrix.satisfies valuation)
    (inputValues : ∀ index,index<43 → valuation (WordField.packed index)=((inputs index).toNat : F))
    (position : Nat) (bound : position<50) :
    valuation (WordMatrix.outputBase program+position)=(((program.eval inputs).getD position 0).toNat : F) := by
  have forced:=(GuardMatrix.satisfaction_exact base PathFrameAdvanceGuards.wires rfl valuation).mp
    (by rw [←actual_forced_base];exact accepted)
  have standard : (WordMatrix.compile R1CS.pallasScalarModulus program).satisfies valuation := by
    change PathFrameAdvanceMatrixPrefix.actualMatrix.satisfies valuation at forced
    rw [PathFrameAdvanceMatrixPrefix.actual_matrix_exact,expected_program,
      PathFrameAdvanceMatrixPrefix.constants.1] at forced
    exact forced.1
  exact WordMatrixOutputs.evaluated_output R1CS.modulus_larger_than_word program
    PathFrameAdvanceGuards.program_valid valuation inputs standard inputValues position
    (by rw [PathFrameAdvanceGuards.output_count];exact bound)
end ActualPathFrameAdvanceMatrixPacket
'''
code=code.replace('ROWS',str(meta['rows'])).replace('WEIGHT',str(weight)).replace('BYTES',str(meta['source_bytes']))
# Keep the base satisfaction projection explicit; no conjunction is retyped as a matrix predicate.
code=code.replace('    change PathFrameAdvanceMatrixPrefix.actualMatrix.satisfies valuation at forced\n    rw [PathFrameAdvanceMatrixPrefix.actual_matrix_exact,expected_program,\n      PathFrameAdvanceMatrixPrefix.constants.1] at forced\n    exact forced.1','    have baseSatisfied:=forced.1\n    change PathFrameAdvanceMatrixPrefix.actualMatrix.satisfies valuation at baseSatisfied\n    rw [PathFrameAdvanceMatrixPrefix.actual_matrix_exact,expected_program,\n      PathFrameAdvanceMatrixPrefix.constants.1] at baseSatisfied\n    exact baseSatisfied')
(inputs/'ActualPathFrameAdvanceMatrixPacket.lean').write_text(code)
print(json.dumps({'outcome':'PreparedUncheckedGuardedControllerPacket','rows':meta['rows'],'bytes':meta['source_bytes'],'g1_pass':False}))
