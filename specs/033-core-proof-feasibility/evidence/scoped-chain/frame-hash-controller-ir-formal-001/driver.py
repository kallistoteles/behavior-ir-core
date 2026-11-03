"""Fresh-check complete independently quoted actual IR, not source-byte correspondence."""
import argparse,hashlib,json,shutil,sys
from pathlib import Path
p=Path('experiments/transition-study033/proofs').resolve();sys.path.insert(0,str(p));import check_targets
parser=argparse.ArgumentParser();parser.add_argument('--out',type=Path,required=True);a=parser.parse_args();out=a.out.resolve();out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py');inputs=out/'proof-inputs';inputs.mkdir()
quote=Path('experiments/transition-study033/generated/frame-hash-controller-source-quote-002');meta=json.loads((quote/'quote.json').read_text());raw=Path(meta['source']).read_bytes()
if hashlib.sha256(raw).hexdigest()!=meta['source_sha256']:raise check_targets.ProofError('changed actual source quotation input')
shutil.copyfile(quote/'proof-inputs/ActualFrameHashControllerIR.lean',inputs/'ActualFrameHashControllerIR.lean');shutil.copyfile(quote/'operation-literals.json',out/'operation-literals.json')
seed=Path('specs/033-core-proof-feasibility/evidence/scoped-chain/frame-hash-controller-control-formal-001');report=json.loads((seed/'report.json').read_text())
if report['outcome']!='Checked' or not report['fresh_kernel_replay']:raise check_targets.ProofError('genuine checked controller program required')
for module,entry in report['modules'].items():
 file=seed/'compiled'/Path(*module.split('.')).with_suffix('.olean')
 if hashlib.sha256(file.read_bytes()).hexdigest()!=entry['olean_sha256']:raise check_targets.ProofError('changed checked module')
for relative,entry in report['seeded_modules'].items():
 if hashlib.sha256((seed/'compiled'/relative).read_bytes()).hexdigest()!=entry['sha256']:raise check_targets.ProofError('changed checked seed')
r=check_targets.check_modules(inputs,{'ActualFrameHashControllerIR':['ActualFrameHashControllerIR.ir_exact','ActualFrameHashControllerIR.safe_checked']},out/'kernel',audit_source=p/'Audit.lean',dependency_paths=sorted((p/'.lake/packages').glob('*/.lake/build/lib/lean')),seeded_modules=[seed/'compiled'])
if Path(meta['source']).read_bytes()!=raw:raise check_targets.ProofError('source quotation changed')
receipt={'format_version':'core033.actual-controller-ir.v1','outcome':r['outcome'],'fresh_kernel_replay':r['fresh_kernel_replay'],'targets':len(r['theorems']),'source_sha256':meta['source_sha256'],'actual_ir_correspondence':True,'actual_source_byte_correspondence':False,'whole_matrix_correspondence':False,'release_relation_complete':False,'g1_pass':False};(out/'receipt.json').write_text(json.dumps(receipt,indent=2,sort_keys=True)+'\n');print(json.dumps(receipt))
