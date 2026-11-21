"""Source-selected actual parent CLI exit observation for the wall control."""
import hashlib,json,os,resource,subprocess,time
from pathlib import Path
R=Path('/data/repos/behavior-ir-core-033');E=R/'experiments/transition-study036';W=R/'specs/036-core-transition-feasibility/evidence/v2/w001'
python='/nix/store/9r02ykx9y35lf4gk6gc30gnag1y8ncp7-python3-3.13.15/bin/python3.13'
profile=json.loads((E/'toolchain.json').read_text())['tools']['python']
if profile['path']!=python or hashlib.sha256(Path(python).read_bytes()).hexdigest()!=profile['sha256']:raise ValueError('PinnedPython')
os.sched_setaffinity(0,{min(os.sched_getaffinity(0))});resource.setrlimit(resource.RLIMIT_AS,(8*1024**3,8*1024**3))
out=W/'development/cli-wall-observation-001';out.mkdir(exist_ok=False)
argv=[python,str(E/'study.py'),'run','--work',str(W/'context.json'),'--attempt',str(W/'attempts/a0008/declaration.json')]
start=time.monotonic_ns();result=subprocess.run(argv,capture_output=True,timeout=120,check=False)
(out/'stdout.txt').write_bytes(result.stdout);(out/'stderr.txt').write_bytes(result.stderr)
record={'format':'core036.cli-observation.v2','argv':argv,'actual_exit_code':result.returncode,'wall_ns':time.monotonic_ns()-start,'source_sha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),'scope':'actual resource-control parent CLI wait status; no native semantic proof'}
(out/'result.json').write_text(json.dumps(record,indent=2)+'\n')
print(json.dumps(record));raise SystemExit(0 if result.returncode==3 else 1)
