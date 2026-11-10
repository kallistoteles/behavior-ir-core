"""Bind actual build tools and bundled SQLite inputs, then compile locked."""
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess
import sys
import tarfile
import tomllib

HERE=Path(__file__).resolve().parent
receipt={}
for name in ['cargo','rustc','cc','lean']:
    p=Path(shutil.which(name)).resolve()
    receipt[name]={'path':str(p),'sha256':hashlib.sha256(p.read_bytes()).hexdigest(),
                   'version':subprocess.run([str(p),'--version'],check=True,capture_output=True,text=True).stdout.splitlines()[0]}
cache=Path(os.environ.get('CARGO_HOME',str(Path.home()/'.cargo')))/'registry/src'
sqlite=list(cache.glob('*/libsqlite3-sys-0.39.1/sqlite3/sqlite3.c'));assert len(sqlite)==1
p=sqlite[0];raw=p.read_bytes()
package=next(p for p in tomllib.loads((HERE/'Cargo.lock').read_text())['package'] if p['name']=='libsqlite3-sys')
archives=list((cache.parent/'cache').glob('*/libsqlite3-sys-0.39.1.crate'));assert len(archives)==1
archive=archives[0];archive_digest=hashlib.sha256(archive.read_bytes()).hexdigest()
assert archive_digest==package['checksum']
with tarfile.open(archive) as t:assert t.extractfile('libsqlite3-sys-0.39.1/sqlite3/sqlite3.c').read()==raw
assert b'"3.54.1"'in raw
receipt['sqlite_source']={'path':str(p),'sha256':hashlib.sha256(raw).hexdigest(),'verified_package_checksum':archive_digest,'byte_size':len(raw)}
receipt['rustflags']=os.environ.get('RUSTFLAGS')
(HERE/f'results/tools-{sys.argv[1]}.json').write_text(json.dumps(receipt,indent=2)+'\n')
subprocess.run(['cargo','build','--offline','--locked','--release','--bins','--manifest-path',str(HERE/'Cargo.toml')],check=True)
