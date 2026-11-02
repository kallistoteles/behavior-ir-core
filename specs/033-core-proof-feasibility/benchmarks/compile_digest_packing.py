"""Bounded development check, no Checked receipt authority."""
import os,sys,shutil
from pathlib import Path
p=Path('experiments/transition-study033/proofs').resolve();sys.path.insert(0,str(p));import check_targets
out=Path(sys.argv[1]).resolve();out.mkdir(exist_ok=False)
env=dict(os.environ,LEAN_PATH=':'.join(map(str,[p/'.lake/build/lib/lean',*sorted((p/'.lake/packages').glob('*/.lake/build/lib/lean'))])))
for name in ['PackedU64','MatrixBounds','WordSourceValidity','DigestPacking','DigestPackingShape','DigestPackingWitness']:
 source=p/'Core033'/(name+'.lean');shutil.copyfile(source,out/source.name)
 check_targets._call(['lean','-j1','-o',str(p/'.lake/build/lib/lean/Core033'/(name+'.olean')),str(source)],cwd=p,env=env,log=out/(name+'.txt'))
print('Diagnostic full digest public-limb binding compiled; actual artifact/global shape/fresh gates remain.')
