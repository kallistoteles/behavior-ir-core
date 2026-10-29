"""Reproduce bounded checks in a fresh workspace using trusted pinned tools."""
import json
import os
from pathlib import Path
import shutil
from early_campaign import verify_manifest,write_new,sha
from campaign import _read,CampaignError
from package_evidence import pack_file,unpack_file
from profile import preflight,pin_orchestration,run_child,timing_lock

def reproduce(manifest_path,output):
    manifest_path=Path(manifest_path).resolve();base=manifest_path.parent;m=verify_manifest(manifest_path);p=m['profile'];output=Path(output).resolve();output.mkdir(parents=True,exist_ok=False)
    native_index=_read(base/'native/index.json');primary=base/'proofs/c1-h2-first-use';proof_index=_read(primary/'index.json')
    if not proof_index['complete']:raise CampaignError('portable reproduction requires a verified small proof')
    root=output/'fresh-consumer';root.mkdir();packet=output/'packet';packet.mkdir();artifacts=[]
    def copy_pack(source,name):
        copied=packet/name;shutil.copyfile(source,copied);metadata=pack_file(copied,remove_workspace_file=True);metadata['path']=str(copied.with_suffix(copied.suffix+'.gz').relative_to(output));artifacts.append(metadata);return metadata
    row=next(r for r in native_index['records'] if r['candidate']=='A' and r['mode']=='existing' and r['repetition']==0 and r['outcome']=='Succeeded')
    point_index=next(i for i,point in enumerate(m['comparison']['matrix']['native']) if point['case_id']==row['case_id'])
    producer=next(a for a in row['artifacts'] if a['path'].endswith('producer-output.json.gz'))
    unpack_file(base/'native'/producer['path'],producer,root/'native-input.json');shutil.copyfile(base/m['cases'][point_index],root/'native-case.json')
    copy_pack(root/'native-input.json','native-input.json');copy_pack(root/'native-case.json','native-case.json')
    case_index=len(m['comparison']['matrix']['native'])+1
    shutil.copyfile(base/m['cases'][case_index],root/'proof-case.json');shutil.copyfile(primary/'rep0/proof.bin',root/'proof.bin')
    copy_pack(root/'proof-case.json','proof-case.json');copy_pack(root/'proof.bin','proof.bin')
    # All pinned source/lock/recipe inputs remain in the immutable main archive.
    # The consumer executes its trusted frozen tool, never code supplied by a witness.
    write_new(packet/'source-index.json',{'format':'core032.portable-source-index.v1','main_manifest_sha256':sha(manifest_path),'baseline':m['baseline'],'sources':[v for v in m['files'] if v['role']=='source'],'tools':{name:{'path':path,'sha256':sha(base/path)} for name,path in m['comparison']['tools'].items()},'instruction':'Rebuild from the declared baseline and source overlay, or validate the exact expected tool hashes from a trusted manifest; do not execute arbitrary witness code.'})
    preflight(p,output,expected_digest=m['profile_sha256']);pin_orchestration(p);env=dict(os.environ,RAYON_NUM_THREADS='1')
    with timing_lock('/data/core028/core032-measure.lock'):
        native=run_child([str(base/m['binary']),'check',str(root/'native-case.json'),str(root/'native-result.json'),str(root/'native-input.json'),'existing'],output_dir=output/'native-check',timeout_seconds=p['consumer_timeout_seconds'],address_space_bytes=p['address_space_limit_bytes'],affinity=p['measurement_cpu'],env=env)
        # No parameter file is supplied or present here: derive and check afresh.
        proof=run_child([str(base/m['comparison']['tools']['nova']),'verify',str(root/'proof-case.json'),str(root/'proof.bin'),str(root/'proof-result')],output_dir=output/'proof-check',timeout_seconds=p['consumer_timeout_seconds'],address_space_bytes=p['address_space_limit_bytes'],affinity=p['measurement_cpu'],env=env)
    passed=native['outcome']=='Succeeded' and proof['outcome']=='Succeeded'
    result={'format':'core032.portable-index.v1','manifest_sha256':sha(manifest_path),'passed':passed,'native':native,'proof':proof,'artifacts':artifacts,'source_index':'packet/source-index.json','data_availability':'Available for this public deterministic fixture; requires complete retained source/inputs and pinned dependencies','authority':'ExternalAssumption; no physical command dispatch or deployment authorization established'}
    write_new(output/'index.json',result);return result
