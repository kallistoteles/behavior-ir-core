import json,pathlib,re,sys
root=pathlib.Path.cwd();base=root/'specs/018-strict-profile-replay/evidence';m=json.loads((root/'tests/fixtures/replay/018/matrix.json').read_text());observed=set();unsupported=set();logs=[]
strict='--strict' in sys.argv
labels=[arg for arg in sys.argv[1:] if arg!='--strict']
for label in labels:
 d=base/'runs'/label;run=json.loads((d/'run.json').read_text());assert run['exit_status']==0,label
 logs.append(str((d/'run.json').relative_to(root)))
 for line in (d/'stdout.txt').read_text().splitlines():
  hit=re.search(r'COVERAGE018 (\S+) (\S+) (\S+)',line)
  if hit:
   r,b,c=hit.groups()
   if r.startswith('U'):unsupported.add((r,b));continue
   observed.add((r,b,c))
  hit=re.search(r'UNSUPPORTED018 (\S+) (\S+)',line)
  if hit:unsupported.add(hit.groups())
required=set()
for c in m['cases']:
 for cell in c['required_cells']:
  if isinstance(cell,dict):required.add((cell['row'],cell['boundary'],c['id']))
  else: required.add((*cell.split('/'),c['id']))
missing=required-observed
aux={(x['row'],x['boundary'],c['id']) for c in m['cases'] for x in c.get('applicable_examples',[])}
expected_u={(c['id'],b) for c in m['unsupported'] for b in c['boundaries']}
unexpected=observed-required-aux
missing_u=expected_u-unsupported
extra_u=unsupported-expected_u
if strict:
 assert len(required)==468 and len(expected_u)==58
 assert not missing and not unexpected and not missing_u and not extra_u,(missing,unexpected,missing_u,extra_u)
 assert aux <= observed,aux-observed
 for label in labels:
  log=(base/'runs'/label/'stdout.txt').read_text()
  assert 'running 0 tests' not in log,label
  assert not re.search(r'[1-9][0-9]* ignored',log),label
 assert len(m['supported_cells'])==24 and len(m['rows'])==9
out={'scope':'Only successful executed command receipts; no skipped/N/A cell is counted. Pending missing cases remain visible.','receipts':logs,'required_count':len(required),'required_executed_count':len(required&observed),'required_executed':sorted(required&observed),'auxiliary_executed':sorted(observed&aux),'unexpected':sorted(unexpected),'unsupported_missing':sorted(missing_u),'unsupported_unexpected':sorted(extra_u),'strict_reconciliation_passed':strict,'executed':sorted(observed),'missing':sorted(missing),'unsupported_executed':sorted(unsupported),'auxiliary_case_inventory':m.get('auxiliary_fixtures',[])}
(base/'matrix-coverage.json').write_text(json.dumps(out,indent=2)+'\n')
print('required',len(required),'observed',len(observed),'missing',len(missing));print(json.dumps(sorted(missing)[:40]))
