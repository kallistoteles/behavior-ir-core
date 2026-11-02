"""Audit unchanged checked module bytes after local storage deduplication."""
import hashlib,json,time
from pathlib import Path
root=Path('specs/033-core-proof-feasibility/evidence/scoped-chain');seen={};reports=0
for report in root.rglob('report.json'):
 try:r=json.loads(report.read_text())
 except (OSError,ValueError):continue
 if any(part=='closed-value-binding-controls-001' or part.startswith('proof-driver-hygiene') for part in report.relative_to(root).parts[:-1]):continue
 if r.get('outcome')!='Checked' or r.get('fresh_kernel_replay') is not True:continue
 base=report.parent;reports+=1
 pairs=[(base/'compiled'/Path(*name.split('.')).with_suffix('.olean'),entry['olean_sha256']) for name,entry in r['modules'].items()]
 pairs += [(base/'compiled'/relative,entry['sha256']) for relative,entry in r['seeded_modules'].items()]
 for file,expected in pairs:
  st=file.stat();key=(st.st_dev,st.st_ino,st.st_size,st.st_mtime_ns)
  if key not in seen:seen[key]=hashlib.sha256(file.read_bytes()).hexdigest()
  if seen[key]!=expected:raise RuntimeError('checked module bytes changed: '+str(file))
print(json.dumps({'outcome':'UnchangedCheckedModuleBytes','checked_reports':reports,'unique_file_objects':len(seen),'scope':'storage hygiene only, not semantic/runtime authority','g1_pass':False}))
