from pathlib import Path
import datetime, hashlib, json, os, shutil, subprocess, time
CURRENT=Path('/home/kalle/repos/behavior-ir-core-017')
BASE=Path('/tmp/behavior017-signed-archive08-baseline')
TARGET=Path('/tmp/behavior017-signed-archive08-target')
OUT=CURRENT/'specs/017-resulting-state-validity/evidence/runs/US4/signed-archive08-baseline'
CLI=Path('/tmp/behavior017-baseline-cli')
DEMO=Path('/tmp/behavior017-signed-archive08-demo')
STORE=OUT/'host-store'
ENV={'CARGO_BUILD_JOBS':'1','CARGO_INCREMENTAL':'0','CARGO_PROFILE_DEV_DEBUG':'0','CARGO_PROFILE_TEST_DEBUG':'0','CARGO_TARGET_DIR':str(TARGET)}

def sha(p): return hashlib.sha256(Path(p).read_bytes()).hexdigest()
def now(): return datetime.datetime.now(datetime.timezone.utc).isoformat()
def save(name,data): (OUT/name).write_text(json.dumps(data,indent=2,sort_keys=True)+'\n')
def run(label,argv):
    if (OUT/(label+'.json')).exists(): raise RuntimeError('Refusing overwrite '+label)
    print('RUN '+label+' '+json.dumps(argv),flush=True)
    start=now(); clock=time.monotonic()
    with (OUT/(label+'.stdout.txt')).open('wb') as stdout,(OUT/(label+'.stderr.txt')).open('wb') as stderr:
        p=subprocess.run(argv,cwd=BASE,env={**os.environ,**ENV},stdout=stdout,stderr=stderr)
    meta={'command':argv,'cwd':str(BASE),'environment':ENV,'started_at_utc':start,'finished_at_utc':now(),'elapsed_seconds':time.monotonic()-clock,'exit_status':p.returncode,'stdout_sha256':sha(OUT/(label+'.stdout.txt')),'stderr_sha256':sha(OUT/(label+'.stderr.txt'))}
    save(label+'.json',meta)
    print('DONE '+label+' exit='+str(p.returncode),flush=True)
    if p.returncode: raise RuntimeError(label+' failed; inspect preserved stderr')
    return json.loads((OUT/(label+'.stdout.txt')).read_text())

p=json.loads((OUT/'provenance-built.json').read_text())
assert sha(DEMO)==p['retained_example_sha256']
assert sha(CLI)==p['retained_cli_sha256']
assert subprocess.check_output(['git','status','--porcelain'],cwd=BASE,text=True)==''
inputs=['tests/fixtures/commands/modules/receipt.json','tests/fixtures/governance-v2/profile.json','tests/fixtures/governance-v2/verifier.seed','tests/fixtures/governance-v2/authorizer.seed','tests/fixtures/governance-v2/context.json','tests/fixtures/governance-v2/policy-verifier-0.8.json','tests/fixtures/governance-v2/evidence-policy-verifier-0.8.json','tests/fixtures/governance-v2/README.md','flake.nix','flake.lock','Cargo.lock','consumer/Cargo.lock','consumer/Cargo.toml','consumer/examples/durable_commands.rs','consumer/tests/support/durable_backend.rs']
p['capture_input_sha256']={name:sha(BASE/name) for name in inputs}
prepare=run('prepare',['nix','develop','-c',str(DEMO),'prepare','--root',str(STORE)])
shutil.copy2(STORE/'store.json',OUT/'genesis-store.json')
proof=run('verify',['nix','develop','-c',str(CLI),'governance','verify','tests/fixtures/commands/modules/receipt.json','--profile','tests/fixtures/governance-v2/profile.json','--seed','tests/fixtures/governance-v2/verifier.seed','--out',str(STORE/'verification.json')])
authorize=run('authorize',['nix','develop','-c',str(CLI),'governance','authorize',str(STORE/'candidate.json'),'--wire','tests/fixtures/commands/modules/receipt.json','--evidence-policy','tests/fixtures/governance-v2/evidence-policy-verifier-0.8.json','--policy','tests/fixtures/governance-v2/policy-verifier-0.8.json','--verification',str(STORE/'verification.json'),'--seed','tests/fixtures/governance-v2/authorizer.seed','--context',str(STORE/'context.json'),'--now','2026-10-05T12:00:00Z','--out',str(STORE/'evidence.json')])
commitargv=['nix','develop','-c',str(DEMO),'commit','--root',str(STORE),'--evidence',str(STORE/'evidence.json'),'--context',str(STORE/'context.json')]
commit=run('commit',commitargv)
assert commit['already'] is False,commit
committed_sha=sha(STORE/'store.json')
shutil.copy2(STORE/'store.json',OUT/'committed-store.json')
stream=run('stream',['nix','develop','-c',str(DEMO),'stream','--root',str(STORE)])
recovery=run('recovery',commitargv)
assert recovery['already'] is True,recovery
assert recovery['record_id']==commit['record_id'] and recovery['history']==commit['history']
assert sha(STORE/'store.json')==committed_sha,'Recovery changed canonical authority'
stream_after=run('stream-after-recovery',['nix','develop','-c',str(DEMO),'stream','--root',str(STORE)])
assert stream_after==stream and sha(OUT/'stream.stdout.txt')==sha(OUT/'stream-after-recovery.stdout.txt')
store=json.loads((STORE/'store.json').read_text())
assert len(store['records'])==1
record=store['records'][0]
assert store['genesis']['format']=='behavior.store_genesis.v2'
assert record['format']=='behavior.transition_record.v2'
assert record['bundle']['record']['record_version']=='0.7'
assert record['bundle']['evidence'] is not None
assert proof['report']['verifier_version']=='0.8.0',proof
assert proof['report']['result']=='verified',proof
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
p['semantic_capture']={'prepare':prepare,'committed':commit,'recovered':recovery,'genesis_format':store['genesis']['format'],'transition_format':record['format'],'decision_version':record['bundle']['record']['record_version'],'verifier_version':proof['report']['verifier_version'],'report_result':proof['report']['result'],'history_record_count':len(store['records']),'signed_evidence_present':True,'canonical_store_sha256_before_recovery':committed_sha,'canonical_store_sha256_after_recovery':sha(STORE/'store.json'),'stream_unchanged_after_recovery':True}
for helper in ['/tmp/behavior017_signed_archive08_capture.py','/tmp/behavior017_signed_archive08_record.py']:
    shutil.copy2(helper,OUT/Path(helper).name)
p['artifacts']={str(f.relative_to(OUT)):{'bytes':f.stat().st_size,'sha256':sha(f)} for f in sorted(OUT.rglob('*')) if f.is_file() and f.name not in {'manifest.json','writer.lock'}}
save('manifest.json',p)
print('CAPTURE VERIFIED '+json.dumps(p['semantic_capture'],sort_keys=True),flush=True)
