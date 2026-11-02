"""Development compile and unchecked literal artifact generation only."""
import os,sys,shutil
from pathlib import Path
p=Path('experiments/transition-study033/proofs').resolve();sys.path.insert(0,str(p));import check_targets
out=Path(sys.argv[1]).resolve();out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py')
env=dict(os.environ,LEAN_PATH=':'.join(map(str,[p/'.lake/build/lib/lean',*sorted((p/'.lake/packages').glob('*/.lake/build/lib/lean'))])))
source=p/'Core033/IntegerIngress.lean';shutil.copyfile(source,out/source.name)
check_targets._call(['lean','-j1','-o',str(p/'.lake/build/lib/lean/Core033/IntegerIngress.olean'),str(source)],cwd=p,env=env,log=out/'development.txt')
generator=p/'Core033/GenerateIntegerIngress.lean';shutil.copyfile(generator,out/generator.name)
check_targets._call(['lean','-j1','--run',str(generator),str(Path('experiments/transition-study033/generated/integer-ingress-001').resolve())],cwd=p,env=env,log=out/'generation.txt')
print('Generated unchecked full-width LE byte-ingress source and matrix; no G1 authority.')
