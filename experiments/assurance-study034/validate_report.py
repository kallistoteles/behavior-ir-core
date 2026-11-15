"""Independent structural/source validation; no automatic judgement of human intent."""
import hashlib
import re
import subprocess
from pathlib import Path
from artifact_io import bounded_read,strict_loads

CATEGORIES={'program_certification','initial_validity','deployment_enforcement','history_correctness','new_recipient_verification','replay_restrictions','finality','timing'}
CLASSIFICATIONS={'explicit','derived','proposal','unresolved'}

def nonempty(value):return isinstance(value,str) and bool(value.strip())
def unique(records):
 result={}
 for row in records:
  key=row.get('id')
  if not nonempty(key) or key in result:raise ValueError('MissingOrRepeatedId')
  result[key]=row
 return result

def validate_source_contexts(catalog,contexts,read_source):
 sources=unique(catalog['sources']);entries=unique(contexts['contexts']);checked={}
 for key,c in entries.items():
  if c.get('source_id') not in sources:raise ValueError('DanglingSource')
  s=sources[c['source_id']]
  if not re.fullmatch('[0-9a-f]{40}',s['commit']):raise ValueError('UnpinnedSource')
  if s['id'] not in checked:
   raw=read_source(s)
   if len(raw)!=s['bytes'] or hashlib.sha256(raw).hexdigest()!=s['sha256']:raise ValueError('SourceIdentity')
   checked[s['id']]=raw.decode('utf-8').splitlines(keepends=True)
  lines=checked[s['id']];start=c.get('start_line');end=c.get('end_line')
  if type(start) is not int or type(end) is not int or not 1<=start<=end<=len(lines):raise ValueError('Locator')
  if c.get('text')!=''.join(lines[start-1:end]) or not nonempty(c.get('original_scope')):raise ValueError('ContextMismatch')
 return entries

def validate_origins(origins,catalog,contexts,read_source):
 if origins.get('format')!='core034.origins.v1':raise ValueError('OriginFormat')
 ctx=validate_source_contexts(catalog,contexts,read_source);rows=unique(origins['origins']).values()
 if {r.get('category') for r in rows}!=CATEGORIES:raise ValueError('CategoryCoverage')
 for row in rows:
  if row.get('classification') not in CLASSIFICATIONS:raise ValueError('Classification')
  for key in ['guarantee','beneficiary','lifecycle','subject','interpretation','justification','scope']:
   if not nonempty(row.get(key)):raise ValueError('MissingInterpretation:'+key)
  if not row.get('context_refs') or any(x not in ctx for x in row['context_refs']):raise ValueError('DanglingContext')
  if not isinstance(row.get('premises'),list) or not row['premises']:raise ValueError('PremisesRequired')
  if not isinstance(row.get('decision_dependencies'),list):raise ValueError('DecisionsRequired')
  # This investigation lacks a complete user-instruction archive. Document age,
  # experiment approval and reused terminology cannot fill that provenance gap.
  if row.get('original_user_intent')!='unestablished':raise ValueError('OriginalIntentNotEstablished')
 return True

def validate_decisions(decisions):
 if decisions.get('format')!='core034.product-decisions.v1' or decisions.get('product_adoption')!='unactivated':raise ValueError('ProductAdoption')
 for row in unique(decisions['decisions']).values():
  if row.get('status') not in {'unresolved','proposed','explicitly_decided'}:raise ValueError('DecisionStatus')
  if not nonempty(row.get('topic')) or not nonempty(row.get('rationale')):raise ValueError('DecisionMeaning')
  if row.get('failed_module_proof')=='explicit_trust':raise ValueError('FailedProofCannotBeTrustedAway')
  if row['status']=='explicitly_decided':
   approval=row.get('approval')
   if not isinstance(approval,dict) or approval.get('scope')!='product_contract' or approval.get('kind')!='explicit_user_decision' or not approval.get('source_ref') or not approval.get('reviewed_quote'):raise ValueError('NoProductApproval')
  elif row.get('approval') is not None:raise ValueError('UnexpectedApproval')
 return True

