from pathlib import Path
import json,re,hashlib,collections
root=Path('/home/kalle/repos/behavior-ir-core-022'); ev=root/'specs/022-replay-evidence-authority/evidence';manifest=root/'tests/fixtures/replay/022/matrix.json';m=json.loads(manifest.read_text())
passing=collections.defaultdict(list)
for p in (ev/'runs').glob('**/run.json'):
 j=json.loads(p.read_text())
 if j.get('exit_status')!=0:continue
 for name in re.findall(r'^test (\S+) \.\.\. ok$',(p.parent/'stdout.txt').read_text(),re.M):
  passing[name].append((j.get('finished_utc',''),str(p.relative_to(root))))
runner_receipt=ev/'runs/protocol-green/runner/actual-candidate/run.json'
assert json.loads(runner_receipt.read_text())['exit_status']==0
rows=[json.loads(x) for x in (runner_receipt.parent/'details/runner-first.stdout.txt').read_text().splitlines()]
observed={(x['case_id'],x['boundary']):x for x in rows};assert len(observed)==len(rows)==38
cells=[]
def cell(c,b,category,cid):
 if c.get('execution_kind')=='replay_runner':
  r=observed[(c['id'],b)];assert r['replay']['matches']==c['expected'][b];assert r['record_id']==c['original_record_id'];assert r['data_version']==c['data_version'];assert r['read_only'] is True
  evidence={'run':str(runner_receipt.relative_to(root)),'output':str((runner_receipt.parent/'details/runner-first.stdout.txt').relative_to(root)),'assertion':'actual canonical original-identity/profile/coordinate/outcome + independently checked unchanged Store authority','actual_replay':r['replay']}
 else:
  attrs=[]
  for a in c['test_attribution']:
   if a['boundary']!=b:continue
   src=root/a['source_file'];assert src.is_file();assert a['test_name'] in src.read_text(),a
   candidates=[]
   for n,runs in passing.items():
    if n==a['test_name'] or n.endswith('::'+a['test_name']):candidates+=runs
   if candidates:
    _,run=max(candidates);attrs.append(dict(a,run=run,source_file_sha256=hashlib.sha256(src.read_bytes()).hexdigest()))
  assert attrs,(c['id'],b)
  evidence={'attributed_assertions':attrs,'interpretation':'Passing concrete test branch listed in the independently reviewed manifest; test support/zero-test/ignored/failed runs excluded.'}
 cells.append({'id':cid,'case_id':c['id'],'boundary':b,'category':category,'expected':c['expected'].get(b) if isinstance(c.get('expected'),dict) else c.get('expected'),'status':'executed_pass','evidence':evidence})
for c in m['cases']:
 for b in c['boundaries']:cell(c,b,'feature',c['id']+':'+b)
for c in m['inherited_018']['required_cells']:cell(c,c['boundary'],'inherited_018',c['id'])
for c in m['unsupported_cells']:cell(c,c['boundary'],'unsupported_or_admission',c['id'])
for c in m['auxiliary_controls']:
 for b in c['boundaries']:cell(c,b,'atomic_snapshot_auxiliary',c['id']+':'+b)
protocol={
 'runner-baseline-inventory':('protocol-red/runner/actual-baseline',None,1),
 'checker-baseline-valid-022':('protocol-red/checker/existing018-baseline',None,1),
 'hook-baseline-invocation':('protocol-red/hook/existing-parent-baseline',None,1),
 'valid-acceptance':('protocol-green/all-candidate','checker-ok',0),
 'missing-case':('protocol-green/all-candidate','checker-missing_case',1),
 'extra-case':('protocol-green/all-candidate','checker-extra_case',1),
 'duplicate-case':('protocol-green/all-candidate','checker-duplicate_case',1),
 'wrong-identity':('protocol-green/all-candidate','checker-wrong_identity',1),
 'wrong-profile':('protocol-green/all-candidate','checker-wrong_profile',1),
 'wrong-coordinate':('protocol-green/all-candidate','checker-wrong_coordinates',1),
 'wrong-outcome':('protocol-green/all-candidate','checker-wrong_result',1),
 'empty-output':('protocol-green/all-candidate','checker-empty_output',1),
 'noncanonical-output':('protocol-green/all-candidate','checker-noncanonical_output',1),
 'unequal-runs':('protocol-green/all-candidate','checker-changed_output',1),
 'unequal-exits':('protocol-green/all-candidate','checker-unequal_exits',1),
 'fixture-missing':('protocol-green/all-candidate','checker-missing-fixture',1),
 'fixture-changed':('protocol-green/all-candidate','checker-changed-fixture',1),
 'hook-failure':('protocol-green/all-candidate','hook-fail',1)}
for c in m['protocol_cases']:
 label,name,status=protocol[c['id'].removeprefix('PROTO022-')];p=ev/'runs'/label/'run.json';j=json.loads(p.read_text())
 if name is None:assert j['exit_status']==status
 else:
  assert j['exit_status']==0;details=json.loads((p.parent/'details/results.json').read_text());matches=[x for x in details['runs'] if x['name']==name];assert len(matches)==1 and matches[0]['status']==status
 cells.append({'id':c['id'],'category':'protocol','status':'expected_red_retained' if name is None else 'executed_pass','expected':c['expected'],'evidence':{'run':str(p.relative_to(root)),'subprocess':name,'actual_exit_status':status,'scope':'Protocol mocks for checker/hook, actual replay for runner; these are not substituted for final gates.'}})
ids=[c['id'] for c in cells];assert len(ids)==len(set(ids));assert len(cells)==786
na=[x for x in m['inapplicable_cells']]
for c in m['cases']:
 for b,x in c.get('applicability',{}).items():
  if x['status']=='not_applicable':na.append({'case_id':c['id'],'boundary':b,**x})
report={'status':'complete_attributed_pre_freeze','scope':'Exact reviewed required inventory equals attributed executed inventory. Final revision gates and exact-revision consumer remain external delivery obligations. Repeated observations are support, not duplicate required IDs. Supplemental consumer/property/custody guards are separate evidence.','manifest':str(manifest.relative_to(root)),'manifest_sha256':hashlib.sha256(manifest.read_bytes()).hexdigest(),'coverage_tool_sha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),'required_count':len(cells),'attributed_executed_count':len(cells),'missing_ids':[],'unexpected_required_ids':[],'duplicate_required_ids':[],'ignored_required_cases':0,'counts':dict(collections.Counter(c['category'] for c in cells)),'inapplicable':na,'cells':cells}
(ev/'matrix-coverage.json').write_text(json.dumps(report,indent=2)+'\n')
print(report['counts'],report['required_count'])
