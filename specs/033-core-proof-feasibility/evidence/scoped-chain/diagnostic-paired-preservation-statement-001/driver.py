"""Live diagnostic compiler log; same 8-GiB/300-s/16-MiB stack, no Checked authority."""
import argparse,json,os,shutil,signal,subprocess,sys,time
from pathlib import Path
p=Path('experiments/transition-study033/proofs').resolve();sys.path.insert(0,str(p));import check_targets
parser=argparse.ArgumentParser();parser.add_argument('source',type=Path);parser.add_argument('--out',type=Path,required=True);a=parser.parse_args();out=a.out.resolve();out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py');source=out/'Diagnostic.lean';shutil.copyfile(a.source,source)
env=dict(os.environ,LEAN_PATH=':'.join(map(str,[p/'.lake/build/lib/lean',*sorted((p/'.lake/packages').glob('*/.lake/build/lib/lean'))])))
argv=['lean','-s16384','-j1','-o',str(out/'Diagnostic.olean'),str(source)];start=time.monotonic_ns();budget=300
if 'CORE033_ENGINEERING_DEADLINE_NS' in env:budget=min(budget,max(0,(int(env['CORE033_ENGINEERING_DEADLINE_NS'])-start)/1e9))
with (out/'kernel-live.txt').open('wb') as log:
 child=subprocess.Popen(argv,cwd=out,env=env,stdout=log,stderr=subprocess.STDOUT,start_new_session=True,preexec_fn=check_targets._limits);timedOut=False
 try:child.wait(timeout=budget)
 except subprocess.TimeoutExpired:os.killpg(child.pid,signal.SIGKILL);child.wait();timedOut=True
r={'argv':argv,'exit_code':child.returncode,'timed_out':timedOut,'wall_ns':time.monotonic_ns()-start,'scope':'diagnostic only; no Checked authority'};(out/'kernel.command.json').write_text(json.dumps(r,indent=2)+'\n');print(json.dumps(r));sys.exit(1 if timedOut or child.returncode else 0)
