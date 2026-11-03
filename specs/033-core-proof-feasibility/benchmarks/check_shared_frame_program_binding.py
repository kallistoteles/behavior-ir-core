"""Fresh-check shared literal program and exact candidate-data equality only."""
import argparse
import hashlib
import json
from pathlib import Path
import re
import shutil
import sys

proofs = Path('experiments/transition-study033/proofs').resolve()
sys.path.insert(0, str(proofs))
import check_targets

parser = argparse.ArgumentParser()
parser.add_argument('--candidate', type=Path, required=True)
parser.add_argument('--out', type=Path, required=True)
args = parser.parse_args()
inputs = args.out.resolve().with_name(args.out.name+'-inputs')
inputs.mkdir(exist_ok=False)
shutil.copyfile(__file__, inputs/'driver.py')
roots = [Path('specs/033-core-proof-feasibility/evidence/scoped-chain')/name
         for name in ['frame-program-quoted-binding-002','word-sharing-certificate-formal-002']]
seeds = inputs/'filtered-seeds'
seeds.mkdir()
selected = {}
for root in roots:
    report = json.loads((root/'report.json').read_text())
    if report['outcome'] != 'Checked' or not report['fresh_kernel_replay']:
        raise check_targets.ProofError('genuine checked generic/literal dependencies required')
    expected = {Path(*name.split('.')).with_suffix('.olean').as_posix():entry['olean_sha256']
                for name,entry in report['modules'].items()}
    expected.update({name:entry['sha256'] for name,entry in report['seeded_modules'].items()})
    for name, sha in expected.items():
        source = root/'compiled'/name
        data = source.read_bytes()
        if hashlib.sha256(data).hexdigest() != sha:
            raise check_targets.ProofError('changed checked module '+name)
        if not (name.startswith('Core033/') or name in ['CoreMath.olean','QuotedFrameHashControllerIR.olean']):
            continue
        if name in selected:
            if selected[name] != sha:
                raise check_targets.ProofError('different shared seed '+name)
            continue
        destination = seeds/name
        destination.parent.mkdir(parents=True, exist_ok=True)
        destination.write_bytes(data)
        selected[name] = sha
(inputs/'seed-provenance.json').write_text(json.dumps(selected, indent=2, sort_keys=True)+'\n')
targets = {}
for name in ['SegmentedFrameSharingData','SharedFrameProgram','SharedFrameProgramBinding']:
    source = args.candidate/(name+'.lean') if name == 'SegmentedFrameSharingData' else proofs/(name+'.lean')
    shutil.copyfile(source, inputs/source.name)
    namespace = 'SegmentedFrameSharing' if name == 'SegmentedFrameSharingData' else name
    targets[name] = [namespace+'.'+n for n in re.findall(r'^theorem ([A-Za-z_0-9]+)',source.read_text(),re.M)]
result = check_targets.check_modules(inputs,targets,args.out,audit_source=proofs/'Audit.lean',
    dependency_paths=sorted((proofs/'.lake/packages').glob('*/.lake/build/lib/lean')),
    seeded_modules=[seeds])
print(json.dumps({'outcome':result['outcome'],'targets':len(result['theorems']),
    'fresh_kernel_replay':result['fresh_kernel_replay'],
    'scope':'standalone shared literal program/safety and exact equality to candidate data only; complete old-program equivalence and actual source/matrix bindings remain independent required receipts',
    'g1_pass':False}))
