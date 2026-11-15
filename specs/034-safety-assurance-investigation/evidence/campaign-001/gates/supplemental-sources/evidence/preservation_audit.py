"""Supplemental read-only legacy-format preservation audit; never an admission path."""
import hashlib,json,subprocess,sys,tomllib
from decimal import Decimal
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[3]/'experiments/assurance-study034'))
import study
from artifact_io import bounded_read
from validate_report import git_reader
root,m,ledger=study._load(study.FEATURE/'evidence/campaign-001/input-manifest.json')
checked=[]
for binding in m['sources']['protected_manifests']:
 path=study.CORE/binding['path']
 if study._sha(path)!=binding['sha256']:raise ValueError('HistoricalFreezeChanged')
 # Exact byte identity checked first; historical diagnostic decimals stay legacy.
 files=json.loads(bounded_read(path),parse_float=Decimal)['files'];actual=[]
 if not isinstance(files,dict):raise ValueError('LegacyBindingShape')
 for name,digest in files.items():
  if not isinstance(name,str)or not isinstance(digest,str):raise ValueError('LegacyBindingShape')
  target=Path(name)if Path(name).is_absolute()else study.CORE/name
  if study._sha(target)!=digest:raise ValueError('HistoricalBoundInputChanged:'+name)
  actual.append({'path':name,'sha256':digest})
 checked.append({**binding,'actual_checked_bindings':actual})
reader=git_reader(study.CORE);catalog=study._read(root/'inputs/definitions/inputs/source-catalog.json');sources=[]
for source in catalog['sources']:
 raw=reader(source)
 if hashlib.sha256(raw).hexdigest()!=source['sha256']:raise ValueError('PrimarySourceChanged')
 blob=hashlib.sha1(b'blob '+str(len(raw)).encode()+b'\0'+raw).hexdigest()
 if blob!=source['git_blob']:raise ValueError('GitBlobMismatch')
 sources.append({'id':source['id'],'sha256':source['sha256'],'git_blob':blob})
locked=tomllib.loads((study.HERE/'Cargo.lock').read_text());packages={name:[p for p in locked['package']if p['name']==name]for name in ['behavior-engine','behavior-models']}
for name,revision in [('behavior-engine','63a8c164523275e06ac1d7dc5330db4a899c9d99'),('behavior-models','8c0849fb82343ddf5a4dd99b5070ee985f8ebff0')]:
 if len(packages[name])!=1 or not packages[name][0]['source'].endswith('#'+revision):raise ValueError('PublicDependencyChanged')
status=subprocess.check_output(['git','-C',str(study.CORE),'status','--porcelain','--untracked-files=no'],timeout=15).decode()
if any(line[3:]!='specs/034-safety-assurance-investigation/tasks.md'and not line[3:].startswith(('specs/034-safety-assurance-investigation/','experiments/assurance-study034/'))for line in status.splitlines()):raise ValueError('UnexpectedTrackedScope')
unrelated=['specs/033-core-proof-feasibility/evidence/scoped-chain/numeric-cost-preprocessed-export-001/artifacts/'+name for name in ['compression_prover_key.bin','parameters.bin']]
if not all((study.CORE/name).is_file()for name in unrelated):raise ValueError('UnrelatedUntrackedMissing')
result={'format':'core034.preservation.v1','operational':'completed','protected_manifests':checked,'actual_input_binding_count':sum(len(x['actual_checked_bindings'])for x in checked),'pinned_primary_sources':sources,'public_dependencies':packages,'tracked_status':status,'unrelated_untracked_present':unrelated,'scope':'Selected old frozen manifest and 185 bound inputs, exact primary Git objects, exact public dependencies, frozen034 code and owned-file scope. No full old-archive sweep or old-source/output/cache writes. Legacy decimals parsed read-only after exact SHA check; never admitted to new semantic wire.','frozen_helper':'Failed with NonIntegerNumber and is unchanged; this separately recorded audit replaces no original receipt','product_adoption':'unactivated'}
study._write(root/'preservation.json',result);print(json.dumps({'operational':'completed','actual_input_bindings':result['actual_input_binding_count'],'primary_sources':len(sources),'product_adoption':'unactivated'}))
