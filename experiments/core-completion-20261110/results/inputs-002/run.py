"""Separate frozen attempts; no full completion promotion from scoped passes."""
import argparse
import datetime
import hashlib
import json
import os
from pathlib import Path
import subprocess
import sys
import time

HERE=Path(__file__).resolve().parent
ROOT=HERE.parents[1]
RECORDER=ROOT/'experiments/proof-backend-screen-20261107/run_bounded_precise.py'

def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def main():
    ap=argparse.ArgumentParser();ap.add_argument('--attempt',required=True);a=ap.parse_args();assert a.attempt.isdigit()
    results=HERE/'results';results.mkdir(exist_ok=True)
    files=[*HERE.glob('*.rs'),*HERE.glob('*.py'),*HERE.glob('*.lean'),HERE/'Cargo.toml',HERE/'Cargo.lock',HERE/'protocol.json',
           ROOT/'Cargo.toml',ROOT/'flake.lock',ROOT/'rust-toolchain.toml',RECORDER,RECORDER.with_name('run_bounded.py'),
           *[ROOT/'experiments/local-k-study-20261109'/s for s in ['auth.rs','kernel.rs','planner.rs']],
           ROOT/'docs/proposals/core-next-architecture/reference-fixture.jsonl',
           ROOT/'experiments/transition-study033/shell.nix',*list((ROOT/'crates/behavior-core').rglob('*.rs')),
           ROOT/'crates/behavior-core/Cargo.toml']
    f=results/f'input-freeze-{a.attempt}.json';assert not f.exists()
    f.write_text(json.dumps({'format':'core.completion.inputs.v1','at_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),
                             'files':{str(p.relative_to(ROOT)):sha(p)for p in files},'g1_pass':False},indent=2)+'\n')
    snap=results/f'inputs-{a.attempt}';snap.mkdir()
    for p in files:
        if p.parent==HERE:(snap/p.name).write_bytes(p.read_bytes())
    start=time.monotonic();env=dict(os.environ,RUSTFLAGS='-C target-cpu=x86-64',CARGO_INCREMENTAL='0')
    for k in ['CARGO_ENCODED_RUSTFLAGS','RUSTC_WRAPPER','RUSTC_WORKSPACE_WRAPPER']:env.pop(k,None)
    def call(name,argv):
        remaining=int(1800-(time.monotonic()-start));assert remaining>0
        out=results/f'{name}-{a.attempt}'
        subprocess.run([sys.executable,str(RECORDER),'--out',str(out),'--wall-seconds',str(min(900,remaining)),
                        '--stack-mib','64',*map(str,argv)],env=env,cwd=ROOT,check=True)
        return out
    call('build',['nix-shell','experiments/transition-study033/shell.nix','--run',f'python3 experiments/core-completion-20261110/build.py {a.attempt}'])
    binaries=[HERE/'target/release'/s for s in ['core_completion','full_observation_audit']]
    (results/f'binaries-{a.attempt}.json').write_text(json.dumps({str(p.relative_to(ROOT)):{'bytes':p.stat().st_size,'sha256':sha(p)}for p in binaries},indent=2)+'\n')
    call('policy',['nix-shell','experiments/transition-study033/shell.nix','--run',f'python3 experiments/core-completion-20261110/check_policy.py --out experiments/core-completion-20261110/results/policy-{a.attempt}/artifacts'])
    call('storage',[sys.executable,HERE/'check_storage.py','--binary',binaries[0],'--out',results/f'storage-{a.attempt}/artifacts'])
    call('audit',[binaries[1],results/f'audit-{a.attempt}/artifacts'])
    frozen=json.loads(f.read_text())['files']
    for p in files:assert sha(p)==frozen[str(p.relative_to(ROOT))],p
    (results/f'scenario-{a.attempt}.json').write_text(json.dumps({'elapsed_seconds':time.monotonic()-start,'frozen_inputs_unchanged':True,
        'scope':'Scoped policy correspondence, LocalResearch SQLite controls and six full audit records; four full product goals remain subject to completion-ledger','g1_pass':False},indent=2)+'\n')
if __name__=='__main__':main()
