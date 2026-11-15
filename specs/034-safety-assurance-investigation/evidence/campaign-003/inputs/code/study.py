"""Research supervisor. Authority comes from checked evidence, not CLI exit0."""
from recorder import Ledger,run

def permitted_wall(ledgers,now_ns,boot_id,process_cap=900):
    if not ledgers or not 0<process_cap<=900:raise ValueError('InvalidBudgetHierarchy')
    return min(process_cap,*(ledger.remaining_ns(now_ns,boot_id)/10**9 for ledger in ledgers))

import datetime,hashlib,json,os,shlex,shutil,subprocess,sys,time
from pathlib import Path
from artifact_io import (LIMITS,DOCUMENT_BOUND,PACKET_BOUND,bounded_read,strict_loads,write_once,artifact_ref,verify_ref,safe_path,validate_manifest,validate_outcomes,seal,verify_archive)
HERE=Path(__file__).resolve().parent
CORE=HERE.parents[1]
FEATURE=CORE/'specs/034-safety-assurance-investigation'
CASE_IDS=['bootstrap','proofs','integration','certification-cold-2','certification-cold-3','controls',*[f'growth-D{i}' for i in range(1,7)]]
ENV_FILES=['experiments/transition-study033/shell.nix','flake.nix','flake.lock']

def _read(path,limit=DOCUMENT_BOUND):return strict_loads(bounded_read(path,limit))
def _write(path,value):write_once(path,(json.dumps(value,ensure_ascii=False,indent=2)+'\n').encode())
def _sha(path):
 with Path(path).open('rb')as f:return hashlib.file_digest(f,'sha256').hexdigest()
def _boot():return Path('/proc/sys/kernel/random/boot_id').read_text().strip()
def _tools():
 cfg=_read(HERE/'toolchain.json');tools=dict(cfg['tools'])
 for name in ['nix-shell','nix-store']:
  path=Path('/run/current-system/sw/bin')/name;resolved=path.readlink()
  if not resolved.is_absolute()or resolved.name!=name:raise ValueError('PinnedMultiCallDispatchName')
  if not str(resolved).startswith('/nix/store/'):raise ValueError('UnpinnedNixClient')
  tools[name]={'path':str(resolved),'sha256':_sha(resolved)}
 for entry in tools.values():
  p=Path(entry['path'])
  if not str(p).startswith('/nix/store/') or not p.is_file() or _sha(p)!=entry['sha256']:raise ValueError('InstalledToolIdentity')
 if Path(sys.executable).resolve()!=Path(tools['python']['path']).resolve():raise ValueError('PythonInterpreterIdentity')
 return tools

def _profile(profile):
 p=_read(profile);canonical=_read(HERE/'profiles/diagnostic.json')
 if p!=canonical or p.get('format')!='core034.diagnostic-profile.v1' or p.get('limits')!=LIMITS:raise ValueError('UnsupportedOrChangedDiagnosticProfile')
 if [x['case_id']for x in p['cases']]!=CASE_IDS or len(p['controls'])!=15 or len(p['growth'])!=6:raise ValueError('IncompleteProfile')
 if {x['control_id']for x in p['controls']}!={f'E{i:02}'for i in range(1,16)}:raise ValueError('ControlCoverage')
 for c in p['cases']:
  if c['scenario_seconds']!=1800:raise ValueError('ScenarioLimit')
  for role in c['roles']:
   if not 0<role['wall_seconds']<=900 or len(role['role_id'].encode())>128:raise ValueError('RoleLimit')
 return p

def _code_files():
 excluded={'private','target','__pycache__','.git','.venv','venv','dist'}
 return sorted(p for p in HERE.rglob('*') if p.is_file() and not any(x in excluded for x in p.relative_to(HERE).parts) and p.suffix not in {'.pyc','.olean'})

