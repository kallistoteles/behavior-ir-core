"""Create-once index of the follow-up evidence; no existing archive is rewritten."""
import hashlib,json
from pathlib import Path
HERE=Path(__file__).resolve().parent;FEATURE=HERE.parents[1]
paths=['measurement-002.md','measurement-002.json','cost-diagnosis-002.md','inputs/measurement-002-sources.json','inputs/measurement-002-primary-sources','evidence/preflight-002','evidence/preflight-003','evidence/campaign-002','evidence/campaign-003','evidence/analysis-002','evidence/diagnostics-002','evidence/final-002']
files=[]
for name in paths:
 p=FEATURE/name
 for f in sorted(p.rglob('*'))if p.is_dir()else[p]:
  if not f.is_file()or '__pycache__'in f.parts or f.suffix=='.pyc'or f==HERE/'closed-artifacts.json':continue
  data=f.read_bytes();files.append({'path':str(f.relative_to(FEATURE)),'bytes':len(data),'sha256':hashlib.sha256(data).hexdigest()})
assert len(files)==len({f['path']for f in files})
with (HERE/'closed-artifacts.json').open('x')as f:json.dump({'format':'core034.followup-closed.v1','base_source_commit':'a6ff8bbf5cec0809281a8e92a9d2a7763bed2b35','artifact_base':'specs/034-safety-assurance-investigation','files':files,'scope':'Exact retained follow-up bytes. Derived hashes are integrity bindings, not semantic certificates. Main campaign002/003 indexes remain unchanged; excluded diagnostics remain archived.','product_adoption':'unactivated'},f,indent=2);f.write('\n')
print(json.dumps({'closed_files':len(files),'bytes':sum(f['bytes']for f in files)}))
