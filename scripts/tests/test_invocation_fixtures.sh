#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/../.."
tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT
python3 tests/fixtures/invocation/build_invocation.py --output "$tmp/a"
python3 tests/fixtures/invocation/build_invocation.py --output "$tmp/b"
python3 - "$tmp" <<'PY'
import json, pathlib, sys
root = pathlib.Path(sys.argv[1])
a, b = root / 'a', root / 'b'
assert (a / 'modules/ledger.json').is_file(), 'ledger fixture missing'
files = sorted(p.relative_to(a) for p in a.rglob('*.json'))
assert files and files == sorted(p.relative_to(b) for p in b.rglob('*.json'))
assert all((a / p).read_bytes() == (b / p).read_bytes() for p in files)
m = json.loads((a / 'modules/ledger.json').read_text())
assert m['ir_version'] == '0.7'
assert {x['name'] for x in m['entities']} == {'Customer', 'Account'}
actions = {x['name']: x for x in m['actions']}
for name, count in [('register_customer', 0), ('suspend_customer', 1), ('transfer', 2), ('settle', 3)]:
    assert sum(p['role'] == 'state' for p in actions[name]['params']) == count
assert actions['check_standing']['effects'] == []
reads = {x['name']: x for x in m['reads']}
for name, count in [('customer_count', 0), ('customer_summary', 1), ('pair_total', 2)]:
    assert sum(p['role'] == 'state' for p in reads[name]['params']) == count
s = json.loads((a / 'snapshots/s1.json').read_text())
assert s['format'] == 'behavior.snapshot.v1'
assert {(x['entity'], x['value']['id']) for x in s['entities']} == {
    ('Customer','c1'), ('Customer','c2'), ('Account','a1'), ('Account','a2'), ('Account','a3')}
PY
echo 'test_invocation_fixtures: OK'
