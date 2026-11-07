"""Record one bounded construction/diagnostic command; never Core acceptance."""
import argparse
import datetime
import hashlib
import json
import os
from pathlib import Path
import resource
import signal
import subprocess
import time

p = argparse.ArgumentParser()
p.add_argument('--out', type=Path, required=True)
p.add_argument('--wall-seconds', type=int, default=900)
p.add_argument('--stack-mib', type=int, choices=(16, 64), default=16)
p.add_argument('command', nargs=argparse.REMAINDER)
a = p.parse_args()
assert a.command and a.wall_seconds <= 900
assert os.statvfs('/data').f_bavail * os.statvfs('/data').f_frsize >= 16 * 1024**3, '16GiB start floor'
a.out.mkdir(exist_ok=False, parents=True)
cpu = min(os.sched_getaffinity(0))
def limits():
    os.sched_setaffinity(0, {cpu})
    resource.setrlimit(resource.RLIMIT_AS, (8*1024**3, 8*1024**3))
    resource.setrlimit(resource.RLIMIT_STACK, (a.stack_mib*1024**2, a.stack_mib*1024**2))
    resource.setrlimit(resource.RLIMIT_FSIZE, (512*1024**2, 512*1024**2))
start = time.monotonic_ns()
at = datetime.datetime.now(datetime.timezone.utc).isoformat()
env = dict(os.environ, RAYON_NUM_THREADS='1', OMP_NUM_THREADS='1', CARGO_BUILD_JOBS='1', CARGO_INCREMENTAL='0')
reason = None
with (a.out/'stdout.txt').open('wb') as stdout, (a.out/'stderr.txt').open('wb') as stderr:
    child = subprocess.Popen(a.command, stdout=stdout, stderr=stderr,
                             env=env, preexec_fn=limits, start_new_session=True)
    while True:
        try:
            code = child.wait(timeout=1)
            break
        except subprocess.TimeoutExpired:
            s = os.statvfs('/data')
            if time.monotonic_ns()-start > a.wall_seconds*10**9:
                reason = 'WallLimit'
            elif s.f_bavail*s.f_frsize < 2*1024**3:
                reason = 'EmergencyDiskFloor'
            if reason:
                os.killpg(child.pid, signal.SIGKILL)
                code = child.wait()
                break
usage = resource.getrusage(resource.RUSAGE_CHILDREN)
receipt = {'format': 'core-next.bounded-command.v1', 'argv': a.command,
           'started_at_utc': at, 'finished_at_utc': datetime.datetime.now(datetime.timezone.utc).isoformat(),
           'wall_ns': time.monotonic_ns()-start, 'exit_code': code,
           'stop_reason': reason, 'wall_limit_seconds': a.wall_seconds,
           'address_space_limit_bytes': 8*1024**3, 'per_file_limit_bytes': 512*1024**2,
           'stack_limit_bytes': a.stack_mib*1024**2,
           'cpu': cpu, 'rayon_threads': 1, 'peak_rss_bytes': usage.ru_maxrss*1024,
           'user_cpu_seconds': usage.ru_utime, 'system_cpu_seconds': usage.ru_stime,
           'load_average_finish': os.getloadavg(), 'g1_pass': False}
for name in ('stdout.txt', 'stderr.txt'):
    raw = (a.out/name).read_bytes()
    receipt[name] = {'bytes': len(raw), 'sha256': hashlib.sha256(raw).hexdigest()}
(a.out/'receipt.json').write_text(json.dumps(receipt, indent=2)+'\n')
print(json.dumps({k: receipt[k] for k in ('exit_code', 'wall_ns', 'stop_reason', 'peak_rss_bytes')}))
raise SystemExit(0 if code == 0 and reason is None else 1)
