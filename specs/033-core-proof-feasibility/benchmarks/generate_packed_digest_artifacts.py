"""Retain actual unchecked emitted packed-digest source/matrix under bounded tools."""
import os,sys,shutil
from pathlib import Path
p=Path('experiments/transition-study033/proofs').resolve();sys.path.insert(0,str(p));import check_targets
logs=Path(sys.argv[1]).resolve();logs.mkdir(exist_ok=False);out=Path(sys.argv[2]).resolve()
shutil.copyfile(p/'Core033/GeneratePackedDigest.lean',logs/'GeneratePackedDigest.lean')
env=dict(os.environ,LEAN_PATH=':'.join(map(str,[p/'.lake/build/lib/lean',*sorted((p/'.lake/packages').glob('*/.lake/build/lib/lean'))])))
check_targets._call(['lean','-j1','--run',str(p/'Core033/GeneratePackedDigest.lean'),str(out)],cwd=p,env=env,log=logs/'generation.txt')
print('Generated actual unchecked packed-digest artifacts; validation still mandatory.')