def freeze(profile,out,inherit_manifest=None):
 p=_profile(profile);inherited=None
 clock={'started_ns':time.monotonic_ns(),'boot_id':_boot()}
 if inherit_manifest is not None:
  parent_path=Path(inherit_manifest).resolve();raw=bounded_read(parent_path);parent=strict_loads(raw);validate_manifest(parent,parent_path.parent)
  if parent['limits']!=LIMITS:raise ValueError('InheritedLimitsChanged')
  previous=parent['clock'];budget=Ledger(previous['started_ns'],previous['boot_id'],7200)
  if budget.remaining_ns(time.monotonic_ns(),_boot())<=0:raise ValueError('InheritedBudgetExhausted')
  clock=dict(previous);inherited=(raw,parent['campaign_id'])
 out=Path(out).resolve();out.mkdir(parents=True,exist_ok=False)
 try:
  tools=_tools()
  from recorder import disk_free,project_growth,_growth_reason
  if disk_free()<LIMITS['start_disk_bytes']:raise ValueError('ReadinessDiskStartFloor')
  if _growth_reason(project_growth()):raise ValueError('ReadinessGrowthLimit')
  code=[]
  for source in _code_files():
   rel='inputs/code/'+source.relative_to(HERE).as_posix();dest=safe_path(out,rel);dest.parent.mkdir(parents=True,exist_ok=True);write_once(dest,source.read_bytes());code.append(artifact_ref(out,rel,'code'))
  definitions={}
  for name in ['spec.md','plan.md','research.md','data-model.md','quickstart.md','requirement-origins.json','product-decisions.json','assurance-arguments.md','reuse-assessment.md','inputs/source-catalog.json','inputs/source-contexts.json','inputs/prior-study-index.json',*[str(x.relative_to(FEATURE))for x in sorted((FEATURE/'contracts').glob('*.md'))]]:
   source=FEATURE/name;rel='inputs/definitions/'+name;dest=safe_path(out,rel);dest.parent.mkdir(parents=True,exist_ok=True);write_once(dest,source.read_bytes());definitions[name]=artifact_ref(out,rel,'definition')
  # Verify source bytes against actual pinned Git objects, not source assertions.
  from validate_report import git_reader
  reader=git_reader(CORE);catalog=_read(FEATURE/'inputs/source-catalog.json');pinned=[]
  for source in catalog['sources']:
   raw=reader(source)
   if len(raw)!=source['bytes'] or hashlib.sha256(raw).hexdigest()!=source['sha256']:raise ValueError('PinnedSourceIdentity')
   rel='inputs/pinned/'+source['id']+'.txt';dest=safe_path(out,rel);dest.parent.mkdir(parents=True,exist_ok=True);write_once(dest,raw);pinned.append({'source_id':source['id'],'artifact':artifact_ref(out,rel,'pinned_source')})
  prior=_read(FEATURE/'inputs/prior-study-index.json')
  for source in prior['bindings']:
   raw=reader(source)
   if len(raw)!=source['bytes'] or hashlib.sha256(raw).hexdigest()!=source['sha256']:raise ValueError('PriorSourceIdentity')
   rel='inputs/prior/'+source['id']+'.json';dest=safe_path(out,rel);dest.parent.mkdir(parents=True,exist_ok=True);write_once(dest,raw);pinned.append({'source_id':source['id'],'artifact':artifact_ref(out,rel,'prior_original_bytes')})
  env=[]
  for name in ENV_FILES:
   source=CORE/name;rel='inputs/environment/'+name;dest=safe_path(out,rel);dest.parent.mkdir(parents=True,exist_ok=True);write_once(dest,source.read_bytes());env.append({'repository_path':name,'artifact':artifact_ref(out,rel,'build_environment')})
  manifest={'format':'core034.input.v1','campaign_id':out.name,'sources':{'definitions':definitions,'pinned':pinned,'environment':env,'protected_manifests':catalog['protected_manifests']},'tools':tools,'code':code,'profile':p,'expected':{'LD8':next(x for x in code if x['path']=='inputs/code/expected/ld8.json'),'LD8C':next(x for x in code if x['path']=='inputs/code/expected/ld8c.json')},'output_slots':p['output_slots'],'clock':clock,'limits':dict(LIMITS)}
  if inherited is not None:
   rel='inputs/predecessor/input-manifest.json';dest=safe_path(out,rel);dest.parent.mkdir(parents=True,exist_ok=True);write_once(dest,inherited[0])
   manifest['sources']['inherited_budget']={'manifest':artifact_ref(out,rel,'predecessor_input_manifest'),'campaign_id':inherited[1],'reason':'Diagnosed controller-source correction; original monotonic/boot clock and total/preparation budgets retained, including predecessor build/failure time'}
  validate_manifest(manifest,out);_write(out/'input-manifest.json',manifest);return manifest
 except Exception as error:
  _write(out/'failed-readiness.json',{'format':'core034.failed-readiness.v1','operational':'not_run','assurance':'unestablished','reason':str(error),'clock':clock,'product_adoption':'unactivated'});raise

