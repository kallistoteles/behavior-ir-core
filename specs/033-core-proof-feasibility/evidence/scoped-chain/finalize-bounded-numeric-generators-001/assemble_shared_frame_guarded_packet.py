"""Prepare an untrusted complete guarded local controller packet; fresh kernel replay is required."""
import argparse,json
from pathlib import Path
parser=argparse.ArgumentParser();parser.add_argument('--inputs',type=Path,required=True);a=parser.parse_args();inputs=a.inputs
meta=json.loads((inputs.parent/'actual-quote/quote.json').read_text());weight=sum(g['encoded_bytes'] for g in meta['groups'])
code="""import FinalizeControlMatrixPrefix
import FinalizeControlRowsGuards
import Core033.WordGuardSuffix
import Core033.MatrixCodecChunks
namespace ActualFinalizeControlMatrixPacket
open Core033
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 16000000
abbrev base := FinalizeControlMatrixPrefix.actualMatrix
abbrev program := ActualPairedPathFinalizeIR.program

theorem expected_program : FinalizeControlMatrixPrefix.expectedProgram=program :=
  FinalizeControlMatrixPrefix.expected_program_exact

def wires := WordGuardSuffix.wires program 96 16

theorem actual_guard_rows : FinalizeControlCheckedRows.partRowsGuards=
    wires.map (fun wire=>SHA256Circuit.literalRow wire true) := by
  simp only [FinalizeControlCheckedRows.partRowsGuards,FinalizeControlCheckedRows.rows404,
    wires,WordGuardSuffix.wires,Nat.add_assoc]

def actualMatrix : R1CS.Matrix :=
  ⟨base.modulus,base.variableCount,base.inputPorts,base.privatePorts,base.outputPorts,base.constantOne,
    base.rows++FinalizeControlCheckedRows.partRowsGuards⟩

theorem actual_forced_base : actualMatrix=GuardMatrix.force base wires := by
  unfold actualMatrix GuardMatrix.force
  rw [actual_guard_rows]

theorem actual_model : actualMatrix=WordGuardSuffix.compile R1CS.pallasScalarModulus program 96 16 := by
  rw [actual_forced_base]
  unfold base
  rw [FinalizeControlMatrixPrefix.actual_matrix_exact,expected_program,FinalizeControlMatrixPrefix.constants.1]
  rfl

theorem actual_shape : actualMatrix.wellFormed=true := by
  rw [actual_forced_base]
  apply GuardMatrix.well_formed
  · exact FinalizeControlMatrixPrefix.actual_well_formed
  · decide
  · unfold base
    rw [FinalizeControlMatrixPrefix.actual_matrix_exact,expected_program]
    exact WordGuardSuffix.wire_bounds _ program 96 16 (by rw [ActualPairedPathFinalizeIR.output_count])

theorem actual_rows_size : actualMatrix.rows.length=ROWS ∧ MatrixRowBlocks.rowsWeight actualMatrix.rows=WEIGHT := by
  change (base.rows++FinalizeControlCheckedRows.partRowsGuards).length=ROWS ∧
    MatrixRowBlocks.rowsWeight (base.rows++FinalizeControlCheckedRows.partRowsGuards)=WEIGHT
  simp only [List.length_append,MatrixRowBlocks.rows_weight_append,
    FinalizeControlMatrixPrefix.actual_rows_size.1,FinalizeControlMatrixPrefix.actual_rows_size.2,
    FinalizeControlCheckedRows.partStatsGuards.1,FinalizeControlCheckedRows.partStatsGuards.2]
  decide

theorem actual_encoded_size : (MatrixCodec.encode actualMatrix).length=BYTES := by
  rw [MatrixRowBlocks.encoded_matrix_size]
  have inputs : actualMatrix.inputPorts.length=96 := FinalizeControlMatrixPrefix.port_lengths.1
  have privatePorts : actualMatrix.privatePorts.length=13606 := FinalizeControlMatrixPrefix.port_lengths.2.1
  have outputs : actualMatrix.outputPorts.length=112 := FinalizeControlMatrixPrefix.port_lengths.2.2
  rw [inputs,privatePorts,outputs,actual_rows_size.2]

theorem actual_parsed : Matrix.parse (MatrixCodec.encode actualMatrix)=some actualMatrix := by
  apply MatrixCodecPayload.matrix_roundtrip actualMatrix actual_shape
  · rw [actual_rows_size.1];decide
  · rw [actual_encoded_size];decide

theorem actual_guard {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : actualMatrix.satisfies valuation)
    (inputValues : ∀ index,index<96 → valuation (WordField.packed index)=((inputs index).toNat : F))
    (position : Nat) (bound : position<16) : (program.eval inputs).getD (96+position) 0=1 := by
  rw [actual_model] at accepted
  exact WordGuardSuffix.forced_output_one R1CS.modulus_larger_than_word program ActualPairedPathFinalizeIR.program_valid
    96 16 (by rw [ActualPairedPathFinalizeIR.output_count]) valuation inputs accepted inputValues position bound

theorem actual_output {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : actualMatrix.satisfies valuation)
    (inputValues : ∀ index,index<96 → valuation (WordField.packed index)=((inputs index).toNat : F))
    (position : Nat) (bound : position<112) :
    valuation (WordMatrix.outputBase program+position)=(((program.eval inputs).getD position 0).toNat : F) := by
  have forced:=(GuardMatrix.satisfaction_exact base wires rfl valuation).mp
    (by rw [←actual_forced_base];exact accepted)
  have standard : (WordMatrix.compile R1CS.pallasScalarModulus program).satisfies valuation := by
    have baseSatisfied:=forced.1
    change FinalizeControlMatrixPrefix.actualMatrix.satisfies valuation at baseSatisfied
    rw [FinalizeControlMatrixPrefix.actual_matrix_exact,expected_program,FinalizeControlMatrixPrefix.constants.1] at baseSatisfied
    exact baseSatisfied
  exact WordMatrixOutputs.evaluated_output R1CS.modulus_larger_than_word program
    ActualPairedPathFinalizeIR.program_valid valuation inputs standard inputValues position
    (by rw [ActualPairedPathFinalizeIR.output_count];exact bound)
theorem actual_admitted_complete {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (inputs : Nat → WordIR.Word)
    (admitted : ∀ position,position<16 → (program.eval inputs).getD (96+position) 0=1) :
    ∃ valuation : Nat → F,actualMatrix.satisfies valuation ∧
      (∀ index,index<96 → valuation (WordField.packed index)=((inputs index).toNat : F)) ∧
      ∀ position,position<112 → valuation (WordMatrix.outputBase program+position)=
        (((program.eval inputs).getD position 0).toNat : F) := by
  obtain ⟨valuation,satisfied,inputValues⟩:=WordGuardSuffix.admitted_complete (F:=F)
    R1CS.modulus_larger_than_word program ActualPairedPathFinalizeIR.program_valid
    96 16 (by rw [ActualPairedPathFinalizeIR.output_count]) inputs admitted
  have actualSatisfied : actualMatrix.satisfies valuation := by
    rw [actual_model]
    exact satisfied
  exact ⟨valuation,actualSatisfied,inputValues,fun position bound=>
    actual_output valuation inputs actualSatisfied inputValues position bound⟩

end ActualFinalizeControlMatrixPacket
"""
code=code.replace('ROWS',str(meta['rows'])).replace('WEIGHT',str(weight)).replace('BYTES',str(meta['source_bytes']))
(inputs/'ActualFinalizeControlMatrixPacket.lean').write_text(code)
print(json.dumps({'outcome':'PreparedUncheckedGuardedControllerPacket','rows':meta['rows'],'bytes':meta['source_bytes'],'g1_pass':False}))
