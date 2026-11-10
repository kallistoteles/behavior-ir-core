"""Resolve actual locks using existing private SDK cache; no global tool changes."""
import json
import os
from pathlib import Path
import shutil
import subprocess

HERE=Path(__file__).resolve().parent
OLD=HERE.parent/'stark-preflight-20261107'
env=dict(os.environ,CARGO_HOME=str(OLD/'cargo-cache'),RUSTUP_HOME=str(HERE/'rustup-private'))
for name in ['guest','host']:
    source=OLD/name/'Cargo.lock' if name=='guest' else OLD/'client/Cargo.lock'
    lock=HERE/name/'Cargo.lock'
    if not lock.exists():shutil.copyfile(source,lock)
    subprocess.run(['cargo','update','--offline','--workspace','--manifest-path',str(HERE/name/'Cargo.toml')],env=env,check=True)
    metadata=subprocess.run(['cargo','metadata','--offline','--locked','--format-version','1','--filter-platform',
        'riscv32im-risc0-zkvm-elf' if name=='guest' else 'x86_64-unknown-linux-gnu','--manifest-path',str(HERE/name/'Cargo.toml')],env=env,check=True,capture_output=True,text=True)
    m=json.loads(metadata.stdout)
    features=next(n['features']for n in m['resolve']['nodes']if n['id'].split('#')[-1]=='risc0-zkvm@3.0.6')
    assert not set(features)&{'prove','cuda','metal','bonsai'}
    if name=='host':assert 'disable-dev-mode'in features and 'client'in features
    (HERE/'results'/f'{name}-dependency-profile.json').write_text(json.dumps({'sdk_features':features,
        'packages':[{k:p[k]for k in ['name','version','source']}for p in m['packages']],
        'no_native_proving_kernel_packages':not any(p['name']in['risc0-circuit-rv32im-sys','risc0-circuit-recursion-sys']for p in m['packages']),
        'g1_pass':False},indent=2)+'\n')
