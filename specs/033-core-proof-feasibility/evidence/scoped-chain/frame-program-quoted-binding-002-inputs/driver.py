"""Fresh-check literal program data and a separate exact source/model binding.

The future numeric component may import just the identical literal-data module.
This driver neither certifies a numeric matrix nor renames any compiled seed.
"""
import argparse, hashlib, json, re, shutil, sys
from pathlib import Path
p = Path('experiments/transition-study033/proofs').resolve()
sys.path.insert(0,str(p))
import check_targets
parser = argparse.ArgumentParser()
parser.add_argument('--out',type=Path,required=True)
a = parser.parse_args()
source = Path('specs/033-core-proof-feasibility/evidence/scoped-chain/frame-hash-controller-source-001/kernel').resolve()
prior = json.loads((source/'report.json').read_text())
if prior['outcome']!='Checked' or not prior['fresh_kernel_replay']:
    raise check_targets.ProofError('genuine complete actual source receipt required')
for name,entry in prior['modules'].items():
    file = source/'compiled'/Path(*name.split('.')).with_suffix('.olean')
    if hashlib.sha256(file.read_bytes()).hexdigest()!=entry['olean_sha256']:
        raise check_targets.ProofError('changed checked source module')
for relative,entry in prior['seeded_modules'].items():
    if hashlib.sha256((source/'compiled'/relative).read_bytes()).hexdigest()!=entry['sha256']:
        raise check_targets.ProofError('changed checked source dependency')
inputs = a.out.resolve().with_name(a.out.name+'-inputs')
inputs.mkdir(exist_ok=False)
shutil.copyfile(__file__,inputs/'driver.py')
targets = {}
for name in ['QuotedFrameHashControllerIR','FrameHashControllerQuotedBinding']:
    original=p/(name+'.lean')
    shutil.copyfile(original,inputs/original.name)
    targets[name]=[name+'.'+v for v in re.findall(r'^theorem ([A-Za-z_0-9]+)',original.read_text(),re.M)]
r = check_targets.check_modules(inputs,targets,a.out,audit_source=p/'Audit.lean',
    dependency_paths=sorted((p/'.lake/packages').glob('*/.lake/build/lib/lean')),
    seeded_modules=[source/'compiled'])
print(json.dumps({'outcome':r['outcome'],'targets':len(r['theorems']),
    'fresh_kernel_replay':r['fresh_kernel_replay'],
    'scope':'literal complete program data and exact kernel equality to original actual source IR/model; no numeric matrix or whole K authority',
    'g1_pass':False}))
