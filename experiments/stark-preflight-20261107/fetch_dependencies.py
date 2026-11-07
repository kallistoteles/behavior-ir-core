"""Resolve/fetch the isolated stable SDK inputs; do not compile or prove."""
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess

HERE = Path(__file__).resolve().parent
cargo = Path(shutil.which('cargo')).resolve()
env = dict(os.environ, CARGO_HOME=str(HERE/'cargo-cache'),
           RUSTUP_HOME=str(HERE/'rustup-private'), RISC0_HOME=str(HERE/'risc0'),
           CARGO_BUILD_JOBS='1', CARGO_INCREMENTAL='0')
commands = []
for directory, target in (('guest','riscv32im-risc0-zkvm-elf'),('host','x86_64-unknown-linux-gnu')):
    manifest = HERE/directory/'Cargo.toml'
    for args in (['generate-lockfile'], ['fetch','--locked','--target',target]):
        command = [str(cargo),*args,'--manifest-path',str(manifest)]
        commands.append(command)
        subprocess.run(command,env=env,check=True)
record = {'format':'core-next.private-sdk-fetch.v1','commands':commands,
          'cargo':str(cargo),'cargo_sha256':hashlib.sha256(cargo.read_bytes()).hexdigest(),
          'lockfiles':{directory:hashlib.sha256((HERE/directory/'Cargo.lock').read_bytes()).hexdigest()
                       for directory in ('guest','host')},
          'private_cargo_home':env['CARGO_HOME'],'compiled':False,'proof_produced':False,'g1_pass':False}
(HERE/'results/dependency-fetch.json').write_text(json.dumps(record,indent=2)+'\n')
print('Private guest/CPU-host dependency locks and downloads complete; no compilation or proof')
