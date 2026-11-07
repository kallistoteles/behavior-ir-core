"""One conditional production-SRS identity proof and actual consumer controls.

No Core K, initialization/history theorem or security equivalence is claimed.
The publisher-pinned ceremony is an explicit additional assumption.
"""
import datetime
import hashlib
import json
from pathlib import Path
import subprocess
import sys
import time

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[1]
RUNNER = ROOT/'experiments/proof-backend-screen-20261107/run_bounded_precise.py'
RESULTS = HERE/'results'
EXPORT = HERE/'target/identity_export'
CONSUMER = HERE/'target/identity_consumer'
SUBJECT = HERE/'subject.json'
SRS = HERE/'artifacts/verified-pruned'

def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()

def events(path):
    return [json.loads(line) for line in (path/'stdout.txt').read_text().splitlines() if line]

def main():
    inputs = json.loads((HERE/'identity-input-freeze.json').read_text())
    for relative, entry in inputs['files'].items():
        assert sha(ROOT/relative) == entry['sha256'], relative
    alias = ROOT/inputs['srs_alias']['path']
    assert sha(alias) == inputs['srs_alias']['sha256']
    freeze = {'format':'core-next.hyperkzg-identity-execution-freeze.v1',
              'at_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),
              'files':{str(p.relative_to(ROOT)):sha(p) for p in
                       (EXPORT, CONSUMER, SUBJECT, RUNNER, Path(__file__))},
              'source_freeze_sha256':sha(HERE/'identity-input-freeze.json'),
              'security_equivalence':'NotEstablished; changed curves and named ceremony assumptions',
              'planned_producer_smokes':1, 'planned_consumer_controls':3,
              'scenario_seconds':1800, 'g1_pass':False}
    path = RESULTS/'identity-execution-freeze.json'
    assert not path.exists()
    path.write_text(json.dumps(freeze,indent=2)+'\n')
    started = time.monotonic()
    outcomes = []
    def call(name, argv):
        remaining = int(1800-(time.monotonic()-started))
        if remaining <= 0:
            outcomes.append({'case':name,'status':'NotRunScenarioBudget'})
            return None
        out = RESULTS/name
        subprocess.run([sys.executable,str(RUNNER),'--out',str(out),
                        '--wall-seconds',str(min(900,remaining)),*map(str,argv)],check=False,cwd=ROOT)
        return json.loads((out/'receipt.json').read_text())
    producer_dir = RESULTS/'identity-smoke-001'
    producer = call('identity-smoke-001',[EXPORT,SUBJECT,producer_dir/'artifacts',SRS])
    successful = producer and producer['exit_code']==0 and producer['stop_reason'] is None
    if successful:
        trace = events(producer_dir)
        successful = bool(trace and trace[-1]['event']=='diagnostic_complete')
    if successful:
        artifact_dir = producer_dir/'artifacts'
        vk, proof = artifact_dir/'compression_verifier_key.bin', artifact_dir/'compressed_proof.bin'
        key_hash = sha(vk)
        controls = RESULTS/'identity-control-inputs'
        controls.mkdir()
        expected = json.loads(SUBJECT.read_text()); expected['expected'][-1] ^= 1
        wrong = controls/'wrong-endpoint.json'; wrong.write_text(json.dumps(expected,indent=2)+'\n')
        trailing = controls/'trailing-proof.bin'; trailing.write_bytes(proof.read_bytes()+b'\x00')
        cases = [('identity-fresh-001',proof,SUBJECT,key_hash,None),
                 ('identity-control-wrong-endpoint',proof,wrong,key_hash,'complete expected identity endpoint differs'),
                 ('identity-control-wrong-key',proof,SUBJECT,'0'*64,'expected verifier key identity differs'),
                 ('identity-control-trailing-proof',trailing,SUBJECT,key_hash,'trailing serialized artifact bytes')]
        for name,p,s,k,error in cases:
            receipt = call(name,[CONSUMER,vk,p,s,k])
            if receipt is None:
                continue
            status = 'NotEstablished'
            if receipt['stop_reason'] is None:
                if error is None and receipt['exit_code']==0 and events(RESULTS/name)[-1]['event']=='fresh_identity_diagnostic_verified':
                    status = 'FullExpectedEndpointVerified'
                elif error is not None and receipt['exit_code']==1 and error in (RESULTS/name/'stderr.txt').read_text():
                    status = 'TargetedRejectionObserved'
            outcomes.append({'case':name,'status':status,'wall_ns':receipt['wall_ns']})
    else:
        outcomes.append({'case':'producer','status':'OperationalFailureNotSemanticRefusal'})
        outcomes.extend({'case':name,'status':'NotRunMissingCompletedProof'} for name in
                        ('fresh','wrong-endpoint','wrong-key','trailing-proof'))
    summary = {'format':'core-next.hyperkzg-identity-smoke-result.v1',
               'producer_completed':bool(successful),'consumer_results':outcomes,
               'scenario_elapsed_seconds':time.monotonic()-started,
               'quantiles':'NotEstablished: one planned smoke, not100observations',
               'security_equivalence':'NotEstablished; conditional named-ceremony/curve profile',
               'core_correspondence':'NotEstablished','g1_pass':False}
    (RESULTS/'identity-summary.json').write_text(json.dumps(summary,indent=2)+'\n')
    print(json.dumps(summary))

if __name__ == '__main__':
    main()
