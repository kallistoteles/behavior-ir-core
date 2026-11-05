"""Fresh-check emitted literal IR against one exact checked control model."""
import argparse,hashlib,json,re,shutil,sys
from pathlib import Path

p=Path('experiments/transition-study033/proofs').resolve()
sys.path.insert(0,str(p))
import check_targets
parser=argparse.ArgumentParser()
parser.add_argument('--kind',choices=['reload','finalize'],required=True)
parser.add_argument('--out',type=Path,required=True)
a=parser.parse_args()
model='PairedPathReload' if a.kind=='reload' else 'PairedPathFinalize'
module='Actual'+model+'IR'
root=Path('specs/033-core-proof-feasibility/evidence/scoped-chain')/('paired-path-'+a.kind+'-guards-formal-001')
report=json.loads((root/'report.json').read_text())
if report['outcome']!='Checked' or not report['fresh_kernel_replay']:
 raise check_targets.ProofError('genuine complete model/guard report required')
inputs=a.out.resolve().with_name(a.out.name+'-inputs');inputs.mkdir(exist_ok=False)
shutil.copyfile(__file__,inputs/'driver.py')
seeds=inputs/'filtered-seeds';seeds.mkdir()
expected={Path(*name.split('.')).with_suffix('.olean').as_posix():entry['olean_sha256'] for name,entry in report['modules'].items()}
expected.update({name:entry['sha256'] for name,entry in report['seeded_modules'].items()})
selected={}
for name,sha in expected.items():
 if not (name.startswith('Core033/') or name=='CoreMath.olean'):continue
 file=root/'compiled'/name;data=file.read_bytes()
 if hashlib.sha256(data).hexdigest()!=sha:raise check_targets.ProofError('changed checked control dependency')
 destination=seeds/name;destination.parent.mkdir(parents=True,exist_ok=True);destination.write_bytes(data)
 selected[name]=sha
(inputs/'seed-provenance.json').write_text(json.dumps(selected,indent=2,sort_keys=True)+'\n')
artifact=Path('experiments/transition-study033/generated/paired-path-control-windows-001')/a.kind
source=artifact/(module+'.lean')
shutil.copyfile(source,inputs/source.name)
targets={module:[module+'.'+n for n in re.findall(r'^theorem ([A-Za-z_0-9]+)',source.read_text(),re.M)]}
r=check_targets.check_modules(inputs,targets,a.out,audit_source=p/'Audit.lean',
 dependency_paths=sorted((p/'.lake/packages').glob('*/.lake/build/lib/lean')),seeded_modules=[seeds])
receipt={'outcome':r['outcome'],'targets':len(r['theorems']),'fresh_kernel_replay':r['fresh_kernel_replay'],
 'kind':a.kind,'model_report_sha256':hashlib.sha256((root/'report.json').read_bytes()).hexdigest(),
 'scope':'exact emitted literal IR equals the checked local control model and is safe/valid; actual Rust/source bytes and actual numeric rows/file bindings still required; no global K/embedding authority',
 'g1_pass':False}
(a.out/'receipt.json').write_text(json.dumps(receipt,indent=2,sort_keys=True)+'\n')
print(json.dumps(receipt))
