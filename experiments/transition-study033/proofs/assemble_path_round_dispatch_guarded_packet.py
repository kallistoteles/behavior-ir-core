"""Prepare an untrusted complete guarded local controller packet; fresh kernel replay is required."""
import argparse,json
from pathlib import Path
parser=argparse.ArgumentParser();parser.add_argument('--inputs',type=Path,required=True);a=parser.parse_args();inputs=a.inputs
meta=json.loads((inputs.parent/'actual-quote/quote.json').read_text());weight=sum(g['encoded_bytes'] for g in meta['groups'])
code="""import ArtifactPathRoundDispatchBlocks
import PathRoundDispatchMatrixPrefix
import PathRoundDispatchRowsGuards
import Core033.PathRoundDispatchGuards
import Core033.MatrixCodecChunks
namespace ActualPathRoundDispatchMatrixPacket
open Core033
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 16000000
abbrev base := PathRoundDispatchMatrixPrefix.actualMatrix
abbrev program := PathRoundDispatch.program

theorem expected_program : PathRoundDispatchMatrixPrefix.expectedProgram=program :=
  PathRoundDispatchMatrixPrefix.expected_program_exact.trans ActualPathRoundDispatchIR.ir_exact

def wires := WordGuardSuffix.wires program 43 90

theorem actual_guard_rows : PathRoundDispatchCheckedRows.partRowsGuards=
    wires.map (fun wire=>SHA256Circuit.literalRow wire true) := by
  simp only [PathRoundDispatchCheckedRows.partRowsGuards,PathRoundDispatchCheckedRows.rows12528,
    wires,WordGuardSuffix.wires,ActualPathRoundDispatchIR.ir_exact,Nat.add_assoc]

def actualMatrix : R1CS.Matrix :=
  ⟨base.modulus,base.variableCount,base.inputPorts,base.privatePorts,base.outputPorts,base.constantOne,
    base.rows++PathRoundDispatchCheckedRows.partRowsGuards⟩

theorem actual_forced_base : actualMatrix=GuardMatrix.force base wires := by
  unfold actualMatrix GuardMatrix.force
  rw [actual_guard_rows]

theorem actual_model : actualMatrix=PathRoundDispatchGuards.compile R1CS.pallasScalarModulus := by
  rw [actual_forced_base]
  unfold base
  rw [PathRoundDispatchMatrixPrefix.actual_matrix_exact,expected_program,PathRoundDispatchMatrixPrefix.constants.1]
  rfl

theorem actual_shape : actualMatrix.wellFormed=true := by
  rw [actual_forced_base]
  apply GuardMatrix.well_formed
  · exact PathRoundDispatchMatrixPrefix.actual_well_formed
  · decide
  · unfold base
    rw [PathRoundDispatchMatrixPrefix.actual_matrix_exact,expected_program]
    exact PathRoundDispatchGuards.guard_wire_bounds _

theorem actual_rows_size : actualMatrix.rows.length=ROWS ∧ MatrixRowBlocks.rowsWeight actualMatrix.rows=WEIGHT := by
  change (base.rows++PathRoundDispatchCheckedRows.partRowsGuards).length=ROWS ∧
    MatrixRowBlocks.rowsWeight (base.rows++PathRoundDispatchCheckedRows.partRowsGuards)=WEIGHT
  simp only [List.length_append,MatrixRowBlocks.rows_weight_append,
    PathRoundDispatchMatrixPrefix.actual_rows_size.1,PathRoundDispatchMatrixPrefix.actual_rows_size.2,
    PathRoundDispatchCheckedRows.partStatsGuards.1,PathRoundDispatchCheckedRows.partStatsGuards.2]
  decide

theorem actual_encoded_size : (MatrixCodec.encode actualMatrix).length=BYTES := by
  rw [MatrixRowBlocks.encoded_matrix_size]
  have inputs : actualMatrix.inputPorts.length=43 := PathRoundDispatchMatrixPrefix.port_lengths.1
  have privatePorts : actualMatrix.privatePorts.length=425875 := PathRoundDispatchMatrixPrefix.port_lengths.2.1
  have outputs : actualMatrix.outputPorts.length=133 := PathRoundDispatchMatrixPrefix.port_lengths.2.2
  rw [inputs,privatePorts,outputs,actual_rows_size.2]

theorem actual_parsed : Matrix.parse (MatrixCodec.encode actualMatrix)=some actualMatrix := by
  apply MatrixCodecPayload.matrix_roundtrip actualMatrix actual_shape
  · rw [actual_rows_size.1];decide
  · rw [actual_encoded_size];decide

theorem actual_guard {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : actualMatrix.satisfies valuation)
    (inputValues : ∀ index,index<43 → valuation (WordField.packed index)=((inputs index).toNat : F))
    (position : Nat) (bound : position<90) : (program.eval inputs).getD (43+position) 0=1 := by
  rw [actual_model] at accepted
  exact WordGuardSuffix.forced_output_one R1CS.modulus_larger_than_word program PathRoundDispatchGuards.program_valid
    43 90 (by rw [PathRoundDispatchGuards.output_count]) valuation inputs accepted inputValues position bound

theorem actual_output {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : actualMatrix.satisfies valuation)
    (inputValues : ∀ index,index<43 → valuation (WordField.packed index)=((inputs index).toNat : F))
    (position : Nat) (bound : position<133) :
    valuation (WordMatrix.outputBase program+position)=(((program.eval inputs).getD position 0).toNat : F) := by
  have forced:=(GuardMatrix.satisfaction_exact base wires rfl valuation).mp
    (by rw [←actual_forced_base];exact accepted)
  have standard : (WordMatrix.compile R1CS.pallasScalarModulus program).satisfies valuation := by
    have baseSatisfied:=forced.1
    change PathRoundDispatchMatrixPrefix.actualMatrix.satisfies valuation at baseSatisfied
    rw [PathRoundDispatchMatrixPrefix.actual_matrix_exact,expected_program,PathRoundDispatchMatrixPrefix.constants.1] at baseSatisfied
    exact baseSatisfied
  exact WordMatrixOutputs.evaluated_output R1CS.modulus_larger_than_word program
    PathRoundDispatchGuards.program_valid valuation inputs standard inputValues position
    (by rw [PathRoundDispatchGuards.output_count];exact bound)
end ActualPathRoundDispatchMatrixPacket
"""
code=code.replace('ROWS',str(meta['rows'])).replace('WEIGHT',str(weight)).replace('BYTES',str(meta['source_bytes']))
(inputs/'ActualPathRoundDispatchMatrixPacket.lean').write_text(code)
print(json.dumps({'outcome':'PreparedUncheckedGuardedControllerPacket','rows':meta['rows'],'bytes':meta['source_bytes'],'g1_pass':False}))
