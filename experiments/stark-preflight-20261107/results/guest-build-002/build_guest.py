"""Build only the fixed identity guest, with explicit private compiler/flags."""
import datetime
import argparse
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[1]
parser = argparse.ArgumentParser()
parser.add_argument('--attempt',choices=('001','002'),default='001')
attempt = parser.parse_args().attempt
cargo = Path(shutil.which('cargo')).resolve()
compiler = HERE/'risc0/toolchains/v1.97.0-rust-x86_64-unknown-linux-gnu/bin/rustc'
flags = ['-C','passes=lower-atomic','-C','link-arg=-Ttext=0x00200800',
         '-C','link-arg=--fatal-warnings','-C','panic=abort',
         '--cfg','getrandom_backend="custom"']
env = dict(os.environ)
for key in ('RUSTFLAGS','RUSTC_WRAPPER','RUSTC_WORKSPACE_WRAPPER','RISC0_RUST_SRC'):
    env.pop(key,None)
env.update(CARGO_HOME=str(HERE/'cargo-cache'), RUSTUP_HOME=str(HERE/'rustup-private'),
           RISC0_HOME=str(HERE/'risc0'), RUSTC=str(compiler),
           CARGO_ENCODED_RUSTFLAGS='\x1f'.join(flags),
           CARGO_BUILD_JOBS='1', CARGO_INCREMENTAL='0',
           CC=str(HERE/'intentionally-no-guest-c-compiler'),
           CFLAGS_riscv32im_risc0_zkvm_elf='-march=rv32im -nostdlib',
           RISC0_FEATURE_bigint2='')
argv = [str(cargo),'build','--offline','--locked','--release',
        '--target','riscv32im-risc0-zkvm-elf','--manifest-path',str(HERE/'guest/Cargo.toml'),
        '--target-dir',str(HERE/'guest-target')]
files = [HERE/'guest/Cargo.toml',HERE/'guest/Cargo.lock',HERE/'guest/src/main.rs',
         HERE/'results/loader-adaptation.json',HERE/'shell.nix',compiler,cargo,Path(__file__)]
if (HERE/'results/loader-adaptation-002.json').exists():
    files.append(HERE/'results/loader-adaptation-002.json')
freeze = {'format':'core-next.identity-guest-build-freeze.v1',
          'at_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),
          'argv':argv,'guest_rustflags':flags,
          'files':{str(p):{'bytes':p.stat().st_size,'sha256':hashlib.sha256(p.read_bytes()).hexdigest()} for p in files},
          'private_cache':env['CARGO_HOME'],'global_home_changed':False,
          'scope':'Guest compilation only; no image/receipt/proof established','g1_pass':False}
out = HERE/f'results/guest-build-input-{attempt}.json'
assert not out.exists()
out.write_text(json.dumps(freeze,indent=2)+'\n')
subprocess.run(argv,env=env,check=True)
elf = HERE/'guest-target/riscv32im-risc0-zkvm-elf/release/core-identity43-guest'
record = {'format':'core-next.identity-guest-build-output.v1','user_elf':str(elf),
          'bytes':elf.stat().st_size,'sha256':hashlib.sha256(elf.read_bytes()).hexdigest(),
          'requires_kernel_packaging':True,'proof_produced':False,'g1_pass':False}
(HERE/'results/guest-build-output.json').write_text(json.dumps(record,indent=2)+'\n')
print(json.dumps(record))
