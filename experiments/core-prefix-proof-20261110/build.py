"""Explicit actual compiler and flags for new source/guest, old bytes untouched."""
import argparse
import datetime
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess

HERE=Path(__file__).resolve().parent
ROOT=HERE.parents[1]
OLD=HERE.parent/'stark-preflight-20261107'
ap=argparse.ArgumentParser();ap.add_argument('kind',choices=['guest','host']);ap.add_argument('--attempt',required=True);a=ap.parse_args()
cargo=Path(shutil.which('cargo')).resolve();compiler=Path(shutil.which('rustc')).resolve()
env=dict(os.environ,CARGO_HOME=str(OLD/'cargo-cache'),RUSTUP_HOME=str(HERE/'rustup-private'),RISC0_HOME=str(OLD/'risc0'),CARGO_BUILD_JOBS='1',CARGO_INCREMENTAL='0')
for name in ['RUSTFLAGS','CARGO_ENCODED_RUSTFLAGS','RUSTC_WRAPPER','RUSTC_WORKSPACE_WRAPPER','RISC0_RUST_SRC']:env.pop(name,None)
argv=[str(cargo),'build','--offline','--locked','--release','--manifest-path',str(HERE/a.kind/'Cargo.toml')]
if a.kind=='guest':
    compiler=OLD/'risc0/toolchains/v1.97.0-rust-x86_64-unknown-linux-gnu/bin/rustc'
    flags=['-C','passes=lower-atomic','-C','link-arg=-Ttext=0x00200800','-C','link-arg=--fatal-warnings','-C','panic=abort','--cfg','getrandom_backend="custom"']
    env.update(CARGO_ENCODED_RUSTFLAGS='\x1f'.join(flags),RUSTC=str(compiler),CC=str(HERE/'no-guest-c-compiler'),CFLAGS_riscv32im_risc0_zkvm_elf='-march=rv32im -nostdlib',RISC0_FEATURE_bigint2='')
    argv+=['--target','riscv32im-risc0-zkvm-elf','--target-dir',str(HERE/'guest-target')]
    binary=HERE/'guest-target/riscv32im-risc0-zkvm-elf/release/core-actual-prefix-guest'
else:
    flags=['-C','target-cpu=x86-64'];env.update(RUSTFLAGS=' '.join(flags),RUSTC=str(compiler))
    # Reusable private construction cache, not old evidence or its executable.
    argv+=['--target-dir',str(OLD/'host-target'),'--bin','core_prefix_client']
    binary=OLD/'host-target/release/core_prefix_client'
files=[*HERE.rglob('*.rs'),*HERE.rglob('Cargo.toml'),*HERE.rglob('Cargo.lock'),HERE/'protocol.json',Path(__file__),HERE/'prepare.py',
       *[HERE.parent/'local-k-study-20261109'/s for s in ['auth.rs','kernel.rs','planner.rs']],
       ROOT/'docs/proposals/core-next-architecture/reference-fixture.jsonl',cargo,compiler]
files=[p for p in files if 'guest-target'not in p.parts and 'host-target'not in p.parts]
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
frozen={str(p):sha(p)for p in files}
out=HERE/'results'/f'{a.kind}-build-input-{a.attempt}.json';assert not out.exists()
out.write_text(json.dumps({'at_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'argv':argv,'flags':flags,'files':frozen,'cache_reused':a.kind=='host','g1_pass':False},indent=2)+'\n')
subprocess.run(argv,env=env,check=True)
for p in files:assert sha(p)==frozen[str(p)],p
(HERE/'results'/f'{a.kind}-binary-{a.attempt}.json').write_text(json.dumps({'path':str(binary),'bytes':binary.stat().st_size,'sha256':sha(binary),'g1_pass':False},indent=2)+'\n')
print(json.dumps({'kind':a.kind,'binary_bytes':binary.stat().st_size,'g1_pass':False}))