def _load(manifest):
 path=Path(manifest).resolve();root=path.parent;m=_read(path);validate_manifest(m,root)
 if m['limits']!=LIMITS or m['profile']!=_profile(HERE/'profiles/diagnostic.json'):raise ValueError('ManifestProfileOrLimitsChanged')
 if m['tools']!=_tools():raise ValueError('ToolSelectionChanged')
 ledger=Ledger(m['clock']['started_ns'],m['clock']['boot_id'],7200);ledger.remaining_ns(time.monotonic_ns(),_boot())
 for ref in m['code']:
  rel=Path(ref['path']).relative_to('inputs/code');source=HERE/rel
  if _sha(source)!=ref['sha256']:raise ValueError('FrozenExecutableSourceChanged')
 for env in m['sources']['environment']:
  verify_ref(root,env['artifact'])
  if _sha(CORE/env['repository_path'])!=env['artifact']['sha256']:raise ValueError('BuildEnvironmentChanged')
 for ref in m['sources']['definitions'].values():verify_ref(root,ref)
 for item in m['sources']['pinned']:verify_ref(root,item['artifact'])
 inherited=m['sources'].get('inherited_budget')
 if inherited is not None:
  verify_ref(root,inherited['manifest']);parent=_read(root/inherited['manifest']['path']);validate_manifest(parent)
  if parent['clock']!=m['clock']or parent['limits']!=m['limits']:raise ValueError('InheritedBudgetChanged')
 return root,m,ledger

def _case(root,m,case_id):
 if case_id not in CASE_IDS:raise ValueError('UnknownFrozenCase')
 return next(c for c in m['profile']['cases'] if c['case_id']==case_id)
def _case_path(root,case_id):return root/'cases'/case_id/'status.json'
def _role_path(root,m,case_id,role_id):
 case=_case(root,m,case_id);role=next(r for r in case['roles']if r['role_id']==role_id);return safe_path(root,role['output_dir'])
def _native_base(root):return _read(root/'prepared-worker.json')
def _request(inv):return {'format':'behavior.invocation.v1','capability':inv['capability'],'bindings':inv['requested_bindings'],'input':inv['input'],'context':inv['context']}
def _built_worker(root,m):
 # Bootstrap must execute the retained build before it can create the semantic
 # prepared manifest. This checks transport/build provenance, never program safety.
 directory=_role_path(root,m,'bootstrap','build');result=_read(directory/'result.json')
 if result.get('operational')!='completed'or result.get('expectations_met')is not True:raise ValueError('NoSuccessfulWorkerBuild')
 receipt=_read(safe_path(root,result['receipt']))
 if receipt.get('exit_code')!=0 or receipt.get('stop_reason')is not None or receipt.get('group_empty')is not True or receipt.get('tree_empty')is not True:raise ValueError('UnsuccessfulOrUnclosedWorkerBuild')
 ref=_read(directory/'product/worker.json')
 if ref.get('path')!='bin/assurance034':raise ValueError('SuppliedBuildWorkerSelection')
 verify_ref(root,ref);return root/'bin/assurance034'

def _worker(root,m):
 worker=root/'bin/assurance034';prepared=_read(root/'prepared-manifest.json');validate_manifest(prepared,root)
 refs=prepared['workers']
 if len(refs)!=1 or refs[0]['path']!='bin/assurance034':raise ValueError('SuppliedWorkerSelection')
 verify_ref(root,refs[0]);return worker

def _publish_prepared(root,m):
 build=_role_path(root,m,'bootstrap','build');oracle=_role_path(root,m,'bootstrap','primary-oracle')/'product';cert=_role_path(root,m,'bootstrap','certification-cold-1')/'product';verify=_role_path(root,m,'bootstrap','verification-cold-1')/'product'
 subject=_read(oracle/'subject.json');actual=_read(oracle/'oracle.json');facts=_read(root/m['expected']['LD8']['path'])
 if actual['committed_steps']!=8 or len(actual['attempts'])!=12 or actual['final_snapshot']!={'parents':{},'children':{}}:raise ValueError('AuthoredPrimaryFactsMismatch')
 for observed,expected in zip(actual['attempts'],facts['attempts']):
  if observed['after']['position']!=expected['position'] or observed['state_facts']!=expected['after']:raise ValueError('AuthoredPrimaryStateMismatch')
 for product in [cert,verify]:
  result=_read(product/'assessment.json')
  if result['outcome']!='Certified under assumptions' or any(value!='Passed' for value in result['obligations'].values()):raise ValueError('NoActualProgramCertificate')
 if _read(cert/'assessment.json')!=_read(verify/'assessment.json'):raise ValueError('IndependentProgramEvidenceMismatch')
 native={'format':'core034.prepared-worker.v1','variant':'LD8','consumer_role':'fresh','behavior':subject['behavior'],'policy_set_hash':subject['policy_set_hash'],'bundle':str(cert/'bundle.json'),'bundle_sha256':_sha(cert/'bundle.json'),'oracle':str(oracle/'oracle.json'),'oracle_sha256':_sha(oracle/'oracle.json')}
 _write(root/'prepared-worker.json',native)
 receipt_paths=[_role_path(root,m,'bootstrap',r['role_id'])/'command/receipt.json'for r in _case(root,m,'bootstrap')['roles']]
 prepared={'format':'core034.prepared.v1','input_manifest':artifact_ref(root,'input-manifest.json','input_manifest'),'dependency_lock':artifact_ref(root,'inputs/code/Cargo.lock','dependency_lock'),'workers':[artifact_ref(root,'bin/assurance034','executed_worker')],'subjects':[subject],'expected':[artifact_ref(root,str(p.relative_to(root)),'prepared_output')for p in [oracle/'subject.json',oracle/'oracle.json',cert/'bundle.json',root/'prepared-worker.json']],'receipts':[artifact_ref(root,str(p.relative_to(root)),'actual_preparation_receipt')for p in receipt_paths]}
 validate_manifest(prepared,root);_write(root/'prepared-manifest.json',prepared)

