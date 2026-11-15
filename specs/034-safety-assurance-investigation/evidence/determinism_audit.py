"""Quality-only replay of the frozen native LD8 oracle, not a campaign role retry."""
import json,sys
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[3]/'experiments/assurance-study034'))
import study
from recorder import run
from artifact_io import artifact_ref,verify_ref,semantic_digest
root,m,ledger=study._load(study.FEATURE/'evidence/campaign-001/input-manifest.json')
retention=study._read(root/'gates/cache-maintenance.json')
ref=next(x['retained']for x in retention['retained_executed_binaries']if x['retained']['path'].endswith('/assurance034'));verify_ref(root,ref);worker=root/ref['path'];values=[];attempts=[]
for i in [1,2]:
 directory=root/'gates/semantic-replay'/str(i);directory.mkdir(parents=True)
 study._write(directory/'input.json',{'format':'core034.worker-input.v1','commands':False,'role':'oracle'})
 receipt=run([str(worker),'prepare','--input',str(directory/'input.json'),'--out',str(directory/'product')],directory/'command',wall_seconds=300,ledger=ledger)
 attempts.append({'exit_code':receipt['exit_code'],'stop_reason':receipt['stop_reason'],'receipt':artifact_ref(root,str((directory/'command/receipt.json').relative_to(root)))})
 if receipt['exit_code']==0 and receipt['stop_reason']is None:values.append(study._read(directory/'product/oracle.json'))
research_equal=len(values)==2 and semantic_digest(values[0])==semantic_digest(values[1])
native_equal=len(values)==2 and values[0]['attempts']==values[1]['attempts']and values[0]['origin']==values[1]['origin']and values[0]['endpoint']==values[1]['endpoint']
expected=study._read(root/m['expected']['LD8']['path'])
authored=len(values)==2 and all(v['committed_steps']==expected['committed_steps']and len(v['attempts'])==len(expected['attempts'])for v in values)
result={'format':'core034.determinism-quality.v1','operational':'completed'if research_equal and native_equal and authored else'tool_failed','research_canonical_semantics_equal':research_equal,'original_native_invocations_and_full_history_coordinates_equal':native_equal,'authored_attempt_commit_counts_match':authored,'research_digests':[semantic_digest(v)for v in values],'attempts':attempts,'worker':ref,'scope':'Two identical-input twelve-attempt/eight-commit LD8 semantic oracle runs from byte-retained quality-gate build of unchanged frozen source. Diagnostic times/resources excluded from research digest. Full original invocations/records/history values compared separately, without replacing their Core IDs. No certificate, prepared manifest, campaign case or architecture-performance result created.','original_helper':'determinism.json remains not_run because bootstrap failed; this additional quality-only slot does not overwrite it','product_adoption':'unactivated'}
study._write(root/'gates/determinism-semantic-replay.json',result);print(json.dumps({'operational':result['operational'],'research_equal':research_equal,'native_equal':native_equal}));sys.exit(0 if result['operational']=='completed'else 1)
