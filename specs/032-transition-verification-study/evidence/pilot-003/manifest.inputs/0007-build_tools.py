"""Build and inventory the exact optimized study/reference/public consumer tools."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import subprocess
import time

def main():
    parser=argparse.ArgumentParser(description=__doc__);parser.add_argument('--output',type=Path,required=True);args=parser.parse_args();args.output.mkdir(parents=True,exist_ok=False)
    commands=[('study',['cargo','build','--locked','--offline','--release','--manifest-path','experiments/transition-study032/Cargo.toml','--bins']),('reference',['cargo','test','--locked','--release','-p','behavior-store','--lib','--no-run','--message-format=json']),('consumer',['cargo','test','--locked','--release','--manifest-path','consumer/Cargo.toml','--test','research032_recovery','--no-run','--message-format=json']),('proof-controls',['cargo','test','--locked','--offline','--release','--manifest-path','experiments/transition-study032/Cargo.toml','--test','proof_lifecycle','--test','proof_consumer','--no-run','--message-format=json'])]
    tools={};records=[]
    for name,command in commands:
        start=time.monotonic();p=subprocess.run(command,stdout=subprocess.PIPE,stderr=subprocess.PIPE,check=False)
        (args.output/(name+'.stdout')).write_bytes(p.stdout);(args.output/(name+'.stderr')).write_bytes(p.stderr)
        record={'command':command,'exit_code':p.returncode,'seconds':time.monotonic()-start};records.append(record)
        print(name,p.returncode,round(record['seconds'],3),flush=True)
        if p.returncode:break
        if name=='study':
            target=Path(os.environ['CARGO_TARGET_DIR'])/'release';tools.update(native=str(target/'native_study'),nova=str(target/'nova_study'))
        else:
            for line in p.stdout.decode().splitlines():
                row=json.loads(line)
                if row.get('reason')=='compiler-artifact' and row.get('executable'):
                    target=row['target']['name']
                    role='reference' if target=='behavior_store' else 'consumer' if target=='research032_recovery' else 'proof_controls' if target=='proof_lifecycle' else 'proof_consumer' if target=='proof_consumer' else None
                    if role:tools[role]=row['executable']
    for role,path in list(tools.items()):tools[role]={'path':path,'sha256':hashlib.sha256(Path(path).read_bytes()).hexdigest(),'bytes':Path(path).stat().st_size}
    report={'format':'core032.build-tools.v1','passed':len(records)==len(commands) and all(r['exit_code']==0 for r in records) and set(tools)=={'native','nova','reference','consumer','proof_controls','proof_consumer'},'commands':records,'tools':tools,'build_profile':'release / default opt-level3 / CARGO_INCREMENTAL0','environment':{key:value for key,value in os.environ.items() if key.startswith('CARGO_PROFILE_') or key in ('CARGO_BUILD_JOBS','CARGO_INCREMENTAL','CARGO_TARGET_DIR')}}
    (args.output/'report.json').write_text(json.dumps(report,indent=2)+'\n');return 0 if report['passed'] else 2
if __name__=='__main__':raise SystemExit(main())
