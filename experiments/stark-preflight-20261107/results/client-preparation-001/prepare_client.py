"""Resolve/freeze the client-only graph; reject proving-kernel unification."""
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess

HERE = Path(__file__).resolve().parent
cargo = str(Path(shutil.which('cargo')).resolve())
env = dict(os.environ,CARGO_HOME=str(HERE/'cargo-cache'),RUSTUP_HOME=str(HERE/'rustup-private'))
manifest = HERE/'client/Cargo.toml'
subprocess.run([cargo,'update','--offline','--workspace','--manifest-path',str(manifest)],env=env,check=True)
raw = subprocess.check_output([cargo,'metadata','--offline','--locked','--format-version','1',
                               '--manifest-path',str(manifest)],env=env)
metadata = json.loads(raw)
names = {p['id']:p['name'] for p in metadata['packages']}
sdk = [n for n in metadata['resolve']['nodes'] if names[n['id']]=='risc0-zkvm']
assert len(sdk)==1
features = sdk[0]['features']
assert 'client' in features and 'disable-dev-mode' in features
assert not set(features)&{'prove','cuda','metal','bonsai'}, features
native = [names[n['id']] for n in metadata['resolve']['nodes']
          if names[n['id']].startswith('risc0-circuit-') and names[n['id']].endswith('-sys')]
assert not native, native
record = {'format':'core-next.client-only-feature-profile.v1','sdk_features':features,
          'native_proving_kernel_packages':native,
          'lock_sha256':hashlib.sha256((HERE/'client/Cargo.lock').read_bytes()).hexdigest(),
          'metadata_sha256':hashlib.sha256(raw).hexdigest(),
          'producer':'Explicit private r0vm only; producer remains untrusted', 'g1_pass':False}
(HERE/'results/client-feature-profile.json').write_text(json.dumps(record,indent=2)+'\n')
print(json.dumps(record))
