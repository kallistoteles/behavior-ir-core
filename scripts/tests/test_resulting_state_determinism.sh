#!/usr/bin/env bash
# Gate protocol tests. Core's independent fixture tests establish semantics;
# these mocks check collection, refusal, replay and digest enforcement by the gate.
set -euo pipefail
cd "$(dirname "$0")/../.."
tmp="$(mktemp -d)"
cleanup() {
  if [ -n "${RESULTING_TEST_CAPTURE_DIR:-}" ]; then
    mkdir -p "$RESULTING_TEST_CAPTURE_DIR"
    cp -R "$tmp/." "$RESULTING_TEST_CAPTURE_DIR/"
  fi
  rm -rf "$tmp"
}
trap cleanup EXIT
cat >"$tmp/behavior" <<'PYMOCK'
#!/usr/bin/env python3
import copy, json, os, pathlib, sys
args=sys.argv[1:]
log=pathlib.Path(os.environ['RESULTING_TEST_LOG'])
with log.open('a') as file: file.write(json.dumps(args)+'\n')
mode=os.environ.get('RESULTING_TEST_MODE','ok')
calls=[json.loads(line) for line in log.read_text().splitlines()]
count=sum(call==args for call in calls)
if args[0] in ('replay','invoke-replay'):
    archive='compatibility-archive' in pathlib.Path(args[2]).parts
    failed=mode=='replay_failure' or (archive and mode=='archive_replay_failure') or (not archive and mode=='current_replay_failure')
    output={'matches':True,'diff':[]}
    if mode=='archive_output_drift' and archive and count==2: output['drift']=True
    if mode!='empty_replay_output': print(json.dumps(output,sort_keys=True,separators=(',',':')),end='')
    sys.exit(2 if failed else 0)
if args[0]!='eval': sys.exit(64)
if mode=='cli_failure': sys.exit(64)
name=pathlib.Path(args[2]).stem
# Already codec/schema/replay-checked T056 records are fake CLI responses only.
# The production checker must still compare its independent hand-written oracle.
record=json.loads((pathlib.Path(os.environ['RESULTING_TEST_RECORDS'])/(name+'.json')).read_text())
if mode=='wrong_profile': record['validation_profile']='behavior.unproven.v1'
if mode=='missing_profile': record.pop('validation_profile')
if mode=='old_record_version': record['record_version']='0.7'
if mode=='bad_child_allow' and name=='invalid-create': record['result']='ALLOW'; record['reasons']=[]
if mode=='wrong_typed_witness' and name=='invalid-create': record['trace'][1]['subject']['id']='new'
if mode=='wrong_observation_phase' and name=='invalid-create': record['trace'][1]['observations'][0]['phase_state']='S'
if mode=='error_as_value' and name=='project-margin-zero': record['result']='ALLOW'; record['reasons']=[]; record['trace'][0]['outcome']=0
if mode=='partial_parent_allow' and name=='partial-parent': record['result']='ALLOW'; record['reasons']=[]
if mode=='duplicate_command' and name=='receipt': record['commands']['intents'].append(copy.deepcopy(record['commands']['intents'][0]))
if mode=='uncommitted_dispatch' and name=='receipt': record['commands']['intents'][0]['dispatched']=True
if mode=='changed_output' and count==2: record['unit_drift']=True
if mode!='empty_output': print(json.dumps(record,sort_keys=True,separators=(',',':')),end='')
status={'ALLOW':0,'DENY':1,'ERROR':3,'INVALID_INPUT':2}[record['result']]
if mode=='wrong_exit': status=64
if mode=='exit_disagreement' and count==2: status=64
sys.exit(status)
PYMOCK
chmod +x "$tmp/behavior"
export BEHAVIOR_BIN="$tmp/behavior" RESULTING_TEST_LOG="$tmp/log"
export RESULTING_TEST_RECORDS="$PWD/specs/017-resulting-state-validity/evidence/runs/US4/current-fixtures/attempt1/actual-records"
python3 - "$tmp" <<'PYTEST'
import collections, hashlib, json, os, pathlib, shutil, subprocess, sys
root=pathlib.Path.cwd()
tmp=pathlib.Path(sys.argv[1])
checker=root/'scripts/check-resulting-state-determinism.py'
assert checker.is_file(), 'new checker has not been implemented; this is not semantic RED'
current=root/'tests/fixtures/resulting-state-validity/current'
compat=root/'tests/fixtures/resulting-state-validity/compatibility-archive'
inventory=json.loads((current/'cases.json').read_text())
archive=json.loads((compat/'manifest.json').read_text())
assert len(inventory['cases'])==5
assert len(archive['cases'])==106
original={str(path):hashlib.sha256(path.read_bytes()).hexdigest() for path in [
    current/'manifest.json',compat/'manifest.json',
    *(current/case['request'] for case in inventory['cases']),
    *(compat/case['record_path'] for case in archive['cases'])]}
log=pathlib.Path(os.environ['RESULTING_TEST_LOG'])
digest_dir=tmp/'digests'
digest_dir.mkdir()
(digest_dir/'outputs.tsv').write_text('')
results=[]

