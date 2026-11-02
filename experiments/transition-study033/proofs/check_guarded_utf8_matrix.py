"""Compose a checked actual base matrix with independently quoted guard rows.

A separate complete closed-value-to-file byte binding is mandatory for the
composed prefix. No generator-output equality is semantic proof authority.
"""
import argparse,hashlib,json,re,shutil
from pathlib import Path
import check_targets as driver
p=Path(__file__).resolve().parent
parser=argparse.ArgumentParser();parser.add_argument('--out',type=Path,required=True);a=parser.parse_args();out=a.out.resolve();out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py');inputs=out/'proof-inputs';inputs.mkdir()
base=Path('specs/033-core-proof-feasibility/evidence/scoped-chain/utf8-matrix-packet-002').resolve();schema=Path('specs/033-core-proof-feasibility/evidence/scoped-chain/utf8-stream-formal-001').resolve();allNames=[]
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
q=Path('experiments/transition-study033/generated/guarded-utf8-matrix-quote-001');quote=json.loads((q/'quote.json').read_text());raw=Path(quote['source']).read_bytes()
if hashlib.sha256(raw).hexdigest()!=quote['source_sha256'] or not quote['independent_inverse_byte_equal']:raise driver.ProofError('changed independently quoted binary')
targets={}
for module in ['ActualGuardedUtf8MatrixConstants','ActualGuardedUtf8MatrixData8']:
 shutil.copyfile(q/(module+'.lean'),inputs/(module+'.lean'));targets[module]=[]