def _role_input(root,m,case,role,directory):
 op=role['operation'];rid=role['role_id'];native=None;packet=None;operation='prepare'
 if op in {'oracle','certify','verify','certify-commands','verify-commands','growth-oracle'}:
  cfg={'format':'core034.worker-input.v1','commands':op.endswith('-commands'),'role':'oracle' if op=='oracle' else 'growth-oracle' if op=='growth-oracle' else 'certify' if op.startswith('certify') else 'verify'}
  if op=='growth-oracle':cfg['case']=case['case_id']
  if op.startswith('verify'):
   if op=='verify-commands':source=_role_path(root,m,'controls','LD8C-certification')/'product/bundle.json'
   else:
    number=rid.rsplit('-',1)[-1];source=_role_path(root,m,'bootstrap' if number=='1' else case['case_id'],'certification-cold-'+number)/'product/bundle.json'
   cfg.update(bundle=str(source),bundle_sha256=_sha(source))
  path=directory/'input.json';_write(path,cfg);return ['prepare','--input',str(path)]
 native=_native_base(root)
 if op in {'produce','growth-produce'}:
  if op=='growth-produce':
   ref=_role_path(root,m,case['case_id'],'reference')/'product';native.update(growth_reference=str(ref/'oracle.json'),growth_reference_sha256=_sha(ref/'oracle.json'),oracle=str(ref/'expected.json'),oracle_sha256=_sha(ref/'expected.json'))
  operation='produce'
 elif op in {'check-fresh','check-resident'}:
  operation='check'
  if case['case_id'].startswith('growth-'):
   repetition=int(rid.rsplit('-',1)[-1]);base=_role_path(root,m,case['case_id'],'A-series')/'product'/f'rep-{repetition}'
   native=_read(base/('fresh-prepared.json'if op=='check-fresh'else'resident-prepared.json'));packet=base/('packet.json'if op=='check-fresh'else'candidate.json')
   ref=_role_path(root,m,case['case_id'],'reference')/'product';known=_read(ref/'expected.json')
   if native['oracle_sha256']!=_sha(ref/'expected.json') or native['oracle']!=str(ref/'expected.json'):raise ValueError('ProducerSelectedExpectedSubject')
   if op=='check-resident':
    wanted=list(known['requests'][:-1]);expected=native['resident']['expected_prefix']
    if expected['requests']!=wanted or expected['origin']!=known['origin'] or native['resident']['endpoint']!=known['endpoint']:raise ValueError('ResidentIndependentExpectations')
  else:
   base=_role_path(root,m,'integration','A-primary')/'product';packet=base/'packet.json'
   if op=='check-resident':
    original=_read(packet,PACKET_BOUND);oracle=_read(native['oracle']);prefix=json.loads(json.dumps(original));last=prefix['attempts'].pop();prefix['backend']['commits'].pop();prefix_path=directory/'prefix-packet.json';_write(prefix_path,prefix)
    expected={'variant':'LD8','behavior':native['behavior'],'policy_set_hash':native['policy_set_hash'],'origin':oracle['origin'],'endpoint':oracle['attempts'][-2]['after'],'requests':[_request(x['invocation'])for x in oracle['attempts'][:-1]],'require_safety':True}
    native['consumer_role']='resident';native['resident']={'prefix_packet':str(prefix_path),'prefix_packet_sha256':_sha(prefix_path),'expected_prefix':expected,'request':_request(oracle['attempts'][-1]['invocation']),'endpoint':oracle['endpoint']}
    packet=directory/'candidate.json';_write(packet,{'request':_request(last['invocation']),'candidate':{'invocation':last['invocation'],'bundle':original['backend']['commits'][-1]['record']['bundle']},'parent':last['before'],'endpoint':last['after']})
 elif op in {'control','interrupt-control','resource-control'}:
  operation='control';source=_role_path(root,m,'integration','A-primary')/'product/packet.json';cmd=_role_path(root,m,'controls','LD8C-certification')/'product/bundle.json';native.update(packet=str(source),packet_sha256=_sha(source),commands_bundle=str(cmd),commands_bundle_sha256=_sha(cmd))
  if op=='interrupt-control':native['control_variant']='interrupt_after_commit'
  if op=='resource-control':native['control_variant']='bounded_wait'
 else:raise ValueError('UnknownFixedRoleOperation')
 path=directory/'prepared-worker.json';_write(path,native)
 args=[operation,'--prepared',str(path)]
 if operation=='control':args+=['--control','E13'if op=='interrupt-control'else'E14'if op=='resource-control'else rid]
 else:args+=['--case',case['case_id']]
 if packet is not None:args+=['--packet',str(packet)]
 return args

