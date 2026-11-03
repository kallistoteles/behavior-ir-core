"""Bound a fresh-process cost diagnostic against an owned frozen subject/key.

This is not the independently certified full Core consumer required by G1.
"""
import argparse, datetime, hashlib, json, os, resource, shutil, signal, subprocess, time
from pathlib import Path

p = argparse.ArgumentParser()
p.add_argument('--export',type=Path,required=True)
p.add_argument('--subject',type=Path,required=True)
p.add_argument('--binary',type=Path,required=True)
p.add_argument('--out',type=Path,required=True)
p.add_argument('--expected-rejection',choices=['none','endpoint'],default='none')
a = p.parse_args()
export, out = a.export.resolve(), a.out.resolve()
raw_receipt = (export/'receipt.json').read_bytes()
receipt = json.loads(raw_receipt)
if receipt['outcome']!='DiagnosticComplete' or not receipt['identities_unchanged']:
    raise RuntimeError('complete unchanged diagnostic export required')
artifacts = export/'artifacts'
for name,entry in receipt['exported_artifacts'].items():
    file = artifacts/name
    if file.stat().st_size!=entry['bytes'] or hashlib.sha256(file.read_bytes()).hexdigest()!=entry['sha256']:
        raise RuntimeError('changed retained diagnostic artifact '+name)
expected_key_hash = receipt['exported_artifacts']['compression_verifier_key.bin']['sha256']
out.mkdir(exist_ok=False)
shutil.copyfile(__file__,out/'driver.py')
source = Path('experiments/transition-study033/cost-probe/numeric_consumer.rs').resolve()
shutil.copyfile(source,out/'numeric_consumer.rs')
shutil.copyfile(a.subject,out/'expected-subject.json')
shutil.copy2(a.binary,out/'diagnostic-consumer-binary')
files = [a.binary.resolve(),source,a.subject.resolve(),export/'receipt.json',Path(__file__).resolve()]
identities = {str(f):hashlib.sha256(f.read_bytes()).hexdigest() for f in files}
def limits():
    resource.setrlimit(resource.RLIMIT_AS,(8*1024**3,8*1024**3))
    resource.setrlimit(resource.RLIMIT_STACK,(16*1024**2,16*1024**2))
argv = [str(a.binary.resolve()),str(artifacts/'compression_verifier_key.bin'),
        str(artifacts/'compressed_proof.bin'),str(a.subject.resolve()),expected_key_hash]
start = time.monotonic_ns()
at = datetime.datetime.now(datetime.timezone.utc).isoformat()
timed_out = False
with (out/'stdout.jsonl').open('wb') as stdout,(out/'stderr.txt').open('wb') as stderr:
    process = subprocess.Popen(argv,stdout=stdout,stderr=stderr,start_new_session=True,preexec_fn=limits,
                               env=dict(os.environ,RAYON_NUM_THREADS='1',OMP_NUM_THREADS='1'))
    try: code=process.wait(timeout=900)
    except subprocess.TimeoutExpired:
        timed_out=True
        os.killpg(process.pid,signal.SIGKILL)
        code=process.wait()
wall = time.monotonic_ns()-start
usage = resource.getrusage(resource.RUSAGE_CHILDREN)
events = [json.loads(line) for line in (out/'stdout.jsonl').read_text().splitlines()]
unchanged = all(hashlib.sha256(Path(f).read_bytes()).hexdigest()==digest for f,digest in identities.items())
verified = bool(events and events[-1]['event']=='fresh_primitive_diagnostic_verified')
rejected = code==1 and not verified and 'complete expected primitive endpoint differs' in (out/'stderr.txt').read_text()
okay = unchanged and not timed_out and ((a.expected_rejection=='none' and code==0 and verified)
                                      or (a.expected_rejection=='endpoint' and rejected))
result = {'format_version':'core033.fresh-process-primitive-diagnostic.v1',
          'outcome':('ExpectedEndpointRejection' if a.expected_rejection=='endpoint' else 'FreshPrimitiveVerified') if okay else 'DiagnosticFailed',
          'argv':argv,'started_at':at,'finished_at':datetime.datetime.now(datetime.timezone.utc).isoformat(),
          'exit_code':code,'timed_out':timed_out,'wall_ns':wall,'events':events,
          'peak_rss_bytes':usage.ru_maxrss*1024,'user_cpu_s':usage.ru_utime,'system_cpu_s':usage.ru_stime,
          'wall_limit_s':900,'address_space_limit_bytes':8*1024**3,'rayon_threads':1,
          'identities_sha256':identities,'identities_unchanged':unchanged,
          'expected_key_identity_selection':'owned completed export receipt; not independently certified Core release material',
          'scope':'fresh process with full selected primitive endpoint; includes material read/hash/decoding/verification; page cache unspecified; no full Core/independent certified release/durability/campaign quantile authority',
          'g1_pass':False}
(out/'receipt.json').write_text(json.dumps(result,indent=2,sort_keys=True)+'\n')
print(json.dumps({k:result[k] for k in ['outcome','exit_code','timed_out','wall_ns','g1_pass']}))
if not okay: raise SystemExit(1)
