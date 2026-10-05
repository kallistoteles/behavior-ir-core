#!/usr/bin/env bash
# New 012 outputs are checked independently; they do not add output digest keys
# to the frozen 0.10.2 compatibility subset.
set -euo pipefail
cd "$(dirname "$0")/.."
bin="${BEHAVIOR_BIN:-target/debug/behavior}"
tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT
root=tests/fixtures/invocation
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
    if [ "$rc1" -ne "$expected" ] || [ "$rc2" -ne "$expected" ] || ! cmp -s "$tmp/a" "$tmp/b" || ! cmp -s "$tmp/a" "$golden"; then
      echo "invocation determinism: output or exit differs for $request" >&2; exit 1
    fi
    if ! "$bin" invoke-replay "$root/modules/ledger.json" "$tmp/a" >/dev/null; then
      echo "invocation determinism: replay failed for $request" >&2; exit 1
    fi
  done
done
