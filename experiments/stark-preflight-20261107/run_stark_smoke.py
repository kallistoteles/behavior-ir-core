"""One actual local IPC STARK proof, fresh verification and acceptance faults."""
import datetime
import hashlib
import json
import os
from pathlib import Path
import struct
import subprocess
import sys
import time

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[1]
RESULTS = HERE/'results'
RUNNER = ROOT/'experiments/proof-backend-screen-20261107/run_bounded_precise.py'
BINARY = HERE/'host-target/release/identity_stark_client'
PROGRAM = RESULTS/'combined-program-001/program.bin'
IMAGE = RESULTS/'combined-program-001/image.json'
SUBJECT = HERE/'subject.json'

def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()

def events(out):
    result = []
    for line in (out/'stdout.txt').read_text().splitlines():
        try:
            value = json.loads(line)
        except json.JSONDecodeError:
            continue
        if isinstance(value,dict) and 'event' in value:
            result.append(value)
    return result

def main():
    profile = json.loads((HERE/'external-profile.json').read_text())
    overall_start = datetime.datetime.fromisoformat(profile['original_preparation_start']).timestamp()
    assert time.time()-overall_start < 4*3600
    loader = json.loads((RESULTS/'external-loader.json').read_text())
    producer = Path(loader['producer'])
    assert sha(producer)==loader['wrapper_sha256']
    assert sha(Path(loader['original']))==loader['original_elf_sha256']
    image = json.loads(IMAGE.read_text())
    assert sha(PROGRAM)==image['program_sha256']
    assert sha(RESULTS/'guest-program/user.elf')==image['user_elf_sha256']
    frozen = {'format':'core-next.stark-identity-execution-freeze.v1',
              'at_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),
              'files':{str(p.relative_to(ROOT)):sha(p) for p in
                       (BINARY,PROGRAM,IMAGE,SUBJECT,producer,Path(loader['original']),RUNNER,Path(__file__))},
              'options':'Explicit local ExternalProver; succinct; dev=false; local verifier rejects other kinds',
              'planned_smokes':1,'planned_faults':['wrong endpoint','wrong image','trailing bytes','fake receipt','journal mutation if uniquely located'],
              'security_equivalence':'NotEstablished; default RISC0 profile, no Core correspondence',
              'performance_scope':'Prove call includes local process/IPC and SDK integrity check; no durable Core commit',
              'g1_pass':False}
    freeze_path = RESULTS/'stark-execution-freeze.json'
    assert not freeze_path.exists()
    freeze_path.write_text(json.dumps(frozen,indent=2)+'\n')
    env = dict(os.environ)
    for name in list(env):
        if name.startswith('BONSAI_') or name in ('RISC0_DEV_MODE','RISC0_PROVER','RISC0_SERVER_PATH','RISC0_SERVER'):
            env.pop(name,None)
    temporary = HERE/'runtime-tmp';temporary.mkdir(exist_ok=True)
    env.update(RISC0_HOME=str(HERE/'risc0'),RISC0_DEV_MODE='0',RUST_LOG='warn',TMPDIR=str(temporary))
    started = time.monotonic()
    results = []
    def call(name,argv):
        left = min(int(1800-(time.monotonic()-started)),int(4*3600-(time.time()-overall_start)))
        if left<=0:
            results.append({'case':name,'status':'NotRunBudget'})
            return None
        out = RESULTS/name
        subprocess.run([sys.executable,str(RUNNER),'--out',str(out),'--wall-seconds',str(min(900,left)),
                        *map(str,argv)],cwd=ROOT,env=env,check=False)
        return json.loads((out/'receipt.json').read_text())
    prove_out = RESULTS/'stark-proof-001'
    receipt = call('stark-proof-001',[BINARY,'prove',PROGRAM,SUBJECT,prove_out/'artifacts',producer])
    completed = bool(receipt and receipt['exit_code']==0 and receipt['stop_reason'] is None and
                     events(prove_out) and events(prove_out)[-1]['event']=='identity_diagnostic_complete')
    if completed:
        proof = prove_out/'artifacts/receipt.bin'
        controls = RESULTS/'stark-control-inputs';controls.mkdir()
        subject = json.loads(SUBJECT.read_text());subject['expected'][-1]^=1
        wrong = controls/'wrong-endpoint.json';wrong.write_text(json.dumps(subject,indent=2)+'\n')
        changed = dict(image);changed['image_words']=list(image['image_words']);changed['image_words'][0]^=1
        wrong_image = controls/'wrong-image.json';wrong_image.write_text(json.dumps(changed,indent=2)+'\n')
        trailing = controls/'trailing-proof.bin';trailing.write_bytes(proof.read_bytes()+b'\x00')
        fake = controls/'fake-receipt.bin'
        fake_result = call('stark-fake-construction',[BINARY,'make-fake',proof,IMAGE,fake])
        cases = [('stark-fresh-001',proof,IMAGE,SUBJECT,None),
                 ('stark-control-wrong-endpoint',proof,IMAGE,wrong,'complete expected identity endpoint differs'),
                 ('stark-control-wrong-image',proof,wrong_image,SUBJECT,'receipt verification failed'),
                 ('stark-control-trailing-proof',trailing,IMAGE,SUBJECT,'trailing serialized artifact bytes')]
        if fake_result and fake_result['exit_code']==0:
            cases.append(('stark-control-fake',fake,IMAGE,SUBJECT,'receipt kind is not succinct'))
        else:
            results.append({'case':'stark-control-fake','status':'NotRunMissingWellFormedFake'})
        # An independent wire fault, only when the known journal is uniquely present.
        expected = json.loads(SUBJECT.read_text())['expected']
        journal = struct.pack('<I',43)+b''.join(struct.pack('<Q',v) for v in expected)
        raw = proof.read_bytes();needle = struct.pack('<Q',len(journal))+journal
        if raw.count(needle)==1:
            offset=raw.index(needle)+8+len(journal)-1
            tampered=bytearray(raw);tampered[offset]^=1
            altered=controls/'altered-journal.bin';altered.write_bytes(tampered)
            cases.append(('stark-control-journal',altered,IMAGE,SUBJECT,'receipt verification failed'))
        else:
            results.append({'case':'stark-control-journal','status':'NotRunUnestablishedJournalByteLocation'})
        for name,p,i,s,error in cases:
            checked = call(name,[BINARY,'verify',p,i,s])
            if checked is None:continue
            status='NotEstablished'
            if checked['stop_reason'] is None:
                if error is None and checked['exit_code']==0 and events(RESULTS/name)[-1]['event']=='fresh_full43_word_endpoint_verified':
                    status='FullExpectedEndpointVerified'
                elif error is not None and checked['exit_code']==1 and error in (RESULTS/name/'stderr.txt').read_text():
                    status='TargetedRejectionObserved'
            results.append({'case':name,'status':status,'wall_ns':checked['wall_ns'],'expected_error':error})
    else:
        results.append({'case':'producer','status':'OperationalFailureNotSemanticRefusal'})
        results.extend({'case':name,'status':'NotRunMissingCompletedReceipt'} for name in
                       ('fresh','wrong-endpoint','wrong-image','trailing-proof','fake','journal'))
    summary={'format':'core-next.stark-identity-smoke-result.v1','producer_completed':completed,
             'consumer_results':results,'scenario_elapsed_seconds':time.monotonic()-started,
             'quantiles':'NotEstablished:one identity smoke, not100 observations',
             'core_init_history_and_durability':'NotEstablished','security_equivalence':'NotEstablished',
             'g1_pass':False}
    (RESULTS/'stark-summary.json').write_text(json.dumps(summary,indent=2)+'\n')
    print(json.dumps(summary))

if __name__=='__main__':main()
