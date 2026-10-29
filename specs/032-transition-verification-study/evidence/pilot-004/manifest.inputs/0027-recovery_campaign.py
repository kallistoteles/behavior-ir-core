"""Public consumer, actual proof continuation and cold authoritative recovery."""
import json
import os
from pathlib import Path
import shutil
import time
from early_campaign import verify_manifest,write_new,sha
from campaign import _read,CampaignError
from profile import preflight,run_child,timing_lock,pin_orchestration
from package_evidence import unpack_file

def run(manifest_path,output):
    manifest_path=Path(manifest_path).resolve();base=manifest_path.parent;m=verify_manifest(manifest_path);p=m['profile'];output=Path(output).resolve();output.mkdir(parents=True,exist_ok=False)
    primary=base/'proofs/c1-h2-first-use';index=_read(primary/'index.json')
    if not index['complete']:raise CampaignError('recovery needs an actually verified exact primary proof')
    row=index['records'][0];report_path=primary/row['consumer_report'];report=_read(report_path)
    if sha(report_path)!=row['consumer_report_sha256']:raise CampaignError('verified consumer provenance changed')
    control=output/'control-inputs';control.mkdir();native_count=len(m['comparison']['matrix']['native'])
    for source,destination in [(primary/'rep0/proof.bin',control/'proof.bin'),(report_path.parent/'parameters.bin',control/'parameters.bin'),(report_path,control/'report.json'),(base/m['cases'][native_count+1],control/'case.json')]:shutil.copyfile(source,destination)
    if sha(control/'parameters.bin')!=report['parameter_export']['sha256'] or sha(control/'proof.bin')!=row['proof_sha256']:raise CampaignError('recovery evidence transport changed')
    tools=m['comparison']['tools'];env=dict(os.environ,RAYON_NUM_THREADS='1',CORE032_PROOF_CONTROL=str(control));records=[]
    preflight(p,output,expected_digest=m['profile_sha256'])
    pin_orchestration(p)
    with timing_lock('/data/core028/core032-measure.lock'):
        for name,tool,arguments in [
            ('public-consumer','consumer',['--exact','research032_exact_public_recovery_replay_and_pending_prefix','--nocapture','--test-threads=1']),
            ('proof-consumer-controls','proof_consumer',['--ignored','--exact','proof_consumer_actual_proof_controls','--nocapture','--test-threads=1']),
            ('checkpoint-async','proof_controls',['--ignored','--exact','actual_checkpoint_continuation_rejects_partial_wrong_or_stale_artifacts','--nocapture','--test-threads=1'])]:
            verify_manifest(manifest_path)
            result=run_child([str(base/tools[tool]),*arguments],output_dir=output/name,timeout_seconds=p['consumer_timeout_seconds'],address_space_bytes=p['address_space_limit_bytes'],affinity=p['measurement_cpu'],env=env)
            observations=[]
            if result['outcome']=='Succeeded':
                for line in (output/name/'stdout.txt').read_text().splitlines():
                    for marker in ('CORE032_RECOVERY ','CORE032_ASYNC '):
                        if marker in line:observations.append(json.loads(line.split(marker,1)[1]))
            records.append({'case':name,'result':result,'observations':observations});print(name,result['outcome'],flush=True)
        native_index=_read(base/'native/index.json')
        for n in (128,8192):
            point_index=next(i for i,v in enumerate(m['comparison']['matrix']['native']) if v['coordinates']['N']==n and v['coordinates']['H']==8 and v['coordinates']['padding']==0 and v['coordinates']['query_probes']==0)
            case=base/m['cases'][point_index];case_id=m['comparison']['matrix']['native'][point_index]['case_id']
            native=next(r for r in native_index['records'] if r['case_id']==case_id and r['candidate']=='A' and r['mode']=='existing' and r['repetition']==0)
            if native['outcome']!='Succeeded':
                records.append({'case':f'cold-view-n{n}','result':{'outcome':'NotProduced','reason':'required native anchor unavailable'}});continue
            artifact=next(v for v in native['artifacts'] if v['path'].endswith('producer-output.json.gz'))
            restored=output/f'n{n}-input.json';unpack_file(base/'native'/artifact['path'],artifact,restored)
            destination=output/f'n{n}-recovered.json';start=time.monotonic()
            result=run_child([str(base/m['binary']),'recover',str(case),str(destination),str(restored),'existing'],output_dir=output/f'cold-view-n{n}',timeout_seconds=p['native_timeout_seconds'],address_space_bytes=p['address_space_limit_bytes'],affinity=p['measurement_cpu'],env=env)
            observation=_read(destination) if result['outcome']=='Succeeded' else None
            records.append({'case':f'cold-view-n{n}','result':result,'observation':observation,'whole_seconds':time.monotonic()-start});print(f'cold-view-n{n}',result['outcome'],flush=True)
    passed=all(r['result']['outcome']=='Succeeded' for r in records)
    result={'format':'core032.recovery-index.v1','manifest_sha256':sha(manifest_path),'passed':passed,'records':records,'scope':'public process-exit recovery and bounded actual Nova continuation/async; cold view reconstruction at two N points, no independent recovery scaling claim'}
    write_new(output/'index.json',result);return result
