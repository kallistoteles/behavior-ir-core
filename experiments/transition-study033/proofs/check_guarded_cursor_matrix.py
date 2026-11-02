"""Compose a checked actual base matrix with independently quoted guard rows.

A separate complete closed-value-to-file byte binding is mandatory for the
composed prefix. No generator-output equality is semantic proof authority.
"""
import argparse,hashlib,json,re,shutil
from pathlib import Path
import check_targets as driver
p=Path(__file__).resolve().parent
parser=argparse.ArgumentParser();parser.add_argument('--out',type=Path,required=True);a=parser.parse_args();out=a.out.resolve();out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py');inputs=out/'proof-inputs';inputs.mkdir()
base=Path('specs/033-core-proof-feasibility/evidence/scoped-chain/byte-cursor-matrix-packet-001').resolve();schema=Path('specs/033-core-proof-feasibility/evidence/scoped-chain/byte-cursor-guards-formal-001').resolve();allNames=[]
for kernel in [base/'kernel',schema]:
 report=json.loads((kernel/'report.json').read_text())
 if report['outcome']!='Checked' or not report['fresh_kernel_replay']:raise driver.ProofError('genuine checked base and guarded schema required')
 for module,entry in report['modules'].items():
  file=kernel/'compiled'/Path(*module.split('.')).with_suffix('.olean')
  if hashlib.sha256(file.read_bytes()).hexdigest()!=entry['olean_sha256']:raise driver.ProofError('changed checked module')
 for relative,entry in report['seeded_modules'].items():
  if hashlib.sha256((kernel/'compiled'/relative).read_bytes()).hexdigest()!=entry['sha256']:raise driver.ProofError('changed checked dependency')
 for target in report['theorems']:
  if target['target'] not in allNames:allNames.append(target['target'])
q=Path('experiments/transition-study033/generated/guarded-cursor-matrix-quote-001');quote=json.loads((q/'quote.json').read_text());raw=Path(quote['source']).read_bytes()
if hashlib.sha256(raw).hexdigest()!=quote['source_sha256'] or not quote['independent_inverse_byte_equal']:raise driver.ProofError('changed independently quoted binary')
targets={}
for module in ['ActualGuardedCursorMatrixConstants','ActualGuardedCursorMatrixData1']:
 shutil.copyfile(q/(module+'.lean'),inputs/(module+'.lean'));targets[module]=[]
