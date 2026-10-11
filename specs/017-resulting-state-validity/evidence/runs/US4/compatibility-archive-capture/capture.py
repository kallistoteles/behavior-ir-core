from pathlib import Path
import datetime,hashlib,json,os,shutil,subprocess,time
ROOT=Path('/home/kalle/repos/behavior-ir-core-017')
BASE=Path('/tmp/behavior017-signed-archive08-baseline')
CLI=Path('/tmp/behavior017-baseline-cli')
ARCHIVE=ROOT/'tests/fixtures/resulting-state-validity/compatibility-archive'
LOGS=ROOT/'specs/017-resulting-state-validity/evidence/runs/US4/compatibility-archive-capture'
REV='932eb8188dc28393213491e27f66e3bc7e273a6b'
ENV={'CARGO_BUILD_JOBS':'1','CARGO_INCREMENTAL':'0','CARGO_PROFILE_DEV_DEBUG':'0','CARGO_PROFILE_TEST_DEBUG':'0'}
def sha(p):return hashlib.sha256(Path(p).read_bytes()).hexdigest()
def now():return datetime.datetime.now(datetime.timezone.utc).isoformat()
def save(p,v):p.parent.mkdir(parents=True,exist_ok=True);p.write_text(json.dumps(v,indent=2,sort_keys=True)+'\n')
assert not ARCHIVE.exists(),'Refusing to overwrite compatibility archive'
assert not LOGS.exists(),'Refusing to overwrite compatibility capture logs'
assert subprocess.check_output(['git','rev-parse','HEAD'],cwd=BASE,text=True).strip()==REV
assert subprocess.check_output(['git','status','--porcelain'],cwd=BASE,text=True)==''
assert sha(CLI)=='90705fd41f851309e709fae6c939aba5c2b575fd412a3f4ac20f22d3949a0e11'
old=json.loads((ROOT/'tests/fixtures/resulting-state-validity/archive-manifest.json').read_text())
old_manifest_sha=sha(ROOT/'tests/fixtures/resulting-state-validity/archive-manifest.json')
old_entries=old['historical_fixtures']+old['captured_artifacts']
assert len(old['historical_fixtures'])==546 and len(old['captured_artifacts'])==42
assert all(sha(ROOT/e['path'])==e['sha256'] for e in old_entries)
baseline=json.loads((ROOT/'specs/017-resulting-state-validity/evidence/baseline.json').read_text())
files={n:sha(BASE/n) for n in baseline['files']}
assert files==baseline['files']
ARCHIVE.mkdir(parents=True);LOGS.mkdir(parents=True)
started=now();rows=[]

def invoke(kind,name,module,request,expectation_file,expected,golden=None,snapshot=None,context=None):
    argv=['nix','develop','-c',str(CLI),'eval' if kind.startswith('evaluation/') else kind,module,request]
    inputs=[module,request,expectation_file]
    if snapshot:
        argv.append(snapshot);inputs.append(snapshot)
    if context:
        argv+=['--context',context];inputs.append(context)
    if golden:inputs.append(golden)
    relative=Path('records')/kind.replace('evaluation/','')/(name+'.json') if kind.startswith('evaluation/') else Path('invocation-records' if kind=='invoke' else 'intent-records')/(name+'.json')
    output=ARCHIVE/relative;output.parent.mkdir(parents=True,exist_ok=True)
    label=(kind.replace('/','-')+'-'+name)
    err=LOGS/(label+'.stderr.txt')
    begin=now();clock=time.monotonic()
    with output.open('wb') as stdout,err.open('wb') as stderr:
        result=subprocess.run(argv,cwd=BASE,env={**os.environ,**ENV},stdout=stdout,stderr=stderr)
    raw=output.read_bytes()
    try:value=json.loads(raw)
    except Exception:value=None
    want=0
    if kind.startswith('evaluation/'):
        want={'ALLOW':0,'DENY':1,'ERROR':3}.get(expected.get('result'),2)
    else:want=0 if expected['outcome']['kind']=='evaluated' else 3
    row={'name':name,'group':kind,'producer_revision':REV,'command':argv,'cwd':str(BASE),'environment':ENV,'started_at_utc':begin,'finished_at_utc':now(),'elapsed_seconds':time.monotonic()-clock,
      'exit_status':result.returncode,'expected_original_exit_status':want,'exit_status_matches_original_expectation':result.returncode==want,
      'input_files':{p:sha(BASE/p) for p in inputs},'expectation_table':expectation_file,'record_path':str(relative),'record_sha256':sha(output),'record_bytes':len(raw),'stderr_path':str(err.relative_to(ROOT)),'stderr_sha256':sha(err),'json_output':value is not None,
      'document_profile':None if value is None else value.get('record_version',value.get('format')),
      'nested_profile':None if value is None else value.get('outcome',{}).get('record',{}).get('record_version',value.get('outcome',{}).get('record',{}).get('format')),
      'actual_result':None if value is None else value.get('result',value.get('outcome',{}).get('kind'))}
    if kind.startswith('evaluation/'):
        row['original_expected_result']=expected.get('result')
        row['result_matches_original_expectation']=value is not None and value.get('result')==expected.get('result')
    if golden:
        row['original_golden']=golden
        row['original_golden_sha256']=sha(BASE/golden)
        row['byte_identical_to_original_golden']=raw==(BASE/golden).read_bytes()
    save(LOGS/(label+'.json'),row);rows.append(row)
    if len(rows)%10==0:
        print('Captured '+str(len(rows))+' cases; current '+label+' exit'+str(result.returncode),flush=True)

