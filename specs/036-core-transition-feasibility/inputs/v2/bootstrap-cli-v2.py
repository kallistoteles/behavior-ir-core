"""Predeclare and snapshot each bootstrap test before the reviewed launch."""
import datetime
import hashlib
import importlib.util
import json
import re
import shutil
import sys
from pathlib import Path
sys.dont_write_bytecode=True
R=Path('/data/repos/behavior-ir-core-033');E=R/'experiments/transition-study036';F=R/'specs/036-core-transition-feasibility'
P=Path('/var/tmp/behavior-ir-core036-v2/w001')
name=sys.argv[1];command=sys.argv[2:];pattern="cli"
if re.fullmatch(r'[a-z0-9][a-z0-9-]{0,80}',name) is None or not command or command[0] not in {'init','freeze','declare','run','resume','status'}:
    raise ValueError('BootstrapArgument')
base=F/'inputs/v2/bootstrap-runs'/name;base.mkdir(parents=True,exist_ok=False)
def put(path,value):
    path.parent.mkdir(parents=True,exist_ok=True)
    raw=value if isinstance(value,bytes) else (json.dumps(value,indent=2,ensure_ascii=False)+'\n').encode()
    with path.open('xb') as f:f.write(raw)
def ref(path,root=R,root_id='repository'):
    raw=path.read_bytes();return {'root_id':root_id,'path':str(path.relative_to(root)),'bytes':len(raw),'sha256':hashlib.sha256(raw).hexdigest()}
files=sorted(E.glob('*.py'))+sorted(E.glob('*.json'))+sorted((E/'tests/v2').glob('*.py'))+sorted((E/'profiles/v2').glob('*.json'))+[Path(__file__),R/'experiments/reuse-study035/recorder.py']
inputs=[]
for source in files:
    target=base/'sources'/source.relative_to(R);put(target,source.read_bytes());inputs.append({'logical_path':str(source.relative_to(R)),'snapshot':ref(target)})
specification=ref(F/'spec.md')
common={'work_id':'w001','specification_ref':specification,'outcome':{'operational':'declared','acceptance':'blocked'},'reason':'bootstrap controller development only; no semantic authority','blocking_ref':specification,'product_adoption':'unactivated'}
index={**common,'format':'core036.source.v2','record_id':name+'-source','inputs':[x['snapshot'] for x in inputs],'files':inputs}
put(base/'source-index.json',index)
profile=E/'profiles/v2/work.json';tools=json.loads((E/'toolchain.json').read_text())['tools'];python=Path(tools['python']['path'])
if hashlib.sha256(python.read_bytes()).hexdigest()!=tools['python']['sha256']:raise ValueError('PinnedPythonBytes')
argv=[str(python),str(E/'study.py'),*command]
put(base/'declaration.json',{**common,'format':'core036.attempt.v2','record_id':name,'source_subject_ref':ref(base/'source-index.json'),'inputs':[ref(base/'source-index.json'),ref(profile)],'stage':'ENV','scope':'stricter-reviewed-bootstrap-development','argv':argv,'wall_seconds':60,'output':str(P/'bootstrap'/name),'declared_at':datetime.datetime.now(datetime.timezone.utc).isoformat()})
spec=importlib.util.spec_from_file_location('reviewed035',R/'experiments/reuse-study035/recorder.py');reviewed=importlib.util.module_from_spec(spec);spec.loader.exec_module(reviewed)
def growth():
    return {'artifacts':reviewed._footprint(P/'bootstrap'),'cache':sum(source.stat().st_size for source in files),'temporary':reviewed._footprint(P/'tmp')}
record=reviewed.run(argv,P/'bootstrap'/name,60,free_bytes=lambda:shutil.disk_usage(P).free,growth_bytes=growth,env={'PYTHONPATH':str(E),'PYTHONDONTWRITEBYTECODE':'1','TMPDIR':str(P/'tmp')})
for entry in inputs:
    actual=(R/entry['logical_path']).read_bytes()
    if hashlib.sha256(actual).hexdigest()!=entry['snapshot']['sha256']:raise ValueError('SourceChangedDuringBootstrapRun')
out=F/'evidence/v2/w001/development'/name;out.mkdir(exist_ok=False)
for filename in ['receipt.json','stdout.txt','stderr.txt']:put(out/filename,(P/'bootstrap'/name/filename).read_bytes())
put(base/'result.json',{**common,'format':'core036.event.v2','record_id':name+'-result','source_subject_ref':ref(base/'source-index.json'),'inputs':[ref(base/'declaration.json'),ref(out/'receipt.json')],'actual_exit':record['exit_code'],'stop_reason':record['stop_reason'],'all_source_bytes_equal_after':True,'tree_empty':record['tree_empty'],'group_empty':record['group_empty']})
print(json.dumps({k:record[k] for k in ['exit_code','stop_reason','tree_empty','group_empty']}))
print((out/'stderr.txt').read_text()[-4000:])
print((out/'stdout.txt').read_text()[-2000:])
