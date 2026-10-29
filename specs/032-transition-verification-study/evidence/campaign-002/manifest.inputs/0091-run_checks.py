"""Retain real check logs and exit statuses. No failed check becomes a pass."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import subprocess
import time

def main():
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('--scope',choices=['native','proof-controls','final'],required=True);p.add_argument('--output',type=Path,required=True);a=p.parse_args();a.output.mkdir(parents=True,exist_ok=False)
    manifest='experiments/transition-study032/Cargo.toml'
    commands={'native':[
        ['cargo','test','--locked','--offline','--manifest-path',manifest,'--tests','--','--nocapture','--test-threads=1'],
        ['cargo','test','--locked','-p','behavior-store','--lib','research032','--','--nocapture'],
        ['cargo','test','--locked','-p','behavior-store','--test','research032','--test','research032_equivalence'],
        ['cargo','test','--locked','--manifest-path','consumer/Cargo.toml','--test','research032_recovery','--','--nocapture']],
        'proof-controls':[['cargo','test','--locked','--offline','--manifest-path',manifest,'--test','proof_consumer','--test','proof_lifecycle','--','--ignored','--nocapture','--test-threads=1']],
        'final':[['cargo','fmt','--manifest-path',manifest,'--all','--check'],['cargo','clippy','--locked','--offline','--manifest-path',manifest,'--all-targets','--','-D','warnings'],['python3','-m','unittest','discover','-s','specs/032-transition-verification-study/benchmarks','-p','test_*.py']]}
    reports=[]
    for i,command in enumerate(commands[a.scope]):
        log=a.output/f'{i:02d}.log';start=time.monotonic()
        with log.open('wb') as out:result=subprocess.run(command,stdout=out,stderr=subprocess.STDOUT,check=False)
        reports.append({'command':command,'exit_code':result.returncode,'wall_seconds':time.monotonic()-start,'log':log.name,'sha256':hashlib.sha256(log.read_bytes()).hexdigest()})
        print(command[1:4],result.returncode,flush=True)
        if result.returncode:break
    report={'format':'core032.checks.v1','scope':a.scope,'passed':len(reports)==len(commands[a.scope]) and all(r['exit_code']==0 for r in reports),'checks':reports}
    (a.output/'report.json').write_text(json.dumps(report,indent=2)+'\n')
    return 0 if report['passed'] else 2
if __name__=='__main__':raise SystemExit(main())
