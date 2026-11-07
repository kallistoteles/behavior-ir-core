"""Two natural construction phases: locked CPU SDK dependencies, then binary."""
import argparse
import datetime
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess

parser = argparse.ArgumentParser()
parser.add_argument('phase',choices=('dependencies','binary'))
phase = parser.parse_args().phase
HERE = Path(__file__).resolve().parent
cargo, compiler, cc, cxx = [Path(shutil.which(name)).resolve() for name in ('cargo','rustc','cc','c++')]
env = dict(os.environ)
for key in ('CARGO_ENCODED_RUSTFLAGS','RUSTC_WRAPPER','RUSTC_WORKSPACE_WRAPPER','RISC0_RUST_SRC'):
    env.pop(key,None)
env.update(CARGO_HOME=str(HERE/'cargo-cache'), RUSTUP_HOME=str(HERE/'rustup-private'),
           RISC0_HOME=str(HERE/'risc0'), CARGO_BUILD_JOBS='1', CARGO_INCREMENTAL='0',
           RUSTC=str(compiler), CC=str(cc), CXX=str(cxx),
           RUSTFLAGS='-C target-cpu=x86-64', CXXFLAGS='-march=x86-64 -mtune=generic')
argv = [str(cargo),'build','--offline','--locked','--release',
        '--manifest-path',str(HERE/'host/Cargo.toml'),'--target-dir',str(HERE/'host-target')]
argv += ['--lib'] if phase=='dependencies' else ['--bin','identity_stark']
files = [HERE/'host/Cargo.toml',HERE/'host/Cargo.lock',HERE/'host/src/main.rs',HERE/'host/src/lib.rs',
         HERE/'shell.nix',cargo,compiler,cc,cxx,Path(__file__)]
source_manifest = []
if phase=='dependencies':
    for p in sorted((HERE/'cargo-cache/registry/src').rglob('*')):
        if p.is_file():
            source_manifest.append({'path':str(p.relative_to(HERE)), 'bytes':p.stat().st_size,
                                    'sha256':hashlib.sha256(p.read_bytes()).hexdigest()})
    manifest_path = HERE/'results/host-registry-source-manifest.json'
    assert not manifest_path.exists()
    manifest_path.write_text(json.dumps(source_manifest,indent=2)+'\n')
    files.append(manifest_path)
freeze = {'format':'core-next.cpu-sdk-build-freeze.v1','phase':phase,
          'at_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'argv':argv,
          'files':{str(p):{'bytes':p.stat().st_size,'sha256':hashlib.sha256(p.read_bytes()).hexdigest()} for p in files},
          'rustflags':env['RUSTFLAGS'],'cxxflags':env['CXXFLAGS'],
          'features':'risc0-zkvm3.0.6 default-features=false; prove+disable-dev-mode; no cuda/metal/bonsai',
          'scope':'Construction only, no proof/latency or full upstream-lock equivalence finding','g1_pass':False}
out = HERE/f'results/host-{phase}-input-001.json'
assert not out.exists()
out.write_text(json.dumps(freeze,indent=2)+'\n')
subprocess.run(argv,env=env,check=True)
if phase=='binary':
    binary = HERE/'host-target/release/identity_stark'
    (HERE/'results/host-binary.json').write_text(json.dumps({'format':'core-next.cpu-identity-binary.v1',
        'path':str(binary),'bytes':binary.stat().st_size,'sha256':hashlib.sha256(binary.read_bytes()).hexdigest(),
        'g1_pass':False},indent=2)+'\n')
print('CPU SDK construction phase complete:',phase)
