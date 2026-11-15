"""Retain and actually execute the four implemented treatment entry points."""
import hashlib,json,shlex,shutil,sys
from pathlib import Path
from recorder import run
E=Path(__file__).resolve().parent;F=E.parents[1]/'specs/035-verified-work-reuse'
def execute(out):
 out=Path(out);out.mkdir(parents=True,exist_ok=False);binary=out/'bin';binary.mkdir()
 tools=json.loads((E/'toolchain.json').read_text())['tools'];nix=tools['nix-shell']['path']
 env={'CARGO_HOME':str(E/'private/cargo'),'CARGO_TARGET_DIR':str(E/'private/target'),'CARGO_NET_OFFLINE':'true','CARGO_INCREMENTAL':'0','RUSTFLAGS':'-C target-cpu=x86-64'}
 r=run([nix,str(E/'shell.nix'),'--run',shlex.join([tools['cargo']['path'],'metadata','--offline','--locked','--format-version','1','--manifest-path',str(E/'Cargo.toml')])],out/'metadata',wall_seconds=120,env=env)
 if r['exit_code']!=0 or r['stop_reason']:return False
 graph=json.loads((out/'metadata/stdout.txt').read_text());engines=[x for x in graph['packages']if x['name']=='behavior-engine']
 if len(engines)!=1 or engines[0]['source']is not None or str(E/'private/core')not in engines[0]['manifest_path']:raise ValueError('WrongActualGraph')
 bindings=[]
 context={str(p.relative_to(E)):hashlib.sha256(p.read_bytes()).hexdigest() for p in sorted(E.rglob('*'))if p.is_file() and 'private'not in p.relative_to(E).parts and '__pycache__'not in p.parts}
 (out/'source-context.json').write_text(json.dumps(context,indent=2)+'\n')
 for treatment,name in [('R','reference'),('G','ground'),('V','views'),('GV','combined')]:
  target=binary/('reuse035-'+name);shutil.copyfile(E/'private/target/release'/target.name,target);target.chmod(0o555)
  sha=hashlib.sha256(target.read_bytes()).hexdigest();product=out/(treatment+'-product')
  argv=[str(target.resolve()),'run-once','--expected',str(E/'expected/reference-case-D1.json'),'--bundle',str(F/'evidence/development/oracle-reference-product/safety-bundle.json'),'--out',str(product.resolve())]
  receipt=run([nix,str(E/'shell.nix'),'--run',shlex.join(argv)],out/treatment,wall_seconds=900,env=env)
  bindings.append({'treatment':treatment,'path':str(target.relative_to(out)),'sha256':sha,'bytes':target.stat().st_size,'receipt':treatment+'/receipt.json','product':treatment+'-product','actual_executable_unchanged':hashlib.sha256(target.read_bytes()).hexdigest()==sha})
  (out/'workers.json').write_text(json.dumps({'format':'core035.treatment-workers-development.v1','workers':bindings,'product_adoption':'unactivated'},indent=2)+'\n')
  if receipt['exit_code']!=0 or receipt['stop_reason']:return False
 return len({x['sha256']for x in bindings})==4
if __name__=='__main__':raise SystemExit(0 if execute(sys.argv[1]) else 1)
