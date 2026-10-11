from pathlib import Path
import datetime,hashlib,json,os,re,subprocess,sys,time
R=Path('/home/kalle/repos/behavior-ir-core-017');O=R/'specs/017-resulting-state-validity/evidence/runs/US4/current-fixtures'/sys.argv[1]
assert not O.exists(),'Refusing overwrite'
O.mkdir(parents=True)
T=R/'crates/behavior-core/tests/resulting_state_fixtures.rs';F=R/'tests/fixtures/resulting-state-validity/current'
E={'CARGO_BUILD_JOBS':'2','CARGO_INCREMENTAL':'0','CARGO_PROFILE_DEV_DEBUG':'0','CARGO_PROFILE_TEST_DEBUG':'0'}
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def now():return datetime.datetime.now(datetime.timezone.utc).isoformat()
def source():return {str(p.relative_to(R)):sha(p) for p in sorted((R/'crates/behavior-core/src').rglob('*.rs'))}
def assert_immutable():
 m=json.loads((R/'tests/fixtures/resulting-state-validity/archive-manifest.json').read_text());assert all(sha(R/c['path'])==c['sha256'] for c in m['historical_fixtures']+m['captured_artifacts'])
 m=json.loads((R/'tests/fixtures/resulting-state-validity/compatibility-archive/manifest.json').read_text());assert all(sha(R/'tests/fixtures/resulting-state-validity/compatibility-archive'/c['record_path'])==c['record_sha256'] for c in m['cases'])
assert_immutable();before=source();tests={str(p.relative_to(R)):sha(p) for p in [T,R/'crates/behavior-core/tests/common.rs']};fixtures={str(p.relative_to(R)):sha(p) for p in sorted(F.rglob('*')) if p.is_file()}
for mode in ['collection','execution']:
 cmd=['nix','develop','-c','cargo','test','-p','behavior-core','--test','resulting_state_fixtures','--']+(['--list'] if mode=='collection' else ['--nocapture'])
 started=now();tick=time.monotonic()
 with (O/(mode+'.stdout.txt')).open('wb') as out,(O/(mode+'.stderr.txt')).open('wb') as err:p=subprocess.run(cmd,cwd=R,env={**os.environ,**E},stdout=out,stderr=err)
 text=(O/(mode+'.stdout.txt')).read_text();m=re.search(r'test result: (\w+)\. (\d+) passed; (\d+) failed; (\d+) ignored; (\d+) measured; (\d+) filtered out',text)
 counts=None if not m else dict(zip(['passed','failed','ignored','measured','filtered_out'],map(int,m.groups()[1:])))
 names=re.findall(r'^([A-Za-z0-9_]+): test$',text,re.M)
 meta={'command':cmd,'cwd':str(R),'environment':E,'start_utc':started,'end_utc':now(),'elapsed_seconds':time.monotonic()-tick,'exit_status':p.returncode,'counts':counts,'collected_count':len(names),'collected_names':names,'source_digests':before,'source_unchanged':source()==before,'test_digests':tests,'tests_unchanged':all(sha(R/path)==h for path,h in tests.items()),'fixture_digests':fixtures,'fixtures_unchanged':all(sha(R/path)==h for path,h in fixtures.items()),'original_archive_manifest_sha256':sha(R/'tests/fixtures/resulting-state-validity/archive-manifest.json'),'compatibility_archive_manifest_sha256':sha(R/'tests/fixtures/resulting-state-validity/compatibility-archive/manifest.json'),'stdout_sha256':sha(O/(mode+'.stdout.txt')),'stderr_sha256':sha(O/(mode+'.stderr.txt'))}
 (O/(mode+'.json')).write_text(json.dumps(meta,indent=2,sort_keys=True)+'\n')
 print(json.dumps({k:meta[k] for k in ['command','exit_status','collected_count','counts','source_unchanged','tests_unchanged','fixtures_unchanged']}),flush=True)
 if mode=='execution':
  records={}
  for line in text.splitlines():
   if line.startswith('fixture '):
    name,payload=line[8:].split(': ',1);records[name]=json.loads(payload)
  (O/'actual-records').mkdir()
  for name,doc in records.items():(O/'actual-records'/(name+'.json')).write_text(json.dumps(doc,indent=2,sort_keys=True)+'\n')
  record_manifest={'format':'behavior.017.current_fixture_execution.v1','source':'Actual record payloads from execution.stdout.txt; formatted JSON copies are execution evidence, never expected golden files.','test_sha256':sha(T),'current_authored_manifest_sha256':sha(F/'manifest.json'),'execution_stdout_sha256':sha(O/'execution.stdout.txt'),'exit_status':p.returncode,'counts':counts,'record_count':len(records),'records':{str(f.relative_to(O)):sha(f) for f in sorted((O/'actual-records').glob('*.json'))}}
  (O/'record-manifest.json').write_text(json.dumps(record_manifest,indent=2,sort_keys=True)+'\n')
assert_immutable();(O/'capture.py').write_text(Path(__file__).read_text())
