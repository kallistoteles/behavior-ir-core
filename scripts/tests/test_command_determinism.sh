#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/../.."
tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT
cat >"$tmp/mock" <<'PYMOCK'
#!/usr/bin/env python3
import json,os,pathlib,sys
args=sys.argv[1:]
with open(os.environ['COMMAND_TEST_LOG'],'a') as f: f.write(json.dumps(args)+'\n')
mode=os.environ.get('COMMAND_TEST_MODE','ok')
if mode=='cli_failure': sys.exit(2)
if mode=='replay_failure' and args[0] in ('replay','invoke-replay'): sys.exit(2)
result={'operation':args[0]}
if mode=='changed_output':
    n=len(pathlib.Path(os.environ['COMMAND_TEST_LOG']).read_text().splitlines())
    result['changed']=n
if args[0] in ('prepare','commit','stream','crash-recovery'):
    root=pathlib.Path(args[args.index('--root')+1]); root.mkdir(parents=True,exist_ok=True)
    if args[0]=='prepare':
        for n in ('candidate','context'): (root/(n+'.json')).write_text('{}')
if '--out' in args: pathlib.Path(args[args.index('--out')+1]).write_text(json.dumps(result,sort_keys=True,separators=(',',':')))
if mode!='empty_output': print(json.dumps(result,sort_keys=True,separators=(',',':')),end='')
PYMOCK
chmod +x "$tmp/mock"
export BEHAVIOR_BIN="$tmp/mock" BEHAVIOR_COMMAND_DEMO_BIN="$tmp/mock" COMMAND_TEST_LOG="$tmp/log"
mkdir "$tmp/digest"
: >"$tmp/digest/outputs.tsv"
BEHAVIOR_DIGEST_DIR="$tmp/digest" scripts/check-command-determinism.sh
python3 - "$tmp/log" "$tmp/digest/outputs.tsv" <<'PYCHECK'
import json,pathlib,sys
calls=[json.loads(l) for l in pathlib.Path(sys.argv[1]).read_text().splitlines()]
names=[c[1] for c in calls if c[0]=='admit']
expected=sorted(str(p) for p in pathlib.Path('tests/fixtures/commands/modules').glob('*.json'))
assert names==[p for p in expected for _ in range(2)], names
assert all(any(c[0]==op for c in calls) for op in ('invoke','invoke-replay','replay','governance','prepare','commit','stream','crash-recovery'))
rows=pathlib.Path(sys.argv[2]).read_text().splitlines()
assert rows and all(r.startswith('core\t013:') for r in rows)
assert len(rows)==len(set(r.split('\t')[1] for r in rows)), 'duplicate output labels'
assert all(len(r.split('\t')[2])==64 for r in rows)
PYCHECK
for mode in changed_output cli_failure empty_output replay_failure; do
  : >"$tmp/log"
  if COMMAND_TEST_MODE="$mode" scripts/check-command-determinism.sh >"$tmp/out" 2>"$tmp/err"; then
    echo "command determinism accepted $mode" >&2; exit 1
  fi
done
