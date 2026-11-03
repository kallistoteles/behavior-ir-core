"""Bound an isolated, uncertified Nova cost diagnostic. Never grants G1 authority."""
import argparse, datetime, hashlib, json, os, platform, resource, shutil, signal, subprocess, time
from pathlib import Path

p = argparse.ArgumentParser()
p.add_argument('--binary', type=Path, required=True)
p.add_argument('--witnesses', type=Path, required=True)
p.add_argument('--out', type=Path, required=True)
p.add_argument('--lock', type=Path, default=Path('experiments/transition-study033/Cargo.lock'))
p.add_argument('--vendor', type=Path)
a = p.parse_args()
matrix = Path('experiments/transition-study033/generated/frame-hash-controller-003/matrix.bin').resolve()
binary, witnesses, out = a.binary.resolve(), a.witnesses.resolve(), a.out.resolve()
out.mkdir(exist_ok=False)
files = [binary, witnesses, matrix, Path(__file__).resolve(), Path('specs/033-core-proof-feasibility/evidence/scoped-chain/numeric-cost-subject-001.json').resolve(),
         Path('experiments/transition-study033/cost-probe/numeric_cost_pp_export.rs').resolve(),
         a.lock.resolve()]
if a.vendor:
    files.extend(sorted(f.resolve() for f in a.vendor.rglob('*') if f.is_file()))
identities = {str(f): hashlib.sha256(f.read_bytes()).hexdigest() for f in files}
shutil.copyfile(__file__, out/'driver.py')
shutil.copyfile('experiments/transition-study033/cost-probe/numeric_cost_pp_export.rs', out/'numeric_cost_pp_export.rs')
shutil.copyfile(a.lock, out/'Cargo.lock')
shutil.copy2(binary, out/'diagnostic-binary')
env = dict(os.environ, RAYON_NUM_THREADS='1', OMP_NUM_THREADS='1')
cpu_lines = Path('/proc/cpuinfo').read_text().splitlines()
hardware = {'system':platform.system(), 'kernel':platform.release(), 'machine':platform.machine(),
            'model':next((line.split(':',1)[1].strip() for line in cpu_lines if line.startswith('model name')),''),
            'flags':next((line.split(':',1)[1].strip().split() for line in cpu_lines if line.startswith('flags')),[]),
            'affinity_cpus':sorted(os.sched_getaffinity(0)), 'load_average_start':os.getloadavg()}
def limits():
    resource.setrlimit(resource.RLIMIT_AS, (8*1024**3, 8*1024**3))
    resource.setrlimit(resource.RLIMIT_STACK, (16*1024**2, 16*1024**2))
start = time.monotonic_ns()
at = datetime.datetime.now(datetime.timezone.utc).isoformat()
argv = [str(binary), str(matrix), str(witnesses), str(out/'artifacts')]
timed_out = False
with (out/'stdout.jsonl').open('wb') as stdout, (out/'stderr.txt').open('wb') as stderr:
    process = subprocess.Popen(argv, stdout=stdout, stderr=stderr, env=env,
                               preexec_fn=limits, start_new_session=True)
    try: code = process.wait(timeout=900)
    except subprocess.TimeoutExpired:
        timed_out = True
        os.killpg(process.pid, signal.SIGKILL)
        code = process.wait()
usage = resource.getrusage(resource.RUSAGE_CHILDREN)
unchanged = all(hashlib.sha256(Path(f).read_bytes()).hexdigest()==digest for f,digest in identities.items())
events = [json.loads(line) for line in (out/'stdout.jsonl').read_text().splitlines()]
complete = bool(events and events[-1].get('event')=='diagnostic_complete')
receipt = {'format_version':'core033.untrusted-preprocessed-spartan-ipa-export-cost.v1',
           'outcome':'DiagnosticComplete' if code==0 and complete and unchanged else 'DiagnosticFailed',
           'started_at':at, 'finished_at':datetime.datetime.now(datetime.timezone.utc).isoformat(),
           'argv':argv, 'identities_sha256':identities, 'identities_unchanged':unchanged,
           'exit_code':code, 'timed_out':timed_out, 'wall_ns':time.monotonic_ns()-start,
           'wall_limit_s':900, 'address_space_limit_bytes':8*1024**3,
           'peak_rss_bytes':usage.ru_maxrss*1024, 'user_cpu_s':usage.ru_utime,
           'system_cpu_s':usage.ru_stime, 'rayon_threads':1,
           'hardware':hardware, 'load_average_finish':os.getloadavg(),
           'scope':'separate preprocessed-Spartan/IPA candidate; unchanged Pallas/Vesta field/matrix/endpoint; uncertified embedding; normal OS entropy; construction host may be contended; no quantiles, fresh consumer, initialized business transition or G1 authority; compression status only from completed events',
           'events':events, 'release_relation_complete':False, 'g1_pass':False}
receipt['exported_artifacts'] = {f.name:{'bytes':f.stat().st_size,'sha256':hashlib.sha256(f.read_bytes()).hexdigest()} for f in sorted((out/'artifacts').glob('*.bin'))}
(out/'receipt.json').write_text(json.dumps(receipt,indent=2,sort_keys=True)+'\n')
print(json.dumps({key:receipt[key] for key in ['outcome','exit_code','timed_out','wall_ns','g1_pass']}))
if receipt['outcome']!='DiagnosticComplete': raise SystemExit(1)
