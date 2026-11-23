"""Predeclare and snapshot each bootstrap test before the reviewed launch."""
import datetime
import hashlib
import importlib.util
import json
import re
import shutil
import sys
from pathlib import Path
sys.dont_write_bytecode=True
R=Path('/data/repos/behavior-ir-core-033');E=R/'experiments/transition-study036';F=R/'specs/036-core-transition-feasibility'
P=Path('/var/tmp/behavior-ir-core036-v2/w001')
FUTURE=Path('/var/tmp/behavior-ir-core036-evidence-v2/w001')
if shutil.disk_usage('/data').free < 4*1024**3+16*1024**2 or shutil.disk_usage('/var/tmp').free < 8*1024**3+16*1024**2: raise ValueError('BootstrapLiveFloor')
if not (FUTURE/'registration.json').is_file():raise ValueError('FutureRootMissing')
name=sys.argv[1];pattern=sys.argv[2] if len(sys.argv)>2 else 'test_*.py'
if re.fullmatch(r'[a-z0-9][a-z0-9-]{0,80}',name) is None or '/' in pattern or '\\' in pattern:
    raise ValueError('BootstrapArgument')
if pattern not in {'test_artifact_store*.py','test_campaign*.py','test_ledger_reference_work.py','test_artifact_registration.py','test_artifact_controller.py','test_artifact_snapshot.py','test_frozen_source_reuse.py','test_metadata_footprint.py','test_artifact_recorder.py','test_artifact_allocation.py','test_campaign_receipt_admission.py','test_proof_cache_retention*.py','test_native_json_map_refinement.py','test_native_completion_capacity.py','test_continued_capacity.py','test_native_compile_binding.py','test_build_inputs.py','test_storage_observer.py','test_native_followup_capacity.py','test_native_compiled_context.py','test_extraction_support.py','test_json_source_support.py','test_lifecycle_costs.py','test_session_resources.py','test_native_session_resources.py','test_core_instrumentation_rebalance.py','test_native_cache_evidence_rebalance.py','test_core_span_export.py','test_native_source_revision.py','test_actual_native_source_revision.py'}:raise ValueError('OnlyRecordedSourceUnitControlsAllowed')
baseline_cp=FUTURE/'attempts/a0477/checkpoint.json'
baseline_receipt=FUTURE/'attempts/a0477/child/receipt.json'
checkpoint=json.loads(baseline_cp.read_text());baseline=json.loads(baseline_receipt.read_text())
if (checkpoint['outcome']['operational']!='closed' or checkpoint['source_validation_error'] is not None
    or baseline['source_subject_ref']!=checkpoint['source_subject_ref']
    or baseline['stop_reason'] is not None or not baseline['tree_empty'] or not baseline['group_empty']):
    raise ValueError('GuardBaselineNotClosed')
temporary_baseline=baseline['final_resource_observation']['growth_apparent_unique_inode_bytes']['temporary']
import hashlib as _h
_retained=P/'native-cache-retention/a9478/result.json'
_archive_info=json.loads(_retained.read_text())['archive_ref']
_archive=P/_archive_info['path']
if _archive_info['root_id']!='private' or _archive_info['path']!='tmp/proof-cache-retention/a9478/compiled-caches.tar.gz' or _archive.stat().st_size!=_archive_info['bytes'] or _h.sha256(_archive.read_bytes()).hexdigest()!=_archive_info['sha256']:raise ValueError('RecoveryTemporaryArchiveBinding')
temporary_baseline+=_archive_info['bytes']
_retained_extra=P/'native-cache-retention/a9479/result.json'
_archive_extra=json.loads(_retained_extra.read_text())['archive_ref']
_extra=P/_archive_extra['path']
if _archive_extra['root_id']!='private' or _archive_extra['path']!='tmp/proof-cache-retention/a9479/compiled-caches.tar.gz' or _extra.stat().st_size!=_archive_extra['bytes'] or _h.sha256(_extra.read_bytes()).hexdigest()!=_archive_extra['sha256']:raise ValueError('ResidualTemporaryArchiveBinding')
temporary_baseline+=_archive_extra['bytes']
if type(temporary_baseline) is not int or not 0<=temporary_baseline<4*1024**3:raise ValueError('GuardBaselineTemporary')
metadata_tmp=P/'disposable'/('artifact-store-guard-'+name)/'tmp'
base=FUTURE/'bootstrap-runs'/name;base.mkdir(parents=True,exist_ok=False)
def put(path,value):
    path.parent.mkdir(parents=True,exist_ok=True)
    raw=value if isinstance(value,bytes) else (json.dumps(value,indent=2,ensure_ascii=False)+'\n').encode()
    with path.open('xb') as f:f.write(raw)
def ref(path,root=R,root_id='repository'):
    if root==R and path.is_relative_to(P):root=P;root_id='private'
    if root==R and path.is_relative_to(FUTURE):root=FUTURE;root_id='future_evidence'
    if path.name in {'parameters.bin','compression_prover_key.bin'}:raise ValueError('ProtectedArtifact')
    raw=path.read_bytes();return {'root_id':root_id,'path':str(path.relative_to(root)),'bytes':len(raw),'sha256':hashlib.sha256(raw).hexdigest()}
