"""Small bootstrap capture only; heavy checks use035's actual bounded recorder."""
import argparse,datetime,json,os,subprocess,time,resource,hashlib
from pathlib import Path
p=argparse.ArgumentParser();p.add_argument('--out',type=Path,required=True);p.add_argument('argv',nargs=argparse.REMAINDER);a=p.parse_args();a.out.mkdir(parents=True,exist_ok=False)
def limits():
 os.sched_setaffinity(0,{min(os.sched_getaffinity(0))});resource.setrlimit(resource.RLIMIT_AS,(8*1024**3,8*1024**3))
sources={}
for path in sorted(Path(__file__).resolve().parent.rglob('*.py')):
 if 'private'in path.parts or '__pycache__'in path.parts:continue
 raw=path.read_bytes();sources[str(path.relative_to(Path(__file__).resolve().parent))]={'sha256':hashlib.sha256(raw).hexdigest(),'bytes':len(raw)}
(a.out/'input-sources.json').write_text(json.dumps(sources,indent=2)+'\n')
start=time.monotonic_ns()
with(a.out/'stdout.txt').open('xb')as out,(a.out/'stderr.txt').open('xb')as err:
 r=subprocess.run(a.argv,stdout=out,stderr=err,timeout=60,preexec_fn=limits)
(a.out/'receipt.json').write_text(json.dumps({'format':'core035.bootstrap-test.v1','argv':a.argv,'exit_code':r.returncode,'started_ns':start,'finished_ns':time.monotonic_ns(),'scope':'Bootstrap red/green control only; timeout60s one CPU8GiB; not benchmark or general descendant recorder','product_adoption':'unactivated'},indent=2)+'\n')
print(json.dumps({'exit_code':r.returncode,'out':str(a.out)}))
