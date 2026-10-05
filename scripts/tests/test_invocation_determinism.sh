#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/../.."
tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT
cat >"$tmp/behavior" <<'PY'
#!/usr/bin/env python3
import json, os, pathlib, sys
args=sys.argv[1:]
log=pathlib.Path(os.environ['INVOCATION_TEST_LOG'])
with log.open('a') as file: file.write(json.dumps(args)+'\n')
mode=os.environ.get('INVOCATION_TEST_MODE','ok')
if args[0]=='invoke-replay':
    sys.exit(2 if mode=='replay_failure' else 0)
if mode=='cli_failure': sys.exit(2)
request=pathlib.Path(args[2])
folder='records' if args[0]=='invoke' else 'intent-records'
record=json.loads((request.parent.parent/folder/(request.stem+'.expected.json')).read_text())
if mode=='changed_output' and len(log.read_text().splitlines())%2==0: record['record_id']='changed'
if mode!='empty_output': print(json.dumps(record,sort_keys=True,separators=(',',':')),end='')
sys.exit(0 if record['outcome']['kind']=='evaluated' else 3)
PY
chmod +x "$tmp/behavior"
export BEHAVIOR_BIN="$tmp/behavior" INVOCATION_TEST_LOG="$tmp/log"
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
assert sum(c[0]=='invoke-replay' for c in calls)==len(fixtures), calls
PY
for mode in changed_output cli_failure empty_output replay_failure; do
  : >"$tmp/log"
  if INVOCATION_TEST_MODE="$mode" scripts/check-invocation-determinism.sh >"$tmp/out" 2>"$tmp/err"; then
    echo "invocation determinism accepted $mode" >&2; exit 1
  fi
done
