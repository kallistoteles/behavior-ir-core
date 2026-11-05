"""Emit unchecked local path-control artifacts from exact checked model seeds."""
import argparse,hashlib,json,os,shutil,sys
from pathlib import Path

p=Path('experiments/transition-study033/proofs').resolve()
sys.path.insert(0,str(p))
import check_targets
parser=argparse.ArgumentParser()
parser.add_argument('--artifact',type=Path,required=True)
parser.add_argument('--out',type=Path,required=True)
a=parser.parse_args()
a.out.mkdir(exist_ok=False)
shutil.copyfile(__file__,a.out/'driver.py')
seeds=a.out.resolve()/'emission-seeds';seeds.mkdir()
selected={}
for name in ['paired-path-reload-guards-formal-001','paired-path-finalize-guards-formal-001']:
 root=Path('specs/033-core-proof-feasibility/evidence/scoped-chain')/name
 report=json.loads((root/'report.json').read_text())
 if report['outcome']!='Checked' or not report['fresh_kernel_replay']:
  raise check_targets.ProofError('genuine checked control model required')
 expected={Path(*module.split('.')).with_suffix('.olean').as_posix():entry['olean_sha256'] for module,entry in report['modules'].items()}
 expected.update({relative:entry['sha256'] for relative,entry in report['seeded_modules'].items()})
 for relative,sha in expected.items():
  if not (relative.startswith('Core033/') or relative=='CoreMath.olean'):continue
  file=root/'compiled'/relative;data=file.read_bytes()
  if hashlib.sha256(data).hexdigest()!=sha:raise check_targets.ProofError('changed checked generator input')
  if relative in selected:
   if selected[relative]['sha256']!=sha:raise check_targets.ProofError('different shared generator input')
   continue
  target=seeds/relative;target.parent.mkdir(parents=True,exist_ok=True);target.write_bytes(data)
  selected[relative]={'sha256':sha,'source':str(file)}
(a.out/'seed-provenance.json').write_text(json.dumps(selected,indent=2,sort_keys=True)+'\n')
paths=[seeds,*sorted((p/'.lake/packages').glob('*/.lake/build/lib/lean'))]
env=dict(os.environ,LEAN_PATH=':'.join(map(str,paths)))
writer=a.out.resolve()/'Core033/MatrixFile.lean';writer.parent.mkdir()
shutil.copyfile(p/'Core033/MatrixFile.lean',writer)
check_targets._call(['lean','-j1','-o',str(seeds/'Core033/MatrixFile.olean'),str(writer)],
 cwd=a.out.resolve(),env=env,log=a.out.resolve()/'writer.txt')
generator=a.out.resolve()/'GeneratePairedPathControlWindows.lean'
shutil.copyfile(p/generator.name,generator)
check_targets._call(['lean','-j1','--run',str(generator),str(a.artifact.resolve())],
 cwd=a.out.resolve(),env=env,log=a.out.resolve()/'generation.txt')
receipt={'outcome':'EmittedUncheckedControlWindows','artifacts':{
 str(file.relative_to(a.artifact)):{'bytes':file.stat().st_size,'sha256':hashlib.sha256(file.read_bytes()).hexdigest()}
 for file in a.artifact.rglob('*') if file.is_file()},
 'scope':'untrusted control-window emission only; literal/model, complete actual source/rows, all-byte bindings and whole K still required',
 'g1_pass':False}
(a.out/'receipt.json').write_text(json.dumps(receipt,indent=2,sort_keys=True)+'\n')
print(json.dumps(receipt))
