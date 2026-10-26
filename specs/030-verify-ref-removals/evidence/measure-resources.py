#!/usr/bin/env python3
"""Measure installed pinned tools and the compiled public API harness; build excluded."""
import hashlib,json,os,platform,resource,subprocess,sys,time
from pathlib import Path
ROOT=Path(__file__).resolve().parents[3]
OUT=Path(__file__).resolve().parent
BINARY=ROOT/'target/debug/examples/ref_removal_resources'
if len(sys.argv)>1 and sys.argv[1]=='--worker':
 start=time.perf_counter_ns()
 run=subprocess.run([str(BINARY),sys.argv[2],sys.argv[3]],cwd=ROOT,capture_output=True,text=True)
 wall=time.perf_counter_ns()-start
 usage=resource.getrusage(resource.RUSAGE_CHILDREN)
 assert run.returncode==0,(run.returncode,run.stderr,run.stdout[:1000])
 print(json.dumps({'whole_invocation_wall_ns':wall,'max_rss_kib':usage.ru_maxrss,'user_seconds':usage.ru_utime,'system_seconds':usage.ru_stime,'measurement':json.loads(run.stdout)}))
 sys.exit(0)
files=sorted(set((ROOT/'crates').glob('**/*.rs')) | set((ROOT/'consumer').glob('**/*.rs')) | set((ROOT/'scripts').glob('**/*.sh'))) + [ROOT/p for p in ['Cargo.toml','Cargo.lock','consumer/Cargo.lock','rust-toolchain.toml','flake.lock','schema/governance-v2.schema.json','schema/store-v2.schema.json','api/engine-surface.txt','crates/behavior-engine/examples/ref_removal_resources.rs']]
digests={str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest() for p in files}
identity=hashlib.sha256(json.dumps(digests,sort_keys=True,separators=(',',':')).encode()).hexdigest()
results=[]
for pattern in ['guarded','joint','retarget']:
 for version in ['0.7','0.8']:
  output=subprocess.run([sys.executable,str(Path(__file__).resolve()),'--worker',pattern,version],cwd=ROOT,capture_output=True,text=True,check=True)
  result=json.loads(output.stdout);calls=result['measurement']['queries']
  assert calls and all(c['rlimit']==20000000 for c in calls)
  result['solver_process_invocations_excluding_version_probe']=sum(1+int(c['outcome']=='sat' and c['requested_values']>0) for c in calls)
  result['auxiliary_queries']=sum(c['role']=='reference_prefix_auxiliary' for c in calls)
  result['selected_site_and_witness_queries']=len(calls)-result['auxiliary_queries']
  results.append(result)
record={'source_head':subprocess.check_output(['git','rev-parse','HEAD'],cwd=ROOT,text=True).strip(),'source_content_sha256':identity,'source_files':digests,'platform':platform.platform(),'cpu':Path('/proc/cpuinfo').read_text().split('model name',1)[-1].splitlines()[0].strip(' :\t'),'available_cpus':len(os.sched_getaffinity(0)),'memory':Path('/proc/meminfo').read_text().splitlines()[:3],'rustc':subprocess.check_output(['rustc','--version'],text=True).strip(),'cargo':subprocess.check_output(['cargo','--version'],text=True).strip(),'binary_sha256':hashlib.sha256(BINARY.read_bytes()).hexdigest(),'method':'Fresh process, no result cache; default Profile including all checks; pinned installed tools, build/download excluded. OS caches not flushed. ru_maxrss is Linux child-tree maximum in KiB, not summed concurrent RSS. For these six audited fixtures, auxiliary calls request no model values and match the first child-entry query script exactly; warning calls can also request no values. Query counts are Solver.check calls; SAT get-value process repeats are counted separately and included in each call timing. The workspace measurement adapter uses the existing solver trait; the actual verification call uses the public facade, with no exported API or consumer dependency change. Each solver call retains its exact script, outcome and measured wall time. Operational guard is 60000ms; no budget change.','results':results}
(OUT/'resources.json').write_text(json.dumps(record,indent=2)+'\n')
print(json.dumps({'source_content_sha256':identity,'cases':len(results),'whole_wall_seconds':[round(r['whole_invocation_wall_ns']/1e9,3) for r in results],'max_rss_kib':[r['max_rss_kib'] for r in results]}))
