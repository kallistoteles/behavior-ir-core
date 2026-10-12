#!/usr/bin/env bash
# Execute the real clean-smoke step with the compiled CLI, without release
# builds, tags or publication. This focused test is not full release validation.
set -euo pipefail
cd "$(dirname "$0")/../.."
tmp="$(mktemp -d)"
cleanup() {
  if [ -n "${RELEASE_SMOKE_CAPTURE_DIR:-}" ]; then
    mkdir -p "$RELEASE_SMOKE_CAPTURE_DIR/clean"
    for file in "$tmp"/*; do
      if [ -f "$file" ]; then cp "$file" "$RELEASE_SMOKE_CAPTURE_DIR/"; fi
    done
    if [ -d "$tmp/clean" ]; then
      for file in "$tmp/clean/"*.json; do
        if [ -f "$file" ]; then cp "$file" "$RELEASE_SMOKE_CAPTURE_DIR/clean/"; fi
      done
    fi
  fi
  rm -rf "$tmp"
}
trap cleanup EXIT
bin="${BEHAVIOR_BIN:-$PWD/target/debug/behavior}"
if [ ! -x "$bin" ]; then
  echo "test_release_check: compiled CLI missing; run the owning cargo build first" >&2
  exit 1
fi
python3 - "$tmp" "$bin" <<'PYTEST'
import hashlib, json, os, pathlib, subprocess, sys
root=pathlib.Path.cwd()
tmp=pathlib.Path(sys.argv[1])
cli=pathlib.Path(sys.argv[2]).resolve()
script=root/'scripts/release-check.sh'
module=root/'tests/fixtures/wire/valid/invoice.json'
original=root/'tests/fixtures/requests/discount_breaks_invariant.json'
golden=root/'tests/fixtures/records/discount_breaks_invariant.json'
digest=lambda path:hashlib.sha256(path.read_bytes()).hexdigest()
before={str(path):digest(path) for path in (script,module,original,golden,cli)}

# The original fixture is deliberately incomplete for fresh current evaluation.
# Its independent historical record is preserved; it is not a current smoke input.
raw=subprocess.run([str(cli),'eval',str(module),str(original)],capture_output=True,text=True)
(tmp/'original-request.stdout.txt').write_text(raw.stdout)
(tmp/'original-request.stderr.txt').write_text(raw.stderr)
raw_record=json.loads(raw.stdout)
assert raw.returncode==2 and raw_record['result']=='INVALID_INPUT'
assert raw_record['record_version']=='0.8'
assert raw_record['reasons'][0]['code']=='INVALID_STATE_SNAPSHOT'

# Extract and execute exactly the production Step 4. Earlier release gates and
# reproducibility checks are not changed, run, skipped or claimed by this unit.
text=script.read_text()
start=text.index('step "4 clean run"')
end=text.index('step "5 conformance"',start)
block=text[start:end]
program='''#!/usr/bin/env bash
set -euo pipefail
cli="$RELEASE_SMOKE_CLI"
tmp="$RELEASE_SMOKE_TMP"
current=""
step() { current="$1"; }
fail() { echo "release-check: FAILED step $current: $*" >&2; exit 1; }
'''+block
(tmp/'clean-step.sh').write_text(program)
environment=os.environ.copy()
environment['RELEASE_SMOKE_CLI']=str(cli)
environment['RELEASE_SMOKE_TMP']=str(tmp)
smoke=subprocess.run(['bash',str(tmp/'clean-step.sh')],cwd=root,env=environment,capture_output=True,text=True)
(tmp/'clean-step.stdout.txt').write_text(smoke.stdout)
(tmp/'clean-step.stderr.txt').write_text(smoke.stderr)
(tmp/'execution.json').write_text(json.dumps({
    'scope':'Real compiled CLI and exact extracted clean-smoke Step 4; not full release validation',
    'original_request_exit_status':raw.returncode,'clean_step_exit_status':smoke.returncode,
    'source_sha256_before':before,'source_sha256_after':{str(path):digest(path) for path in (script,module,original,golden,cli)},
    'cli':str(cli),'clean_step_command':['bash',str(tmp/'clean-step.sh')],
},indent=2,sort_keys=True)+'\n')
assert smoke.returncode==0, 'release clean smoke refused the incomplete original request instead of testing current child validity: '+smoke.stderr

request=json.loads((tmp/'clean/discount_breaks_invariant.json').read_text())
old=json.loads(original.read_text())
rows=request['facts']['universe']
assert rows==[
    {'entity':'Invoice','members':[old['state']['invoice']]},
    {'entity':'User','members':[]},
], 'smoke world must be exactly the actual Invoice row plus the declared empty User type'
assert {key:value for key,value in request.items() if key!='facts'}==old
assert (tmp/'clean/invoice.json').read_bytes()==module.read_bytes()
record=json.loads((tmp/'clean/record.json').read_text())
assert record['record_version']=='0.8'
assert record['validation_profile']=='behavior.complete_resulting_state.v1'
assert record['result']=='DENY' and record['reasons'][0]['code']=='INVARIANT_VIOLATED'
witnesses=[step for step in record['trace'] if step.get('outcome') is False and step.get('subject')]
assert len(witnesses)==1
assert witnesses[0]['subject']=={'entity':'Invoice','id':'1042'}
assert witnesses[0]['obligation']['kind']=='invariant'
assert witnesses[0]['obligation']['source']=='declared'
assert witnesses[0]['obligation']['name']=='non_negative_amount'
clean=tmp/'clean'
replay=subprocess.run(['env','-i','PATH=/nonexistent','./'+cli.name,'replay','invoice.json','record.json'],cwd=clean,capture_output=True,text=True)
(tmp/'clean-replay.stdout.txt').write_text(replay.stdout)
(tmp/'clean-replay.stderr.txt').write_text(replay.stderr)
assert replay.returncode==0 and json.loads(replay.stdout)['matches'] is True
assert all(digest(path)==before[str(path)] for path in (script,module,original,golden,cli))
print('test_release_check: OK; actual current child DENY and replay in an empty environment')
PYTEST