files=sorted(E.glob('*.py'))+sorted(E.glob('*.json'))+sorted((E/'tests/v2').glob('*.py'))+sorted((E/'profiles/v2').glob('*.json'))+sorted((F/'inputs/v2/profiles').glob('*.json'))+sorted((F/'inputs/v2').glob('evidence-capacity-*.json'))+[Path(__file__),R/'experiments/reuse-study035/recorder.py',baseline_cp,baseline_receipt,_retained,_retained_extra]
W=F/'evidence/v2/w001'
sys.path.insert(0, str(E))
from artifact_io import RootRegistry
from frozen_source_reuse_v2 import FrozenSourceWriter
snapshot_registry=RootRegistry({'repository': R, 'private': P, 'work': W, 'future_evidence': FUTURE})
frozen_anchors=FrozenSourceWriter(snapshot_registry, 'w001', root_id='future_evidence').anchors
inputs=[]
for source in files:
    if source.name in {'parameters.bin','compression_prover_key.bin'}:raise ValueError('ProtectedArtifact')
    raw=source.read_bytes();sha=hashlib.sha256(raw).hexdigest()
    anchor=frozen_anchors.get((len(raw), sha))
    if anchor is not None:
        if snapshot_registry.verify(anchor).read_bytes()!=raw:raise ValueError('FrozenBootstrapSourceBytes')
        snapshot=dict(anchor)
    else:
        target=base/'sources'/source.relative_to(R) if source.is_relative_to(R) else base/'sources'/ref(source)['root_id']/ref(source)['path'];put(target,raw);snapshot=ref(target)
    inputs.append({'logical_path':str(source.relative_to(R)) if source.is_relative_to(R) else None,'logical_ref':ref(source),'snapshot':snapshot})
specification=ref(F/'spec.md')
common={'work_id':'w001','specification_ref':specification,'outcome':{'operational':'declared','acceptance':'blocked'},'reason':'bootstrap controller development only; no semantic authority','blocking_ref':specification,'product_adoption':'unactivated'}
index={**common,'format':'core036.source.v2','record_id':name+'-source','inputs':[x['snapshot'] for x in inputs],'files':inputs}
put(base/'source-index.json',index)
profile=E/'profiles/v2/work.json';tools=json.loads((E/'toolchain.json').read_text())['tools'];python=Path(tools['python']['path'])
if hashlib.sha256(python.read_bytes()).hexdigest()!=tools['python']['sha256']:raise ValueError('PinnedPythonBytes')
argv=[str(python),'-m','unittest','discover','-s',str(E/'tests/v2'),'-p',pattern]
put(base/'declaration.json',{**common,'format':'core036.attempt.v2','record_id':name,'source_subject_ref':ref(base/'source-index.json'),'inputs':[ref(base/'source-index.json'),ref(profile)],'stage':'ENV','scope':'reviewed-temporary-only-source-unit-tests','argv':argv,'wall_seconds':60,'resource_scope':{'temporary_baseline_ref':ref(baseline_receipt),'temporary_baseline_bytes':temporary_baseline,'temporary_addition_result_refs':[ref(_retained),ref(_retained_extra)],'artifact_scope':'new capture and current source materialization; old costs remain in actual whole-work Native admission','fresh_temporary_root':str(metadata_tmp),'allowed_pattern':pattern,'no_native_builds_or_old_temporary_writes':True},'output':str(P/'bootstrap'/name),'declared_at':datetime.datetime.now(datetime.timezone.utc).isoformat()})
spec=importlib.util.spec_from_file_location('reviewed035',R/'experiments/reuse-study035/recorder.py');reviewed=importlib.util.module_from_spec(spec);spec.loader.exec_module(reviewed)
metadata_tmp.mkdir(parents=True,exist_ok=False)
def growth():
    return {'artifacts':reviewed._footprint(P/'bootstrap'/name)+reviewed._footprint(base),'cache':sum(source.stat().st_size for source in files),'temporary':temporary_baseline+reviewed._footprint(metadata_tmp)}
record=reviewed.run(argv,P/'bootstrap'/name,60,free_bytes=lambda:shutil.disk_usage(P).free if shutil.disk_usage('/data').free>=4*1024**3 else 0,growth_bytes=growth,env={'PYTHONPATH':str(E),'PYTHONDONTWRITEBYTECODE':'1','TMPDIR':str(metadata_tmp)})
for entry in inputs:
    actual=snapshot_registry.verify(entry['logical_ref']).read_bytes()
    if hashlib.sha256(actual).hexdigest()!=entry['snapshot']['sha256']:raise ValueError('SourceChangedDuringBootstrapRun')
    if snapshot_registry.verify(entry['snapshot']).read_bytes()!=actual:raise ValueError('FrozenSnapshotChangedDuringBootstrapRun')
out=FUTURE/'development'/name;out.mkdir(parents=True,exist_ok=False)
for filename in ['receipt.json','stdout.txt','stderr.txt']:put(out/filename,(P/'bootstrap'/name/filename).read_bytes())
put(base/'result.json',{**common,'format':'core036.event.v2','record_id':name+'-result','source_subject_ref':ref(base/'source-index.json'),'inputs':[ref(base/'declaration.json'),ref(out/'receipt.json')],'actual_exit':record['exit_code'],'stop_reason':record['stop_reason'],'all_source_bytes_equal_after':True,'tree_empty':record['tree_empty'],'group_empty':record['group_empty']})
print(json.dumps({k:record[k] for k in ['exit_code','stop_reason','tree_empty','group_empty']}))
print((out/'stderr.txt').read_text()[-4000:])
