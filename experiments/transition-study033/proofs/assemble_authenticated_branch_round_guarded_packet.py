"""Prepare an untrusted complete guarded local controller packet; fresh kernel replay is required."""
import argparse,json
from pathlib import Path
parser=argparse.ArgumentParser();parser.add_argument('--inputs',type=Path,required=True);a=parser.parse_args();inputs=a.inputs
meta=json.loads((inputs.parent/'actual-quote/quote.json').read_text());weight=sum(g['encoded_bytes'] for g in meta['groups'])
code="""import ArtifactAuthenticatedBranchRoundBlocks
import AuthenticatedBranchRoundMatrixPrefix
import AuthenticatedBranchRoundRowsGuards
import Core033.AuthenticatedBranchValidity
import Core033.AuthenticatedBranchPorts
import Core033.MatrixCodecChunks
namespace ActualAuthenticatedBranchRoundMatrixPacket
open Core033
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 16000000
abbrev base := AuthenticatedBranchRoundMatrixPrefix.actualMatrix
abbrev program := AuthenticatedBranchRound.program

theorem expected_program : AuthenticatedBranchRoundMatrixPrefix.expectedProgram=program :=
  AuthenticatedBranchRoundMatrixPrefix.expected_program_exact.trans ActualAuthenticatedBranchRoundIR.ir_exact

def wires := WordGuardSuffix.wires program 118 91

theorem actual_guard_rows : AuthenticatedBranchRoundCheckedRows.partRowsGuards=
    wires.map (fun wire=>SHA256Circuit.literalRow wire true) := by
  simp only [AuthenticatedBranchRoundCheckedRows.partRowsGuards,AuthenticatedBranchRoundCheckedRows.rows14103,
    wires,WordGuardSuffix.wires,ActualAuthenticatedBranchRoundIR.ir_exact,Nat.add_assoc]

def actualMatrix : R1CS.Matrix :=
  ⟨base.modulus,base.variableCount,base.inputPorts,base.privatePorts,base.outputPorts,base.constantOne,
    base.rows++AuthenticatedBranchRoundCheckedRows.partRowsGuards⟩

theorem actual_forced_base : actualMatrix=GuardMatrix.force base wires := by
  unfold actualMatrix GuardMatrix.force
  rw [actual_guard_rows]

theorem actual_model : actualMatrix=AuthenticatedBranchValidity.compile R1CS.pallasScalarModulus := by
  rw [actual_forced_base]
  unfold base
  rw [AuthenticatedBranchRoundMatrixPrefix.actual_matrix_exact,expected_program,AuthenticatedBranchRoundMatrixPrefix.constants.1]
  rfl

theorem actual_shape : actualMatrix.wellFormed=true := by
  rw [actual_forced_base]
  apply GuardMatrix.well_formed
  · exact AuthenticatedBranchRoundMatrixPrefix.actual_well_formed
  · decide
  · unfold base
    rw [AuthenticatedBranchRoundMatrixPrefix.actual_matrix_exact,expected_program]
    exact AuthenticatedBranchValidity.guard_wire_bounds _

theorem actual_rows_size : actualMatrix.rows.length=ROWS ∧ MatrixRowBlocks.rowsWeight actualMatrix.rows=WEIGHT := by
  change (base.rows++AuthenticatedBranchRoundCheckedRows.partRowsGuards).length=ROWS ∧
    MatrixRowBlocks.rowsWeight (base.rows++AuthenticatedBranchRoundCheckedRows.partRowsGuards)=WEIGHT
  simp only [List.length_append,MatrixRowBlocks.rows_weight_append,
    AuthenticatedBranchRoundMatrixPrefix.actual_rows_size.1,AuthenticatedBranchRoundMatrixPrefix.actual_rows_size.2,
    AuthenticatedBranchRoundCheckedRows.partStatsGuards.1,AuthenticatedBranchRoundCheckedRows.partStatsGuards.2]
  decide

theorem actual_encoded_size : (MatrixCodec.encode actualMatrix).length=BYTES := by
  rw [MatrixRowBlocks.encoded_matrix_size]
  have inputs : actualMatrix.inputPorts.length=118 := AuthenticatedBranchRoundMatrixPrefix.port_lengths.1
  have privatePorts : actualMatrix.privatePorts.length=479350 := AuthenticatedBranchRoundMatrixPrefix.port_lengths.2.1
  have outputs : actualMatrix.outputPorts.length=209 := AuthenticatedBranchRoundMatrixPrefix.port_lengths.2.2
  rw [inputs,privatePorts,outputs,actual_rows_size.2]

theorem actual_parsed : Matrix.parse (MatrixCodec.encode actualMatrix)=some actualMatrix := by
  apply MatrixCodecPayload.matrix_roundtrip actualMatrix actual_shape
  · rw [actual_rows_size.1];decide
  · rw [actual_encoded_size];decide

theorem actual_guard {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : actualMatrix.satisfies valuation)
    (inputValues : ∀ index,index<118 → valuation (WordField.packed index)=((inputs index).toNat : F))
    (position : Nat) (bound : position<91) : (program.eval inputs).getD (118+position) 0=1 := by
  rw [actual_model] at accepted
  exact WordGuardSuffix.forced_output_one R1CS.modulus_larger_than_word program AuthenticatedBranchValidity.program_valid
    118 91 (by rw [AuthenticatedBranchValidity.output_count]) valuation inputs accepted inputValues position bound

theorem actual_output {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : actualMatrix.satisfies valuation)
    (inputValues : ∀ index,index<118 → valuation (WordField.packed index)=((inputs index).toNat : F))
    (position : Nat) (bound : position<209) :
    valuation (WordMatrix.outputBase program+position)=(((program.eval inputs).getD position 0).toNat : F) := by
  have forced:=(GuardMatrix.satisfaction_exact base wires rfl valuation).mp
    (by rw [←actual_forced_base];exact accepted)
  have standard : (WordMatrix.compile R1CS.pallasScalarModulus program).satisfies valuation := by
    have baseSatisfied:=forced.1
    change AuthenticatedBranchRoundMatrixPrefix.actualMatrix.satisfies valuation at baseSatisfied
    rw [AuthenticatedBranchRoundMatrixPrefix.actual_matrix_exact,expected_program,AuthenticatedBranchRoundMatrixPrefix.constants.1] at baseSatisfied
    exact baseSatisfied
  exact WordMatrixOutputs.evaluated_output R1CS.modulus_larger_than_word program
    AuthenticatedBranchValidity.program_valid valuation inputs standard inputValues position
    (by rw [AuthenticatedBranchValidity.output_count];exact bound)
end ActualAuthenticatedBranchRoundMatrixPacket
"""
code=code.replace('ROWS',str(meta['rows'])).replace('WEIGHT',str(weight)).replace('BYTES',str(meta['source_bytes']))
(inputs/'ActualAuthenticatedBranchRoundMatrixPacket.lean').write_text(code)
print(json.dumps({'outcome':'PreparedUncheckedGuardedControllerPacket','rows':meta['rows'],'bytes':meta['source_bytes'],'g1_pass':False}))
