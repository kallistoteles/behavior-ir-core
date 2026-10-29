"""Frozen capacity and primary first-use/reuse groups, retaining every outcome."""
import os
from pathlib import Path
import time
from early_campaign import verify_manifest,write_new,sha,freeze
from profile import preflight,run_child,timing_lock,pin_orchestration
from campaign import CampaignError,_read
from artifacts import same_json

def run_proofs(manifest_path,output):
    manifest_path=Path(manifest_path).resolve();output=Path(output).resolve();m=verify_manifest(manifest_path)
    if m['format']!='core032.comparative-manifest.v1':raise CampaignError('comparative manifest required')
    output.mkdir(parents=True,exist_ok=False);base=manifest_path.parent;p=m['profile'];matrix=m['comparison']['matrix'];binary=base/m['comparison']['tools']['nova'];records=[];primary_index=None;primary_case=None
    env=dict(os.environ,RAYON_NUM_THREADS='1');offset=len(matrix['native'])
    preflight(p,output,expected_digest=m['profile_sha256']);pin_orchestration(p)
    with timing_lock('/data/core028/core032-measure.lock'):
        for index,point in enumerate(matrix['proofs']):
            case=base/m['cases'][offset+index];group=output/(point['case_id']+'-first-use');group.mkdir();rows=[]
            repetitions=matrix['proof_primary_repetitions'] if point['primary'] else matrix['proof_capacity_repetitions']
            # The main frozen manifest fixes this group's first-use recipe before timing.
            write_new(group/'input.json',{'format':'core032.proof-group.v1','manifest_sha256':sha(manifest_path),'case_sha256':sha(case),'mode':'first-use','repetitions':repetitions,'parameters_input':None})
            for repetition in range(repetitions):
                verify_manifest(manifest_path);preflight(p,group,expected_digest=m['profile_sha256']);directory=group/f'rep{repetition}';directory.mkdir();proof=directory/'proof.bin';start=time.monotonic();deadline=start+p['whole_case_timeout_seconds']
                producer=run_child([str(binary),'prove',str(case),str(proof),str(directory/'producer-report')],output_dir=directory/'producer',timeout_seconds=p['proof_timeout_seconds'],address_space_bytes=p['address_space_limit_bytes'],affinity=p['measurement_cpu'],deadline=deadline,env=env)
                row={'case_id':point['case_id'],'case':0,'repetition':repetition,'mode':'first-use','producer':producer,'consumer':None,'proof':'NotProduced','bridge':'NotClaimed'}
                if producer['outcome']=='Succeeded':
                    consumer=run_child([str(binary),'verify',str(case),str(proof),str(directory/'consumer-report')],output_dir=directory/'consumer',timeout_seconds=p['consumer_timeout_seconds'],address_space_bytes=p['address_space_limit_bytes'],affinity=p['measurement_cpu'],deadline=deadline,env=env);row['consumer']=consumer
                    if consumer['outcome']=='Succeeded':
                        report_path=directory/'consumer-report/report.json';report=_read(report_path);produced=_read(directory/'producer-report/report.json')
                        if report['status']!='Verified' or not same_json(report['claim'],produced['claim']) or report['parameters']!=produced['parameters']:raise CampaignError('proof producer/independent expected-Core claim mismatch')
                        row.update(proof='Verified',bridge='Matched',consumer_report=str(report_path.relative_to(group)),consumer_report_sha256=sha(report_path),proof_sha256=sha(proof),semantic_claim=report['claim'],attempts=report['attempts'],commits=report['commits'],microsteps=report['microsteps'],command_occurrences=report['commands'])
                    else:row['proof']=consumer['outcome']
                else:row['proof']=producer['outcome']
                row['whole_seconds']=time.monotonic()-start;write_new(directory/'attempt.json',row);rows.append(row);records.append(dict(row,group=group.name))
                print(point['case_id'],'first-use',repetition,row['proof'],row['bridge'],round(row['whole_seconds'],3),flush=True)
            complete=len(rows)==repetitions and all(row['proof']=='Verified' and row['bridge']=='Matched' for row in rows)
            group_index={'format':'core032.early-index.v1','manifest_sha256':sha(manifest_path),'mode':'first-use','complete':complete,'records':rows}
            write_new(group/'index.json',group_index)
            if point['primary']:
                primary_index=group/'index.json';primary_case=case
    # Reuse is independently frozen only after the actual fresh consumer artifacts exist.
    reuse=None
    if primary_index is not None and _read(primary_index)['complete']:
        source_files=[base/row['path'] for row in m['files'] if row['role']=='source']+[manifest_path]
        reuse_manifest=output/'primary-reuse.json'
        freeze(reuse_manifest,binary=binary,cases=[primary_case],sources=source_files,mode='reuse',parameters_from=primary_index)
        from proof_smoke import run
        reuse=run(reuse_manifest,output/'primary-reuse-runs')
    result={'format':'core032.proof-capacity-index.v1','manifest_sha256':sha(manifest_path),'capacity_attempts_complete':len(records)==sum(matrix['proof_primary_repetitions'] if q['primary'] else matrix['proof_capacity_repetitions'] for q in matrix['proofs']),'records':records,'primary_first_use':str(primary_index.relative_to(output)) if primary_index else None,'primary_reuse':'primary-reuse-runs/index.json' if reuse else None,'primary_passed':primary_index is not None and _read(primary_index)['complete'] and reuse is not None and reuse['complete']}
    write_new(output/'index.json',result);return result
