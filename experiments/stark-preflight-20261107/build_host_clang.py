"""Separate Clang construction profile; old GCC stops remain stops."""
import argparse
import datetime
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess
import time

parser = argparse.ArgumentParser()
parser.add_argument('phase',choices=('dependencies','binary'))
phase = parser.parse_args().phase
HERE = Path(__file__).resolve().parent
profile = json.loads((HERE/'clang-profile.json').read_text())
overall = datetime.datetime.fromisoformat(profile['original_preparation_start_utc']).timestamp()
assert time.time()-overall < 4*3600, 'original total preparation budget'
cargo,compiler,cc,cxx = [Path(shutil.which(name)).resolve() for name in ('cargo','rustc','clang','clang++')]
env = dict(os.environ)
for key in ('CARGO_ENCODED_RUSTFLAGS','RUSTC_WRAPPER','RUSTC_WORKSPACE_WRAPPER','RISC0_RUST_SRC'):
    env.pop(key,None)
env.update(CARGO_HOME=str(HERE/'cargo-cache'),RUSTUP_HOME=str(HERE/'rustup-private'),
           RISC0_HOME=str(HERE/'risc0'),CARGO_BUILD_JOBS='1',CARGO_INCREMENTAL='0',
           RUSTC=str(compiler),CC=str(cc),CXX=str(cxx),CC_ENABLE_DEBUG_OUTPUT='1',
           RUSTFLAGS='-C target-cpu=x86-64',CXXFLAGS='-march=x86-64 -mtune=generic')
argv = [str(cargo),'build','--offline','--locked','--release','--manifest-path',str(HERE/'host/Cargo.toml'),
        '--target-dir',str(HERE/'host-target')]
argv += ['--lib'] if phase=='dependencies' else ['--bin','identity_stark']
files = [HERE/'host/Cargo.toml',HERE/'host/Cargo.lock',HERE/'host/src/main.rs',HERE/'host/src/lib.rs',
         HERE/'shell.nix',HERE/'shell-clang.nix',HERE/'clang-profile.json',cargo,compiler,cc,cxx,Path(__file__)]
freeze = {'format':'core-next.clang-cpu-sdk-build-freeze.v1','phase':phase,
          'at_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'argv':argv,
          'files':{str(p):{'bytes':p.stat().st_size,'sha256':hashlib.sha256(p.read_bytes()).hexdigest()} for p in files},
          'rustflags':env['RUSTFLAGS'],'cxxflags':env['CXXFLAGS'],
          'cached_outputs':'Rust dependency outputs reused; C/C++ compiler change must invalidate affected native outputs',
          'scope':'Separate compiler profile, same backend source/security settings; no cold-build or G1 claim','g1_pass':False}
out = HERE/f'results/clang-{phase}-input-001.json'
assert not out.exists()
out.write_text(json.dumps(freeze,indent=2)+'\n')
subprocess.run(argv,env=env,check=True)
if phase=='binary':
    binary = HERE/'host-target/release/identity_stark'
    (HERE/'results/host-binary.json').write_text(json.dumps({'format':'core-next.cpu-identity-binary.v1',
        'profile':'Clang; original GCC construction did not finish',
        'path':str(binary),'bytes':binary.stat().st_size,'sha256':hashlib.sha256(binary.read_bytes()).hexdigest(),
        'g1_pass':False},indent=2)+'\n')
print('Separate Clang CPU SDK construction phase complete:',phase)
