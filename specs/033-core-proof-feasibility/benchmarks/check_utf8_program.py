"""Fresh Unicode scalar and whole-text encoding refinement; actual artifacts remain separate."""
import argparse,json,re,shutil,sys
from pathlib import Path
p=Path('experiments/transition-study033/proofs').resolve();sys.path.insert(0,str(p));import check_targets
parser=argparse.ArgumentParser();parser.add_argument('--out',type=Path,required=True);a=parser.parse_args();inputs=a.out.resolve().with_name(a.out.name+'-inputs');(inputs/'Core033').mkdir(parents=True,exist_ok=False);shutil.copyfile(__file__,inputs/'driver.py');targets={}
for name in ['Utf8Encoding','Utf8Program']:
 source=p/'Core033'/(name+'.lean');shutil.copyfile(source,inputs/'Core033'/source.name);targets['Core033.'+name]=['Core033.'+name+'.'+n for n in re.findall(r'^theorem ([A-Za-z_0-9]+(?:\.[A-Za-z_0-9]+)*)',source.read_text(),re.M)]
seed=Path('specs/033-core-proof-feasibility/evidence/scoped-chain/padding-byte-program-formal-001');prior=json.loads((seed/'report.json').read_text())
if prior['outcome']!='Checked' or not prior['fresh_kernel_replay']:raise check_targets.ProofError('checked dependencies required')
r=check_targets.check_modules(inputs,targets,a.out,audit_source=p/'Audit.lean',dependency_paths=sorted((p/'.lake/packages').glob('*/.lake/build/lib/lean')),seeded_modules=[seed/'compiled'])
print(json.dumps({'outcome':r['outcome'],'targets':len(r['theorems']),'fresh_kernel_replay':r['fresh_kernel_replay'],'scope':'Unicode scalar rejection, canonical encoding, word program and whole-text witness semantics; actual source/matrix and authenticated full field consumption remain open','g1_pass':False}))
