"""Emit unchecked artifacts only; full correspondence is checked separately."""
import os,sys,shutil
from pathlib import Path
p=Path('experiments/transition-study033/proofs').resolve();sys.path.insert(0,str(p));import check_targets
out=Path(sys.argv[1]).resolve();out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py');source=p/'Core033/GenerateParentMetadata.lean';shutil.copyfile(source,out/source.name)
env=dict(os.environ,LEAN_PATH=':'.join(map(str,[p/'.lake/build/lib/lean',*sorted((p/'.lake/packages').glob('*/.lake/build/lib/lean'))])))
check_targets._call(['lean','-j1','--run',str(source),str(Path('experiments/transition-study033/generated/parent-metadata-001').resolve())],cwd=p,env=env,log=out/'generation.txt')
print('Generated unchecked derived parent metadata program; no G1 authority.')
