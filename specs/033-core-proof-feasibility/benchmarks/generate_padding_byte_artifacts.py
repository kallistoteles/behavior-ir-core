"""Compile the current mathematical padding-byte word program and emit actual files."""
import os,sys,shutil
from pathlib import Path
p=Path('experiments/transition-study033/proofs').resolve();sys.path.insert(0,str(p));import check_targets
out=Path(sys.argv[1]).resolve();out.mkdir(exist_ok=False);generated=Path(sys.argv[2]).resolve()
env=dict(os.environ,LEAN_PATH=':'.join(map(str,[p/'.lake/build/lib/lean',*sorted((p/'.lake/packages').glob('*/.lake/build/lib/lean'))])))
for name in ['PaddingByteProgram']:
 source=p/'Core033'/(name+'.lean');shutil.copyfile(source,out/source.name)
 check_targets._call(['lean','-j1','-o',str(p/'.lake/build/lib/lean/Core033'/(name+'.olean')),str(source)],cwd=p,env=env,log=out/(name+'.txt'))
shutil.copyfile(p/'Core033/GeneratePaddingByte.lean',out/'GeneratePaddingByte.lean')
check_targets._call(['lean','-j1','--run',str(p/'Core033/GeneratePaddingByte.lean'),str(generated)],cwd=p,env=env,log=out/'generation.txt')
print('Actual padding-byte program emitted, unchecked until actual source/matrix proofs.')