def _execute_role(ctx,case,role):
 root,m,global_ledger,scenario=ctx;directory=safe_path(root,role['output_dir']);directory.mkdir(parents=True,exist_ok=False)
 ledgers=[global_ledger,scenario]
 if case['case_id']in {'bootstrap','proofs'}:ledgers.append(Ledger(m['clock']['started_ns'],m['clock']['boot_id'],1800))
 effective=min(ledgers,key=lambda l:l.remaining_ns(time.monotonic_ns(),_boot()))
 wall=permitted_wall(ledgers,time.monotonic_ns(),_boot(),min(900,role['wall_seconds']))
 op=role['operation'];product=directory/'product';env={}
 if op=='build':
  command=shlex.join([m['tools']['cargo']['path'],'build','--release','--offline','--locked','--manifest-path',str(HERE/'Cargo.toml')])
  argv=[m['tools']['nix-shell']['path'],str(CORE/ENV_FILES[0]),'--run',command]
  env={'CARGO_HOME':str(HERE/'private/cargo'),'CARGO_TARGET_DIR':str(HERE/'private/target'),'CARGO_NET_OFFLINE':'true','CARGO_INCREMENTAL':'0','CARGO_PROFILE_DEV_DEBUG':'0','CARGO_PROFILE_TEST_DEBUG':'0','RUSTFLAGS':'-C target-cpu=x86-64'}
 elif op=='formal':argv=[m['tools']['python']['path'],str(HERE/'check_proofs.py'),'--out',str(product)]
 else:argv=[str(_built_worker(root,m)if case['case_id']=='bootstrap'else _worker(root,m)),*_role_input(root,m,case,role,directory),'--out',str(product)]
 _write(directory/'binding.json',{'input_manifest':artifact_ref(root,'input-manifest.json','input_manifest'),'case_id':case['case_id'],'role_id':role['role_id'],'endpoint':role['endpoint'],'argv':argv,'tools':m['tools']})
 receipt=run(argv,directory/'command',wall_seconds=max(.001,wall),ledger=effective,env=env)
 stopped=receipt['stop_reason'] is not None;native_exit=receipt['exit_code'];matched=native_exit==0 and not stopped;reason=receipt['stop_reason'];operational='completed'if matched else'resource_stopped'if stopped else'build_failed'if op=='build'else'tool_failed'
 if not receipt['group_empty'] or not receipt.get('tree_empty',False):matched=False;operational='invalid_archive';reason='ProcessTreeNotEmpty'
 if op in {'interrupt-control','resource-control'}:
  matched=native_exit==-9 and reason=='WallLimit' and receipt['tree_empty'] and (op!='interrupt-control'or(product/'committed-memory-marker.json').exists())
  operational='interrupted'if op=='interrupt-control'else'resource_stopped'
 if matched and op=='build':
  product.mkdir();source=HERE/'private/target/release/assurance034';dest=root/'bin/assurance034';dest.parent.mkdir(exist_ok=True);write_once(dest,source.read_bytes());dest.chmod(0o555);_write(product/'worker.json',artifact_ref(root,'bin/assurance034','executed_worker'))
 if matched and op in {'certify','verify','certify-commands','verify-commands'}:
  assessment=_read(product/'assessment.json');matched=assessment.get('outcome')=='Certified under assumptions'and all(v=='Passed'for v in assessment.get('obligations',{}).values())and bool(assessment.get('obligations'))
  if not matched:reason='RequiredActualSafetyCheckFailed'
 if matched and op=='formal':
  from check_proofs import validate_proof_result
  proof=_read(product/'result.json');validate_proof_result(proof,_read(root/'inputs/code/proofs/targets.json'))
 if matched and op=='control':
  control=_read(product/'control.json');matched=control['control_id']==role['role_id']and control['control_result']in {'targeted_rejection','operationally_unresolved','not_applicable'}
  if not matched:reason='UnexpectedControlOutcome'
 if matched and op in {'produce','growth-produce','check-fresh','check-resident'}:
  result=_read(product/'worker-result.json');matched=result.get('operational')=='completed'and result.get('assurance')=='established_under_premises'and result.get('product_adoption')=='unactivated'
  if not matched:reason='WorkerResultNotEstablished'
 if not matched and operational=='completed':operational='tool_failed'
 refs=[artifact_ref(root,str(p.relative_to(root)),'closed_role_artifact')for p in sorted(directory.rglob('*'))if p.is_file()]
 exit_code=0 if matched else 3 if stopped or native_exit==3 else 1
 result={'operational':operational,'assurance':'unestablished','exit_code':exit_code,'expectations_met':matched,'stop_reason':reason,'artifact_refs':refs,'receipt':str((directory/'command/receipt.json').relative_to(root)),'product':str(product.relative_to(root)),'case_id':case['case_id'],'role_id':role['role_id'],'endpoint':role['endpoint']}
 positive=matched and operational=='completed'and op in {'certify','verify','certify-commands','verify-commands','formal','produce','growth-produce','check-fresh','check-resident'}
 if positive:
  result['assurance']='established_under_premises'
  result['claim_refs']=['Q1']if op in {'certify','verify','certify-commands','verify-commands'}else['abstract_targets']if op=='formal'else['Q3','Q4','Q5']if op.startswith('check-')else['Q3','Q4']if op=='growth-produce'else['Q1','Q2','Q3','Q4']
  result['premise_refs']=['pinned_implementation_and_tools','complete_source_and_subject','declared_correspondence','explicit_all_writer_host_trust']if op in {'produce','growth-produce'}else['pinned_implementation_and_tools','independent_expected_subjects','declared_correspondence']
 if op=='control'and matched:result['control_result']=_read(product/'control.json')['control_result']
 _write(directory/'result.json',result)
 result_ref=artifact_ref(root,str((directory/'result.json').relative_to(root)),'role_result');result['artifact_refs']=[*result['artifact_refs'],result_ref]
 from measurements import observation
 prepared_ref=artifact_ref(root,'prepared-manifest.json','prepared_manifest')if(root/'prepared-manifest.json').exists()else None
 _write(directory/'observation.json',observation(case,role,result,receipt,artifact_ref(root,'input-manifest.json','input_manifest'),prepared_ref))
 return result

