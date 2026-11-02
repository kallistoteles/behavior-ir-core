"""Validate actual control source bytes against independent universal semantics."""
import argparse,hashlib,json,re,shutil
from pathlib import Path
import check_targets as driver
from source_quote import lean_ascii_expression
p=Path(__file__).resolve().parent
parser=argparse.ArgumentParser();parser.add_argument('--out',type=Path,required=True);a=parser.parse_args();out=a.out.resolve();out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py');inputs=out/'proof-inputs';(inputs/'Core033').mkdir(parents=True)
targets={}
for name in ['WordControl','WideControl','WordSequence','ControlPrimitives']:
 source=p/'Core033'/(name+'.lean');shutil.copyfile(source,inputs/'Core033'/source.name)
 targets['Core033.'+name]=['Core033.'+name+'.'+n for n in re.findall(r'^theorem ([A-Za-z_0-9]+(?:\.[A-Za-z_0-9]+)*)',source.read_text(),re.M)]
source=Path('experiments/transition-study033/generated/control-primitives-001/checker_step.rs').resolve();raw=source.read_bytes();(out/'checker_step.rs').write_bytes(raw)
code=['import Core033.ControlPrimitives','import Core033.WordSource','import Core033.KernelDecide','namespace ActualControlSource','open Core033','set_option Elab.async false','set_option maxRecDepth 16384','set_option maxHeartbeats 8000000','def actualBytes : WordSource.Bytes := '+lean_ascii_expression(raw),'theorem safe_checked : WordSource.checkSafe (WordSource.lowerFunction ControlPrimitives.program)=true := by core033_kernel_decide','theorem actual_validated : WordSource.validate ControlPrimitives.program actualBytes=true := by core033_kernel_decide','theorem actual_meaning (inputs : Nat → WordIR.Word) : WordSource.NativeDenotes actualBytes inputs (ControlPrimitives.expected inputs) := by','  have result:=WordSource.actual_bytes_sound ControlPrimitives.program actualBytes actual_validated inputs','  rw [ControlPrimitives.program_meaning] at result','  exact result','end ActualControlSource']
(inputs/'ActualControlSource.lean').write_text('\n'.join(code)+'\n');targets['ActualControlSource']=['ActualControlSource.'+n for n in ['safe_checked','actual_validated','actual_meaning']]
seed=Path('specs/033-core-proof-feasibility/evidence/scoped-chain/digest-assembly-formal-001').resolve();sr=json.loads((seed/'report.json').read_text())
if sr['outcome']!='Checked' or not sr['fresh_kernel_replay']:raise driver.ProofError('checked mathematical/source dependencies required')
r=driver.check_modules(inputs,targets,out/'kernel',audit_source=p/'Audit.lean',dependency_paths=sorted((p/'.lake/packages').glob('*/.lake/build/lib/lean')),seeded_modules=[seed/'compiled'])
if source.read_bytes()!=raw:raise driver.ProofError('actual source changed')
receipt={'format_version':'core033.actual-control-source.v1','outcome':r['outcome'],'targets':len(r['theorems']),'fresh_kernel_replay':r['fresh_kernel_replay'],'source_sha256':hashlib.sha256(raw).hexdigest(),'source_bytes':len(raw),'scope':'53-instruction real control source, full u64 addition, carry/select/order/zero/sign; not whole K','actual_matrix_bytes':False,'release_relation_complete':False,'g1_pass':False}
(out/'receipt.json').write_text(json.dumps(receipt,sort_keys=True,indent=2)+'\n');print(json.dumps(receipt))