code='''import ActualGuardedUtf8MatrixData8
import ActualUtf8MatrixPacket
import Core033.Utf8Guards
import Core033.KernelDecide
namespace CheckedGuardedUtf8Matrix
open Core033
namespace Data
abbrev modulus := ActualGuardedUtf8Data.actualModulus
end Data
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
abbrev original := ActualUtf8MatrixPacket.actualMatrix
abbrev program := Utf8Guards.program

theorem expected_program : ActualUtf8MatrixPacket.expectedProgram=program :=
  ActualUtf8MatrixPacket.expected_program_exact.trans ActualUtf8IR.ir_exact

theorem program_valid : program.Valid := by
  rw [←expected_program]
  exact ActualUtf8MatrixPacket.program_valid

theorem output_base : WordMatrix.outputBase program=17953 := by
  have counts:=ActualUtf8MatrixPacket.program_counts
  rw [expected_program] at counts
  simp only [WordMatrix.outputBase,WordMatrix.wordCount,counts.1,counts.2.1]

theorem guard_tail_exact : ActualGuardedUtf8Data.actualRows529=
    Utf8Guards.wires.map (fun wire=>SHA256Circuit.literalRow wire true) := by
  simp only [Utf8Guards.wires,output_base,List.map_cons,List.map_nil]
  core033_kernel_decide

def actualMatrix : R1CS.Matrix :=
  ⟨Data.modulus,ActualGuardedUtf8Data.actualVariableCount,
    ActualGuardedUtf8Data.actualInputPorts,ActualGuardedUtf8Data.actualPrivatePorts,
    ActualGuardedUtf8Data.actualOutputPorts,ActualGuardedUtf8Data.actualConstantOne,
    original.rows++ActualGuardedUtf8Data.actualRows529⟩

theorem forced_base_exact : actualMatrix=GuardMatrix.force original Utf8Guards.wires := by
  unfold actualMatrix GuardMatrix.force
  rw [guard_tail_exact]
  rfl

theorem guarded_model_exact : actualMatrix=Utf8Guards.compile Data.modulus := by
  rw [forced_base_exact]
  unfold original
  rw [ActualUtf8MatrixPacket.actual_matrix_exact,expected_program]
  rfl

theorem actual_shape : actualMatrix.wellFormed=true := by
  rw [forced_base_exact]
  apply GuardMatrix.well_formed
  · exact ActualUtf8MatrixPacket.actual_well_formed
  · decide
  · unfold original
    rw [ActualUtf8MatrixPacket.actual_matrix_exact,expected_program]
    exact Utf8Guards.guard_wire_bounds _

theorem tail_stats : ActualGuardedUtf8Data.actualRows529.length=1 ∧
    MatrixRowBlocks.rowsWeight ActualGuardedUtf8Data.actualRows529=120 := by core033_kernel_decide

theorem row_stats : actualMatrix.rows.length=18019 ∧ MatrixRowBlocks.rowsWeight actualMatrix.rows=2692128 := by
  change (original.rows++ActualGuardedUtf8Data.actualRows529).length=18019 ∧
    MatrixRowBlocks.rowsWeight (original.rows++ActualGuardedUtf8Data.actualRows529)=2692128
  simp only [List.length_append,MatrixRowBlocks.rows_weight_append,
    ActualUtf8MatrixPacket.actual_rows_size.1,ActualUtf8MatrixPacket.actual_rows_size.2,
    tail_stats.1,tail_stats.2]
  decide

theorem port_stats : actualMatrix.inputPorts.length=1 ∧ actualMatrix.privatePorts.length=17951 ∧
    actualMatrix.outputPorts.length=6 := by
  change ActualGuardedUtf8Data.actualInputPorts.length=1 ∧
    ActualGuardedUtf8Data.actualPrivatePorts.length=17951 ∧ ActualGuardedUtf8Data.actualOutputPorts.length=6
  simp only [ActualGuardedUtf8Data.actualInputPorts,ActualGuardedUtf8Data.actualPrivatePorts,
    ActualGuardedUtf8Data.actualOutputPorts,List.length_append,List.length_range',List.length_cons,List.length_nil]
  decide

theorem binary_size : (MatrixCodec.encode actualMatrix).length=2764046 := by
  rw [MatrixRowBlocks.encoded_matrix_size,port_stats.1,port_stats.2.1,port_stats.2.2,row_stats.2]

theorem parsed_actual : Matrix.parse (MatrixCodec.encode actualMatrix)=some actualMatrix := by
  apply MatrixCodecPayload.matrix_roundtrip actualMatrix actual_shape
  · rw [row_stats.1];decide
  · rw [binary_size];decide

theorem actual_guards {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : actualMatrix.satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    Utf8Encoding.Scalar (inputs 0) := by
  rw [guarded_model_exact] at accepted
  exact Utf8Guards.accepted_scalar (p:=R1CS.pallasScalarModulus)
    R1CS.modulus_larger_than_word program_valid valuation inputs accepted inputValues

end CheckedGuardedUtf8Matrix
'''
(inputs/'CheckedGuardedUtf8Matrix.lean').write_text(code);targets['CheckedGuardedUtf8Matrix']=allNames+['CheckedGuardedUtf8Matrix.'+n for n in re.findall(r'^theorem ([A-Za-z_0-9]+)',code,re.M)]
r=driver.check_modules(inputs,targets,out/'kernel',audit_source=p/'Audit.lean',dependency_paths=sorted((p/'.lake/packages').glob('*/.lake/build/lib/lean')),seeded_modules=[base/'kernel/compiled',schema/'compiled'])
if Path(quote['source']).read_bytes()!=raw:raise driver.ProofError('actual guarded matrix changed')
(out/'matrix.bin').write_bytes(raw)
receipt={'format_version':'core033.actual-guarded-utf8-matrix.v1','outcome':r['outcome'],'targets':len(r['theorems']),'fresh_kernel_replay':r['fresh_kernel_replay'],'matrix_sha256':hashlib.sha256(raw).hexdigest(),'matrix_bytes':len(raw),'rows':18019,'base_mathematical_receipt_sha256':hashlib.sha256((base/'receipt.json').read_bytes()).hexdigest(),'guard_tail':'independent actual numeric quotation, one literal-one row, kernel checked','prefix_binding':'checked actual base data composed with actual guarded header/tail; complete checked-value-to-file equality required separately','scope':'exact concrete guarded Unicode scalar relation and strict parser; authenticated field bytes, physical consumption, whole machine and backend remain open','release_relation_complete':False,'g1_pass':False};(out/'receipt.json').write_text(json.dumps(receipt,indent=2,sort_keys=True)+'\n');print(json.dumps(receipt))
