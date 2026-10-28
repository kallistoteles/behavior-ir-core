"""Run the isolated probe sequentially after all builds have completed."""
import json,os,resource,subprocess,sys
from pathlib import Path
binary=Path(sys.argv[1]).resolve();out=Path(sys.argv[2]).resolve();mode=sys.argv[3]
assert mode in {'uninstrumented','instrumented'}
assert not out.exists(),'Use a fresh output directory; retain old attempts.'
out.mkdir(parents=True);os.sched_setaffinity(0,{0});rows=[]
def limits():
 os.sched_setaffinity(0,{7});resource.setrlimit(resource.RLIMIT_AS,(8*1024**3,8*1024**3))
cases=[(n,'original') for n in [128,512,2048,8192]]
if mode=='instrumented':cases += [(8192,v) for v in ['no-global','no-constraint','neither']]
for n,variant in cases:
 r=subprocess.run([str(binary),str(n),'3',variant,str(out/'records')],capture_output=True,text=True,timeout=120,preexec_fn=limits)
 (out/f'{variant}-{n}.stdout').write_text(r.stdout);(out/f'{variant}-{n}.stderr').write_text(r.stderr)
 assert r.returncode==0,r.stderr
 values=[json.loads(line) for line in r.stdout.splitlines()];assert len(values)==3 and all(x['mode']==mode for x in values)
 rows.extend(values);(out/'rows.json').write_text(json.dumps(rows,indent=2)+'\n')
 print(n,variant,flush=True)
