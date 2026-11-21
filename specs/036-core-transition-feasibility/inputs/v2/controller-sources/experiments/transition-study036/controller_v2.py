"""V2 operational supervisor. Scientific claims require their own raw checkers."""
import argparse
import datetime
import json
import re
import sys
import time
from pathlib import Path
from artifact_io import RootRegistry, digest, read, write_once
from bootstrap import validate_v2_profile, v2_admit
from campaign import WorkLedger
from gates import runnable
from preservation import HistoricalResolver, verify_unrelated_v2
from records import CONTROL, MANIFEST, identifier, loads_v2

ROOT=Path(__file__).resolve().parents[2]
E=Path(__file__).resolve().parent
F=ROOT/'specs/036-core-transition-feasibility'
PRIVATE_BASE=Path('/var/tmp/behavior-ir-core036-v2')


def validate_slot_selection(value, *, known):
    if not isinstance(value,dict) or set(value)!={'slots'} or not isinstance(value['slots'],list) or not value['slots'] or len(value['slots'])>20000:
        raise ValueError('V2SlotSelection')
    for slot in value['slots']:
        identifier(slot)
    if len(set(value['slots']))!=len(value['slots']) or set(value['slots'])-set(known):
        raise ValueError('V2UnknownOrDuplicateSlot')
    return list(value['slots'])


def cli_exit(error):
    if error is None:return 0
    if isinstance(error,AssertionError):return 1
    if isinstance(error,(ValueError,FileExistsError)):return 2
    if isinstance(error,(NotImplementedError,OSError)):return 3
    raise error


def execute_status(ledger):
    # A journal is operational provenance only. Later scientific collectors
    # derive each status from current proof/quality/oracle/activation raw checks.
    return {'format':'core036.work-status.v2','work_id':ledger.work_id,
        'feature_complete':False,'feature_state':'in_progress' if ledger.events else 'declared',
        'initial_authority':ledger.authority,'actual_closed_attempt_ns':ledger.active_ns(),
        'attempts':ledger.attempts,'bootstrap_receipts':list(ledger.imported_receipts.values()),
        'deliverables':{str(i):'blocked' for i in range(1,9)},
        'requirements':{f'FR-{i:03d}':'blocked' for i in range(1,23)},
        'criteria':{f'SC-{i:03d}':'blocked' for i in range(1,9)},
        'runnable':[stage for stage in ('ENGINEERING','ENV','NATIVE','Q','DIAG','SESSIONS','COMPACT','REPRO','FINAL') if runnable(stage,{})],
        'scope':'operational journal; no native ground, checked theorem, benchmark or final completion is imported'}


def registry_for(work_id):
    if not isinstance(work_id,str) or re.fullmatch(r'w[0-9]{3,16}',work_id) is None:
        raise ValueError('V2WorkID')
    return RootRegistry({'repository':ROOT,'private':PRIVATE_BASE/work_id,
                         'work':F/'evidence/v2'/work_id},readonly=['repository'])


def ref_for(path, registry):
    path=Path(path)
    if not path.is_absolute():raise ValueError('V2AbsoluteControllerInput')
    # Prefer repository identity, including evidence below it, so immutable
    # refs remain interpretable by an independent externally selected context.
    for name,root in registry.roots.items():
        if path.is_relative_to(root) and path!=root:
            return registry.reference(name,str(path.relative_to(root)))
    raise ValueError('V2UnregisteredInput')


def read_path(path, registry, *, manifest=False):
    return registry.read(ref_for(Path(path),registry),limit=MANIFEST if manifest else CONTROL)


def _historical_mappings(registry):
    original=registry.read(ref_for(F/'inputs/v2/historical-map.json',registry))
    revision=F/'evidence/campaign-001/revisions/r004'
    inventory=registry.read(ref_for(revision/'input-manifest.json',registry),limit=MANIFEST)
    code=[]
    for logical in inventory['inputs']['files']:
        physical=ref_for(revision/'sources'/logical['path'],registry)
        if (physical['bytes'],physical['sha256'])!=(logical['bytes'],logical['sha256']):
            raise ValueError('V2OldSourceSnapshotChanged')
        code.append({'logical_v1':logical,'physical':physical})
    return [original,{'mappings':code}]


def _bootstrap_resolver(registry, binding):
    declaration=registry.read(binding['declaration'])
    entries=[]
    for item in declaration['sources']:
        snapshot=item['snapshot']
        logical={k:snapshot[k] for k in ('bytes','sha256')}
        logical['path']=item['logical_path']
        entries.append({'logical_v1':logical,'physical':snapshot})
    return HistoricalResolver(registry,[{'mappings':entries}])


