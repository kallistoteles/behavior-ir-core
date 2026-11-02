"""Compose a checked actual base matrix with independently quoted guard rows.

A separate complete closed-value-to-file byte binding is mandatory for the
composed prefix. No generator-output equality is semantic proof authority.
"""
import argparse,hashlib,json,re,shutil
from pathlib import Path
import check_targets as driver
p=Path(__file__).resolve().parent
parser=argparse.ArgumentParser();parser.add_argument('--out',type=Path,required=True);a=parser.parse_args();out=a.out.resolve();out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py');inputs=out/'proof-inputs';inputs.mkdir()
base=Path('specs/033-core-proof-feasibility/evidence/scoped-chain/ingress-matrix-packet-002').resolve();schema=Path('specs/033-core-proof-feasibility/evidence/scoped-chain/ingress-guards-formal-001').resolve();allNames=[]
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
q=Path('experiments/transition-study033/generated/guarded-ingress-matrix-quote-001');quote=json.loads((q/'quote.json').read_text());raw=Path(quote['source']).read_bytes()
if hashlib.sha256(raw).hexdigest()!=quote['source_sha256'] or not quote['independent_inverse_byte_equal']:raise driver.ProofError('changed independently quoted binary')
targets={}
for module in ['ActualGuardedIngressMatrixConstants','ActualGuardedIngressMatrixData20']:
 shutil.copyfile(q/(module+'.lean'),inputs/(module+'.lean'));targets[module]=[]