code='''import ActualGuardedCursorMatrixData1
import ActualCursorMatrixPacket
import Core033.ByteCursorGuards
import Core033.ByteCursorRead
import Core033.KernelDecide
namespace CheckedGuardedCursorMatrix
open Core033
namespace Data
abbrev modulus := ActualGuardedCursorData.actualModulus
end Data
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
abbrev original := ActualCursorMatrixPacket.actualMatrix
abbrev program := ByteCursorGuards.program

theorem expected_program : ActualCursorMatrixPacket.expectedProgram=program :=
  ActualCursorMatrixPacket.expected_program_exact.trans ActualCursorIR.ir_exact

theorem program_valid : program.Valid := by
  rw [←expected_program]
  exact ActualCursorMatrixPacket.program_valid

theorem output_base : WordMatrix.outputBase program=3129 := by
  have counts:=ActualCursorMatrixPacket.program_counts
  rw [expected_program] at counts
  simp only [WordMatrix.outputBase,WordMatrix.wordCount,counts.1,counts.2.1]

theorem guard_tail_exact : ActualGuardedCursorData.actualRows93=
    ByteCursorGuards.wires.map (fun wire=>SHA256Circuit.literalRow wire true) := by
  simp only [ByteCursorGuards.wires,output_base,List.map_cons,List.map_nil]
  core033_kernel_decide

def actualMatrix : R1CS.Matrix :=
  ⟨Data.modulus,ActualGuardedCursorData.actualVariableCount,
    ActualGuardedCursorData.actualInputPorts,ActualGuardedCursorData.actualPrivatePorts,
    ActualGuardedCursorData.actualOutputPorts,ActualGuardedCursorData.actualConstantOne,
    original.rows++ActualGuardedCursorData.actualRows93⟩

theorem forced_base_exact : actualMatrix=GuardMatrix.force original ByteCursorGuards.wires := by
  unfold actualMatrix GuardMatrix.force
  rw [guard_tail_exact]
  rfl

theorem guarded_model_exact : actualMatrix=ByteCursorGuards.compile Data.modulus := by
  rw [forced_base_exact]
  unfold original
  rw [ActualCursorMatrixPacket.actual_matrix_exact,expected_program]
  rfl

theorem actual_shape : actualMatrix.wellFormed=true := by
  rw [forced_base_exact]
  apply GuardMatrix.well_formed
  · exact ActualCursorMatrixPacket.actual_well_formed
  · decide
  · unfold original
    rw [ActualCursorMatrixPacket.actual_matrix_exact,expected_program]
    exact ByteCursorGuards.guard_wire_bounds _

theorem tail_stats : ActualGuardedCursorData.actualRows93.length=1 ∧
    MatrixRowBlocks.rowsWeight ActualGuardedCursorData.actualRows93=120 := by core033_kernel_decide

theorem row_stats : actualMatrix.rows.length=3156 ∧ MatrixRowBlocks.rowsWeight actualMatrix.rows=485136 := by
  change (original.rows++ActualGuardedCursorData.actualRows93).length=3156 ∧
    MatrixRowBlocks.rowsWeight (original.rows++ActualGuardedCursorData.actualRows93)=485136
  simp only [List.length_append,MatrixRowBlocks.rows_weight_append,
    ActualCursorMatrixPacket.actual_rows_size.1,ActualCursorMatrixPacket.actual_rows_size.2,
    tail_stats.1,tail_stats.2]
  decide

theorem port_stats : actualMatrix.inputPorts.length=3 ∧ actualMatrix.privatePorts.length=3125 ∧
    actualMatrix.outputPorts.length=4 := by
  change ActualGuardedCursorData.actualInputPorts.length=3 ∧
    ActualGuardedCursorData.actualPrivatePorts.length=3125 ∧ ActualGuardedCursorData.actualOutputPorts.length=4
  simp only [ActualGuardedCursorData.actualInputPorts,ActualGuardedCursorData.actualPrivatePorts,
    ActualGuardedCursorData.actualOutputPorts,List.length_append,List.length_range',List.length_cons,List.length_nil]
  decide

theorem binary_size : (MatrixCodec.encode actualMatrix).length=497750 := by
  rw [MatrixRowBlocks.encoded_matrix_size,port_stats.1,port_stats.2.1,port_stats.2.2,row_stats.2]

theorem parsed_actual : Matrix.parse (MatrixCodec.encode actualMatrix)=some actualMatrix := by
  apply MatrixCodecPayload.matrix_roundtrip actualMatrix actual_shape
  · rw [row_stats.1];decide
  · rw [binary_size];decide

theorem actual_guards {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : actualMatrix.satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    ByteCursor.Admitted (inputs 0) (inputs 1) (inputs 2) := by
  rw [guarded_model_exact] at accepted
  exact ByteCursorGuards.accepted_admission (p:=R1CS.pallasScalarModulus)
    R1CS.modulus_larger_than_word program_valid valuation inputs accepted inputValues

theorem actual_public_next {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : actualMatrix.satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    valuation (WordMatrix.outputBase program)=(((inputs 0).toNat+(inputs 2).toNat : Nat) : F) := by
  rw [guarded_model_exact] at accepted
  exact ByteCursorGuards.accepted_public_next R1CS.modulus_larger_than_word
    program_valid valuation inputs accepted inputValues

end CheckedGuardedCursorMatrix
'''
(inputs/'CheckedGuardedCursorMatrix.lean').write_text(code);targets['CheckedGuardedCursorMatrix']=allNames+['CheckedGuardedCursorMatrix.'+n for n in re.findall(r'^theorem ([A-Za-z_0-9]+)',code,re.M)]
r=driver.check_modules(inputs,targets,out/'kernel',audit_source=p/'Audit.lean',dependency_paths=sorted((p/'.lake/packages').glob('*/.lake/build/lib/lean')),seeded_modules=[base/'kernel/compiled',schema/'compiled'])
if Path(quote['source']).read_bytes()!=raw:raise driver.ProofError('actual guarded matrix changed')
(out/'matrix.bin').write_bytes(raw)
receipt={'format_version':'core033.actual-guarded-cursor-matrix.v1','outcome':r['outcome'],'targets':len(r['theorems']),'fresh_kernel_replay':r['fresh_kernel_replay'],'matrix_sha256':hashlib.sha256(raw).hexdigest(),'matrix_bytes':len(raw),'rows':3156,'base_mathematical_receipt_sha256':hashlib.sha256((base/'receipt.json').read_bytes()).hexdigest(),'guard_tail':'independent actual numeric quotation, one literal-one row, kernel checked','prefix_binding':'checked actual base data composed with actual guarded header/tail; complete checked-value-to-file equality required separately','scope':'exact concrete bounded byte cursor with forced admission and public next position; authenticated field framing and whole machine remain open','release_relation_complete':False,'g1_pass':False};(out/'receipt.json').write_text(json.dumps(receipt,indent=2,sort_keys=True)+'\n');print(json.dumps(receipt))
