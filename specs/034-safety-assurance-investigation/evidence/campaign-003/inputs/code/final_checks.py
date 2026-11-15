"""Fixed post-campaign checks. These cannot promote a candidate or reset its clock."""
import json,shlex,time
from pathlib import Path
import study
from recorder import run
from artifact_io import artifact_ref,write_once,semantic_digest,verify_ref,bounded_read

def _legacy_files(path):
 # Called only after exact legacy artifact SHA verification. Decimal-valued
 # diagnostic fields are ignored; none become new034 semantic data or authority.
 from decimal import Decimal
 value=json.loads(bounded_read(path),parse_float=Decimal)
 files=value['files']
 if not isinstance(files,dict)or any(not isinstance(k,str)or not isinstance(v,str)for k,v in files.items()):raise ValueError('LegacyFileBindings')
 return files

def execute(manifest):
 root,m,ledger=study._load(manifest);out=root/'gates';out.mkdir(exist_ok=False);tools=m['tools'];env={'CARGO_HOME':str(study.HERE/'private/cargo'),'CARGO_TARGET_DIR':str(study.HERE/'private/target'),'CARGO_INCREMENTAL':'0','CARGO_NET_OFFLINE':'true','CARGO_PROFILE_DEV_DEBUG':'0','CARGO_PROFILE_TEST_DEBUG':'0','RUSTFLAGS':'-C target-cpu=x86-64'}
 cargo=[tools['cargo']['path']];nix=[tools['nix-shell']['path'],str(study.CORE/study.ENV_FILES[0]),'--run'];lock=['--offline','--locked','--manifest-path',str(study.HERE/'Cargo.toml')]
 rustfmt=str(Path(tools['rustc']['path']).parent/'rustfmt')
 commands=[('scoped-tests',nix+[shlex.join(cargo+['test',*lock])]),('scoped-format',[rustfmt,'--check','--edition','2024','--config','skip_children=true',*[str(p)for p in sorted((study.HERE/'src').glob('*.rs'))],*[str(p)for p in sorted((study.HERE/'tests').glob('*.rs'))]]),('scoped-clippy',nix+[shlex.join(cargo+['clippy',*lock,'--all-targets','--','-D','warnings'])]),('python-tests',[tools['python']['path'],'-m','unittest','discover','-s',str(study.HERE/'tests'),'-p','test_*.py']),('repository',nix+[shlex.join(['bash',str(study.CORE/'scripts/gates.sh')])])]
 results=[]
 for name,argv in commands:
  wall=max(.001,min(900,ledger.remaining_ns(time.monotonic_ns(),study._boot())/10**9))
  r=run(argv,out/name,wall_seconds=wall,ledger=ledger,env=env);result={'name':name,'operational':'completed'if r['exit_code']==0 and not r['stop_reason']else'resource_stopped'if r['stop_reason']else'tool_failed','exit_code':r['exit_code'],'stop_reason':r['stop_reason'],'receipt':artifact_ref(root,str((out/name/'receipt.json').relative_to(root)))};study._write(out/(name+'.json'),result);results.append(result);print(json.dumps(result),flush=True)
 # A new process reconstructs semantic records twice; timings are diagnostic only.
 if(root/'prepared-manifest.json').exists():
  values=[];attempts=[]
  for i in [1,2]:
   d=root/'determinism'/str(i);d.mkdir(parents=True);study._write(d/'input.json',{'format':'core034.worker-input.v1','commands':False,'role':'oracle'})
   r=run([str(study._worker(root,m)),'prepare','--input',str(d/'input.json'),'--out',str(d/'product')],d/'command',wall_seconds=max(.001,min(300,ledger.remaining_ns(time.monotonic_ns(),study._boot())/10**9)),ledger=ledger)
   attempts.append({'exit_code':r['exit_code'],'stop_reason':r['stop_reason']})
   if r['exit_code']==0 and not r['stop_reason']:values.append(study._read(d/'product/oracle.json'))
  good=len(values)==2 and semantic_digest(values[0])==semantic_digest(values[1]);study._write(root/'determinism.json',{'operational':'completed'if good else'tool_failed','semantic_equal':good,'attempts':attempts,'scope':'Complete original LD8 records and research semantic digest excluding diagnostics; times/resources not semantic identity','product_adoption':'unactivated'})
 else:study._write(root/'determinism.json',{'operational':'not_run','reason':'Prepared worker prerequisite absent'})
 checked=[]
 for ref in m['sources']['protected_manifests']:
  p=study.CORE/ref['path']
  if study._sha(p)!=ref['sha256']:raise ValueError('HistoricalFreezeChanged')
  bindings=_legacy_files(p)
  for name,digest in bindings.items():
   target=Path(name)if Path(name).is_absolute()else study.CORE/name
   if study._sha(target)!=digest:raise ValueError('HistoricalBoundInputChanged:'+name)
  checked.append({**ref,'verified_actual_bindings':len(bindings)})
 # Git-source checks do not trust a filename or current checkout revision.
 from validate_report import git_reader
 reader=git_reader(study.CORE);catalog=study._read(root/'inputs/definitions/inputs/source-catalog.json')
 for s in catalog['sources']:
  import hashlib
  if hashlib.sha256(reader(s)).hexdigest()!=s['sha256']:raise ValueError('PinnedPublicSourceChanged')
 import subprocess,tomllib
 status=subprocess.check_output(['git','-C',str(study.CORE),'status','--porcelain','--untracked-files=no'],timeout=15).decode()
 if any(line[3:]!='specs/034-safety-assurance-investigation/tasks.md'and not line[3:].startswith(('specs/034-safety-assurance-investigation/','experiments/assurance-study034/'))for line in status.splitlines()):raise ValueError('UnexpectedTrackedScope')
 locked=tomllib.loads((study.HERE/'Cargo.lock').read_text());engine=[p for p in locked['package']if p['name']=='behavior-engine']
 if len(engine)!=1 or not engine[0]['source'].endswith('#63a8c164523275e06ac1d7dc5330db4a899c9d99'):raise ValueError('PublicDependencyIdentity')
 study._write(root/'preservation.json',{'format':'core034.preservation.v1','operational':'completed','protected_manifests':checked,'pinned_source_count':len(catalog['sources']),'tracked_scope':status,'public_engine_source':engine[0]['source'],'scope':'Selected historical frozen-input manifest bytes, pinned primary Git sources and owned tracked changes. No full old-archive rehash; no unrelated untracked files removed','product_adoption':'unactivated'})
 return results
if __name__=='__main__':
 import argparse
 p=argparse.ArgumentParser();p.add_argument('--manifest',type=Path,required=True);a=p.parse_args();execute(a.manifest)
