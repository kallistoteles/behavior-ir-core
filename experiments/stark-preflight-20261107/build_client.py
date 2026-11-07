"""Build only the strict client/verifier, with no native proving kernels."""
import datetime
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess
import time

HERE = Path(__file__).resolve().parent
profile = json.loads((HERE/'external-profile.json').read_text())
assert time.time()-datetime.datetime.fromisoformat(profile['original_preparation_start']).timestamp() < 4*3600
features = json.loads((HERE/'results/client-feature-profile.json').read_text())
assert not features['native_proving_kernel_packages']
assert not set(features['sdk_features'])&{'prove','cuda','metal','bonsai'}
cargo,compiler = [Path(shutil.which(name)).resolve() for name in ('cargo','rustc')]
env = dict(os.environ)
for key in ('CARGO_ENCODED_RUSTFLAGS','RUSTC_WRAPPER','RUSTC_WORKSPACE_WRAPPER','RISC0_RUST_SRC'):
    env.pop(key,None)
env.update(CARGO_HOME=str(HERE/'cargo-cache'),RUSTUP_HOME=str(HERE/'rustup-private'),
           RISC0_HOME=str(HERE/'risc0'),RUSTC=str(compiler),CARGO_BUILD_JOBS='1',CARGO_INCREMENTAL='0',
           RUSTFLAGS='-C target-cpu=x86-64')
argv = [str(cargo),'build','--offline','--locked','--release',
        '--manifest-path',str(HERE/'client/Cargo.toml'),'--target-dir',str(HERE/'host-target'),
        '--bin','identity_stark_client']
files = [HERE/'client/Cargo.toml',HERE/'client/Cargo.lock',HERE/'client/src/main.rs',
         HERE/'results/client-feature-profile.json',HERE/'external-profile.json',
         HERE/'shell.nix',cargo,compiler,Path(__file__)]
freeze = {'format':'core-next.client-build-freeze.v1','at_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),
          'argv':argv,'files':{str(p):{'bytes':p.stat().st_size,'sha256':hashlib.sha256(p.read_bytes()).hexdigest()} for p in files},
          'rustflags':env['RUSTFLAGS'],'scope':'Client/verification only; cached Rust outputs reused, no cold-build claim',
          'g1_pass':False}
out = HERE/'results/client-build-input-001.json'
assert not out.exists()
out.write_text(json.dumps(freeze,indent=2)+'\n')
subprocess.run(argv,env=env,check=True)
binary = HERE/'host-target/release/identity_stark_client'
(HERE/'results/client-binary.json').write_text(json.dumps({'format':'core-next.strict-client-binary.v1',
    'path':str(binary),'bytes':binary.stat().st_size,'sha256':hashlib.sha256(binary.read_bytes()).hexdigest(),
    'g1_pass':False},indent=2)+'\n')
print('Client-only strict verifier/prover-IPC binary compiled')