def git_reader(core_root):
 repos={'https://github.com/kallistoteles/behavior-ir':Path('/data/repos/behaviour-ir'),'https://github.com/kallistoteles/behavior-ir-core':Path(core_root),'https://github.com/kallistoteles/behavior-ir-project':Path('/data/repos/behavior-ir-project')}
 def read(s):
  path=Path(s['path'])
  if s['repository'] not in repos or path.is_absolute() or '..' in path.parts or not re.fullmatch('[0-9a-f]{40}',s['commit']):raise ValueError('SourceLocation')
  raw=subprocess.check_output(['git','-C',str(repos[s['repository']]),'show',s['commit']+':'+s['path']],timeout=15)
  if len(raw)>16*1024**2:raise ValueError('SourceBound')
  return raw
 return read

def load(path):return strict_loads(bounded_read(path))

def validate_assessment(record,evidence_root=None):
 from artifact_io import OUTCOMES,validate_outcomes,verify_ref
 from comparison import validate_comparison
 from check_proofs import validate_proof_result
 if record.get('format')!='core034.assessment.v1' or record.get('research_completeness')!='complete' or record.get('product_adoption')!='unactivated':raise ValueError('AssessmentVersionOrAdoption')
 if record.get('candidate')not in OUTCOMES['candidate'] or record.get('implementation_gate')not in {'blocked','research_only'}:raise ValueError('CandidateGate')
 validate_comparison(record['comparison'])
 controls=record['controls'];ids=[x.get('control_id')for x in controls]
 if len(ids)!=15 or set(ids)!={f'E{i:02}'for i in range(1,16)}:raise ValueError('ControlCoverage')
 for control in controls:
  if control.get('control_result')not in OUTCOMES['control_result']or not nonempty(control.get('reason')):raise ValueError('ControlDisposition')
  valid=control.get('valid_control',{})
  if valid.get('operational')not in OUTCOMES['operational']:raise ValueError('MissingValidControl')
  if control['control_result']=='targeted_rejection'and(valid['operational']!='completed'or not control.get('evidence_refs')):raise ValueError('UndemonstratedTargetedControl')
 cases=record['cases'];ids=[x.get('case_id')for x in cases]
 wanted=['bootstrap','proofs','integration','certification-cold-2','certification-cold-3','controls',*[f'growth-D{i}'for i in range(1,7)]]
 if len(ids)!=12 or set(ids)!=set(wanted):raise ValueError('CaseCoverage')
 for case in cases:
  if case.get('operational')not in OUTCOMES['operational']:raise ValueError('CaseOutcome')
  if case['operational']!='completed'and not(nonempty(case.get('reason'))or nonempty(case.get('blocking_role'))):raise ValueError('MissingCaseBlocker')
  if case.get('assurance')=='established_under_premises':raise ValueError('CaseExitNotProof')
  if case['operational']=='completed'and not case.get('roles'):raise ValueError('UnrunCasePassed')
 formal=record['formal']
 if formal.get('certificate_available'):raise ValueError('AbstractRootsNotCryptographicCertificate')
 if formal.get('operational')=='completed':validate_proof_result(formal,load(Path(__file__).parent/'proofs/targets.json'))
 elif not formal.get('blocking_ref'):raise ValueError('MissingFormalBlocker')
 for obs in record['observations']:
  resources=obs.get('resources',{})
  if resources.get('aggregate_peak')is not None or (resources.get('aggregate_peak_rss_bytes')is not None):raise ValueError('UnavailableAggregateRelabelled')
  validate_outcomes(obs)
  if resources.get('group_empty')is not True or resources.get('tree_empty')is not True:raise ValueError('OpenProcessArchive')
 for claim in record['costs'].get('percentile_claims',[]):
  if type(claim.get('n_complete'))is not int or claim['n_complete']<100:raise ValueError('InsufficientPercentileSamples')
 if record['costs'].get('summed_unrelated_medians')is not False:raise ValueError('UnrelatedMedians')
 expected={f'FR-{i:03}'for i in range(1,23)}|{f'SC-{i:03}'for i in range(1,9)}
 coverage=record['requirement_coverage']
 if set(coverage)!=expected:raise ValueError('RequirementCoverage')
 for row in coverage.values():
  if row.get('disposition')not in {'addressed','addressed_with_blocking_gap'}or not nonempty(row.get('reason')):raise ValueError('RequirementMeaning')
 if(record['implementation_gate']=='blocked'or any(c['operational']!='completed'for c in cases))and not record.get('blocking_evidence'):raise ValueError('MissingBlockingEvidence')
 if evidence_root is not None:
  root=Path(evidence_root);index={}
  for ref in record['artifact_refs']:
   verify_ref(root,ref)
   if ref['path']in index:raise ValueError('RepeatedArtifact')
   index[ref['path']]=ref
  # All report evidence links must resolve to the byte-checked closed archive.
  def links(value):
   if isinstance(value,dict):
    for key,v in value.items():
     if key=='evidence_refs':
      for name in v:
       if not isinstance(name,str)or name not in index:raise ValueError('DanglingEvidenceReference')
     else:links(v)
   elif isinstance(value,list):
    for v in value:links(v)
  links({k:v for k,v in record.items()if k!='artifact_refs'})
 return True

