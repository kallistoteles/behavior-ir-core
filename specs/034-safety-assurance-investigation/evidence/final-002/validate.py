"""Read-only independent byte/accounting checks; not an assurance verifier or benchmark."""
import hashlib,json,subprocess,sys,time
from pathlib import Path
from decimal import Decimal
HERE=Path(__file__).resolve().parent;FEATURE=HERE.parents[1];CORE=FEATURE.parents[1]
sys.path.insert(0,str(FEATURE/'evidence/analysis-002'))
import reader
from validate_report import git_reader

def read(p):return json.loads(p.read_text())
def digest(p):
 h=hashlib.sha256()
 with p.open('rb')as f:
  for chunk in iter(lambda:f.read(1024*1024),b''):h.update(chunk)
 return h.hexdigest()
def verify(root,ref):
 p=root/ref['path'];assert p.is_file(),p
 if 'bytes'in ref:assert p.stat().st_size==ref['bytes'],p
 assert digest(p)==ref['sha256'],p
 return p

def validate():
 started=time.monotonic_ns();manifest=FEATURE/'evidence/campaign-003/input-manifest.json';m=read(manifest)
 assert time.monotonic_ns()-m['clock']['started_ns']<7200*10**9,'Inherited global budget exhausted'
 closed=[]
 for name in ['campaign-002','campaign-003']:
  root=FEATURE/'evidence'/name;index=read(root/'closed-artifacts.json');files=index['files']
  for f in files:verify(root,f)
  actual={str(p.relative_to(root))for p in root.rglob('*')if p.is_file()and p.name!='closed-artifacts.json'}
  assert actual=={f['path']for f in files},name
  closed.append({'campaign':name,'files':len(files),'closed_index_sha256':digest(root/'closed-artifacts.json')})
 outcomes=read(manifest.parent/'campaign-run.json')['outcomes'];assert len(outcomes)==12
 assert all(o['operational']=='completed'and o['expectations_met']is True for o in outcomes)
 # A separate pass recomputes medians/ranges directly from raw worker files.
 costs=read(FEATURE/'measurement-002.json');assert costs==reader.read_results(manifest)
 for row in costs['rows']:
  raw=read(manifest.parent/f"growth/{row['case_id']}/A-series/product/worker-result.json")
  vals=[s['operation_ns']for s in raw['samples']];assert len(vals)==3
  assert row['A']['operation']['raw_ns']==vals and row['A']['operation']['median_ns']==sorted(vals)[1]
  for kind,role,field in [('B_fresh','B-fresh','work_elapsed_ns_before_summary'),('B_resident','B-resident','resident_extension_ns')]:
   actual=[]
   for i in [1,2,3]:
    product=manifest.parent/f"growth/{row['case_id']}/{role}-{i}/product"
    actual.append(read(product/('worker-result.json'if kind=='B_fresh'else'checked-history.json'))[field]if kind=='B_fresh'else read(product/'checked-history.json')['diagnostics'][field])
   stat=row[kind]['native_work_before_final_summary'if kind=='B_fresh'else'extension']
   assert stat['raw_ns']==actual and stat['median_ns']==sorted(actual)[1]
 # Exact supplemental source bytes and Git objects.
 sources=[]
 for s in read(FEATURE/'inputs/measurement-002-sources.json')['sources']:
  raw=git_reader(CORE)(s)
  assert raw==(FEATURE/s['copy']).read_bytes()
  assert hashlib.sha256(raw).hexdigest()==s['sha256']
  assert hashlib.sha1(b'blob '+str(len(raw)).encode()+b'\0'+raw).hexdigest()==s['git_blob'];sources.append(s['id'])
 # Selected old protected input manifests and their actual bound bytes.
 protected=[]
 for binding in m['sources']['protected_manifests']:
  p=verify(CORE,binding);values=json.loads(p.read_text(),parse_float=Decimal)['files'];n=0
  for name,sha in values.items():
   target=Path(name)if Path(name).is_absolute()else CORE/name
   assert digest(target)==sha,(name,sha);n+=1
  protected.append({'path':binding['path'],'bindings':n})
 # Existing research outputs/source copies were not edited; selected old publication trees remain exact.
 old_paths=['specs/034-safety-assurance-investigation/evidence/campaign-001','specs/034-safety-assurance-investigation/evidence/development','specs/034-safety-assurance-investigation/comparison.md','specs/034-safety-assurance-investigation/decision.md']
 assert subprocess.check_output(['git','-C',str(CORE),'diff','769f6d104143b133b64a394e4ad2e9370cbc5adb','--',*old_paths])==b''
 for name in ['compression_prover_key.bin','parameters.bin']:
  assert (CORE/'specs/033-core-proof-feasibility/evidence/scoped-chain/numeric-cost-preprocessed-export-001/artifacts'/name).is_file()
 dispositions=read(FEATURE/'evidence/diagnostics-002/validity.json');assert len(dispositions['accepted_phase_observations'])==6
 assert dispositions['cache_controls']['status']=='treatment_unestablished'
 results=read(FEATURE/'evidence/diagnostics-002/run-001/results.json')
 for entry in results['original_report_comparisons']:
  if entry['variant']!='source':continue
  cid,role=entry['case_id'],entry['role'];base=read(manifest.parent/f"growth/{cid}/B-{'fresh'if role=='fresh'else'resident'}-1/product/checked-history.json")
  observed=read(FEATURE/f'evidence/diagnostics-002/run-001/reports/source/{cid}/{role}/checked-history.json')
  base.pop('diagnostics',None);observed.pop('diagnostics',None);assert base==observed
 receipts=[]
 for p in manifest.parent.rglob('receipt.json'):
  receipt=read(p)
  if 'tree_empty'in receipt:assert receipt['tree_empty']is True,p;receipts.append(str(p.relative_to(manifest.parent)))
 assert len(receipts)>50
 assert 'Ran 59 tests'in (HERE/'python-tests.txt').read_text()and (HERE/'python-tests.txt').read_text().rstrip().endswith('OK')
 return {'format':'core034.followup-validation.v1','operational':'completed','closed_archives':closed,'cases_checked':len(outcomes),'growth_cells_checked':len(costs['rows']),'completed_triplicate_costs_recomputed':True,'accepted_phase_report_meaning_checks':6,'supplemental_git_source_copies':sources,'protected_historic_inputs':protected,'actual_historic_bindings':sum(v['bindings']for v in protected),'primary_closed_process_receipts_checked':len(receipts),'full_python_tests':59,'reader_unit_tests':5,'phase_report_test':1,'scopes':'Read-only SHA/source/preservation/result/accounting checks. No new semantic proof, p95, durability, production adoption or validation of excluded diagnostics. Historical check covers selected protected inputs and Git diff, not a fresh rehash of every old archive.','started_monotonic_ns':started,'finished_monotonic_ns':time.monotonic_ns(),'inherited_clock':m['clock'],'product_adoption':'unactivated'}

if __name__=='__main__':
 result=validate()
 with (HERE/'validation.json').open('x')as f:json.dump(result,f,indent=2);f.write('\n')
 print(json.dumps(result))
