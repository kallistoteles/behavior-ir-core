#!/usr/bin/env python3
"""Collect the existing private forced-full reference workload, never timing acceptance."""
import argparse,hashlib,json,os,subprocess,time
from pathlib import Path
def main():
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('--binary',type=Path,required=True);p.add_argument('--output',type=Path,required=True);p.add_argument('--raw',type=Path,required=True);a=p.parse_args()
    binary=a.binary.resolve(strict=True);cpu=min(os.sched_getaffinity(0));os.sched_setaffinity(0,{cpu});command=[str(binary),'--exact','store::incremental::workload_tests::controlled_global_reference_growth','--ignored','--nocapture','--test-threads=1']
    provenance={'binary_sha256':hashlib.sha256(binary.read_bytes()).hexdigest(),'runner_sha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),'cpu_affinity':[cpu],'platform':list(os.uname()),'scope':'reference per-case elapsed includes framing; not production timing acceptance'}
    rows=[];previous=time.monotonic()
    with a.raw.open('a') as log:
        run=subprocess.Popen(command,stdout=subprocess.PIPE,stderr=subprocess.STDOUT,text=True)
        try:
            for line in run.stdout:
                log.write(line);log.flush()
                if 'GLOBAL_029 ' not in line:continue
                result=json.loads(line.split('GLOBAL_029 ',1)[1]);now=time.monotonic();case=[result[k] for k in ('n','steps','rule','workload','batch','rules')]
                rows.append({'case':case,'strategy':'full-reference','mode':'instrumented','repetition':0,'command':command,'provenance':provenance,'process_wall_ms':(now-previous)*1000,'result':result,'stdout':line,'stderr':''});previous=now
                print(json.dumps({'case':case,'strategy':'full-reference','completed':len(rows)}),flush=True)
            rc=run.wait()
        finally:
            if run.poll() is None:run.kill();run.wait()
    with a.output.open('a') as output:
        for row in rows:
            row['returncode']=rc
            if rc:row['error']='full-reference test failed'
            output.write(json.dumps(row,sort_keys=True)+'\n')
    print(json.dumps({'reference_exit_code':rc,'cases':len(rows)}),flush=True)
    raise SystemExit(rc)
if __name__=='__main__':main()
