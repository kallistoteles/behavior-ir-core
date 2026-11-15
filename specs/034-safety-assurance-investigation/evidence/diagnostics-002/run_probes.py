"""Fixed sequential diagnostic probes; no primary source or observation is edited."""
import argparse,cProfile,hashlib,json,os,pstats,shlex,shutil,subprocess,sys,time
from pathlib import Path
CORE=Path(__file__).resolve().parents[4]
sys.path.insert(0,str(CORE/'experiments/assurance-study034'))
import study
from artifact_io import artifact_ref,verify_ref,write_once
from recorder import Ledger,run

def execute(manifest):
 primary,m,global_budget=study._load(manifest)
 if not(primary/'campaign-run.json').exists():raise ValueError('PrimaryStillRunning')
 root=Path(__file__).resolve().parent/'run-001';root.mkdir(exist_ok=False)
 budget=Ledger(time.monotonic_ns(),study._boot(),600);effective=min([budget,global_budget],key=lambda b:b.remaining_ns(time.monotonic_ns(),study._boot()))
 env={'CARGO_HOME':str(study.HERE/'private/cargo'),'CARGO_TARGET_DIR':str(study.HERE/'private/target'),'CARGO_INCREMENTAL':'0','CARGO_NET_OFFLINE':'true','CARGO_PROFILE_DEV_DEBUG':'0','CARGO_PROFILE_TEST_DEBUG':'0','RUSTFLAGS':'-C target-cpu=x86-64'}
 study._write(root/'input.json',{'primary_manifest':artifact_ref(primary,'input-manifest.json','primary_manifest'),'global_clock':m['clock'],'diagnostic_clock':{'started_ns':budget.started_ns,'boot_id':budget.boot_id},'diagnostic_seconds':600,'cases':['growth-D1','growth-D3','growth-D5'],'product_adoption':'unactivated'})
 sources=study.HERE/'private/phase-002';outcomes=[];meaning=[]
 def command(name,argv,extra=None,wall=300):
  remaining=effective.remaining_ns(time.monotonic_ns(),study._boot())/10**9
  if remaining<=1:
   result={'name':name,'operational':'not_run','reason':'Remaining inherited diagnostic/global budget exhausted'};study._write(root/(name.replace('/','_')+'-not-run.json'),result);outcomes.append(result);return False
  r=run(argv,root/name,wall_seconds=min(wall,remaining),ledger=effective,env={**env,**(extra or{})})
  result={'name':name,'exit_code':r['exit_code'],'stop_reason':r['stop_reason'],'wall_ns':r['wall_ns'],'tree_empty':r['tree_empty'],'operational':'completed'if r['exit_code']==0 and r['stop_reason']is None and r['tree_empty']else'resource_stopped'if r['stop_reason']else'tool_failed'}
  outcomes.append(result);print(json.dumps(result),flush=True);return result['operational']=='completed'
 def build(variant):
  source=sources/variant;dest=root/'source-snapshots'/variant
  for p in [source/'Cargo.toml',source/'Cargo.lock',*sorted((source/'src').glob('*.rs')),*sorted((source/'tests').glob('*.rs')),source/'expected/ld8.json']:
   target=dest/p.relative_to(source);target.parent.mkdir(parents=True,exist_ok=True);write_once(target,p.read_bytes())
  test=[m['tools']['cargo']['path'],'test','--release','--offline','--locked','--manifest-path',str(source/'Cargo.toml'),'--test','independent_consumer']
  compile=[m['tools']['cargo']['path'],'build','--release','--offline','--locked','--manifest-path',str(source/'Cargo.toml'),'--bin','assurance034']
  argv=[m['tools']['nix-shell']['path'],str(CORE/study.ENV_FILES[0]),'--run',shlex.join(test)+' && '+shlex.join(compile)]
  if not command('build-'+variant,argv,wall=600):return None
  path=root/'workers'/variant;path.parent.mkdir(exist_ok=True);write_once(path,(study.HERE/'private/target/release/assurance034').read_bytes());path.chmod(0o555)
  study._write(root/(variant+'-worker.json'),artifact_ref(root,str(path.relative_to(root)),'diagnostic_worker'));return path
 def check(worker,variant,case,role):
  key='B-fresh-1'if role=='fresh'else'B-resident-1';cfg=primary/'growth'/case/key/'prepared-worker.json';old=primary/'growth'/case/key/'product/checked-history.json'
  if not cfg.exists()or not old.exists():return
  packet=primary/'growth'/case/'A-series/product/rep-1'/('packet.json'if role=='fresh'else'candidate.json');dest=root/'reports'/variant/case/role;dest.parent.mkdir(parents=True,exist_ok=True)
  if not command(variant+'/'+case+'/'+role,[str(worker),'check','--prepared',str(cfg),'--case',case,'--packet',str(packet),'--out',str(dest)]):return
  original=study._read(old);observed=study._read(dest/'checked-history.json');left=dict(original);right=dict(observed);left.pop('diagnostics',None);right.pop('diagnostics',None)
  if left!=right:raise ValueError('OriginalCheckedReportMeaningChanged:'+variant+case+role)
  meaning.append({'variant':variant,'case_id':case,'role':role,'original_report_meaning_equal_excluding_diagnostics':True,'diagnostics':observed.get('diagnostics')})
 # Baseline phase source is fully separate from the frozen primary source.
 worker=build('source')
 if worker is not None:
  for case in ['growth-D1','growth-D3','growth-D5']:
   for role in ['fresh','resident']:check(worker,'source',case,role)
  # Public immutable-method micro harness, assertions outside individual timers.
  for case in ['growth-D1','growth-D3']:
   packet=primary/'growth'/case/'A-series/product/rep-1/packet.json';expected=primary/'growth'/case/'reference/product/expected.json'
   if not packet.exists():continue
   source=sources/'source';output=root/('component-'+case+'.json')
   argv=[m['tools']['nix-shell']['path'],str(CORE/study.ENV_FILES[0]),'--run',shlex.join([m['tools']['cargo']['path'],'test','--release','--offline','--locked','--manifest-path',str(source/'Cargo.toml'),'--test','component_profile','--','--nocapture'])]
   command('component-'+case,argv,{'CORE034_COMPONENT_PACKET':str(packet),'CORE034_COMPONENT_EXPECTED':str(expected),'CORE034_COMPONENT_OUT':str(output)})
 for variant in ['cold-capture','retained-capture']:
  worker=build(variant)
  if worker is not None:check(worker,variant,'growth-D3','resident')
 study._write(root/'results.json',{'format':'core034.phase-probes.v1','primary_manifest':artifact_ref(primary,'input-manifest.json','primary_manifest'),'outcomes':outcomes,'original_report_comparisons':meaning,'global_clock':m['clock'],'scope':'Separate diagnostic source/inputs, 600s additional probe budget inside inherited total; no primary sample replacement. Backend-matched cold/retained comparison changes only the private basis construction. No Core library or property check dropped.','product_adoption':'unactivated'})
 return root
if __name__=='__main__':
 p=argparse.ArgumentParser();p.add_argument('--manifest',type=Path,required=True);a=p.parse_args();execute(a.manifest)