def run_case(manifest,case_id):
 root,m,ledger=_load(manifest);case=_case(root,m,case_id);status=_case_path(root,case_id)
 if status.exists():raise FileExistsError(status)
 for dependency in case['requires']:
  path=_case_path(root,dependency)
  if not path.exists()or not _read(path).get('expectations_met'):raise ValueError('UnmetCasePrerequisite:'+dependency)
 if case_id!='bootstrap':_worker(root,m)
 if case_id.startswith('growth-')and ledger.remaining_ns(time.monotonic_ns(),_boot())<m['profile']['final_check_reserve_seconds']*10**9:raise ValueError('RemainingBudgetReservedForFinalChecks')
 status.parent.mkdir(parents=True,exist_ok=False);started=time.monotonic_ns();scenario=Ledger(started,_boot(),1800);results=[];failed=None
 for role in case['roles']:
  if failed is not None:
   results.append({'case_id':case_id,'role_id':role['role_id'],'operational':'not_run','assurance':'not_run','expectations_met':False,'exit_code':2,'stop_reason':'BlockedByRole:'+failed,'artifact_refs':[]});continue
  try:result=_execute_role((root,m,ledger,scenario),case,role)
  except Exception as error:result={'case_id':case_id,'role_id':role['role_id'],'operational':'tool_failed','assurance':'unestablished','expectations_met':False,'exit_code':1,'stop_reason':str(error),'artifact_refs':[]}
  results.append(result)
  if not result.get('expectations_met'):failed=role['role_id']
 success=failed is None
 if success and case_id=='bootstrap':
  try:_publish_prepared(root,m)
  except Exception as error:success=False;failed='prepared-publication';results.append({'role_id':'prepared-publication','operational':'tool_failed','exit_code':1,'stop_reason':str(error),'expectations_met':False,'artifact_refs':[]})
 exit_code=0 if success else 3 if any(r.get('exit_code')==3 for r in results)else 1
 summary={'format':'core034.case-summary.v1','operation':'run-case','campaign_id':m['campaign_id'],'case_id':case_id,'exit_code':exit_code,'operational':'completed'if success else'resource_stopped'if exit_code==3 else'tool_failed','assurance':'unestablished','expectations_met':success,'roles':results,'blocking_role':failed,'started_monotonic_ns':started,'finished_monotonic_ns':time.monotonic_ns(),'product_adoption':'unactivated'}
 _write(status,summary);return summary

