"""Bounded diagnostic compilation only; never emits a Checked receipt."""
import argparse,os,sys,shutil
from pathlib import Path
p=Path('experiments/transition-study033/proofs').resolve();sys.path.insert(0,str(p))
import check_targets
parser=argparse.ArgumentParser();parser.add_argument('source',type=Path);parser.add_argument('--out',type=Path,required=True);a=parser.parse_args()
out=a.out.resolve();out.mkdir(exist_ok=False);original=a.source.resolve();source=out/'Diagnostic.lean';shutil.copyfile(original,source)
env=dict(os.environ,LEAN_PATH=str(p/'.lake/build/lib/lean'))
check_targets._call(['lean','-j1','-o',str(out/'Diagnostic.olean'),str(source)],cwd=out,env=env,log=out/'kernel.txt')
print('Diagnostic compile passed; audit/fresh replay still required for Checked.')
