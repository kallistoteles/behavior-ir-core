"""Diagnostic fixed-width stream-counter refinement; no Checked authority."""
import os,sys,shutil
from pathlib import Path
p=Path('experiments/transition-study033/proofs').resolve();sys.path.insert(0,str(p));import check_targets
out=Path(sys.argv[1]).resolve();out.mkdir(exist_ok=False)
env=dict(os.environ,LEAN_PATH=':'.join(map(str,[p/'.lake/build/lib/lean',*sorted((p/'.lake/packages').glob('*/.lake/build/lib/lean'))])))
for name in ['WideGuards','HashStream','StreamCounters']:
 source=p/'Core033'/(name+'.lean');shutil.copyfile(source,out/source.name)
 check_targets._call(['lean','-j1','-o',str(p/'.lake/build/lib/lean/Core033'/(name+'.olean')),str(source)],cwd=p,env=env,log=out/(name+'.txt'))
print('Diagnostic stream-counter refinement compiled; actual control source/matrix and fresh replay remain.')
