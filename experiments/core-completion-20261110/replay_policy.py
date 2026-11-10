"""Fresh ordinary Lean-kernel replay of the already checked actual-source file."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess

HERE=Path(__file__).resolve().parent
ap=argparse.ArgumentParser();ap.add_argument('--artifacts',type=Path,required=True);a=ap.parse_args()
directory=a.artifacts.resolve()
tool=Path(shutil.which('leanchecker')).resolve()
prefix=subprocess.run(['lean','--print-prefix'],check=True,capture_output=True,text=True).stdout.strip()
env=dict(os.environ,LEAN_STACK_SIZE_KB='16384',LEAN_PATH=str(directory)+':'+str(Path(prefix)/'lib/lean'))
cmd=[str(tool),'--fresh','actual']
ran=subprocess.run(cmd,cwd=directory,env=env,capture_output=True,text=True,timeout=300)
(directory/'fresh-kernel.stdout.txt').write_text(ran.stdout);(directory/'fresh-kernel.stderr.txt').write_text(ran.stderr)
assert ran.returncode==0,ran.stdout+ran.stderr
j=json.loads((directory/'receipt.json').read_text());assert j['records'][0]['source_sha256']==hashlib.sha256((HERE/'gate.rs').read_bytes()).hexdigest()
(directory/'fresh-kernel-receipt.json').write_text(json.dumps({'argv':cmd,'exit_code':ran.returncode,
    'tool':str(tool),'tool_sha256':hashlib.sha256(tool.read_bytes()).hexdigest(),
    'olean_sha256':hashlib.sha256((directory/'actual.olean').read_bytes()).hexdigest(),
    'scope':'Fresh replay of restricted publication policy theorem, not whole K or Core','g1_pass':False},indent=2)+'\n')
print('Fresh kernel replay passed for actual Rust publication policy')
