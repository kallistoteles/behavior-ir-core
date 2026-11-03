"""Fresh-check an actual complete sharing candidate via a proved certificate checker."""
import argparse,hashlib,json,shutil,sys
from pathlib import Path
p=Path('experiments/transition-study033/proofs').resolve()
sys.path.insert(0,str(p))
import check_targets
parser=argparse.ArgumentParser()
parser.add_argument('--candidate',type=Path,required=True)
parser.add_argument('--out',type=Path,required=True)
a=parser.parse_args()
roots=[Path('specs/033-core-proof-feasibility/evidence/scoped-chain/word-sharing-certificate-formal-001'),
       Path('specs/033-core-proof-feasibility/evidence/scoped-chain/frame-hash-controller-source-001/kernel')]
for root in roots:
    report=json.loads((root/'report.json').read_text())
    if report['outcome']!='Checked' or not report['fresh_kernel_replay']:
        raise check_targets.ProofError('genuine fresh source/checker report required')
    for name,entry in report['modules'].items():
        file=root/'compiled'/Path(*name.split('.')).with_suffix('.olean')
        if hashlib.sha256(file.read_bytes()).hexdigest()!=entry['olean_sha256']:
            raise check_targets.ProofError('changed checked module '+name)
    for relative,entry in report['seeded_modules'].items():
        if hashlib.sha256((root/'compiled'/relative).read_bytes()).hexdigest()!=entry['sha256']:
            raise check_targets.ProofError('changed checked dependency '+relative)
inputs=a.out.resolve().with_name(a.out.name+'-inputs')
inputs.mkdir(exist_ok=False)
shutil.copyfile(__file__,inputs/'driver.py')
shutil.copyfile(a.candidate/'SharedFrameCandidate.lean',inputs/'SharedFrameCandidate.lean')
r=check_targets.check_modules(inputs,{'SharedFrameCandidate':['SharedFrameCandidate.certificate_checked','SharedFrameCandidate.complete_meaning']},
    a.out,audit_source=p/'Audit.lean',dependency_paths=sorted((p/'.lake/packages').glob('*/.lake/build/lib/lean')),
    seeded_modules=[root/'compiled' for root in roots])
print(json.dumps({'outcome':r['outcome'],'targets':len(r['theorems']),'fresh_kernel_replay':r['fresh_kernel_replay'],
    'scope':'complete actual sharing candidate preserves every original output for all word inputs through the kernel-checked alias certificate; optimized native/matrix artifacts, proving costs, whole K and G1 remain open',
    'g1_pass':False}))
