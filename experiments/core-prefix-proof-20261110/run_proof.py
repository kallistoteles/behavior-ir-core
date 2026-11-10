"""One bounded genuine local-K prefix proof; never identity or full-G1 proxy."""
import datetime
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile
import time

HERE=Path(__file__).resolve().parent
ROOT=HERE.parents[1]
OLD=HERE.parent/'stark-preflight-20261107'
RESULTS=HERE/'results'
RECORDER=ROOT/'experiments/proof-backend-screen-20261107/run_bounded_precise.py'
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()

def main():
    protocol=json.loads((HERE/'protocol.json').read_text())
    preparation_start=datetime.datetime.fromisoformat(protocol['preparation_started_at_utc']).timestamp()
    env=dict(os.environ,RISC0_HOME=str(OLD/'risc0'),RISC0_DEV_MODE='0',RUST_LOG='warn')
    for k in list(env):
        if k.startswith('BONSAI_')or k in['RISC0_PROVER','RISC0_SERVER','RISC0_SERVER_PATH']:env.pop(k,None)
    def call(name,argv,cap=900,cwd=ROOT):
        out=RESULTS/name
        if out.exists():raise RuntimeError('immutable output exists '+str(out))
        subprocess.run([sys.executable,str(RECORDER),'--out',str(out),'--wall-seconds',str(max(1,min(900,int(cap)))),
                        '--stack-mib','64',*map(str,argv)],cwd=cwd,env=env,check=False)
        return json.loads((out/'receipt.json').read_text())
    def prep_left():
        left=1800-(time.time()-preparation_start)
        if left<=0:raise RuntimeError('PreparationBudgetExhausted')
        return min(900,left)
    guest=json.loads((RESULTS/'guest-binary-001.json').read_text());elf=Path(guest['path']);assert sha(elf)==guest['sha256']
    host=call('host-build-001',['nix-shell','experiments/transition-study033/shell.nix','--run',
           'python3 experiments/core-prefix-proof-20261110/build.py host --attempt 001'],prep_left())
    if host['exit_code']!=0:raise RuntimeError('HostBuildFailed')
    client=Path(json.loads((RESULTS/'host-binary-001.json').read_text())['path'])
    inputs=RESULTS/'native-input-001';program=RESULTS/'combined-program-001'
    for name,argv in [('native-prepare-001',[client,'prepare-input',inputs]),('program-prepare-001',[client,'prepare-program',elf,program])]:
        r=call(name,argv,prep_left());assert r['exit_code']==0 and r['stop_reason']is None
    helper=RESULTS/'confine-verifier'
    r=call('confinement-build-001',['nix-shell','experiments/transition-study033/shell.nix','--run',
        'cc -O2 -Wall -Wextra experiments/core-prefix-proof-20261110/confine_verifier.c -o experiments/core-prefix-proof-20261110/results/confine-verifier'],prep_left());assert r['exit_code']==0
    loader=json.loads((OLD/'results/external-loader.json').read_text());producer=Path(loader['producer'])
    assert sha(producer)==loader['wrapper_sha256'] and sha(Path(loader['original']))==loader['original_elf_sha256']
    expected=inputs/'expected.json';image=program/'image.json'
    record=json.loads(image.read_text());assert sha(program/'program.bin')==record['program_sha256'] and sha(elf)==record['user_elf_sha256']
    files=[client,elf,program/'program.bin',image,expected,inputs/'proposal-0.json',inputs/'proposal-1.json',producer,Path(loader['original']),helper,
           HERE/'protocol.json',HERE/'prefix_logic.rs',Path(__file__),HERE/'confine_verifier.c',
           *[HERE.parent/'local-k-study-20261109'/s for s in ['auth.rs','kernel.rs','planner.rs']]]
    freeze=RESULTS/'proof-input-freeze-001.json';assert not freeze.exists()
    freeze.write_text(json.dumps({'format':'core.actual-prefix-inputs.v1','at_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),
        'files':{str(p):sha(p)for p in files},'preparation_elapsed_seconds':time.time()-preparation_start,
        'security_equivalence':'NotEstablished','scope':'Exact closed local K initialized finite2-step prefix; not fullCore/native formal bridge/canonical history/durable publication','g1_pass':False},indent=2)+'\n')
    started=time.monotonic()
    def trial(name,argv,cwd=ROOT):
        remaining=int(1800-(time.monotonic()-started))
        if remaining<=0:raise RuntimeError('ProofScenarioBudgetExhausted')
        return call(name,argv,min(900,remaining),cwd)
    out=RESULTS/'actual-prefix-proof-001'
    r=trial('actual-prefix-proof-001',[client,'prove',program/'program.bin',inputs,expected,out/'artifacts',producer])
    rows=[]
    completed=r['exit_code']==0 and r['stop_reason']is None
    if completed:
        events=[json.loads(s)for s in(out/'stdout.txt').read_text().splitlines()if s.startswith('{')]
        completed=bool(events and events[-1].get('event')=='actual_initialized_two_transition_prefix_complete')
    if completed:
        proof=out/'artifacts/receipt.bin'
        faults=RESULTS/'controls';faults.mkdir()
        wrong=json.loads(expected.read_text());wrong['final']['live']['digest'][0]^=1
        wrong_expected=faults/'wrong-endpoint.json';wrong_expected.write_text(json.dumps(wrong,sort_keys=True,separators=(',',':')))
        wrong_image=json.loads(image.read_text());wrong_image['image_words'][0]^=1
        wi=faults/'wrong-image.json';wi.write_text(json.dumps(wrong_image))
        trailing=faults/'trailing.bin';trailing.write_bytes(proof.read_bytes()+b'\x00')
        altered=faults/'altered-journal.bin';fake=faults/'fake.bin'
        for name,argv in [('journal-fault-construction',[client,'alter-journal',proof,altered]),('fake-fault-construction',[client,'make-fake',proof,image,fake])]:
            rr=trial(name,argv);assert rr['exit_code']==0
        cases=[('fresh',proof,image,expected,None),('wrong-endpoint',proof,image,wrong_expected,'CompleteExpectedJournalDiffers'),
               ('wrong-image',proof,wi,expected,'ReceiptVerificationFailed'),('trailing',trailing,image,expected,'TrailingReceiptBytes'),
               ('altered-journal',altered,image,expected,'ReceiptVerificationFailed'),('fake',fake,image,expected,'ReceiptNotSuccinct')]
        # Independent material only; no repository, database, prefix transcript,
        # witness, compiler or producer executable is readable in this process.
        with tempfile.TemporaryDirectory(prefix='core-prefix-consumer-')as temporary:
            independent=Path(temporary)
            binary=independent/'client';shutil.copyfile(client,binary);binary.chmod(0o755)
            for name,p,i,e,error in cases:
                packet=independent/name;packet.mkdir()
                pp=packet/'receipt.bin';ii=packet/'image.json';ee=packet/'expected.json'
                for src,dst in [(p,pp),(i,ii),(e,ee)]:shutil.copyfile(src,dst)
                rr=trial('consumer-'+name,[helper,independent,ROOT/'docs/proposals/core-next-architecture/reference-fixture.jsonl',binary,'verify',pp,ii,ee],independent)
                stderr=(RESULTS/('consumer-'+name)/'stderr.txt').read_text()
                confined='CONFINED:'in stderr
                status='NotEstablished'
                if rr['stop_reason']is None and confined:
                    if error is None and rr['exit_code']==0:status='FullExpectedPrefixVerifiedWithoutRepository'
                    elif error is not None and rr['exit_code']==1 and error in stderr:status='TargetedRejectionWithoutRepository'
                rows.append({'case':name,'status':status,'wall_ns':rr['wall_ns'],'exit_code':rr['exit_code'],'confinement_probe':confined,'expected_error':error})
    else:
        rows.append({'case':'consumers','status':'NotRunMissingCompletedPrefixProof'})
    for p in files:assert sha(p)==json.loads(freeze.read_text())['files'][str(p)],p
    summary={'format':'core.actual-prefix-result.v1','actual_proof_completed':completed,'producer':r,'consumers':rows,
             'proof_scenario_seconds':time.monotonic()-started,'full_core_semantics':'NotEstablished','full_native_correspondence':'NotEstablished',
             'canonical_history_and_durable_certified_publication':'NotEstablished','quantiles':'NotEstablished:one correctness-only prefix trial',
             'security_equivalence':'NotEstablished','g1_pass':False}
    (RESULTS/'assessment-001.json').write_text(json.dumps(summary,indent=2)+'\n')
    print(json.dumps({'actual_proof_completed':completed,'consumers':rows,'g1_pass':False}))

if __name__=='__main__':main()
