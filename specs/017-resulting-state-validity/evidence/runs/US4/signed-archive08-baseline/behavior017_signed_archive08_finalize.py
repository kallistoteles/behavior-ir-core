from pathlib import Path
import datetime,hashlib,json,shutil,subprocess
CURRENT=Path('/home/kalle/repos/behavior-ir-core-017')
BASE=Path('/tmp/behavior017-signed-archive08-baseline')
TARGET=Path('/tmp/behavior017-signed-archive08-target')
OUT=CURRENT/'specs/017-resulting-state-validity/evidence/runs/US4/signed-archive08-baseline'
STORE=OUT/'host-store'
def sha(p): return hashlib.sha256(Path(p).read_bytes()).hexdigest()
def now(): return datetime.datetime.now(datetime.timezone.utc).isoformat()
def load(name): return json.loads((OUT/name).read_text())
def save(name,data): (OUT/name).write_text(json.dumps(data,indent=2,sort_keys=True)+'\n')
p=load('provenance-built.json')
for name in ['rustc-version','cargo-version','nix-version','build-example','prepare','verify','authorize','commit','stream','recovery','stream-after-recovery']:
    log=load(name+'.json')
    assert log['exit_status']==0,(name,log['exit_status'])
    assert sha(OUT/(name+'.stdout.txt'))==log['stdout_sha256']
    assert sha(OUT/(name+'.stderr.txt'))==log['stderr_sha256']
commit=load('commit.stdout.txt');recovery=load('recovery.stdout.txt');stream=load('stream.stdout.txt');proof=json.loads((STORE/'verification.json').read_text());store=json.loads((STORE/'store.json').read_text());record=store['records'][0]
assert commit['already'] is False
assert recovery['already'] is True
assert recovery['record_id']==commit['record_id'] and recovery['history']==commit['history']
assert sha(STORE/'store.json')==sha(OUT/'committed-store.json')
assert sha(OUT/'stream.stdout.txt')==sha(OUT/'stream-after-recovery.stdout.txt')
assert len(store['records'])==1 and len(stream['items'])==1
assert store['genesis']['format']=='behavior.store_genesis.v2'
assert record['format']=='behavior.transition_record.v2'
assert record['bundle']['record']['record_version']=='0.7'
assert record['bundle']['record']['semantic_profile']=='0.8'
assert record['bundle']['evidence'] is not None and record['authorization'] is not None
assert record['bundle']['evidence']['verifications']==[proof]
assert proof['content']['verifier_version']=='0.8.0' and proof['report']['verifier_version']=='0.8.0' and proof['expected_check_manifest']['verifier_version']=='0.8.0'
assert proof['report']['result']=='verified'
assert sha(Path(p['retained_example_path']))==p['retained_example_sha256']
assert sha(Path(p['retained_cli_path']))==p['retained_cli_sha256']
inputs=['tests/fixtures/commands/modules/receipt.json','tests/fixtures/governance-v2/profile.json','tests/fixtures/governance-v2/verifier.seed','tests/fixtures/governance-v2/authorizer.seed','tests/fixtures/governance-v2/context.json','tests/fixtures/governance-v2/policy-verifier-0.8.json','tests/fixtures/governance-v2/evidence-policy-verifier-0.8.json','tests/fixtures/governance-v2/README.md','flake.nix','flake.lock','Cargo.lock','consumer/Cargo.lock','consumer/Cargo.toml','consumer/examples/durable_commands.rs','consumer/tests/support/durable_backend.rs']
p['capture_input_sha256']={name:sha(BASE/name) for name in inputs}
for name in inputs:
    dest=OUT/'inputs'/name
    dest.parent.mkdir(parents=True,exist_ok=True)
    shutil.copy2(BASE/name,dest)
p['capture_finished_at_utc']=now()
p['baseline_status_after_capture']=subprocess.check_output(['git','status','--porcelain'],cwd=BASE,text=True)
assert p['baseline_status_after_capture']==''
p['baseline_source_files_unchanged']=all(sha(BASE/name)==digest for name,digest in p['baseline_source_files'].items())
assert p['baseline_source_files_unchanged']
archivepath=CURRENT/'tests/fixtures/resulting-state-validity/archive-manifest.json'
p['original_archive_manifest_sha256_after']=sha(archivepath)
p['original42_capture_sha256_after']={name:sha(CURRENT/name) for name in p['original42_capture_sha256_before']}
assert p['original_archive_manifest_sha256_after']==p['original_archive_manifest_sha256']
assert p['original42_capture_sha256_after']==p['original42_capture_sha256_before']
p['semantic_capture']={'prepare':load('prepare.stdout.txt'),'committed':commit,'recovered':recovery,'genesis_format':store['genesis']['format'],'transition_format':record['format'],'decision_version':record['bundle']['record']['record_version'],'semantic_profile':record['bundle']['record']['semantic_profile'],'verifier_version':proof['content']['verifier_version'],'report_result':proof['report']['result'],'history_record_count':len(store['records']),'signed_evidence_present':True,'authorization_hash':record['authorization'],'command_occurrence_id':stream['items'][0]['command_occurrence_id'],'canonical_store_sha256_before_recovery':sha(OUT/'committed-store.json'),'canonical_store_sha256_after_recovery':sha(STORE/'store.json'),'stream_unchanged_after_recovery':True}
p['metadata_seed_correction']={'excluded_from_semantic_RED':True,'capture_wrapper_attempt1':'capture-wrapper-attempt1.py','wrapper_exit_status':1,'actual_backend_and_cli_commands_all_exit_zero':True,'failure':'Post-command provenance assertion expected behavior.genesis.v2; actual existing document format is behavior.store_genesis.v2. Additional checked names corrected to transition_record.v2, record_version0.7 and the verifications array. These were metadata helper assumptions, not command failures. No runtime behavior or event bytes changed.','corrected_assertions_verified_by':'behavior017_signed_archive08_finalize.py'}
for helper in ['/tmp/behavior017_signed_archive08_capture.py','/tmp/behavior017_signed_archive08_record.py','/tmp/behavior017_signed_archive08_finalize.py']:
    shutil.copy2(helper,OUT/Path(helper).name)
save('independent-capture-validation.json',{'utc':now(),'actual_command_count':7,'all_workflow_commands_exit_zero':True,'signed_verifier_version':'0.8.0','decision_record_version':'0.7','committed_already':False,'recovered_already':True,'canonical_store_byte_identical_after_recovery':True,'command_stream_byte_identical_after_recovery':True,'original42_frozen_captures_unchanged':True,'baseline315_source_files_unchanged':True,'not_current_profile_tests':True})
p['artifacts']={str(f.relative_to(OUT)):{'bytes':f.stat().st_size,'sha256':sha(f)} for f in sorted(OUT.rglob('*')) if f.is_file() and f.name not in {'manifest.json','writer.lock'}}
save('manifest.json',p)
print(json.dumps(p['semantic_capture'],indent=2,sort_keys=True))
