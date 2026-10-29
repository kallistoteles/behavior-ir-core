"""Fresh-process early Nova producer and consumer; no comparative prerequisite."""
import os
from pathlib import Path
import time
from early_campaign import CampaignError,verify_manifest,write_new,sha
from profile import preflight,profile_digest,timing_lock,run_child,pin_orchestration


def run(manifest_path, output):
    manifest_path=Path(manifest_path).resolve();output=Path(output).resolve()
    m=verify_manifest(manifest_path);p=m['profile']
    output.mkdir(parents=True,exist_ok=False)
    preflight(p,output,expected_digest=m['profile_sha256'])
    pin_orchestration(p)
    binary=manifest_path.parent/m['binary'];env=dict(os.environ,RAYON_NUM_THREADS='1')
    records=[]
    with timing_lock('/data/core028/core032-measure.lock'):
        for case_index,case_rel in enumerate(m['cases']):
            case=manifest_path.parent/case_rel
            for repetition in range(m['repetitions']):
                # The manifest is checked before every attempt, including failed groups.
                verify_manifest(manifest_path)
                name=f'case{case_index}-rep{repetition}';directory=output/name;directory.mkdir()
                deadline=time.monotonic()+p['whole_case_timeout_seconds'];proof=directory/'proof.bin'
                extra=[]
                if m['parameters'] is not None:
                    params=m['parameters'];extra=[str(manifest_path.parent/params['path']),params['sha256'],params['identity']]
                producer=run_child([str(binary),'prove',str(case),str(proof),str(directory/'producer-report'),*extra],output_dir=directory/'producer',timeout_seconds=p['proof_timeout_seconds'],address_space_bytes=p['address_space_limit_bytes'],affinity=p['measurement_cpu'],deadline=deadline,env=env)
                row={'case':case_index,'repetition':repetition,'mode':m['mode'],'producer':producer,'consumer':None,'proof':'NotProduced','bridge':'NotClaimed'}
                if producer['outcome']=='Succeeded':
                    consumer=run_child([str(binary),'verify',str(case),str(proof),str(directory/'consumer-report'),*extra],output_dir=directory/'consumer',timeout_seconds=p['consumer_timeout_seconds'],address_space_bytes=p['address_space_limit_bytes'],affinity=p['measurement_cpu'],deadline=deadline,env=env);row['consumer']=consumer
                    if consumer['outcome']=='Succeeded':
                        report=directory/'consumer-report/report.json'
                        row.update(proof='Verified',bridge='Matched',consumer_report=str(report.relative_to(output)),consumer_report_sha256=sha(report),proof_sha256=sha(proof))
                    else:row['proof']=consumer['outcome']
                else:row['proof']=producer['outcome']
                write_new(directory/'attempt.json',row);records.append(row)
                print(f'{name} {m["mode"]}: {row["proof"]}, bridge {row["bridge"]}',flush=True)
    complete=len(records)==len(m['cases'])*m['repetitions'] and all(r['proof']=='Verified' and r['bridge']=='Matched' for r in records)
    index={'format':'core032.early-index.v1','manifest_sha256':sha(manifest_path),'mode':m['mode'],'complete':complete,'records':records}
    write_new(output/'index.json',index)
    return index
