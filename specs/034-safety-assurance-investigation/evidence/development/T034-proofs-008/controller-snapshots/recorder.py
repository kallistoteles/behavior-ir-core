"""Linux bounded recorder. Resource observations never establish semantic truth."""
import ctypes
import datetime
import hashlib
import json
import os
from pathlib import Path
import resource
import select
import signal
import subprocess
import time

GIB=1024**3

class Ledger:
    def __init__(self,started_ns,boot_id,wall_seconds):
        if type(started_ns)is not int or started_ns<0 or not boot_id or not 0<wall_seconds<=7200:raise ValueError('InvalidLedger')
        self.started_ns=started_ns;self.boot_id=boot_id;self.budget_ns=int(wall_seconds*10**9)
    def remaining_ns(self,now_ns,boot_id):
        if boot_id!=self.boot_id or now_ns<self.started_ns:raise ValueError('ClockProvenanceChanged')
        return max(0,self.budget_ns-(now_ns-self.started_ns))

def disk_free():
    s=os.statvfs('/data');return s.f_bavail*s.f_frsize

def _footprint(root,excluded=None):
    total=0;seen=set()
    for directory,dirs,files in os.walk(root,followlinks=False):
        if excluded is not None:dirs[:]=[d for d in dirs if Path(directory)/d!=excluded]
        for name in files:
            try:
                st=(Path(directory)/name).stat(follow_symlinks=False);key=(st.st_dev,st.st_ino)
                if key not in seen:seen.add(key);total+=st.st_size
            except FileNotFoundError:continue
    return total

def project_growth():
    here=Path(__file__).resolve().parent;private=here/'private';temporary=private/'tmp'
    return {'artifacts':_footprint(here.parents[1]/'specs/034-safety-assurance-investigation/evidence'),
            'cache':_footprint(private,temporary),'temporary':_footprint(temporary)}

def _growth_reason(usage):
    if usage['artifacts']>2*GIB:return 'ArtifactGrowthLimit'
    if usage['cache']>2*GIB:return 'CacheGrowthLimit'
    if sum(usage.values())>4*GIB:return 'CombinedGrowthLimit'
    return None

def group_members(pgid):
    rows=[];ticks=os.sysconf('SC_CLK_TCK');page=os.sysconf('SC_PAGE_SIZE')
    for p in Path('/proc').iterdir():
        if not p.name.isdigit():continue
        try:
            raw=(p/'stat').read_text();fields=raw[raw.rfind(')')+2:].split()
            if int(fields[2])!=pgid:continue
            rows.append({'pid':int(p.name),'state':fields[0],'virtual_bytes':int(fields[20]),'rss_bytes':int(fields[21])*page,
                         'user_cpu_ns':int(int(fields[11])*10**9/ticks),'system_cpu_ns':int(int(fields[12])*10**9/ticks),'threads':int(fields[17])})
        except (FileNotFoundError,ProcessLookupError,PermissionError):continue
    return rows

def _kill_group(pgid):
    try:os.killpg(pgid,signal.SIGKILL)
    except ProcessLookupError:pass

def _reap_group(pgid):
    deadline=time.monotonic()+2
    while True:
        try:
            pid,_=os.waitpid(-pgid,os.WNOHANG)
            if pid:continue
        except ChildProcessError:pass
        if not group_members(pgid):return True
        if time.monotonic()>deadline:return False
        time.sleep(.005)

