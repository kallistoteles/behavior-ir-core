"""One fixed native process endpoint inside the unchanged bounded supervisor."""
import argparse,json,subprocess,sys,time
from pathlib import Path
CORE=Path(__file__).resolve().parents[4];sys.path.insert(0,str(CORE/'experiments/assurance-study034'))
import study
p=argparse.ArgumentParser();p.add_argument('--manifest',type=Path,required=True);p.add_argument('--case',choices=['growth-D1','growth-D3','growth-D5'],required=True);p.add_argument('--out',type=Path,required=True);a=p.parse_args()
root,m,ledger=study._load(a.manifest);worker=study._worker(root,m);a.out.mkdir(exist_ok=False)
original=root/'growth'/a.case/'B-fresh-1/product/checked-history.json'
if not original.exists():raise ValueError('MissingCompletedPrimaryInput')
prepared=root/'growth'/a.case/'B-fresh-1/prepared-worker.json';packet=root/'growth'/a.case/'A-series/product/rep-1/packet.json'
argv=[str(worker),'check','--prepared',str(prepared),'--case',a.case,'--packet',str(packet),'--out',str(a.out/'product')]
with(a.out/'stdout.txt').open('xb')as stdout,(a.out/'stderr.txt').open('xb')as stderr:
 start=time.monotonic_ns();result=subprocess.run(argv,stdout=stdout,stderr=stderr);elapsed=time.monotonic_ns()-start
if result.returncode!=0:raise ValueError('NativeProcessFailed:'+str(result.returncode))
left=study._read(original);right=study._read(a.out/'product/checked-history.json');left.pop('diagnostics',None);right.pop('diagnostics',None)
if left!=right:raise ValueError('OriginalReportMeaningChanged')
study._write(a.out/'endpoint.json',{'case_id':a.case,'native_spawn_to_exit_ns':elapsed,'argv':argv,'original_report_meaning_equal_excluding_diagnostics':True,'scope':'Actual installed frozen verifier process spawn through exit, including loading, inputs, all checks and result-file completion; research manifest/tool authenticity checks precede this timer and are charged in outer bounded role. Trusted verifier installation is a premise. No subtraction of estimated overhead.','product_adoption':'unactivated'})
print(json.dumps({'case_id':a.case,'native_spawn_to_exit_ns':elapsed,'original_report_meaning_equal':True}))
