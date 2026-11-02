"""Compile bounded diagnostic numeric quotation; no Checked authority."""
import os,sys
from pathlib import Path
p=Path('experiments/transition-study033/proofs').resolve();sys.path.insert(0,str(p));import check_targets
out=Path(sys.argv[1]).resolve()
paths=[out,p/'.lake/build/lib/lean',*sorted((p/'.lake/packages').glob('*/.lake/build/lib/lean'))]
env=dict(os.environ,LEAN_PATH=':'.join(map(str,paths)))
for name in ['ActualMatrixConstants']+[x.stem for x in sorted(out.glob('ActualMatrixData*.lean'))]+['Compare']:
 check_targets._call(['lean','-j1','-o',str(out/(name+'.olean')),str(out/(name+'.lean'))],cwd=out,env=env,log=out/(name+'.txt'))
print('Diagnostic actual-numeric row comparison passed; no audit/fresh receipt.')
