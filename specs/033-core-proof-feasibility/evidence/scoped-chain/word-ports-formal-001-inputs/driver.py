"""Fresh kernel audit for actual full-width packing/range/add row schemas.

No allocated full-SHA matrix, embedding, release or G1 claim follows.
"""
import argparse,json,re,shutil,sys
from pathlib import Path
p=Path('experiments/transition-study033/proofs').resolve();sys.path.insert(0,str(p))
import check_targets
parser=argparse.ArgumentParser();parser.add_argument('--out',type=Path,required=True);a=parser.parse_args()
inputs=a.out.resolve().with_name(a.out.name+'-inputs');(inputs/'Core033').mkdir(parents=True,exist_ok=False)
shutil.copyfile(__file__,inputs/'driver.py')
modules={}
for name in ['IR','Bits','R1CS','SHA256','WordPacking','PackedAdd32','WordPorts']:
 source=p/'Core033'/(name+'.lean');shutil.copyfile(source,inputs/'Core033'/source.name)
 names=re.findall(r'^theorem ([A-Za-z_0-9]+)',source.read_text(),re.M)
 modules['Core033.'+name]=['Core033.'+name+'.'+n for n in names]
deps=sorted((p/'.lake/packages').glob('*/.lake/build/lib/lean'))
r=check_targets.check_modules(inputs,modules,a.out,audit_source=p/'Audit.lean',dependency_paths=deps)
print(json.dumps({'outcome':r['outcome'],'targets':len(r['theorems']),'fresh_kernel_replay':r['fresh_kernel_replay'],'allocated_sha_matrix':False,'release_relation_complete':False,'g1_pass':False}))
