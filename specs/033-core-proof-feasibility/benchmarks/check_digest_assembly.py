"""Fresh audit of full256-bit port binding, source validity and row composition."""
import argparse,json,re,shutil,sys
from pathlib import Path
p=Path('experiments/transition-study033/proofs').resolve();sys.path.insert(0,str(p));import check_targets
parser=argparse.ArgumentParser();parser.add_argument('--out',type=Path,required=True);a=parser.parse_args()
inputs=a.out.resolve().with_name(a.out.name+'-inputs');(inputs/'Core033').mkdir(parents=True,exist_ok=False);shutil.copyfile(__file__,inputs/'driver.py')
targets={}
for n in ['DigestPorts','WordSourceValidity','MatrixRowBlocks']:
 source=p/'Core033'/(n+'.lean');shutil.copyfile(source,inputs/'Core033'/source.name)
 targets['Core033.'+n]=['Core033.'+n+'.'+v for v in re.findall(r'^theorem ([A-Za-z_0-9]+(?:\.[A-Za-z_0-9]+)*)',source.read_text(),re.M)]
e=Path('specs/033-core-proof-feasibility/evidence/scoped-chain');seeds=[e/'matrix-shape-formal-001/compiled',e/'matrix-codec-formal-001/compiled',e/'sha-actual-source-composed-001/kernel/compiled']
for seed in seeds:
 receipt=json.loads((seed.parent/'report.json').read_text())
 if receipt['outcome']!='Checked' or not receipt['fresh_kernel_replay']:raise check_targets.ProofError('missing genuine checked seed')
r=check_targets.check_modules(inputs,targets,a.out,audit_source=p/'Audit.lean',dependency_paths=sorted((p/'.lake/packages').glob('*/.lake/build/lib/lean')),seeded_modules=seeds)
print(json.dumps({'outcome':r['outcome'],'targets':len(r['theorems']),'fresh_kernel_replay':r['fresh_kernel_replay'],'scope':'full four-u64 limb row schemas and assembly laws; no actual whole K/backend','g1_pass':False}))
