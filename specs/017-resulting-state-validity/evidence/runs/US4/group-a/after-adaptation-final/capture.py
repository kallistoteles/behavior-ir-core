from pathlib import Path
import datetime,hashlib,json,os,re,subprocess,sys,time
ROOT=Path('/home/kalle/repos/behavior-ir-core-017')
TARGETS=['evaluate','evaluate_002','evaluate_003','evaluate_004','replay','facts','queries','canonical_tagged_hash']
ENV={'CARGO_BUILD_JOBS':'2','CARGO_INCREMENTAL':'0','CARGO_PROFILE_DEV_DEBUG':'0','CARGO_PROFILE_TEST_DEBUG':'0'}
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def now():return datetime.datetime.now(datetime.timezone.utc).isoformat()
def source():return {str(p.relative_to(ROOT)):sha(p) for p in sorted((ROOT/'crates/behavior-core/src').rglob('*.rs'))}
def tests():return {str(p.relative_to(ROOT)):sha(p) for p in [ROOT/'crates/behavior-core/tests'/f'{n}.rs' for n in TARGETS]+[ROOT/'crates/behavior-core/tests/common.rs']}
label=sys.argv[1];OUT=ROOT/'specs/017-resulting-state-validity/evidence/runs/US4/group-a'/label
assert not OUT.exists(),'Refusing overwrite'
OUT.mkdir(parents=True)
archive=json.loads((ROOT/'tests/fixtures/resulting-state-validity/archive-manifest.json').read_text());oldentries=archive['historical_fixtures']+archive['captured_artifacts']
assert all(sha(ROOT/e['path'])==e['sha256'] for e in oldentries)
compat=ROOT/'tests/fixtures/resulting-state-validity/compatibility-archive/manifest.json';compatsha=sha(compat);cm=json.loads(compat.read_text())
assert all(sha(compat.parent/c['record_path'])==c['record_sha256'] for c in cm['cases'])
rows=[]
for mode in ['collection','execution']:
 for target in TARGETS:
  cmd=['nix','develop','-c','cargo','test','-p','behavior-core','--test',target,'--']+(['--list'] if mode=='collection' else ['--nocapture'])
  before=source();ts=tests();name=mode+'-'+target;started=now();tick=time.monotonic()
  with (OUT/(name+'.stdout.txt')).open('wb') as stdout,(OUT/(name+'.stderr.txt')).open('wb') as stderr:r=subprocess.run(cmd,cwd=ROOT,env={**os.environ,**ENV},stdout=stdout,stderr=stderr)
  text=(OUT/(name+'.stdout.txt')).read_text();m=re.search(r'test result: (\w+)\. (\d+) passed; (\d+) failed; (\d+) ignored; (\d+) measured; (\d+) filtered out',text)
  counts=None if not m else dict(zip(['passed','failed','ignored','measured','filtered_out'],map(int,m.groups()[1:])))
  collected=re.findall(r'^([A-Za-z0-9_]+): test$',text,re.M)
  row={'command':cmd,'cwd':str(ROOT),'environment':ENV,'started_at_utc':started,'finished_at_utc':now(),'elapsed_seconds':time.monotonic()-tick,'exit_status':r.returncode,'core_source_digests_before':before,'core_source_digests_after':source(),'core_source_unchanged':source()==before,'test_digests_before':ts,'test_digests_after':tests(),'tests_unchanged_during_run':tests()==ts,'counts':counts,'collected_names':collected,'collected_count':len(collected),'stdout_sha256':sha(OUT/(name+'.stdout.txt')),'stderr_sha256':sha(OUT/(name+'.stderr.txt')),'compatibility_manifest_sha256':compatsha}
  (OUT/(name+'.json')).write_text(json.dumps(row,indent=2,sort_keys=True)+'\n');rows.append({'target':target,'mode':mode,'status':r.returncode,'counts':counts,'collected':len(collected),'core_source_unchanged':row['core_source_unchanged'],'tests_unchanged_during_run':row['tests_unchanged_during_run']})
  print(json.dumps(rows[-1]),flush=True)
assert all(sha(ROOT/e['path'])==e['sha256'] for e in oldentries)
assert sha(compat)==compatsha and all(sha(compat.parent/c['record_path'])==c['record_sha256'] for c in cm['cases'])
(OUT/'summary.json').write_text(json.dumps({'runs':rows,'original_546_and_42_and_106_captures_unchanged':True},indent=2,sort_keys=True)+'\n')
(OUT/'capture.py').write_text(Path(__file__).read_text())
