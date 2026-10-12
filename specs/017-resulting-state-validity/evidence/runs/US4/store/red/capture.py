from pathlib import Path
import datetime, hashlib, json, os, re, subprocess, sys, time
ROOT=Path('/home/kalle/repos/behavior-ir-core-017')
OUT=ROOT/'specs/017-resulting-state-validity/evidence/runs/US4/store/red'
TEST=ROOT/'crates/behavior-store/tests/resulting_state_history.rs'
ENV={'CARGO_BUILD_JOBS':'2','CARGO_INCREMENTAL':'0','CARGO_PROFILE_DEV_DEBUG':'0','CARGO_PROFILE_TEST_DEBUG':'0'}
def sha(p):return hashlib.sha256(Path(p).read_bytes()).hexdigest()
def now():return datetime.datetime.now(datetime.timezone.utc).isoformat()
def source():
    paths=[p for p in (ROOT/'crates').glob('*/src/**/*.rs') if '/tests/' not in str(p) and p.name!='tests.rs']
    paths += [ROOT/n for n in ['Cargo.toml','Cargo.lock','flake.nix','flake.lock','consumer/Cargo.toml','consumer/Cargo.lock']]
    return {str(p.relative_to(ROOT)):sha(p) for p in sorted(paths)}
OUT.mkdir(parents=True,exist_ok=True)
manifest=OUT/'production-source-manifest.json'
if manifest.exists(): frozen=json.loads(manifest.read_text())
else:
    frozen=source();manifest.write_text(json.dumps(frozen,indent=2,sort_keys=True)+'\n')
assert source()==frozen,'Production changed before RED'
mode,label=sys.argv[1:]
assert mode in ['collection','execution']
name=mode+'-'+label
assert not (OUT/(name+'.json')).exists(),'Refusing overwrite'
cmd=['nix','develop','-c','cargo','test','-p','behavior-store','--test','resulting_state_history','--']
cmd += ['--list'] if mode=='collection' else ['--nocapture']
started=now();clock=time.monotonic()
with (OUT/(name+'.stdout.txt')).open('wb') as stdout,(OUT/(name+'.stderr.txt')).open('wb') as stderr:
    p=subprocess.run(cmd,cwd=ROOT,env={**os.environ,**ENV},stdout=stdout,stderr=stderr)
text=(OUT/(name+'.stdout.txt')).read_text()
counts=None
m=re.search(r'test result: (\w+)\. (\d+) passed; (\d+) failed; (\d+) ignored; (\d+) measured; (\d+) filtered out',text)
if m:counts={'status':m[1],'passed':int(m[2]),'failed':int(m[3]),'ignored':int(m[4]),'measured':int(m[5]),'filtered_out':int(m[6])}
collected=re.findall(r'^([A-Za-z0-9_]+): test$',text,re.M)
meta={'command':cmd,'cwd':str(ROOT),'environment':ENV,'started_at_utc':started,'finished_at_utc':now(),'elapsed_seconds':time.monotonic()-clock,'exit_status':p.returncode,
 'head':subprocess.check_output(['git','rev-parse','HEAD'],cwd=ROOT,text=True).strip(),'test_sha256':sha(TEST),'source_manifest_sha256':sha(manifest),'production_source_unchanged':source()==frozen,
 'archive_manifest_sha256':sha(ROOT/'tests/fixtures/resulting-state-validity/archive-manifest.json'),'supplementary_signed_manifest_sha256':sha(ROOT/'specs/017-resulting-state-validity/evidence/runs/US4/signed-archive08-baseline/manifest.json'),
 'stdout_sha256':sha(OUT/(name+'.stdout.txt')),'stderr_sha256':sha(OUT/(name+'.stderr.txt')),'counts':counts,'collected_test_count':len(collected),'collected_test_names':collected}
(OUT/(name+'.json')).write_text(json.dumps(meta,indent=2,sort_keys=True)+'\n')
assert meta['production_source_unchanged'],'Production changed during RED'
print(json.dumps(meta,indent=2,sort_keys=True))
