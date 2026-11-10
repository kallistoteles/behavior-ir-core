"""Bind actual build tools and bundled SQLite inputs, then compile locked."""
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess
import sys

HERE=Path(__file__).resolve().parent
receipt={}
for name in ['cargo','rustc','cc','lean']:
    p=Path(shutil.which(name)).resolve()
    receipt[name]={'path':str(p),'sha256':hashlib.sha256(p.read_bytes()).hexdigest(),
                   'version':subprocess.run([str(p),'--version'],check=True,capture_output=True,text=True).stdout.splitlines()[0]}
cache=Path(os.environ.get('CARGO_HOME',str(Path.home()/'.cargo')))/'registry/src'
sqlite=list(cache.glob('*/libsqlite3-sys-0.39.1/sqlite3/sqlite3.c'));assert len(sqlite)==1
p=sqlite[0];raw=p.read_bytes();checksums=json.loads((p.parents[1]/'.cargo-checksum.json').read_text())
digest=hashlib.sha256(raw).hexdigest();assert digest==checksums['files']['sqlite3/sqlite3.c']
assert b'"3.54.1"'in raw
receipt['sqlite_source']={'path':str(p),'sha256':digest,'package_checksum':checksums['package'],'byte_size':len(raw)}
receipt['rustflags']=os.environ.get('RUSTFLAGS')
(HERE/f'results/tools-{sys.argv[1]}.json').write_text(json.dumps(receipt,indent=2)+'\n')
subprocess.run(['cargo','build','--offline','--locked','--release','--bins','--manifest-path',str(HERE/'Cargo.toml')],check=True)
