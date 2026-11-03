"""Independent actual-byte mutation must remain visible through compact quoting."""
import argparse,hashlib,json,re,shutil,subprocess,sys
from pathlib import Path
p=Path('experiments/transition-study033/proofs').resolve();sys.path.insert(0,str(p));import check_targets
parser=argparse.ArgumentParser();parser.add_argument('--out',type=Path,required=True);a=parser.parse_args()
out=a.out.resolve();out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py')
actual=Path('experiments/transition-study033/generated/word-vector-equality-001/digest/matrix.bin').resolve()
original=actual.read_bytes();raw=bytearray(original);ports=int.from_bytes(raw[78:82],'little');firstRow=82+4*ports+4
if int.from_bytes(raw[firstRow:firstRow+4],'little')!=1:raise RuntimeError('independent first-column shape changed')
offset=firstRow+4;before=int.from_bytes(raw[offset:offset+4],'little');after=before+1
raw[offset:offset+4]=after.to_bytes(4,'little')
if len(raw)!=len(original) or raw==original:raise RuntimeError('mutation did not change exactly a wire word')
mutant=out/'mutated-matrix.bin';mutant.write_bytes(raw)
groups=Path('specs/033-core-proof-feasibility/evidence/scoped-chain/digest-vector-matrix-groups-compact-001/row-groups.json').resolve()
quote=out/'actual-quote';command=[sys.executable,str(p/'quote_matrix_compact.py'),str(mutant),'--groups',str(groups),'--out',str(quote),'--namespace','CompactMutationData','--module-prefix','CompactMutation']
r=subprocess.run(command,capture_output=True,timeout=300,check=False);(out/'quotation.txt').write_bytes(r.stdout+r.stderr)
if r.returncode:raise RuntimeError('actual mutant quotation failed before semantic control')
metadata=json.loads((quote/'quote.json').read_text())
if not metadata['independent_inverse_byte_equal'] or metadata['source_sha256']!=hashlib.sha256(raw).hexdigest():raise RuntimeError('mutant inverse/binding differs')
inputs=out/'proof-inputs';inputs.mkdir();targets={}
for name in ['CompactMutationConstants','CompactMutationData0']:
 shutil.copyfile(quote/(name+'.lean'),inputs/(name+'.lean'));targets[name]=[]
source='''import CompactMutationData0
import Core033.WordMatrix
import Core033.KernelDecide
namespace CompactMutationControl
open Core033 CompactMutationData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem changed_actual_input_row_is_rejected :
    decide (actualRows0=(WordField.booleanBits actualModulus 0++
      [WordField.packing actualModulus 0,SHA256Circuit.literalRow (WordField.carry 0) false]))=false :=
  by core033_kernel_decide
end CompactMutationControl
'''
(inputs/'CompactMutationControl.lean').write_text(source);targets['CompactMutationControl']=['CompactMutationControl.changed_actual_input_row_is_rejected']
seed=Path('specs/033-core-proof-feasibility/evidence/scoped-chain/digest-vector-matrix-packet-compact-001/kernel').resolve()
prior=json.loads((seed/'report.json').read_text())
if prior['outcome']!='Checked' or not prior['fresh_kernel_replay']:raise check_targets.ProofError('fresh positive control required')
for module,entry in prior['modules'].items():
 if hashlib.sha256((seed/'compiled'/Path(*module.split('.')).with_suffix('.olean')).read_bytes()).hexdigest()!=entry['olean_sha256']:raise check_targets.ProofError('changed checked positive module')
for relative,entry in prior['seeded_modules'].items():
 if hashlib.sha256((seed/'compiled'/relative).read_bytes()).hexdigest()!=entry['sha256']:raise check_targets.ProofError('changed checked positive dependency')
proof=check_targets.check_modules(inputs,targets,out/'kernel',audit_source=p/'Audit.lean',dependency_paths=sorted((p/'.lake/packages').glob('*/.lake/build/lib/lean')),seeded_modules=[seed/'compiled'])
if actual.read_bytes()!=original:raise RuntimeError('original actual matrix changed')
receipt={'format_version':'core033.compact-quotation-actual-mutation-control.v1','outcome':proof['outcome'],
 'fresh_kernel_replay':proof['fresh_kernel_replay'],'changed_wire_byte_offset':offset,'before_wire':before,'after_wire':after,
 'original_sha256':hashlib.sha256(original).hexdigest(),'mutant_sha256':hashlib.sha256(raw).hexdigest(),
 'scope':'genuine positive complete packet already Checked and byte-bound; independent actual wire-byte mutation remains an exact semantic input-row mismatch after dictionary/run quotation; unchanged original matrix retained',
 'release_relation_complete':False,'g1_pass':False}
(out/'receipt.json').write_text(json.dumps(receipt,indent=2,sort_keys=True)+'\n');print(json.dumps(receipt))