def run(mode, script=checker, cwd=root, expect_success=False):
    log.write_text('')
    (digest_dir/'outputs.tsv').write_text('')
    env=os.environ.copy()
    env['RESULTING_TEST_MODE']=mode
    env['BEHAVIOR_DIGEST_DIR']=str(digest_dir)
    process=subprocess.run(['python3',str(script)],cwd=cwd,env=env,capture_output=True,text=True)
    (tmp/(mode+'.stdout.txt')).write_text(process.stdout)
    (tmp/(mode+'.stderr.txt')).write_text(process.stderr)
    calls=[json.loads(line) for line in log.read_text().splitlines()]
    (tmp/(mode+'.calls.json')).write_text(json.dumps(calls,indent=2)+'\n')
    results.append({'mode':mode,'exit_status':process.returncode,'calls':len(calls)})
    assert (process.returncode==0)==expect_success, (mode,process.returncode,process.stdout,process.stderr)
    return calls,process

calls,success=run('ok',expect_success=True)
evaluations=[call for call in calls if call[0]=='eval']
expected_requests={str((current/case['request']).resolve()) for case in inventory['cases']}
eval_counts=collections.Counter(str(pathlib.Path(call[2]).resolve()) for call in evaluations)
assert set(eval_counts)==expected_requests and set(eval_counts.values())=={2}, eval_counts
replays=[call for call in calls if call[0] in ('replay','invoke-replay')]
expected_archives={str((compat/case['record_path']).resolve()):case for case in archive['cases']}
archive_calls=[call for call in replays if str(pathlib.Path(call[2]).resolve()) in expected_archives]
archive_counts=collections.Counter(str(pathlib.Path(call[2]).resolve()) for call in archive_calls)
assert set(archive_counts)==set(expected_archives) and set(archive_counts.values())=={2}, archive_counts
for call in archive_calls:
    case=expected_archives[str(pathlib.Path(call[2]).resolve())]
    assert call[0]==('replay' if case['command'][4]=='eval' else 'invoke-replay'), call
    assert pathlib.Path(call[1]).resolve()==(root/case['command'][5]).resolve(), call
current_calls=[call for call in replays if str(pathlib.Path(call[2]).resolve()) not in expected_archives]
assert len(current_calls)==5 and all(call[0]=='replay' for call in current_calls), current_calls
assert len(calls)==227, len(calls)
rows=(digest_dir/'outputs.tsv').read_text().splitlines()
assert rows and all(row.startswith('core\t017:') for row in rows), rows
assert len(rows)==len({row.split('\t')[1] for row in rows}), 'duplicate digest labels'
assert all(len(row.split('\t'))==3 and len(row.split('\t')[2])==64 for row in rows), rows
for case in inventory['cases']:
    assert 'current:'+case['name'] in success.stdout, success.stdout

for mode in (
    'changed_output','cli_failure','empty_output','wrong_exit','exit_disagreement',
    'replay_failure','archive_replay_failure','current_replay_failure',
    'empty_replay_output','archive_output_drift','wrong_profile','missing_profile',
    'old_record_version','bad_child_allow','wrong_typed_witness',
    'wrong_observation_phase','error_as_value','partial_parent_allow',
    'duplicate_command','uncommitted_dispatch',
):
    run(mode)

# Mutate only owned disposable copies. A byte drift must fail the real manifest
# check even when our fake CLI claims replay success. Original fixtures stay intact.
sandbox=tmp/'fixture-sandbox'
(sandbox/'scripts').mkdir(parents=True)
shutil.copy2(checker,sandbox/'scripts'/checker.name)
fixtures=sandbox/'tests/fixtures'
fixtures.mkdir(parents=True)
for child in (root/'tests/fixtures').iterdir():
    if child.name!='resulting-state-validity': (fixtures/child.name).symlink_to(child,target_is_directory=child.is_dir())
rv=fixtures/'resulting-state-validity'
rv.mkdir()
for child in (root/'tests/fixtures/resulting-state-validity').iterdir():
    if child.name in ('current','compatibility-archive'): shutil.copytree(child,rv/child.name)
    else: (rv/child.name).symlink_to(child,target_is_directory=child.is_dir())
target=rv/'compatibility-archive'/archive['cases'][0]['record_path']
saved=target.read_bytes()
target.write_bytes(saved+b'\n')
run('archive_digest_drift',sandbox/'scripts'/checker.name,sandbox)
target.write_bytes(saved)
target=rv/'current'/inventory['cases'][0]['expectation']
saved=target.read_bytes()
target.write_bytes(saved+b'\n')
run('current_oracle_digest_drift',sandbox/'scripts'/checker.name,sandbox)
target.write_bytes(saved)
assert all(hashlib.sha256(pathlib.Path(path).read_bytes()).hexdigest()==digest for path,digest in original.items()), 'unit test changed an original fixture'
(tmp/'results.json').write_text(json.dumps(results,indent=2)+'\n')
print('test_resulting_state_determinism: OK; '+str(len(results))+' protocol cases')
PYTEST
