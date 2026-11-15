"""Bounded development native build/test; not a final campaign sample."""
import argparse,hashlib,json,shlex
from pathlib import Path
from recorder import run
E=Path(__file__).resolve().parent
p=argparse.ArgumentParser();p.add_argument('--out',type=Path,required=True);p.add_argument('cargo_args',nargs=argparse.REMAINDER);a=p.parse_args()
t=json.loads((E/'toolchain.json').read_text())['tools']
env={'CARGO_HOME':str(E/'private/cargo'),'CARGO_TARGET_DIR':str(E/'private/target'),'CARGO_NET_OFFLINE':'true','CARGO_INCREMENTAL':'0','CARGO_PROFILE_DEV_DEBUG':'0','CARGO_PROFILE_TEST_DEBUG':'0','RUSTFLAGS':'-C target-cpu=x86-64','RUST_TEST_THREADS':'1'}
paths=[p for p in sorted(E.rglob('*')) if p.is_file() and 'private'not in p.relative_to(E).parts and '__pycache__'not in p.parts]
before={str(p.relative_to(E)):hashlib.sha256(p.read_bytes()).hexdigest() for p in paths}
argv=[t['cargo']['path'],*a.cargo_args,'--offline','--locked','--manifest-path',str(E/'Cargo.toml')]
r=run([t['nix-shell']['path'],str(E/'shell.nix'),'--run',shlex.join(argv)],a.out,wall_seconds=900,env=env)
(a.out/'source-hashes-before.json').write_text(json.dumps(before,indent=2)+'\n')
(a.out/'source-hashes-after.json').write_text(json.dumps({str(p.relative_to(E)):hashlib.sha256(p.read_bytes()).hexdigest() for p in sorted(E.rglob('*')) if p.is_file() and 'private'not in p.relative_to(E).parts and '__pycache__'not in p.parts},indent=2)+'\n')
print(json.dumps({'exit_code':r['exit_code'],'stop_reason':r['stop_reason'],'wall_ns':r['wall_ns']}))
raise SystemExit(0 if r['exit_code']==0 and not r['stop_reason'] else 1)
