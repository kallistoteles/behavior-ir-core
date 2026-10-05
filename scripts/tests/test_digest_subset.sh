#!/usr/bin/env bash
# A compatibility baseline must detect changes, omissions and unrelated additions.
set -euo pipefail
cd "$(dirname "$0")/../.."
tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT
printf '%s\n' '{"file:legacy.json":"a","output:core:legacy":"b"}' >"$tmp/before.json"
check() {
  local name="$1" expected="$2" pattern="$3" document="$4" status=0
  printf '%s\n' "$document" | scripts/digest-subset.py "$tmp/before.json" >"$tmp/out" 2>&1 || status=$?
  if [ "$status" -ne "$expected" ]; then
    echo "FAIL $name: got $status, expected $expected" >&2
    cat "$tmp/out" >&2
    exit 1
  fi
  if [ -n "$pattern" ] && ! rg -q --fixed-strings "$pattern" "$tmp/out"; then
    echo "FAIL $name: missing diagnostic $pattern" >&2
    exit 1
  fi
}
check identical 0 '' '{"output:core:legacy":"b","file:legacy.json":"a"}'
check changed 1 'file:legacy.json' '{"file:legacy.json":"changed","output:core:legacy":"b"}'
check missing 1 'output:core:legacy' '{"file:legacy.json":"a"}'
check forbidden 1 'file:elsewhere.json' '{"file:legacy.json":"a","output:core:legacy":"b","file:elsewhere.json":"c"}'
for key in file:tests/fixtures/invocation/x.json file:schema/invocation-record-0.1.schema.json file:schema/capability-intent-0.1.schema.json file:schema/snapshot-0.1.schema.json; do
  check allowed 0 '' "{\"file:legacy.json\":\"a\",\"output:core:legacy\":\"b\",\"$key\":\"c\"}"
done
check malformed 2 'invalid digest' 'not json'
echo 'test_digest_subset: OK'
