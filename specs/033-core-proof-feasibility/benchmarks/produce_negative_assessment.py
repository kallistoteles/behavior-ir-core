"""Use the implemented failure assessor and reject an actually misbound input.

No release, certificate, native success or complete implementation is produced.
"""
import argparse
import hashlib
import json
from pathlib import Path
import subprocess

parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--final', type=Path, required=True)
parser.add_argument('--attempt', required=True)
args = parser.parse_args()
root = args.final.resolve()
manifest_path = root/'input-frozen/manifest.json'
manifest_raw = manifest_path.read_bytes()
manifest = json.loads(manifest_raw)
for item in manifest['inputs'].values():
    raw = Path(item['path']).read_bytes()
    if len(raw) != item['bytes'] or hashlib.sha256(raw).hexdigest() != item['sha256']:
        raise ValueError('frozen assessment input changed')
failure = {
    'format_version':'core033.failure.v1',
    'input_manifest_sha256':hashlib.sha256(manifest_raw).hexdigest(),
    'stage':'full-initialized-synchronous-chain','status':'not_established',
    'reason':'Complete physical K/refinement, real audited Nova embedding, initialized compressed Core chain, independent release-selected consumer and durable publication are not established. Completed single diagnostic backend costs recommend reworking this synchronous construction; they are not full G1 quantiles or a universal lower bound. This is an early negative assessment, not implementation completion or a claim that the construction cap was exhausted.',
    'blocking_artifacts':['coverage-001/execution-ledger.json',
        'coverage-001/campaign-not-run.json',
        '../scoped-chain/identity-cost-rework-signal-001.json',
        '../scoped-chain/numeric-cost-preprocessed-assessment-001.json',
        '../scoped-chain/ordinary-root-gates-disk-exhaustion-observation-001.json'],
}
def write_new(path, value):
    with path.open('x') as file:
        json.dump(value,file,indent=2,sort_keys=True)
        file.write('\n')
failure_path = root/('failure-'+args.attempt+'.json')
write_new(failure_path,failure)
tool = root/'tools/core-proof-feasibility033'

def run(label, failure_path, output_path):
    command = [str(tool),'assess','--manifest',str(manifest_path),
        '--failure-receipt',str(failure_path),'--evidence',str(root),'--out',str(output_path)]
    result = subprocess.run(command,capture_output=True,timeout=60)
    (root/(label+'.stdout.txt')).write_bytes(result.stdout)
    (root/(label+'.stderr.txt')).write_bytes(result.stderr)
    write_new(root/(label+'.command.json'),{'argv':command,'exit_code':result.returncode,
        'scope':'actual implemented failure-path CLI; no successful release required','g1_pass':False})
    return result

result = run('assess-genuine-'+args.attempt,failure_path,root/'assessment.json')
if result.returncode:
    raise ValueError('actual genuine negative assessment failed')
assessment = json.loads((root/'assessment.json').read_text())
if any(assessment.get(name) != expected for name,expected in [
    ('g1_pass',False),('correctness','not_established'),
    ('performance','not_established'),('decision','rework'),('completeness','partial')]):
    raise ValueError('negative assessment promoted unsupported guarantees')
control = dict(failure)
sha = control['input_manifest_sha256']
control['input_manifest_sha256'] = ('0' if sha[0] != '0' else '1')+sha[1:]
control_path = root/('wrong-manifest-failure-'+args.attempt+'.json')
write_new(control_path,control)
negative_output = root/('wrong-manifest-assessment-'+args.attempt+'.json')
result = run('assess-wrong-manifest-'+args.attempt,control_path,negative_output)
actual = json.loads(result.stderr)
if (result.returncode != 3 or actual.get('status') != 'RejectedEvidence'
        or 'another input manifest' not in actual.get('reason','')
        or actual.get('g1_pass') is not False or negative_output.exists()):
    raise ValueError('wrong manifest was not rejected for the declared binding reason')
write_new(root/'assessment-controls.json',{
    'outcome':'NegativeAssessmentAndExactMisboundInputRejection',
    'genuine_negative_assessment_exit':0,'misbound_input_exit':3,
    'misbound_input_status':'RejectedEvidence','misbound_output_published':False,
    'scope':'actual failure assessor with immutable inputs and no release; no Core/crypto/campaign acceptance authority',
    'g1_pass':False})
print(json.dumps({'outcome':'NegativeAssessmentAndExactMisboundInputRejection',
                  'decision':'rework','g1_pass':False}))
