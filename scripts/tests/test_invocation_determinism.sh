#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/../.."
tmp="$(mktemp -d)"
cleanup() {
  if [ -n "${INVOCATION_TEST_CAPTURE_DIR:-}" ]; then
    mkdir -p "$INVOCATION_TEST_CAPTURE_DIR"
    cp -R "$tmp/." "$INVOCATION_TEST_CAPTURE_DIR/"
  fi
  rm -rf "$tmp"
}
trap cleanup EXIT
cat >"$tmp/behavior" <<'PY'
#!/usr/bin/env python3
import json, os, pathlib, sys
args=sys.argv[1:]
log=pathlib.Path(os.environ['INVOCATION_TEST_LOG'])
with log.open('a') as file: file.write(json.dumps(args)+'\n')
mode=os.environ.get('INVOCATION_TEST_MODE','ok')
if args[0]=='invoke-replay':
    archive = pathlib.Path(args[2]).name.endswith('.expected.json')
    failed = mode=='replay_failure' or (archive and mode=='archive_replay_failure') or (not archive and mode=='current_replay_failure')
    if mode!='empty_replay_output': print('{"matches":true,"diff":[]}',end='')
    sys.exit(2 if failed else 0)
if mode=='cli_failure': sys.exit(2)
request=pathlib.Path(args[2])
folder='records' if args[0]=='invoke' else 'intent-records'
record=json.loads((request.parent.parent/folder/(request.stem+'.expected.json')).read_text())
if record['kind']=='action' and record['outcome']['kind']=='evaluated' and mode!='legacy_profile':
    # Protocol mock only: outcome/change projections come from the old fixture;
    # real codec/hash/replay correctness is covered by the Core/Store tests.
    inner=record['outcome']['record']
    inner['record_version']='0.8'
    inner['validation_profile']='behavior.complete_resulting_state.v1'
    if mode=='wrong_profile': inner['validation_profile']='behavior.unproven.v1'
    if mode=='missing_profile': inner.pop('validation_profile')
    if mode=='old_record_version': inner['record_version']='0.7'
calls=[json.loads(line) for line in log.read_text().splitlines()]
count=sum(call[0]==args[0] and len(call)>2 and call[2]==args[2] for call in calls)
if mode=='changed_output' and count==2: record['record_id']='changed'
if mode!='empty_output': print(json.dumps(record,sort_keys=True,separators=(',',':')),end='')
sys.exit(0 if record['outcome']['kind']=='evaluated' else 3)
PY
chmod +x "$tmp/behavior"
export BEHAVIOR_BIN="$tmp/behavior" INVOCATION_TEST_LOG="$tmp/log"

# First assertion is the observed test-first regression. Exact archived output
# is valid replay evidence, but a fresh evaluated action must not use profile 0.4.
: >"$tmp/log"
if INVOCATION_TEST_MODE=legacy_profile scripts/check-invocation-determinism.sh >"$tmp/out" 2>"$tmp/err"; then
  echo "invocation determinism accepted a legacy profile for a fresh action" >&2
  exit 1
fi
: >"$tmp/log"
scripts/check-invocation-determinism.sh
python3 - "$tmp/log" <<'PY'
import collections,json,pathlib,sys
path=pathlib.Path(sys.argv[1])
assert path.is_file(), 'no invocation fixture was executed'
calls=[json.loads(line) for line in path.read_text().splitlines()]
counts=collections.Counter((c[0],c[2]) for c in calls if c[0]!='invoke-replay')
fixtures=list(pathlib.Path('tests/fixtures/invocation/invocations').glob('*.json'))+list(pathlib.Path('tests/fixtures/invocation/intents').glob('*.json'))
assert len(counts)==len(fixtures), counts
assert set(counts.values())=={2}, counts
replays=[call for call in calls if call[0]=='invoke-replay']
assert len(replays)==3*len(fixtures), replays
archives=collections.Counter(call[2] for call in replays if call[2].endswith('.expected.json'))
expected_archives={str(pathlib.Path('tests/fixtures/invocation')/folder/(p.stem+'.expected.json')) for p in fixtures for folder in ['records' if p.parent.name=='invocations' else 'intent-records']}
assert set(archives)==expected_archives, archives
assert set(archives.values())=={2}, archives
assert sum(not call[2].endswith('.expected.json') for call in replays)==len(fixtures)
PY
for mode in changed_output cli_failure empty_output replay_failure archive_replay_failure current_replay_failure empty_replay_output wrong_profile missing_profile old_record_version; do
  : >"$tmp/log"
  if INVOCATION_TEST_MODE="$mode" scripts/check-invocation-determinism.sh >"$tmp/out" 2>"$tmp/err"; then
    echo "invocation determinism accepted $mode" >&2; exit 1
  fi
done
echo 'test_invocation_determinism: OK'
