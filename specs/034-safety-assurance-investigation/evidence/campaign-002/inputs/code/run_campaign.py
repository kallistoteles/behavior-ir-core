"""Sequential execution of the frozen case registry; no retries or input edits."""
import argparse,json,time
from pathlib import Path
import study

def execute(manifest):
 root,m,ledger=study._load(manifest)
 log=root/'supervisor';log.mkdir(exist_ok=False)
 outcomes=[]
 for case in m['profile']['cases']:
  name=case['case_id'];start=time.monotonic_ns()
  try:
   actual=study.run_case(manifest,name)
   summary={k:actual.get(k)for k in ['case_id','exit_code','operational','expectations_met','blocking_role']}
  except Exception as error:
   summary={'case_id':name,'exit_code':2,'operational':'not_run','expectations_met':False,'reason':str(error)}
  summary['controller_elapsed_ns']=time.monotonic_ns()-start
  summary['remaining_campaign_ns']=ledger.remaining_ns(time.monotonic_ns(),study._boot())
  summary['product_adoption']='unactivated'
  study._write(log/(name+'.json'),summary);outcomes.append(summary)
  print(json.dumps(summary),flush=True)
 result={'format':'core034.campaign-execution.v1','campaign_id':m['campaign_id'],'outcomes':outcomes,'all_frozen_expectations_met':all(x.get('expectations_met')for x in outcomes),'scope':'Actual bounded frozen cases, each at most once. Matched intentional interruption/exhaustion does not establish assurance. All original failures and not-run tails retained. No new C prover.','product_adoption':'unactivated'}
 study._write(root/'campaign-run.json',result)
 return result
if __name__=='__main__':
 p=argparse.ArgumentParser();p.add_argument('--manifest',type=Path,required=True);a=p.parse_args();execute(a.manifest)
