"""Separate native process endpoint and profile the unchanged research recorder."""
import argparse,cProfile,json,pstats,sys,time
from pathlib import Path
CORE=Path(__file__).resolve().parents[4];sys.path.insert(0,str(CORE/'experiments/assurance-study034'))
import study
from artifact_io import artifact_ref
from recorder import Ledger,run
p=argparse.ArgumentParser();p.add_argument('--manifest',type=Path,required=True);a=p.parse_args()
primary,m,global_budget=study._load(a.manifest);base=Path(__file__).resolve().parent/'run-001';setup=study._read(base/'input.json');c=setup['diagnostic_clock'];local=Ledger(c['started_ns'],c['boot_id'],600);effective=min([local,global_budget],key=lambda b:b.remaining_ns(time.monotonic_ns(),study._boot()))
results=[]
def remaining():return effective.remaining_ns(time.monotonic_ns(),study._boot())/10**9
for case in ['growth-D1','growth-D3','growth-D5']:
 if remaining()<=1:
  results.append({'case_id':case,'operational':'not_run','reason':'Shared diagnostic budget exhausted'});continue
 out=base/('direct-'+case);argv=[m['tools']['python']['path'],str(Path(__file__).parent/'direct_process.py'),'--manifest',str(a.manifest.resolve()),'--case',case,'--out',str(out)]
 receipt=run(argv,base/('direct-'+case+'-command'),wall_seconds=min(300,remaining()),ledger=effective)
 results.append({'case_id':case,'operational':'completed'if receipt['exit_code']==0 and not receipt['stop_reason']else'tool_failed','exit_code':receipt['exit_code'],'stop_reason':receipt['stop_reason'],'endpoint':study._read(out/'endpoint.json')if(out/'endpoint.json').exists()else None});print(json.dumps(results[-1]),flush=True)
if remaining()>1:
 directory=base/'controller-profile';directory.mkdir();study._write(directory/'input.json',{'format':'core034.worker-input.v1','commands':False,'role':'inspect'});worker=study._worker(primary,m)
 profiler=cProfile.Profile();profiler.enable()
 receipt=run([str(worker),'prepare','--input',str(directory/'input.json'),'--out',str(directory/'product')],directory/'command',wall_seconds=min(60,remaining()),ledger=effective)
 profiler.disable();profiler.dump_stats(str(directory/'profile.pstats'))
 rows=[]
 for (filename,line,name),(primitive,total,exclusive,cumulative,callers)in pstats.Stats(profiler).stats.items():
  rows.append({'file':filename,'line':line,'function':name,'primitive_calls':primitive,'calls':total,'exclusive_ns_approx':int(exclusive*10**9),'cumulative_ns_approx':int(cumulative*10**9)})
 rows.sort(key=lambda x:x['cumulative_ns_approx'],reverse=True)
 subject=study._read(directory/'product/subject.json');expected=study._read(primary/'roles/primary-oracle/product/subject.json')
 if subject!=expected:raise ValueError('InspectSubjectChanged')
 study._write(directory/'result.json',{'scope':'cProfile of unchanged recorder around immutable native subject inspection; instrumented Python wall/call attribution, no Core transition or product latency. Do not add cumulative nested times or subtract a constant from primary observations.','receipt':artifact_ref(directory,'command/receipt.json'),'profile_rows':rows,'subject_equal':True,'product_adoption':'unactivated'})
study._write(base/'process-results.json',{'scope':'Additional endpoints and controller diagnostic within SAME 600s probe clock and inherited global clock; original primary rows unchanged','results':results,'product_adoption':'unactivated'})