def collect(manifest,out):
 root,m,ledger=_load(manifest)
 required=['comparison.json','complexity-assessment.json','decision.md','cost-assessment.md','requirement-origins.json','assurance-arguments.md','product-decisions.json']
 if any(not(FEATURE/name).exists()for name in required):raise ValueError('MissingAuthoredAssessment')
 directory=Path(out).resolve()
 if not directory.is_relative_to(root):raise ValueError('AssessmentOutsideCampaign')
 if not(root/'closed-artifacts.json').exists():close_campaign(manifest)
 verify_archive(root,_read(root/'closed-artifacts.json'))
 cases=case_records(root,m);observations=[]
 for case in m['profile']['cases']:
  for role in case['roles']:
   path=root/role['output_dir']/'observation.json'
   if path.exists():observations.append(_read(path))
 controls=[]
 for i in range(1,16):
  cid=f'E{i:02}';path=root/'controls'/cid/'product/control.json'
  if path.exists():
   original=_read(path);rolepath=root/'controls'/cid/'result.json';role=_read(rolepath)
   controls.append({'control_id':cid,'control_result':original['control_result']if role['expectations_met']else'operationally_unresolved','valid_control':{'operational':'completed'if role['expectations_met']else role['operational'],'evidence_refs':[str(path.relative_to(root))]},'reason':original.get('reason')or original.get('scope')or 'Named native valid/negative pair; see complete original result and declared limitations','evidence_refs':[str(path.relative_to(root)),str(rolepath.relative_to(root))]})
  else:controls.append({'control_id':cid,'control_result':'operationally_unresolved','valid_control':{'operational':'not_run','gate_ref':'controls'},'reason':'Named case not executed; see controls prerequisite or bounded role failure','evidence_refs':[]})
 proof=root/'roles/assurance-proofs/product/result.json';formal=_read(proof)if proof.exists()else{'operational':'not_run','fresh_replay':False,'roots':[],'blocking_ref':'proofs'}
 if formal.get('operational')!='completed':formal['blocking_ref']='proofs'
 comparison=_read(FEATURE/'comparison.json');coverage=comparison.pop('requirement_coverage')
 refs=list(_read(root/'closed-artifacts.json')['files']);known={r['path']for r in refs}
 for folder in ['gates','determinism']:
  for p in sorted((root/folder).rglob('*')):
   if p.is_file()and str(p.relative_to(root))not in known:refs.append(artifact_ref(root,str(p.relative_to(root)),'final_gate'))
 for name in ['determinism.json','preservation.json']:
  if(root/name).exists()and name not in known:refs.append(artifact_ref(root,name,'final_check'))
 record={'format':'core034.assessment.v1','research_completeness':'complete','candidate':'conditional','implementation_gate':'blocked','product_adoption':'unactivated','comparison':comparison,'controls':controls,'formal':formal,'cases':cases,'observations':observations,'costs':{'percentile_claims':[],'summed_unrelated_medians':False},'requirement_coverage':coverage,'blocking_evidence':['Q6 durable publication not established; no matching completed strong033 LD8 certificate; native/formal correspondence remains assumed',*[c['case_id']+': '+str(c.get('reason')or c.get('blocking_role'))for c in cases if c['operational']!='completed']],'artifact_refs':refs}
 from validate_report import validate_assessment
 validate_assessment(record,root)
 directory.mkdir(parents=True,exist_ok=False)
 for name in required:
  dest=directory/'reports'/name;dest.parent.mkdir(parents=True,exist_ok=True);write_once(dest,(FEATURE/name).read_bytes())
 for name in ['reproduction.md']:
  if(FEATURE/name).exists():write_once(directory/'reports'/name,(FEATURE/name).read_bytes())
 _write(directory/'assessment.json',record)
 write_once(directory/'report.md',b'Research assessment. Read reports/decision.md and cost-assessment.md together with assessment.json. Candidate conditional; implementation gate blocked; product adoption unactivated.\n')
 paths=[str(p.relative_to(root))for p in directory.rglob('*')if p.is_file()]
 closed=seal(root,paths);verify_archive(root,closed);_write(directory/'closed.json',closed)
 return {'format':'core034.summary.v1','operation':'collect','campaign_id':m['campaign_id'],'assessment':str(directory.relative_to(root)),'operational':'completed','assurance':'unestablished','candidate':'conditional','implementation_gate':'blocked','product_adoption':'unactivated','exit_code':0}

