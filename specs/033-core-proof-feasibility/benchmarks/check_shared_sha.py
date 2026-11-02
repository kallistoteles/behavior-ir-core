"""Audit and fresh-replay universal shared SHA proofs, excluding source acceptance."""
import argparse,json,re,sys
from pathlib import Path
p=Path('experiments/transition-study033/proofs').resolve();sys.path.insert(0,str(p))
import check_targets
parser=argparse.ArgumentParser();parser.add_argument('--out',type=Path,required=True);a=parser.parse_args()
modules={}
for name in ['Reference','SHA256','Codec','WordIR','WordSource','WordSourceChunks','WordStage','SHA256Stage','SHA256Schedule','SHA256Compiled']:
 names=re.findall(r'^theorem ([A-Za-z_0-9]+)',(p/'Core033'/(name+'.lean')).read_text(),re.M)
 modules['Core033.'+name]=['Core033.'+name+'.'+n for n in names]
r=check_targets.check_modules(p,modules,a.out,audit_source=p/'Audit.lean')
print(json.dumps({'outcome':r['outcome'],'targets':len(r['theorems']),'fresh_kernel_replay':r['fresh_kernel_replay'],'actual_source_correspondence':False,'release_relation_complete':False,'g1_pass':False}))
