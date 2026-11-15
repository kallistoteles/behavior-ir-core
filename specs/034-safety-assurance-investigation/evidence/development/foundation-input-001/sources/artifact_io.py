"""Untrusted research metadata. Parsing/hashing does not confer proof authority."""
import hashlib
import json
import os
from pathlib import Path
import re

DOCUMENT_BOUND=16*1024**2
PACKET_BOUND=64*1024**2
CORE_RECORD_BOUND=8*1024**2
DEPTH_BOUND=128
ID_BOUND=128
CASE_BOUND=4096
OBSERVATION_BOUND=16384

def _unique(pairs):
    out={}
    for key,value in pairs:
        if key in out:raise ValueError('DuplicateKey')
        out[key]=value
    return out

def _number(_):raise ValueError('NonIntegerNumber')

def _integer(raw):
    if len(raw)>21 or raw=='-0':raise ValueError('IntegerWireBound')
    value=int(raw)
    if not -(2**63)<=value<2**64:raise ValueError('IntegerWireBound')
    return value

def strict_loads(raw,limit=DOCUMENT_BOUND):
    if isinstance(raw,str):raw=raw.encode('utf-8')
    if len(raw)>limit:raise ValueError('ByteBound')
    depth=0;string=False;escaped=False
    for b in raw:
        if string:
            if escaped:escaped=False
            elif b==92:escaped=True
            elif b==34:string=False
        elif b==34:string=True
        elif b in (91,123):
            depth+=1
            if depth>DEPTH_BOUND:raise ValueError('DepthBound')
        elif b in (93,125):depth=max(0,depth-1)
    value=json.loads(raw.decode('utf-8'),object_pairs_hook=_unique,parse_float=_number,parse_constant=_number,parse_int=_integer)
    pending=[value]
    while pending:
        v=pending.pop()
        if isinstance(v,str):v.encode('utf-8',errors='strict')
        elif isinstance(v,list):pending.extend(v)
        elif isinstance(v,dict):pending.extend(v);pending.extend(v.values())
    return value

OUTCOMES={
 'format':['core034.observation.v1'],
 'assurance':['established_under_premises','refuted','unestablished','unsupported','operational_failure','not_run'],
 'operational':['completed','build_failed','tool_failed','resource_stopped','interrupted','invalid_archive','not_run'],
 'cost':['within_research_envelope','exceeded','not_comparable','not_measured'],
 'candidate':['supported_for_declared_scope','conditional','rejected','undetermined'],
 'control_result':['targeted_rejection','unexpected_acceptance','unexpected_rejection','operationally_unresolved','not_applicable'],
 'product_adoption':['unactivated'],
}
OPTIONAL={'case_id','attempt_id','role','input_manifest','prepared_manifest','subject','semantic','resources','claim_refs','premise_refs','artifact_refs','diagnostics','stop_reason'}

def validate_outcomes(record):
    if not isinstance(record,dict) or set(record)-set(OUTCOMES)-OPTIONAL:raise ValueError('UnknownField')
    for key,values in OUTCOMES.items():
        if record.get(key) not in values:raise ValueError('OutcomeEnum:'+key)
    if 'semantic' not in record:raise ValueError('SemanticRequired')
    resources=record.get('resources')
    if not isinstance(resources,dict):raise ValueError('ResourcesRequired')
    for key,value in resources.items():
        if value is None and not isinstance(resources.get(key+'_reason'),str):raise ValueError('UnknownResourceReason')
        if value is None and not resources[key+'_reason']:raise ValueError('UnknownResourceReason')
    for key in ['case_id','attempt_id','role']:
        if key in record and (not isinstance(record[key],str) or not 0<len(record[key].encode())<=ID_BOUND):raise ValueError('IdentifierBound')
    if record['assurance'] in ['established_under_premises','refuted'] and record['operational']!='completed':raise ValueError('AssuranceOperationalMismatch')
    if record['assurance']=='established_under_premises':
        for key in ['claim_refs','premise_refs','artifact_refs']:
            if not isinstance(record.get(key),list) or not record[key]:raise ValueError('EvidenceRequired')

def validate_graph(records):
    colors={}
    for root in records:
        stack=[(root,False)]
        while stack:
            key,leaving=stack.pop()
            if not isinstance(key,str) or not 0<len(key.encode())<=ID_BOUND:raise ValueError('IdentifierBound')
            if key not in records:raise ValueError('DanglingReference')
            if leaving:colors[key]=2;continue
            if colors.get(key)==1:raise ValueError('ReferenceCycle')
            if colors.get(key)==2:continue
            colors[key]=1;stack.append((key,True));stack.extend((k,False) for k in reversed(records[key]))

def semantic_digest(record):
    if not isinstance(record,dict):raise ValueError('ObjectRequired')
    semantic={k:v for k,v in record.items() if k!='diagnostics'}
    raw=json.dumps(semantic,sort_keys=True,ensure_ascii=False,separators=(',',':'),allow_nan=False).encode('utf-8')
    strict_loads(raw)
    return hashlib.sha256(b'core034.research.v1\0'+raw).hexdigest()

def write_once(path,data):
    path=Path(path);path.parent.mkdir(parents=True,exist_ok=True)
    if not isinstance(data,bytes):
        data=(json.dumps(data,sort_keys=True,ensure_ascii=False,indent=2,allow_nan=False)+'\n').encode('utf-8')
    with path.open('xb')as f:f.write(data);f.flush();os.fsync(f.fileno())

def bounded_read(path,limit=DOCUMENT_BOUND):
    if type(limit)is not int or limit<0:raise ValueError('InvalidReadBound')
    with Path(path).open('rb')as f:raw=f.read(limit+1)
    if len(raw)>limit:raise ValueError('ByteBound')
    return raw

