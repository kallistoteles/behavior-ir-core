#!/usr/bin/env bash
# Actual018 Store fixture replay, with expected results and additive digests.
set -euo pipefail
export LC_ALL=C
cd "$(dirname "$0")/.."
tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT
rc1=0 rc2=0
cargo run -q -p behavior-store --example strict_profile_replay >"$tmp/a" || rc1=$?
cargo run -q -p behavior-store --example strict_profile_replay >"$tmp/b" || rc2=$?
if [ "$rc1" -ne 0 ] || [ "$rc2" -ne 0 ] || [ ! -s "$tmp/a" ] || ! cmp -s "$tmp/a" "$tmp/b"; then
  echo "replay determinism: unexpected exit or changed/empty output ($rc1/$rc2)" >&2
  exit 1
fi
python3 - "$PWD" "$tmp/a" <<'PYCHECK'
import hashlib
import json
import os
from pathlib import Path
import sys

root, output = Path(sys.argv[1]), Path(sys.argv[2])
fixtures = root / 'tests/fixtures/replay/018'
cases = (
    ('audit016:read-v1', 'archives/audit016-wire08-v1-read.json',
     'read:sha256:f3071c1ca0e1402f032dc303f8fb52e6ff491ac622495acc8748ad275084bee3', True),
    ('audit016:invocation-v1', 'archives/audit016-wire08-v1-invocation.json',
     'invocation:sha256:a68e3ba9ecca66b87e0b4ec9747a1b3be8eeb548c92fa4d28f8277c89879866a', True),
    ('M08-C-D:read-v2', 'records/M08-C-D.read.json',
     'read:sha256:56db30540201c2195f5cd78a6315a4a2facdf62377865b942b4efe71c82a7c0a', True),
    ('M08-C-D:duplicate-result', 'records/M08-C-D.read.json',
     'read:sha256:56db30540201c2195f5cd78a6315a4a2facdf62377865b942b4efe71c82a7c0a', False),
)
lines = output.read_text().splitlines()
assert len(lines) == len(cases), 'missing or extra required018 case'
digests = []
fields = {'format', 'case_id', 'boundary', 'record_id', 'profile', 'result', 'data_version', 'read_only', 'replay'}
for line, (case_id, filename, identity, matching) in zip(lines, cases):
    actual = json.loads(line)
    claim = json.loads((fixtures / filename).read_bytes())
    invocation = case_id == 'audit016:invocation-v1'
    inner = claim['outcome']['record'] if invocation else claim
    assert claim['record_id'] == identity, f'{case_id}: retained identity changed'
    assert set(actual) == fields, f'{case_id}: unexpected result shape'
    expected = {'format': 'behavior.replay_determinism_case.v1', 'case_id': case_id,
                'boundary': 'store_invocation' if invocation else 'store_read',
                'record_id': identity, 'profile': inner['format'], 'result': inner['result'],
                'data_version': claim['data_version'], 'read_only': True}
    for key, value in expected.items():
        assert actual[key] == value and type(actual[key]) is type(value), f'{case_id}: wrong {key}'
    assert actual['replay']['matches'] is matching, f'{case_id}: unexpected replay outcome'
    if matching:
        assert set(actual['replay']) == {'matches'}, f'{case_id}: matching result has a diff'
    else:
        assert set(actual['replay']) == {'matches', 'diff'}, f'{case_id}: malformed mismatch result'
        assert isinstance(actual['replay']['diff'], str) and actual['replay']['diff'], f'{case_id}: empty mismatch reason'
    canonical = json.dumps(actual, sort_keys=True, separators=(',', ':'), ensure_ascii=False)
    assert line == canonical, f'{case_id}: noncanonical output'
    digests.append(f'core\t018:{case_id}\t{hashlib.sha256((line + chr(10)).encode()).hexdigest()}\n')
assert output.read_bytes().endswith(b'\n'), 'unterminated canonical JSONL'
# No accepted digest is emitted until every outcome/identity and both exits pass.
directory = os.environ.get('BEHAVIOR_DIGEST_DIR')
if directory:
    with (Path(directory) / 'outputs.tsv').open('a') as file:
        file.writelines(digests)
print('replay determinism: OK; four actual Store cases')
PYCHECK
