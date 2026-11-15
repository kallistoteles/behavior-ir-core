"""Costs are scoped observations; a diagnostic median is not an SLA percentile."""
import json,sys
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[4]/'experiments/assurance-study034'))
import study
from artifact_io import artifact_ref

def stats(values):
 if any(type(v)is not int or v<0 for v in values):raise ValueError('InvalidTimeObservation')
 ordered=sorted(values);n=len(values)
 return {'raw_ns':list(values),'n_complete':n,'expected_n':3,'median_ns':ordered[n//2]if n%2 else None,'median_ns_reason':'No complete observations'if not n else'Even incomplete count; raw values/range retained'if not n%2 else'Observed diagnostic median, no percentile/SLA claim','min_ns':ordered[0]if n else None,'max_ns':ordered[-1]if n else None}

def a_costs(result):
 samples=result['samples']
 if len(samples)!=3:raise ValueError('IncompleteASeries')
 if any(s['parent']!=samples[0]['parent']or s['endpoint']!=samples[0]['endpoint']for s in samples):raise ValueError('MixedExactParentsOrEndpoints')
 return {'program_check_ns':result['program_check_ns'],'parent_preparation':stats([s['preparation_ns']for s in samples]),'operation':stats([s['operation_ns']for s in samples]),'packet_bytes':[s['packet_bytes']for s in samples if 'packet_bytes'in s],'parent':samples[0]['parent'],'endpoint':samples[0]['endpoint']}

def read_results(manifest):
 root,m,ledger=study._load(manifest);rows=[];refs=[]
 def role(case_id,role_id):
  case=next(c for c in m['profile']['cases']if c['case_id']==case_id);config=next(r for r in case['roles']if r['role_id']==role_id);directory=root/config['output_dir'];result=directory/'result.json'
  if not result.exists():return None,None,None
  r=study._read(result);refs.append(artifact_ref(root,str(result.relative_to(root)),'actual_role_result'))
  if r.get('operational')!='completed'or r.get('expectations_met')is not True:return None,None,r
  receipt=study._read(directory/'command/receipt.json');refs.append(artifact_ref(root,str((directory/'command/receipt.json').relative_to(root)),'actual_receipt'))
  if receipt['exit_code']!=0 or receipt['stop_reason']or not receipt['tree_empty']:raise ValueError('CompletedRoleReceiptMismatch')
  return directory/'product',receipt,r
 for cell in m['profile']['growth']:
  cid=cell['case_id'];out={key:cell[key]for key in ['case_id','P','N','H','D','repetitions']};product,_,status=role(cid,'A-series')
  out['A']=a_costs(study._read(product/'worker-result.json'))if product is not None else{'operation':stats([]),'reason':status or'Not run / missing completed A measurement record'}
  fresh_work=[];fresh_outer=[];basis=[];extension=[];resident_work=[];resident_outer=[]
  for rep in [1,2,3]:
   for rid in [f'B-fresh-{rep}',f'B-resident-{rep}']:
    product,receipt,status=role(cid,rid)
    if product is None:continue
    worker=study._read(product/'worker-result.json');checked=study._read(product/'checked-history.json')
    if rid.startswith('B-fresh'):
     fresh_work.append(worker['work_elapsed_ns_before_summary']);fresh_outer.append(receipt['wall_ns'])
    else:
     basis.append(checked['diagnostics']['basis_establishment_ns']);extension.append(checked['diagnostics']['resident_extension_ns']);resident_work.append(worker['work_elapsed_ns_before_summary']);resident_outer.append(receipt['wall_ns'])
  out['B_fresh']={'native_work_before_final_summary':stats(fresh_work),'whole_supervisor_role':stats(fresh_outer)}
  out['B_resident']={'basis_establishment':stats(basis),'extension':stats(extension),'native_work_before_final_summary':stats(resident_work),'whole_supervisor_role':stats(resident_outer)};rows.append(out)
 cold=[]
 for number in [1,2,3]:
  case='bootstrap'if number==1 else f'certification-cold-{number}'
  for kind in ['certification','verification']:
   product,receipt,status=role(case,f'{kind}-cold-{number}')
   cold.append({'case_id':case,'role_id':f'{kind}-cold-{number}','operational':status['operational']if status else'not_run','whole_role_ns':receipt['wall_ns']if receipt else None,'reason':None if receipt else'Missing completed role'})
 return {'format':'core034.cost-observations.v1','input_manifest':artifact_ref(root,'input-manifest.json','input_manifest'),'input_source_commit':'a6ff8bbf5cec0809281a8e92a9d2a7763bed2b35','shared_predecessor_clock':m['clock'],'rows':rows,'cold_program_pairs':cold,'artifact_refs':refs,'statistics':'Raw observations and diagnostic medians/ranges only; no percentiles or equivalent-guarantee A/B speedup','scope':{'A_operation':'Embedded request construction through actual Core evaluation/memory commit, full response/assurance-sidecar construction and persisted research response; program/parent preparation separate','B_native_work_before_final_summary':'Worker interval including input loading/checks and checked-history persistence; excludes launch and final worker summary completion','B_resident_extension':'Candidate/request reads after genuinely established basis through own Core comparison/commit/expected endpoint confirmation; checked-history output persistence follows this interval','whole_supervisor_role':'Includes research controller readiness, process tracking, filesystem growth scans and post-close work as well as actual process','Q6':'Unestablished: InMemoryBackend; research-file fsync is not durable application publication'},'product_adoption':'unactivated'}

if __name__=='__main__':
 import argparse
 p=argparse.ArgumentParser();p.add_argument('--manifest',type=Path,required=True);p.add_argument('--out',type=Path,required=True);a=p.parse_args();result=read_results(a.manifest);study._write(a.out,result);print(json.dumps({'rows':len(result['rows']),'product_adoption':'unactivated'}))
