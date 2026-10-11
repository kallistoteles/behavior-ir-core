from pathlib import Path
import datetime, hashlib, json, os, shutil, subprocess, time

CURRENT = Path('/home/kalle/repos/behavior-ir-core-017')
BASE = Path('/tmp/behavior017-signed-archive08-baseline')
TARGET = Path('/tmp/behavior017-signed-archive08-target')
OUT = CURRENT / 'specs/017-resulting-state-validity/evidence/runs/US4/signed-archive08-baseline'
CLI = Path('/tmp/behavior017-baseline-cli')
DEMO = Path('/tmp/behavior017-signed-archive08-demo')
HEAD = '932eb8188dc28393213491e27f66e3bc7e273a6b'
ENV = {'CARGO_BUILD_JOBS':'1','CARGO_INCREMENTAL':'0','CARGO_PROFILE_DEV_DEBUG':'0','CARGO_PROFILE_TEST_DEBUG':'0','CARGO_TARGET_DIR':str(TARGET)}

def sha(path): return hashlib.sha256(Path(path).read_bytes()).hexdigest()
def now(): return datetime.datetime.now(datetime.timezone.utc).isoformat()
def save(name, data): (OUT/name).write_text(json.dumps(data, indent=2, sort_keys=True)+'\n')
def run(label, argv, cwd=BASE):
    if (OUT/(label+'.json')).exists(): raise RuntimeError('Refusing overwrite '+label)
    start=now(); clock=time.monotonic()
    print('RUN '+label+' '+json.dumps(argv), flush=True)
    with (OUT/(label+'.stdout.txt')).open('wb') as stdout, (OUT/(label+'.stderr.txt')).open('wb') as stderr:
        p=subprocess.run(argv,cwd=cwd,env={**os.environ,**ENV},stdout=stdout,stderr=stderr)
    data={'command':argv,'cwd':str(cwd),'environment':ENV,'started_at_utc':start,'finished_at_utc':now(),'elapsed_seconds':time.monotonic()-clock,'exit_status':p.returncode,
          'stdout_sha256':sha(OUT/(label+'.stdout.txt')),'stderr_sha256':sha(OUT/(label+'.stderr.txt'))}
    save(label+'.json',data)
    print('DONE '+label+' exit='+str(p.returncode),flush=True)
    if p.returncode: raise RuntimeError(label+' failed; inspect preserved stderr')
    return (OUT/(label+'.stdout.txt')).read_text()

def clean():
    got=subprocess.check_output(['git','rev-parse','HEAD'],cwd=BASE,text=True).strip()
    status=subprocess.check_output(['git','status','--porcelain'],cwd=BASE,text=True)
    assert got==HEAD and status=='',(got,status)
    return got,status

OUT.mkdir(parents=True,exist_ok=False)
head,status=clean()
baseline=json.loads((CURRENT/'specs/017-resulting-state-validity/evidence/baseline.json').read_text())
files={name:sha(BASE/name) for name in baseline['files']}
assert files==baseline['files'],'Immutable source mismatch'
archivepath=CURRENT/'tests/fixtures/resulting-state-validity/archive-manifest.json'
archivemanifest=json.loads(archivepath.read_text())
archives={entry['path']:sha(CURRENT/entry['path']) for entry in archivemanifest['captured_artifacts']}
assert all(archives[e['path']]==e['sha256'] for e in archivemanifest['captured_artifacts'])
provenance={'format':'behavior.017.additional_signed_archive_capture.v1','purpose':'Genuine immutable-baseline verifier0.8 signed v2 history; distinct from the original42captures. Not a current-validity certificate or finding closure.',
 'baseline_revision':HEAD,'baseline_status_before':status,'baseline_source_file_count':len(files),'baseline_source_files':files,'source_baseline_manifest_sha256':sha(CURRENT/'specs/017-resulting-state-validity/evidence/baseline.json'),
 'original_archive_manifest_sha256':sha(archivepath),'original42_capture_sha256_before':archives,'baseline_checkout':str(BASE),
 'retained_cli_path':str(CLI),'retained_cli_sha256':sha(CLI),'retained_cli_prior_provenance':'specs/017-resulting-state-validity/evidence/runs/US2/profiles/archive-proof-run.json',
 'consumer_manifest':'consumer/Cargo.toml','consumer_manifest_unchanged':True,'environment':ENV,'capture_started_at_utc':now(),
 'fixture_seed_notice':'Only public conformance fixtures tests/fixtures/governance-v2/{verifier,authorizer}.seed are used. They are intentionally non-secret test keys.',
 'worktree_creation':{'command':['git','worktree','add','--detach',str(BASE),HEAD],'actual_result':'Preparing worktree (detached HEAD 932eb81); HEAD is now at 932eb81 docs: define 017 remediation tasks and parallel execution','utc_observed':now()}}
assert provenance['retained_cli_sha256']=='90705fd41f851309e709fae6c939aba5c2b575fd412a3f4ac20f22d3949a0e11'
save('provenance-before.json',provenance)
run('rustc-version',['nix','develop','-c','rustc','-Vv'])
run('cargo-version',['nix','develop','-c','cargo','-V'])
run('nix-version',['nix','--version'])
run('build-example',['nix','develop','-c','env',*[key+'='+value for key,value in ENV.items()],'cargo','build','--locked','--manifest-path','consumer/Cargo.toml','--example','durable_commands'])
shutil.copy2(TARGET/'debug/examples/durable_commands',DEMO)
provenance['retained_example_path']=str(DEMO)
provenance['retained_example_sha256']=sha(DEMO)
provenance['retained_example_bytes']=DEMO.stat().st_size
provenance['baseline_status_after_build']=clean()[1]
save('provenance-built.json',provenance)
print('BUILD PRESERVED '+str(DEMO)+' '+sha(DEMO),flush=True)
