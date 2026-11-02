"""Isolate a single real compiled module under unchanged fresh-kernel limits."""
import os,sys,shutil
from pathlib import Path
p=Path('experiments/transition-study033/proofs').resolve();sys.path.insert(0,str(p));import check_targets
kernel=Path(sys.argv[1]).resolve();module=sys.argv[2];out=Path(sys.argv[3]).resolve();out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py');env=dict(os.environ,LEAN_PATH=':'.join(map(str,[kernel/'compiled',*sorted((p/'.lake/packages').glob('*/.lake/build/lib/lean'))])))
check_targets._call(['leanchecker','--fresh',module],cwd=kernel/'compiled',env=env,log=out/'fresh-kernel.txt',timeout=3600);print('Diagnostic fresh single-module replay passed; no complete source or matrix authority granted.')