def case_records(root,m):
 records=[]
 for c in m['profile']['cases']:
  path=_case_path(root,c['case_id'])
  if path.exists():records.append(_read(path))
  else:
   blockers=[]
   for dep in c['requires']:
    prior=_case_path(root,dep)
    if not prior.exists():blockers.append(dep+': not_run')
    elif not _read(prior).get('expectations_met'):blockers.append(dep+': '+str(_read(prior).get('blocking_role')))
   remaining=Ledger(m['clock']['started_ns'],m['clock']['boot_id'],7200).remaining_ns(time.monotonic_ns(),_boot())
   records.append({'case_id':c['case_id'],'operational':'not_run','assurance':'not_run','reason':'; '.join(blockers)if blockers else'Remaining budget reserved for final checks; remaining_ns='+str(remaining),'gate_ref':c['requires'],'roles':[]})
 return records

def close_campaign(manifest):
 root,m,ledger=_load(manifest)
 # Every existing raw receipt must confirm that descendants have exited.
 for p in list((root/'roles').rglob('receipt.json'))+list((root/'controls').rglob('receipt.json'))+list((root/'growth').rglob('receipt.json')):
  r=_read(p)
  if r.get('group_empty')is not True or r.get('tree_empty')is not True:raise ValueError('OpenProcessAtClose:'+str(p))
 if not(root/'lifecycle/index.json').exists():
  _write(root/'lifecycle/index.json',{'format':'core034.lifecycle.v1','situations':_read(HERE/'profiles/comparison-plan.json'),'cases':case_records(root,m),'scope':'Whole role observations and native nested intervals; absent work stays not_run; no physical durability inferred'})
 paths=[str(p.relative_to(root))for p in root.rglob('*')if p.is_file()and not p.is_relative_to(root/'gates')and not p.is_relative_to(root/'assessment')and not p.is_relative_to(root/'assessment-final')and p.name!='closed-artifacts.json']
 closed=seal(root,paths);verify_archive(root,closed);_write(root/'closed-artifacts.json',closed);return closed

if __name__=='__main__':
 import argparse
 parser=argparse.ArgumentParser();commands=parser.add_subparsers(dest='operation',required=True)
 p=commands.add_parser('freeze');p.add_argument('--profile',type=Path,required=True);p.add_argument('--out',type=Path,required=True);p.add_argument('--inherit-clock-from',type=Path)
 p=commands.add_parser('run-case');p.add_argument('--manifest',type=Path,required=True);p.add_argument('--case',required=True)
 p=commands.add_parser('collect');p.add_argument('--manifest',type=Path,required=True);p.add_argument('--out',type=Path,required=True)
 args=parser.parse_args()
 try:
  if args.operation=='freeze':
   m=freeze(args.profile,args.out,inherit_manifest=args.inherit_clock_from);summary={'format':'core034.summary.v1','operation':'freeze','campaign_id':m['campaign_id'],'manifest':str(args.out/'input-manifest.json'),'operational':'completed','assurance':'unestablished','candidate':'undetermined','product_adoption':'unactivated','exit_code':0}
  elif args.operation=='run-case':summary=run_case(args.manifest,args.case)
  else:summary=collect(args.manifest,args.out)
 except(FileExistsError,ValueError,KeyError)as e:summary={'operation':args.operation,'operational':'not_run','assurance':'unestablished','reason':str(e),'product_adoption':'unactivated','exit_code':2}
 except Exception as e:summary={'operation':args.operation,'operational':'tool_failed','assurance':'unestablished','reason':str(e),'product_adoption':'unactivated','exit_code':1}
 print(json.dumps(summary));sys.exit(summary['exit_code'])