def safe_path(root,relative):
    if not isinstance(relative,str) or not relative or Path(relative).is_absolute() or '..' in Path(relative).parts:raise ValueError('ArtifactPathEscape')
    root=Path(root).resolve();path=(root/relative).resolve()
    if not path.is_relative_to(root):raise ValueError('ArtifactPathEscape')
    return path

def artifact_ref(root,relative,role='artifact'):
    path=safe_path(root,relative)
    if not path.is_file():raise ValueError('ArtifactMissing')
    if not isinstance(role,str) or not 0<len(role.encode())<=ID_BOUND:raise ValueError('ArtifactRole')
    h=hashlib.sha256();size=0
    with path.open('rb')as f:
        for raw in iter(lambda:f.read(1024**2),b''):h.update(raw);size+=len(raw)
    return {'path':str(Path(relative)),'bytes':size,'sha256':h.hexdigest(),'role':role}

def verify_ref(root,ref):
    if not isinstance(ref,dict) or set(ref)!={'path','bytes','sha256','role'}:raise ValueError('ArtifactReferenceFields')
    if type(ref['bytes'])is not int or ref['bytes']<0 or not isinstance(ref['sha256'],str) or not re.fullmatch('[0-9a-f]{64}',ref['sha256']):raise ValueError('ArtifactReferenceEncoding')
    if artifact_ref(root,ref['path'],ref['role'])!=ref:raise ValueError('ArtifactBytesDiffer')

def seal(root,paths):
    if len(paths)>OBSERVATION_BOUND or len(set(paths))!=len(paths):raise ValueError('ArchiveIndexBoundOrDuplicate')
    return {'format':'core034.closed.v1','files':[artifact_ref(root,p)for p in sorted(paths)]}

def verify_archive(root,manifest):
    if not isinstance(manifest,dict) or set(manifest)!={'format','files'} or manifest['format']!='core034.closed.v1':raise ValueError('ArchiveFormat')
    files=manifest['files']
    if not isinstance(files,list) or len(files)>OBSERVATION_BOUND:raise ValueError('ArchiveIndexBound')
    seen=set()
    for ref in files:
        verify_ref(root,ref)
        if ref['path'] in seen:raise ValueError('ArchiveDuplicate')
        seen.add(ref['path'])

LIMITS={'campaign_seconds':7200,'preparation_seconds':1800,'scenario_seconds':1800,'process_seconds':900,
        'safety_tool_seconds':180,'safety_role_seconds':300,'address_space_bytes':8*1024**3,
        'start_disk_bytes':16*1024**3,'artifact_bytes':2*1024**3,'cache_bytes':2*1024**3,
        'total_growth_bytes':4*1024**3,'emergency_disk_bytes':2*1024**3,'workers':1,'rayon_threads':1,'omp_threads':1,'cargo_jobs':1}

def validate_manifest(manifest,root=None):
    if not isinstance(manifest,dict):raise ValueError('ManifestObject')
    if manifest.get('format')=='core034.input.v1':
        fields={'format','campaign_id','sources','tools','code','profile','expected','output_slots','clock','limits'}
        if set(manifest)!=fields:raise ValueError('InputManifestFields')
        identifier=manifest['campaign_id']
        if not isinstance(identifier,str) or not 0<len(identifier.encode())<=ID_BOUND:raise ValueError('IdentifierBound')
        slots=manifest['output_slots']
        if not isinstance(slots,list) or any(not isinstance(p,str)for p in slots) or len(set(slots))!=len(slots):raise ValueError('FutureOutputSlotsNotDigests')
        for slot in slots:safe_path(root or '.',slot)
        limits=manifest['limits']
        if not isinstance(limits,dict) or limits.get('campaign_seconds')!=7200 or set(limits)-set(LIMITS):raise ValueError('CampaignLimits')
        if any(type(v)is not int or not 0<v<=LIMITS[k]for k,v in limits.items()):raise ValueError('RaisedOrInvalidLimit')
        clock=manifest['clock']
        if not isinstance(clock,dict) or set(clock)!={'started_ns','boot_id'} or type(clock['started_ns'])is not int or clock['started_ns']<0 or not isinstance(clock['boot_id'],str) or not clock['boot_id']:raise ValueError('ClockProvenance')
        profile=manifest['profile']
        if not isinstance(profile,dict) or not isinstance(profile.get('cases'),list) or not 0<len(profile['cases'])<=CASE_BOUND:raise ValueError('CaseIndexBound')
        ids=[c.get('case_id')if isinstance(c,dict)else None for c in profile['cases']]
        if any(not isinstance(i,str)or not 0<len(i.encode())<=ID_BOUND for i in ids) or len(set(ids))!=len(ids):raise ValueError('CaseIdentifiers')
        if not isinstance(manifest['code'],list) or not manifest['code']:raise ValueError('MissingBoundCode')
        if root is not None:
            for ref in manifest['code']:verify_ref(root,ref)
    elif manifest.get('format')=='core034.prepared.v1':
        fields={'format','input_manifest','dependency_lock','workers','subjects','expected','receipts'}
        if set(manifest)!=fields:raise ValueError('PreparedManifestFields')
        if not manifest['subjects'] or not manifest['workers']:raise ValueError('PreparedSubjectMissing')
        if root is not None:
            for ref in [manifest['input_manifest'],manifest['dependency_lock'],*manifest['workers'],*manifest['expected'],*manifest['receipts']]:verify_ref(root,ref)
    else:raise ValueError('ManifestVersion')
