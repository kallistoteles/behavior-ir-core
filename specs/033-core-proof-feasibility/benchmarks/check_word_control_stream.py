"""Fresh kernel check of bitwise control helpers and exact SHA stream rules."""
import argparse,json,re,shutil,sys
from pathlib import Path
p=Path('experiments/transition-study033/proofs').resolve();sys.path.insert(0,str(p));import check_targets
parser=argparse.ArgumentParser();parser.add_argument('--out',type=Path,required=True);a=parser.parse_args();inputs=a.out.resolve().with_name(a.out.name+'-inputs');(inputs/'Core033').mkdir(parents=True,exist_ok=False);shutil.copyfile(__file__,inputs/'driver.py')
targets={}
for n in ['WordControl','HashStream']:
 source=p/'Core033'/(n+'.lean');shutil.copyfile(source,inputs/'Core033'/source.name)
 targets['Core033.'+n]=['Core033.'+n+'.'+v for v in re.findall(r'^theorem ([A-Za-z_0-9]+(?:\.[A-Za-z_0-9]+)*)',source.read_text(),re.M)]
seed=Path('specs/033-core-proof-feasibility/evidence/scoped-chain/sha-actual-source-composed-001/kernel');r=json.loads((seed/'report.json').read_text())
if r['outcome']!='Checked' or not r['fresh_kernel_replay']:raise check_targets.ProofError('genuine checked source dependencies required')
r=check_targets.check_modules(inputs,targets,a.out,audit_source=p/'Audit.lean',dependency_paths=sorted((p/'.lake/packages').glob('*/.lake/build/lib/lean')),seeded_modules=[seed/'compiled'])
print(json.dumps({'outcome':r['outcome'],'targets':len(r['theorems']),'fresh_kernel_replay':r['fresh_kernel_replay'],'scope':'universal u32 helper and stream semantics; actual control artifacts remain open','g1_pass':False}))