code='''import ActualGuardedIngressMatrixData20
import ActualIngressMatrixPacket
import Core033.BlockIngressGuards
import Core033.KernelDecide
namespace CheckedGuardedIngressMatrix
open Core033
namespace Data
abbrev modulus := ActualGuardedIngressData.actualModulus
end Data
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
abbrev original := ActualIngressMatrixPacket.actualMatrix
abbrev program := BlockIngressGuards.program

theorem expected_program : ActualIngressMatrixPacket.expectedProgram=program :=
  ActualIngressMatrixPacket.expected_program_exact.trans ActualIngressIR.ir_exact

theorem program_valid : program.Valid := by
  rw [←expected_program]
  exact ActualIngressMatrixPacket.program_valid

theorem output_base : WordMatrix.outputBase program=44609 := by
  have counts:=ActualIngressMatrixPacket.program_counts
  rw [expected_program] at counts
  simp only [WordMatrix.outputBase,WordMatrix.wordCount,counts.1,counts.2.1]

theorem guard_tail_exact : ActualGuardedIngressData.actualRows1313=
    BlockIngressGuards.wires.map (fun wire=>SHA256Circuit.literalRow wire true) := by
  simp only [BlockIngressGuards.wires,output_base,List.map_cons,List.map_nil]
  core033_kernel_decide

def actualMatrix : R1CS.Matrix :=
  ⟨Data.modulus,ActualGuardedIngressData.actualVariableCount,
    ActualGuardedIngressData.actualInputPorts,ActualGuardedIngressData.actualPrivatePorts,
    ActualGuardedIngressData.actualOutputPorts,ActualGuardedIngressData.actualConstantOne,
    original.rows++ActualGuardedIngressData.actualRows1313⟩

theorem forced_base_exact : actualMatrix=GuardMatrix.force original BlockIngressGuards.wires := by
  unfold actualMatrix GuardMatrix.force
  rw [guard_tail_exact]
  rfl

theorem guarded_model_exact : actualMatrix=BlockIngressGuards.compile Data.modulus := by
  rw [forced_base_exact]
  unfold original
  rw [ActualIngressMatrixPacket.actual_matrix_exact,expected_program]
  rfl

theorem actual_shape : actualMatrix.wellFormed=true := by
  rw [forced_base_exact]
  apply GuardMatrix.well_formed
  · exact ActualIngressMatrixPacket.actual_well_formed
  · decide
  · unfold original
    rw [ActualIngressMatrixPacket.actual_matrix_exact,expected_program]
    exact BlockIngressGuards.guard_wire_bounds _

theorem tail_stats : ActualGuardedIngressData.actualRows1313.length=64 ∧
    MatrixRowBlocks.rowsWeight ActualGuardedIngressData.actualRows1313=7680 := by core033_kernel_decide

theorem row_stats : actualMatrix.rows.length=44864 ∧ MatrixRowBlocks.rowsWeight actualMatrix.rows=6668160 := by
  change (original.rows++ActualGuardedIngressData.actualRows1313).length=44864 ∧
    MatrixRowBlocks.rowsWeight (original.rows++ActualGuardedIngressData.actualRows1313)=6668160
  simp only [List.length_append,MatrixRowBlocks.rows_weight_append,
    ActualIngressMatrixPacket.actual_rows_size.1,ActualIngressMatrixPacket.actual_rows_size.2,
    tail_stats.1,tail_stats.2]
  decide

theorem port_stats : actualMatrix.inputPorts.length=64 ∧ actualMatrix.privatePorts.length=44544 ∧
    actualMatrix.outputPorts.length=80 := by
  change ActualGuardedIngressData.actualInputPorts.length=64 ∧
    ActualGuardedIngressData.actualPrivatePorts.length=44544 ∧ ActualGuardedIngressData.actualOutputPorts.length=80
  simp only [ActualGuardedIngressData.actualInputPorts,ActualGuardedIngressData.actualPrivatePorts,
    ActualGuardedIngressData.actualOutputPorts,List.length_append,List.length_range',List.length_cons,List.length_nil]
  decide

theorem binary_size : (MatrixCodec.encode actualMatrix).length=6846998 := by
  rw [MatrixRowBlocks.encoded_matrix_size,port_stats.1,port_stats.2.1,port_stats.2.2,row_stats.2]

theorem parsed_actual : Matrix.parse (MatrixCodec.encode actualMatrix)=some actualMatrix := by
  apply MatrixCodecPayload.matrix_roundtrip actualMatrix actual_shape
  · rw [row_stats.1];decide
  · rw [binary_size];decide

theorem actual_guards {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : actualMatrix.satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    ∀ index,index<64 → (inputs index).toNat<256 := by
  rw [guarded_model_exact] at accepted
  exact BlockIngressGuards.accepted_bytes (p:=R1CS.pallasScalarModulus)
    R1CS.modulus_larger_than_word program_valid valuation inputs accepted inputValues

end CheckedGuardedIngressMatrix
'''
(inputs/'CheckedGuardedIngressMatrix.lean').write_text(code);targets['CheckedGuardedIngressMatrix']=allNames+['CheckedGuardedIngressMatrix.'+n for n in re.findall(r'^theorem ([A-Za-z_0-9]+)',code,re.M)]
r=driver.check_modules(inputs,targets,out/'kernel',audit_source=p/'Audit.lean',dependency_paths=sorted((p/'.lake/packages').glob('*/.lake/build/lib/lean')),seeded_modules=[base/'kernel/compiled',schema/'compiled'])
if Path(quote['source']).read_bytes()!=raw:raise driver.ProofError('actual guarded matrix changed')
(out/'matrix.bin').write_bytes(raw)
receipt={'format_version':'core033.actual-guarded-ingress-matrix.v1','outcome':r['outcome'],'targets':len(r['theorems']),'fresh_kernel_replay':r['fresh_kernel_replay'],'matrix_sha256':hashlib.sha256(raw).hexdigest(),'matrix_bytes':len(raw),'rows':44864,'base_mathematical_receipt_sha256':hashlib.sha256((base/'receipt.json').read_bytes()).hexdigest(),'guard_tail':'independent actual numeric quotation, sixty-four literal-one rows, kernel checked','prefix_binding':'checked actual base data composed with actual guarded header/tail; complete checked-value-to-file equality required separately','scope':'exact concrete SHA block ingress with all sixty-four byte guards and strict parser; authenticated padded-byte supply, whole machine and backend remain open','release_relation_complete':False,'g1_pass':False};(out/'receipt.json').write_text(json.dumps(receipt,indent=2,sort_keys=True)+'\n');print(json.dumps(receipt))