def run(argv,out,wall_seconds=900,*,free_bytes=disk_free,growth_bytes=project_growth,ledger=None,env=None,stack_mib=64):
    if not argv or any(not isinstance(s,str) or '\0' in s for s in argv) or not 0<wall_seconds<=900:raise ValueError('InvalidCommandOrWallLimit')
    out=Path(out);out.mkdir(parents=True,exist_ok=False)
    boot=Path('/proc/sys/kernel/random/boot_id').read_text().strip();start=time.monotonic_ns()
    if ledger is not None:wall_seconds=min(wall_seconds,ledger.remaining_ns(start,boot)/10**9)
    record={'format':'core034.bounded.v1','argv':argv,'started_at_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),
            'start_monotonic_ns':start,'boot_id':boot,'wall_limit_ns':int(wall_seconds*10**9),'address_space_limit_bytes':8*GIB,
            'disk_start_floor_bytes':16*GIB,'sample_interval_ns':10**9,'product_adoption':'unactivated','assurance':'not_run'}
    reason=None;code=None;usage=None;samples=[];group_empty=True;leftovers=False;pgid=None
    initial_growth=growth_bytes();record['initial_growth_apparent_unique_inode_bytes']=initial_growth
    with (out/'stdout.txt').open('xb')as stdout,(out/'stderr.txt').open('xb')as stderr:
        if free_bytes()<16*GIB:reason='DiskStartFloor'
        elif wall_seconds<=0:reason='OuterBudgetExhausted'
        elif _growth_reason(initial_growth):reason=_growth_reason(initial_growth)
        else:
            # Become a task-scoped subreaper, so orphan grandchildren can actually
            # be waited/reaped rather than left as zombie members of the group.
            libc=ctypes.CDLL(None,use_errno=True)
            if libc.prctl(36,1,0,0,0)!=0:raise OSError(ctypes.get_errno(),'PR_SET_CHILD_SUBREAPER')
            cpu=min(os.sched_getaffinity(0));record['cpu']=cpu
            child_env=dict(os.environ);child_env.update(env or {});child_env.update(RAYON_NUM_THREADS='1',OMP_NUM_THREADS='1',CARGO_BUILD_JOBS='1',CARGO_INCREMENTAL='0')
            def limits():
                os.sched_setaffinity(0,{cpu})
                resource.setrlimit(resource.RLIMIT_AS,(8*GIB,8*GIB))
                resource.setrlimit(resource.RLIMIT_STACK,(stack_mib*1024**2,stack_mib*1024**2))
                resource.setrlimit(resource.RLIMIT_FSIZE,(512*1024**2,512*1024**2))
            try:child=subprocess.Popen(argv,stdout=stdout,stderr=stderr,env=child_env,preexec_fn=limits,start_new_session=True)
            except OSError as error:
                child=None;reason='SpawnError';record['spawn_error']=str(error)
            if child is not None:
                pgid=child.pid;fd=os.pidfd_open(child.pid);next_sample=start
                try:
                    while True:
                        waited,status,rusage=os.wait4(child.pid,os.WNOHANG)
                        if waited:
                            code=os.waitstatus_to_exitcode(status);usage=rusage;child.returncode=code;break
                        now=time.monotonic_ns()
                        if now>=next_sample:
                            growth=growth_bytes()
                            samples.append({'at_monotonic_ns':now,'processes':group_members(pgid),'growth_apparent_unique_inode_bytes':growth});next_sample=now+10**9
                            if free_bytes()<2*GIB:reason='EmergencyDiskFloor'
                            if _growth_reason(growth):reason=_growth_reason(growth)
                        if now-start>=record['wall_limit_ns']:reason='WallLimit'
                        if reason:_kill_group(pgid)
                        select.select([fd],[],[],max(0,min(.1,(record['wall_limit_ns']-(now-start))/10**9)) if not reason else .01)
                finally:os.close(fd)
                members=group_members(pgid)
                if members:
                    leftovers=True;_kill_group(pgid)
                    if reason is None:reason='LeftoverDescendants'
                group_empty=_reap_group(pgid)
                if not group_empty:reason='ProcessGroupNotEmpty'
    # All capture writers and processes have closed before these hashes.
    sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
    record.update(finished_at_utc=datetime.datetime.now(datetime.timezone.utc).isoformat(),wall_ns=time.monotonic_ns()-start,
                  exit_code=code,stop_reason=reason,group_id=pgid,group_empty=group_empty,leftovers_killed=leftovers,
                  stdout_sha256=sha(out/'stdout.txt'),stderr_sha256=sha(out/'stderr.txt'),tree_samples=samples,
                  aggregate_peak=None,aggregate_peak_reason='Exact aggregate/shared-page-adjusted peak unavailable; samples are observations',
                  direct_waited=None if usage is None else {'user_cpu_ns':int(usage.ru_utime*10**9),'system_cpu_ns':int(usage.ru_stime*10**9),'peak_rss_bytes':usage.ru_maxrss*1024},
                  direct_waited_scope='wait4 direct child and any descendants it already waited; not unreaped external grandchildren')
    (out/'receipt.json').write_text(json.dumps(record,indent=2)+'\n')
    return record