def initialize(args):
    # The exact prospective profile chooses the registered paths, never an
    # output/report field. Existing reviewed bootstrap imports are permitted;
    # duplicate context creation and unrelated preseeded output are refused.
    profile=loads_v2(Path(args.profile).read_bytes())
    validate_v2_profile(profile)
    if profile['stage']!='WORK':raise ValueError('V2InitialWorkProfile')
    registry=registry_for(profile['work_id'])
    out=Path(args.out)
    if out!=registry.roots['work'] or Path(args.spec)!=F/'spec.md':
        raise ValueError('V2WorkOutputOwnership')
    if (out/'context.json').exists():raise FileExistsError(out/'context.json')
    if out.exists() and {p.name for p in out.iterdir()}-{'development'}:
        raise ValueError('V2UnexpectedPreseededWork')
    specification=ref_for(Path(args.spec),registry)
    if specification!=profile['specification_ref']:raise ValueError('V2WorkSpecification')
    baseline=read_path(F/'inputs/v2/baseline.json',registry,manifest=True)
    for ref in baseline['inputs']:registry.verify(ref)
    verify_unrelated_v2(ROOT,baseline['unrelated_files'])
    resolver=HistoricalResolver(registry,_historical_mappings(registry))
    old=read_path(F/'inputs/baseline.json',registry,manifest=True)
    for ref in old['files']:resolver.resolve({'root_id':'repository',**ref})
    previous=ref_for(Path(args.previous_index),registry)
    if Path(args.previous_index)!=F/'evidence/campaign-001/closed-artifacts.json':
        raise ValueError('V2PreviousIndexSelection')
    previous_data=registry.read(previous,limit=MANIFEST)
    if previous_data.get('format')!='core036.closed.v1':raise ValueError('V2PreviousIndexVersion')
    bootstrap=read_path(Path(args.bootstrap),registry)
    if bootstrap['work_id']!=profile['work_id']:raise ValueError('V2BootstrapWork')
    receipt=registry.read(bootstrap['receipt'])
    bootstrap_resolver=_bootstrap_resolver(registry,bootstrap)
    for ref in [bootstrap['launcher'],bootstrap['profile']]:bootstrap_resolver.resolve(ref)
    declaration=registry.read(bootstrap['declaration'])
    for ref in declaration['inputs']:bootstrap_resolver.resolve(ref)
    if (receipt.get('format')!='core035.bounded.v1' or receipt.get('group_empty') is not True
        or receipt.get('tree_empty') is not True or receipt.get('group_id') is None
        or bootstrap['origin']!={'started_ns':receipt['start_monotonic_ns'],'boot_id':receipt['boot_id']}):
        raise ValueError('V2BootstrapOrigin')
    private=registry.roots['private'];private.mkdir(mode=0o700,parents=True,exist_ok=True)
    if private.stat().st_mode & 0o077:raise ValueError('V2PrivatePermissions')
    free={key:__import__('shutil').disk_usage(path).free for key,path in [('root',private),('data',F)]}
    v2_admit(profile,free_root_bytes=free['root'],free_data_bytes=free['data'],initial=True)
    out.mkdir(parents=True,exist_ok=True)
    inputs=[ref_for(Path(p),registry) for p in (args.profile,args.bootstrap,F/'inputs/v2/baseline.json',F/'inputs/v2/workloads.json',F/'inputs/v2/decision-rules.json')]
    source=ref_for(F/'inputs/v2/controller-inputs.json',registry)
    controller=registry.read(source,limit=MANIFEST)
    if not isinstance(controller,dict) or set(controller)!={'files'} or not controller['files']:
        raise ValueError('V2ControllerInputs')
    for ref in controller['files']:registry.verify(ref)
    inventory=read_path(F/'inputs/v2/workloads.json',registry,manifest=True)
    slots=[x['id'] for x in inventory['slots']]
    if len(slots)!=188 or len(set(slots))!=188:raise ValueError('V2PrimaryMatrix')
    context={'format':'core036.work.v2','work_id':profile['work_id'],'record_id':'context',
        'specification_ref':specification,'source_subject_ref':source,'inputs':inputs+[previous,bootstrap['receipt']],
        'product_adoption':'unactivated','outcome':{'operational':'declared','acceptance':'blocked'},
        'reason':'Native implementation, proofs, full quality, experiments and reproduction remain pending',
        'blocking_ref':specification,'initial_authority':'unverified','feature_complete':False,
        'first_actual_origin':bootstrap['origin'],'requirements':[f'FR-{i:03d}' for i in range(1,23)],
        'criteria':[f'SC-{i:03d}' for i in range(1,9)],'deliverables':list(range(1,9)),
        'primary_slots':slots,'historical_mapping':_historical_mappings(registry),
        'created_at_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),
        'initial_free_bytes':free,'profile_ref':ref_for(Path(args.profile),registry)}
    registry.write('work','context.json',context)
    ledger=WorkLedger(out,profile['work_id'])
    # Top-level bootstrap receipts enclose their nested test children; import
    # only those enclosing receipts to avoid double-counting inner controls.
    for raw in sorted((out/'development').glob('*/receipt.json')):
        actual=read_path(raw,registry)
        parent=raw.parent
        for filename,key in [('stdout.txt','stdout_sha256'),('stderr.txt','stderr_sha256')]:
            if digest(parent/filename)!=actual[key]:raise ValueError('V2BootstrapLogBytes')
        ledger.import_receipt(ref_for(raw,registry),registry=registry,
            scope='reviewed bootstrap controller development; not scientific acceptance')
    return 0