def validate_archive(manifest,assessment,rerun=True):
 import sys
 from artifact_io import verify_archive,verify_ref,write_once
 import study
 root,m,ledger=study._load(manifest);directory=Path(assessment).resolve()
 if not directory.is_relative_to(root):raise ValueError('AssessmentOutsideCampaign')
 record=load(directory/'assessment.json');validate_assessment(record,root)
 matrix=load(directory/'reports/comparison.json');coverage=matrix.pop('requirement_coverage')
 if matrix!=record['comparison']or coverage!=record['requirement_coverage']:raise ValueError('AuthoredComparisonMismatch')
 complexity=load(directory/'reports/complexity-assessment.json')
 if set(complexity.get('arrangements',{}))!={'A','B','C'}:raise ValueError('ComplexityCoverage')
 for row in complexity['arrangements'].values():
  for key in ['trusted_authorities','verification_obligations','lifecycle_boundaries','recovery_mechanisms']:
   if not row.get(key)or row.get(key+'_count')!=len(row[key]):raise ValueError('ComplexityDimensions')
 proof=root/'roles/assurance-proofs/product/result.json'
 if proof.exists()and load(proof)!={k:v for k,v in record['formal'].items()if k!='blocking_ref'}:raise ValueError('OriginalFormalMismatch')
 verify_archive(root,load(directory/'closed.json'))
 verify_archive(root,load(root/'closed-artifacts.json'))
 for case in record['cases']:
  p=root/'cases'/case['case_id']/'status.json'
  if p.exists()and load(p)!=case:raise ValueError('CaseReceiptMismatch')
 for obs in record['observations']:
  case=next(c for c in m['profile']['cases']if c['case_id']==obs['case_id']);role=next(r for r in case['roles']if r['role_id']==obs['role'])
  if load(root/role['output_dir']/'observation.json')!=obs:raise ValueError('ObservationReceiptMismatch')
  receipt=load(root/role['output_dir']/'command/receipt.json')
  if receipt.get('group_empty')is not True or receipt.get('tree_empty')is not True:raise ValueError('UnclosedOriginalRole')
  for ref in obs['artifact_refs']:verify_ref(root,ref)
 defs=m['sources']['definitions'];definitions=root/'inputs/definitions'
 validate_origins(load(definitions/'requirement-origins.json'),load(definitions/'inputs/source-catalog.json'),load(definitions/'inputs/source-contexts.json'),git_reader(study.CORE))
 validate_decisions(load(directory/'reports/product-decisions.json'))
 # A fresh trusted execution, never an archive-supplied executable/source.
 # `_load` has matched these installed controllers and proof sources to the freeze.
 fresh=None
 if rerun and record['formal']['operational']=='completed':
  from check_proofs import check
  fresh=check(directory/'independent-formal-replay',ledger)
  if fresh['operational']!='completed':raise ValueError('IndependentFormalReplayFailed')
 if rerun and(root/'prepared-manifest.json').exists():
  import time
  from recorder import run
  worker=study._worker(root,m)
  for variant,source in [('LD8','roles/certification-cold-1/product/bundle.json'),('LD8C','controls/LD8C-certification/product/bundle.json')]:
   bundle=root/source
   if not bundle.exists():continue
   work=directory/('independent-program-'+variant);work.mkdir()
   study._write(work/'input.json',{'format':'core034.worker-input.v1','role':'verify','commands':variant=='LD8C','bundle':str(bundle),'bundle_sha256':study._sha(bundle)})
   wall=max(.001,min(300,ledger.remaining_ns(time.monotonic_ns(),study._boot())/10**9))
   receipt=run([str(worker),'prepare','--input',str(work/'input.json'),'--out',str(work/'product')],work/'command',wall_seconds=wall,ledger=ledger)
   if receipt['exit_code']!=0 or receipt['stop_reason']or not receipt['tree_empty']:raise ValueError('IndependentProgramCheckFailed:'+variant)
   native=load(work/'product/assessment.json')
   if native['outcome']!='Certified under assumptions'or any(v!='Passed'for v in native['obligations'].values()):raise ValueError('NoActualCheckedProgram:'+variant)
  packet=root/'roles/A-primary/product/packet.json'
  if packet.exists():
   work=directory/'independent-history';work.mkdir()
   receipt=run([str(worker),'check','--prepared',str(root/'prepared-worker.json'),'--case','integration','--packet',str(packet),'--out',str(work/'product')],work/'command',wall_seconds=max(.001,min(300,ledger.remaining_ns(time.monotonic_ns(),study._boot())/10**9)),ledger=ledger)
   if receipt['exit_code']!=0 or receipt['stop_reason']or not receipt['tree_empty']:raise ValueError('IndependentOriginalHistoryReplayFailed')
 result={'format':'core034.validation.v1','operation':'validate','research_completeness':'validated','candidate':record['candidate'],'implementation_gate':record['implementation_gate'],'product_adoption':'unactivated','source_contexts':'validated','formal':'independently_recompiled_and_fresh_replayed'if fresh else'explicitly_blocked','original_user_intent':'unestablished','scope':'Research evidence consistency and actual checked abstract arguments; native correspondence, all-writer host honesty, Q6 and strong033 LD8 certificate remain gaps','exit_code':0}
 write_once(directory/'validation.json',result);return result

if __name__=='__main__':
 import argparse,json,sys
 p=argparse.ArgumentParser();p.add_argument('--origins',type=Path);p.add_argument('--manifest',type=Path);p.add_argument('--assessment',type=Path);a=p.parse_args()
 try:
  if a.origins and not a.manifest and not a.assessment:
   root=a.origins.resolve();validate_origins(load(root/'requirement-origins.json'),load(root/'inputs/source-catalog.json'),load(root/'inputs/source-contexts.json'),git_reader(root.parents[1]));validate_decisions(load(root/'product-decisions.json'));r={'origins':'validated','product_adoption':'unactivated','exit_code':0}
  elif a.manifest and a.assessment and not a.origins:r=validate_archive(a.manifest,a.assessment)
  else:raise ValueError('RequiredOriginsOrManifestAndAssessment')
 except Exception as e:r={'operation':'validate','operational':'invalid_archive','assurance':'unestablished','reason':str(e),'product_adoption':'unactivated','exit_code':1}
 print(json.dumps(r));sys.exit(r['exit_code'])