root_table='tests/fixtures/requests/expectations.json'
for name,e in sorted(json.loads((BASE/root_table).read_text()).items()):
    invoke('evaluation/root',name,f'tests/fixtures/wire/valid/{e["wire"]}.json',f'tests/fixtures/requests/{name}.json',root_table,e,golden=f'tests/fixtures/records/{name}.json')
for family,module_name in [('002','constraints'),('003','fixed_scale'),('004','exact_closure'),('006','accounts'),('007','orders')]:
    table=f'tests/fixtures/requests/{family}/expectations.json'
    expectations=json.loads((BASE/table).read_text())
    names={f.stem for f in (BASE/f'tests/fixtures/requests/{family}').glob('*.json') if f.name!='expectations.json'}
    assert names==set(expectations),(family,names-set(expectations),set(expectations)-names)
    for name,e in sorted(expectations.items()):
        invoke('evaluation/'+family,name,f'tests/fixtures/wire/valid/{module_name}.json',f'tests/fixtures/requests/{family}/{name}.json',table,e)
for kind,requests,record_dir in [('invoke','invocations','records'),('invoke-intent','intents','intent-records')]:
    for req in sorted((BASE/f'tests/fixtures/invocation/{requests}').glob('*.json')):
        name=req.stem;golden=f'tests/fixtures/invocation/{record_dir}/{name}.expected.json'
        expected=json.loads((BASE/golden).read_text())
        invoke(kind,name,'tests/fixtures/invocation/modules/ledger.json',str(req.relative_to(BASE)),golden,expected,golden=golden,snapshot='tests/fixtures/invocation/snapshots/s1.json',context='tests/fixtures/invocation/context.json' if kind=='invoke-intent' else None)
assert len(rows)==106,len(rows)
source_unchanged=all(sha(BASE/n)==h for n,h in files.items())
status=subprocess.check_output(['git','status','--porcelain'],cwd=BASE,text=True)
assert source_unchanged and status==''
assert sha(ROOT/'tests/fixtures/resulting-state-validity/archive-manifest.json')==old_manifest_sha
assert all(sha(ROOT/e['path'])==e['sha256'] for e in old_entries)
discrepancies=[{'group':r['group'],'name':r['name'],'exit_status':r['exit_status'],'expected_exit':r['expected_original_exit_status'],'golden_match':r.get('byte_identical_to_original_golden'),'result_match':r.get('result_matches_original_expectation'),'json_output':r['json_output']} for r in rows if not r['exit_status_matches_original_expectation'] or not r['json_output'] or r.get('byte_identical_to_original_golden') is False or r.get('result_matches_original_expectation') is False]
manifest={'format':'behavior.017.compatibility_archive_capture.v1','purpose':'Actual original-input outputs of immutable pre017 CLI. Existing old fixtures and expectation tables remain unchanged. These are not current0.8 expectations.',
 'producer_revision':REV,'producer_checkout':str(BASE),'producer_binary':str(CLI),'producer_binary_sha256':sha(CLI),'producer_binary_prior_provenance':'specs/017-resulting-state-validity/evidence/runs/US2/profiles/archive-proof-run.json',
 'capture_started_at_utc':started,'capture_finished_at_utc':now(),'baseline_source_files':files,'baseline_source_file_count':len(files),'baseline_source_files_unchanged':source_unchanged,'baseline_status_after':status,
 'original_archive_manifest_sha256':old_manifest_sha,'original546_fixture_sha256':{e['path']:e['sha256'] for e in old['historical_fixtures']},'original42_capture_sha256':{e['path']:e['sha256'] for e in old['captured_artifacts']},'original546_and42_unchanged':True,
 'case_count':len(rows),'original_golden_comparison_count':sum('original_golden' in r for r in rows),'new_original_input_evaluation_archive_count':sum(r['group'] not in ['evaluation/root','invoke','invoke-intent'] for r in rows),'discrepancies':discrepancies,'cases':rows,
 'limitations':['No current implementation tests or gate results are claimed.','For tables without pre-existing goldens, output is actual baseline evidence, not a newly handwritten mathematical oracle.','Original result/exit expectations and exact39golden bytes are compared; complete subset/trace table checking remains the existing test harness responsibility.','No current/historical fresh selector, release publication, policy adoption or source change was used.']}
save(ARCHIVE/'manifest.json',manifest)
shutil.copy2('/tmp/behavior017_compatibility_archive_capture.py',LOGS/'capture.py')
save(LOGS/'capture-summary.json',{'manifest_path':str((ARCHIVE/'manifest.json').relative_to(ROOT)),'manifest_sha256':sha(ARCHIVE/'manifest.json'),'case_count':106,'group_counts':{g:sum(r['group']==g for r in rows) for g in sorted({r['group'] for r in rows})},'golden_comparison_count':39,'discrepancies':discrepancies,'baseline_source_and_original_artifacts_unchanged':True})
print(json.dumps({'cases':len(rows),'golden_comparisons':39,'discrepancies':discrepancies,'manifest_sha256':sha(ARCHIVE/'manifest.json')},indent=2),flush=True)