def load_work(path):
    path=Path(path)
    if path.name!='context.json' or path.parent.parent!=F/'evidence/v2':
        raise ValueError('V2WorkContextOwnership')
    registry=registry_for(path.parent.name)
    value=read_path(path,registry)
    from records import validate_v2_record
    extras={'initial_authority','feature_complete','first_actual_origin','requirements','criteria','deliverables','primary_slots','historical_mapping','created_at_utc','initial_free_bytes','profile_ref'}
    validate_v2_record(value,extra_fields=extras)
    if (value['format']!='core036.work.v2' or value['work_id']!=path.parent.name
        or value['initial_authority']!='unverified' or value['feature_complete'] is not False):
        raise ValueError('V2WorkContext')
    for ref in [value['specification_ref'],value['source_subject_ref'],*value['inputs']]:registry.verify(ref)
    return value,registry,WorkLedger(path.parent,value['work_id'])


def freeze(args):
    ctx,registry,ledger=load_work(args.work)
    if re.fullmatch(r'r[0-9]{4,16}',args.revision) is None:raise ValueError('V2RevisionID')
    inputs=read_path(Path(args.inputs),registry,manifest=True)
    if not isinstance(inputs,dict) or set(inputs)!={'files'} or not isinstance(inputs['files'],list) or not 0<len(inputs['files'])<=20000:
        raise ValueError('V2FreezeInputFields')
    out=registry.path('work','subjects/'+args.revision,writing=True)
    if out.exists():raise FileExistsError(out)
    files=[];seen=set()
    for index,ref in enumerate(inputs['files']):
        original=registry.verify(ref)
        key=(ref['root_id'],ref['path'])
        if key in seen:raise ValueError('V2DuplicateSourceInput')
        seen.add(key)
        files.append((original,ref,f'subjects/{args.revision}/sources/{index:05d}'))
    out.mkdir(parents=True,exist_ok=False)
    snapshots=[]
    for original,ref,name in files:
        snap=registry.write('work',name,original.read_bytes(),limit=64*1024**2)
        snapshots.append({'logical_ref':ref,'snapshot_ref':snap})
    record={'format':'core036.source.v2','work_id':ctx['work_id'],'record_id':args.revision,
        'specification_ref':ctx['specification_ref'],'source_subject_ref':ref_for(Path(args.inputs),registry),
        'inputs':[x['snapshot_ref'] for x in snapshots],'product_adoption':'unactivated',
        'outcome':{'operational':'completed','acceptance':'blocked'},'reason':'Source binding only; no native proof or build',
        'blocking_ref':ctx['specification_ref'],'files':snapshots}
    registry.write('work',f'subjects/{args.revision}/manifest.json',record,limit=MANIFEST)
    return 0


def parser():
    p=argparse.ArgumentParser(description='Core036 v2 bounded operational supervisor')
    s=p.add_subparsers(dest='command',required=True)
    q=s.add_parser('init')
    for field in ('spec','profile','previous-index','bootstrap','out'):q.add_argument('--'+field,required=True)
    q=s.add_parser('freeze')
    for field in ('work','revision','inputs'):q.add_argument('--'+field,required=True)
    q=s.add_parser('status');q.add_argument('--work',required=True)
    q=s.add_parser('declare')
    for field in ('work','stage','revision','profile','slots','out'):q.add_argument('--'+field,required=True)
    q=s.add_parser('run')
    for field in ('work','attempt'):q.add_argument('--'+field,required=True)
    q=s.add_parser('resume')
    for field in ('work','checkpoint','correction','profile','out'):q.add_argument('--'+field,required=True)
    q=s.add_parser('collect')
    for field in ('work','kind','out'):q.add_argument('--'+field,required=True)
    q=s.add_parser('finalize')
    for field in ('work','assessment','reproduction','out'):q.add_argument('--'+field,required=True)
    return p


def main(argv=None):
    args=parser().parse_args(argv)
    try:
        if args.command=='init':return initialize(args)
        if args.command=='freeze':return freeze(args)
        if args.command=='status':
            _,_,ledger=load_work(args.work);print(json.dumps(execute_status(ledger),indent=2));return 0
        # The interfaces are parsed now; each actual executor is added with
        # its own red/green tests. No unfinished route returns fake success.
        raise NotImplementedError('Pending v2 executor: '+args.command)
    except (AssertionError,ValueError,FileExistsError,NotImplementedError,OSError) as exc:
        print(str(exc),file=sys.stderr);return cli_exit(exc)
