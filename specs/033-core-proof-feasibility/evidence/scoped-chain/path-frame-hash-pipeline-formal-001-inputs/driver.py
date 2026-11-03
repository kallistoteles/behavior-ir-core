"""Fresh-check concrete word-program hash framing/composition, not whole K."""
import argparse,hashlib,json,re,shutil,sys
from pathlib import Path
p=Path('experiments/transition-study033/proofs').resolve();sys.path.insert(0,str(p));import check_targets
parser=argparse.ArgumentParser();parser.add_argument('--out',type=Path,required=True);a=parser.parse_args();inputs=a.out.resolve().with_name(a.out.name+'-inputs');(inputs/'Core033').mkdir(parents=True,exist_ok=False);shutil.copyfile(__file__,inputs/'driver.py')
targets={}
for name in ['PathFrameEncoding','PathFrameHashPipeline','PhaseInputRouting']:
 source=p/'Core033'/(name+'.lean');shutil.copyfile(source,inputs/'Core033'/source.name);targets['Core033.'+name]=['Core033.'+name+'.'+n for n in re.findall(r'^theorem ([A-Za-z_0-9]+)',source.read_text(),re.M)]
seeds=[Path('specs/033-core-proof-feasibility/evidence/scoped-chain/path-frame-guards-formal-001'),Path('specs/033-core-proof-feasibility/evidence/scoped-chain/branch-word-bounds-formal-001'),Path('specs/033-core-proof-feasibility/evidence/scoped-chain/branch-hash-pipeline-formal-001'),Path('specs/033-core-proof-feasibility/evidence/scoped-chain/hash-block-meaning-formal-001')]
for seed in seeds:
 prior=json.loads((seed/'report.json').read_text())
 if prior['outcome']!='Checked' or not prior['fresh_kernel_replay']:raise check_targets.ProofError('checked dependencies required')
 for module,entry in prior['modules'].items():
  file=seed/'compiled'/Path(*module.split('.')).with_suffix('.olean')
  if hashlib.sha256(file.read_bytes()).hexdigest()!=entry['olean_sha256']:raise check_targets.ProofError('changed checked module')
 for relative,entry in prior['seeded_modules'].items():
  if hashlib.sha256((seed/'compiled'/relative).read_bytes()).hexdigest()!=entry['sha256']:raise check_targets.ProofError('changed checked imported module')
r=check_targets.check_modules(inputs,targets,a.out,audit_source=p/'Audit.lean',dependency_paths=sorted((p/'.lake/packages').glob('*/.lake/build/lib/lean')),seeded_modules=[seed/'compiled' for seed in seeds])
print(json.dumps({'outcome':r['outcome'],'targets':len(r['theorems']),'fresh_kernel_replay':r['fresh_kernel_replay'],'scope':'all accepted integrated frame bytes are canonical full-range original branch bytes, exact two full SHA blocks and final digest, plus full-word fixed-phase input selection; physical continuation/state/output port bindings remain open','g1_pass':False}))
