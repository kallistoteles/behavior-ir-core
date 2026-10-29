"""One accumulated refusal/remove/reuse correctness control, not a primary sample."""
import json
import os
from pathlib import Path
import shutil
import time
from early_campaign import verify_manifest,write_new,sha
from profile import preflight,run_child,timing_lock,pin_orchestration


def run(manifest_path,output):
    manifest_path=Path(manifest_path).resolve();m=verify_manifest(manifest_path);base=manifest_path.parent
    if m['mode']!='reuse':raise ValueError('control requires frozen independent parameter provenance')
    output=Path(output).resolve();output.mkdir(parents=True,exist_ok=False)
    case=json.loads((base/m['cases'][0]).read_text())
    case['operations']=[{'action':'Create','ids':['e0'],'owner':None},{'action':'Remove','key':{'entity':'E','id':'e0'}},{'action':'Create','ids':['e0'],'owner':None},{'action':'Emit'}]
    write_new(output/'case.json',case)
    for source,destination in [(base/m['binary'],output/'nova_study'),(base/m['parameters']['path'],output/'parameters.bin')]:shutil.copyfile(source,destination)
    (output/'nova_study').chmod(0o755)
    p=m['profile'];preflight(p,output,expected_digest=m['profile_sha256'])
    pin_orchestration(p)
    write_new(output/'manifest.json',{'format':'core032.control-manifest.v1','parent_manifest_sha256':sha(manifest_path),'purpose':'one correctness control; no primary performance claim','profile':p,'files':{f.name:sha(f) for f in [output/'nova_study',output/'case.json',output/'parameters.bin']}})
    extra=[str(output/'parameters.bin'),m['parameters']['sha256'],m['parameters']['identity']]
    env=dict(os.environ,RAYON_NUM_THREADS='1');deadline=time.monotonic()+p['whole_case_timeout_seconds']
    with timing_lock('/data/core028/core032-measure.lock'):
        a=run_child([str(output/'nova_study'),'prove',str(output/'case.json'),str(output/'proof.bin'),str(output/'producer-report'),*extra],output_dir=output/'producer',timeout_seconds=p['proof_timeout_seconds'],address_space_bytes=p['address_space_limit_bytes'],affinity=p['measurement_cpu'],deadline=deadline,env=env)
        print('producer',a,flush=True);b=None
        if a['outcome']=='Succeeded':
            b=run_child([str(output/'nova_study'),'verify',str(output/'case.json'),str(output/'proof.bin'),str(output/'consumer-report'),*extra],output_dir=output/'consumer',timeout_seconds=p['consumer_timeout_seconds'],address_space_bytes=p['address_space_limit_bytes'],affinity=p['measurement_cpu'],deadline=deadline,env=env)
            print('consumer',b,flush=True)
    passed=b is not None and b['outcome']=='Succeeded'
    if passed:
        report=json.loads((output/'consumer-report/report.json').read_text())
        passed=(report['attempts'],report['commits'],report['commands'])==(4,3,6)
    write_new(output/'control.json',{'format':'core032.proof-control.v1','producer':a,'consumer':b,'passed':passed,'expected':{'attempts':4,'commits':3,'commands':6,'reused_id_refused':True}})
    return passed

if __name__=='__main__':
    import argparse
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('--manifest',required=True,type=Path);p.add_argument('--output',required=True,type=Path);a=p.parse_args()
    raise SystemExit(0 if run(a.manifest,a.output) else 2)
