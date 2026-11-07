"""Three actual identity pilots, fresh consumers and targeted endpoint controls.

Not a Core/circuit correspondence test, release verifier, quantile campaign or
durable publication. The consumer's expected key hash is selected by the trial
controller from the completed diagnostic export, not an approved Core release.
"""
import datetime
import hashlib
import json
from pathlib import Path
import subprocess
import sys

ROOT = Path(__file__).resolve().parents[2]
HERE = Path(__file__).resolve().parent
BOUNDED = HERE / 'run_bounded_precise.py'
PROVER = HERE / 'target/release/identity_pp_export'
CONSUMER = HERE / 'target/release/identity_pp_consumer'
SUBJECT = HERE / 'subject.json'
RESULTS = HERE / 'results'

def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()

def call(out, command):
    subprocess.run([sys.executable, str(BOUNDED), '--out', str(out),
                    *map(str, command)], cwd=ROOT, check=False)
    return json.loads((out/'receipt.json').read_text())

def events(out):
    return [json.loads(line) for line in (out/'stdout.txt').read_text().splitlines() if line]

def main():
    assert PROVER.exists() and CONSUMER.exists()
    freeze_path = RESULTS/'pilot-input-freeze.json'
    assert not freeze_path.exists(), 'never overwrite an existing trial'
    original = HERE/'input-freeze.json'
    for entry in json.loads(original.read_text())['source_files']:
        assert sha(ROOT/entry['path']) == entry['sha256'], entry['path']
    freeze = {'format':'core-next.identity-pp-pilot-freeze.v1',
              'at_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),
              'preparation_freeze_sha256':sha(original),
              'files':{str(p.relative_to(ROOT)):sha(p) for p in
                       (PROVER, CONSUMER, SUBJECT, BOUNDED, Path(__file__))},
              'planned_pilots':3, 'planned_controls':['wrong endpoint','wrong expected key hash','trailing proof bytes'],
              'g1_pass':False}
    freeze_path.write_text(json.dumps(freeze, indent=2)+'\n')
    results = []
    for number in range(1, 4):
        out = RESULTS/f'pilot-{number:03d}'
        receipt = call(out, [PROVER, SUBJECT, out/'artifacts'])
        if receipt['exit_code'] != 0 or receipt['stop_reason'] is not None:
            results.append({'pilot':number,'status':'OperationalFailure','receipt':str(out.relative_to(ROOT))})
            break
        data = events(out)
        assert data[-1]['event'] == 'diagnostic_complete'
        artifact_dir = out/'artifacts'
        vk, proof = artifact_dir/'compression_verifier_key.bin', artifact_dir/'compressed_proof.bin'
        key_hash = sha(vk)
        fresh = RESULTS/f'fresh-{number:03d}'
        checked = call(fresh, [CONSUMER, vk, proof, SUBJECT, key_hash])
        if checked['exit_code'] != 0 or checked['stop_reason'] is not None:
            results.append({'pilot':number,'status':'FreshConsumerOperationalFailure'})
            break
        assert events(fresh)[-1]['event'] == 'fresh_identity_diagnostic_verified'
        phase = {e['event']:e for e in data}
        warm_ns = sum(phase[name]['elapsed_ns'] for name in (
            'second_prove_step_actual_fold','compress','compressed_verify_full_endpoint_same_process'))
        results.append({'pilot':number,'status':'CompletedIdentityDiagnostic',
                        'warm_component_sum_ns':warm_ns,
                        'interpretation':'sum of sequential observed phases; excludes other costs, not whole committed latency',
                        'fresh_whole_process_ns':checked['wall_ns'],
                        'artifacts':{p.name:{'bytes':p.stat().st_size,'sha256':sha(p)}
                                     for p in artifact_dir.glob('*.bin')}})
    controls = []
    if results and results[0]['status'] == 'CompletedIdentityDiagnostic':
        artifact_dir = RESULTS/'pilot-001/artifacts'
        vk, proof = artifact_dir/'compression_verifier_key.bin', artifact_dir/'compressed_proof.bin'
        key_hash = sha(vk)
        control_dir = RESULTS/'control-inputs'
        control_dir.mkdir()
        changed = json.loads(SUBJECT.read_text())
        changed['expected'][-1] ^= 1
        wrong = control_dir/'wrong-endpoint.json'
        wrong.write_text(json.dumps(changed, indent=2)+'\n')
        trailing = control_dir/'proof-with-trailing-byte.bin'
        trailing.write_bytes(proof.read_bytes()+b'\x00')
        cases = [('wrong-endpoint',proof,wrong,key_hash,'complete expected identity endpoint differs'),
                 ('wrong-key',proof,SUBJECT,'0'*64,'expected verifier key identity differs'),
                 ('trailing-proof',trailing,SUBJECT,key_hash,'trailing serialized artifact bytes')]
        for name, supplied_proof, subject, expected_key, diagnostic in cases:
            out = RESULTS/f'control-{name}'
            receipt = call(out,[CONSUMER,vk,supplied_proof,subject,expected_key])
            error = (out/'stderr.txt').read_text()
            passed = receipt['exit_code'] == 1 and receipt['stop_reason'] is None and diagnostic in error
            controls.append({'name':name,'status':'TargetedRejectionObserved' if passed else 'NotEstablished',
                             'expected_error':diagnostic,'receipt':str(out.relative_to(ROOT))})
    summary = {'format':'core-next.identity-pp-pilot-summary.v1','pilots':results,'controls':controls,
               'completed_observations':sum(r['status']=='CompletedIdentityDiagnostic' for r in results),
               'quantiles':'NotEstablished; fewer than100 observations',
               'scope':'43-word identity with preprocessed Spartan/IPA on both curves; no Core proof or durable chain',
               'g1_pass':False}
    summary['scale_up_decision'] = ('DoNotScaleThisConfigurationOnReferenceHost' if
        len(results)==3 and all(r.get('warm_component_sum_ns',0)>100_000_000 for r in results)
        else 'NotEstablished')
    (RESULTS/'pilot-summary.json').write_text(json.dumps(summary,indent=2)+'\n')
    print(json.dumps({'completed':summary['completed_observations'],'decision':summary['scale_up_decision'],'g1_pass':False}))

if __name__ == '__main__':
    main()
