"""Fresh-check concrete word-program hash framing/composition, not whole K."""
import argparse,hashlib,json,re,shutil,sys
from pathlib import Path
p=Path('experiments/transition-study033/proofs').resolve();sys.path.insert(0,str(p));import check_targets
parser=argparse.ArgumentParser();parser.add_argument('--out',type=Path,required=True);a=parser.parse_args();inputs=a.out.resolve().with_name(a.out.name+'-inputs');(inputs/'Core033').mkdir(parents=True,exist_ok=False);shutil.copyfile(__file__,inputs/'driver.py')
targets={}
for name in ['PairedPathCompletion']:
 source=p/'Core033'/(name+'.lean');shutil.copyfile(source,inputs/'Core033'/source.name);targets['Core033.'+name]=['Core033.'+name+'.'+n for n in re.findall(r'^theorem ([A-Za-z_0-9]+)',source.read_text(),re.M)]
seeds=[Path('specs/033-core-proof-feasibility/evidence/scoped-chain')/name for name in ['paired-path-loop-formal-001','paired-path-finalize-guards-formal-001']]
for seed in seeds:
 prior=json.loads((seed/'report.json').read_text())
 if prior['outcome']!='Checked' or not prior['fresh_kernel_replay']:raise check_targets.ProofError('checked dependencies required')
 for module,entry in prior['modules'].items():
  file=seed/'compiled'/Path(*module.split('.')).with_suffix('.olean')
  if hashlib.sha256(file.read_bytes()).hexdigest()!=entry['olean_sha256']:raise check_targets.ProofError('changed checked module')
 for relative,entry in prior['seeded_modules'].items():
  if hashlib.sha256((seed/'compiled'/relative).read_bytes()).hexdigest()!=entry['sha256']:raise check_targets.ProofError('changed checked imported module')
filtered=inputs/'filtered-seeds';filtered.mkdir();selected={}
for seed in seeds:
 for file in (seed/'compiled').rglob('*.olean'):
  relative=file.relative_to(seed/'compiled');name=relative.as_posix()
  if not (name.startswith('Core033/') or name=='CoreMath.olean'):continue
  data=file.read_bytes();digest=hashlib.sha256(data).hexdigest()
  if name in selected:
   if selected[name]['sha256']!=digest:raise check_targets.ProofError('different selected source interface')
   continue
  destination=filtered/relative;destination.parent.mkdir(parents=True,exist_ok=True);destination.write_bytes(data)
  selected[name]={'sha256':digest,'source':str(file)}
(inputs/'filtered-seed-provenance.json').write_text(json.dumps(selected,indent=2,sort_keys=True)+'\n')
r=check_targets.check_modules(inputs,targets,a.out,audit_source=p/'Audit.lean',dependency_paths=sorted((p/'.lake/packages').glob('*/.lake/build/lib/lean')),seeded_modules=[filtered])
print(json.dumps({'outcome':r['outcome'],'targets':len(r['theorems']),'fresh_kernel_replay':r['fresh_kernel_replay'],'scope':'conditional 256level word-model terminal composition checks every oldroot/count word against immutable initial context and preserves all12newsummarywords; localphase8 is not publicCoreDone; original path/Init/caller and earlier guard acceptance remain required','g1_pass':False}))
