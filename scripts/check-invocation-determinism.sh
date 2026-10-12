#!/usr/bin/env bash
# Fresh Current actions and immutable 012 wrappers have separate evidence checks.
# Preserve the pre-012 output digest key set.
set -euo pipefail
cd "$(dirname "$0")/.."
bin="${BEHAVIOR_BIN:-target/debug/behavior}"
tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT
root=tests/fixtures/invocation
replay_checked() {
  if ! "$bin" invoke-replay "$root/modules/ledger.json" "$1" >"$tmp/replay"; then
    echo "invocation determinism: replay failed for $1" >&2; return 1
  fi
  python3 - "$tmp/replay" <<'PY'
import json,sys
assert json.load(open(sys.argv[1])).get('matches') is True, 'invocation replay did not match'
PY
}
for kind in invocations intents; do
  for request in "$root/$kind/"*.json; do
    name="$(basename "${request%.json}")"
    if [ "$kind" = invocations ]; then
      golden="$root/records/$name.expected.json"
      args=(invoke "$root/modules/ledger.json" "$request" "$root/snapshots/s1.json")
    else
      golden="$root/intent-records/$name.expected.json"
      args=(invoke-intent "$root/modules/ledger.json" "$request" "$root/snapshots/s1.json" --context "$root/context.json")
    fi
    expected="$(python3 -c 'import json,sys; print(0 if json.load(open(sys.argv[1]))["outcome"]["kind"]=="evaluated" else 3)' "$golden")"
    rc1=0; "$bin" "${args[@]}" >"$tmp/a" || rc1=$?
    rc2=0; "$bin" "${args[@]}" >"$tmp/b" || rc2=$?
    if [ "$rc1" -ne "$expected" ] || [ "$rc2" -ne "$expected" ] || [ ! -s "$tmp/a" ] || ! cmp -s "$tmp/a" "$tmp/b"; then
      echo "invocation determinism: output or exit differs for $request" >&2; exit 1
    fi
    python3 - "$golden" "$tmp/a" <<'PY'
import copy,json,sys
expected=json.load(open(sys.argv[1])); actual=json.load(open(sys.argv[2]))
if expected['kind']=='action' and expected['outcome']['kind']=='evaluated':
    inner=actual['outcome']['record']
    assert inner['record_version']=='0.8'
    assert inner['validation_profile']=='behavior.complete_resulting_state.v1'
    # Independent original outcomes/deltas remain expected for these unchanged
    # valid-world fixtures. Public replay checks the complete fresh evidence.
    keys=('action','behavior_version','data_version','state','input','context','result','reasons','changes','lifecycle','commands','semantic_profile')
    assert {k:inner[k] for k in keys if k in inner}=={k:expected['outcome']['record'][k] for k in keys if k in expected['outcome']['record']}, 'fresh semantic result differs'
    def outer(record):
        record=copy.deepcopy(record)
        record.pop('record_id',None)
        record['outcome'].pop('record_id',None)
        record['outcome'].pop('record',None)
        return record
    assert outer(actual)==outer(expected), 'fresh invocation inputs/binding/outcome differ'
else:
    assert actual==expected, 'read/refusal golden differs'
PY
    replay_checked "$golden"
    replay_checked "$golden"
    replay_checked "$tmp/a"
  done
done
