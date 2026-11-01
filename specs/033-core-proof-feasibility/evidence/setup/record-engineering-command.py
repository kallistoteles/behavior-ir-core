import datetime,hashlib,json,os,resource,signal,subprocess,sys,time
from pathlib import Path
stage,out,*argv=sys.argv[1:];out=Path(out);out.mkdir(parents=True,exist_ok=True);start=time.monotonic_ns();at=datetime.datetime.now(datetime.timezone.utc).isoformat();timed_out=False
p=subprocess.Popen(argv,stdout=subprocess.PIPE,stderr=subprocess.PIPE,start_new_session=True)
try: stdout,stderr=p.communicate(timeout=900)
except subprocess.TimeoutExpired:
 timed_out=True;os.killpg(p.pid,signal.SIGKILL);stdout,stderr=p.communicate()
for name,data in [('stdout',stdout),('stderr',stderr)]: (out/(stage+'.'+name+'.txt')).write_bytes(data)
usage=resource.getrusage(resource.RUSAGE_CHILDREN)
r={'format_version':'core033.engineering-command.v1','stage':stage,'command':argv,'cwd':str(Path.cwd()),'started_at':at,'finished_at':datetime.datetime.now(datetime.timezone.utc).isoformat(),'wall_ns':time.monotonic_ns()-start,'exit_code':p.returncode,'timed_out':timed_out,'child_user_cpu_s':usage.ru_utime,'child_system_cpu_s':usage.ru_stime,'child_peak_rss_bytes':usage.ru_maxrss*1024,'scope':'engineering command including tool environment, not certified runtime latency','recorder_sha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest()}
(out/(stage+'.json')).write_text(json.dumps(r,indent=2)+'\n');print(json.dumps(r),flush=True);print((stdout+stderr).decode(errors='replace')[-4000:],flush=True);sys.exit(6 if timed_out else p.returncode)
