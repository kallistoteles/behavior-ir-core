#!/usr/bin/env bash
# Additive Core022 output evidence; prior determinism entries remain unchanged.
set -euo pipefail
export LC_ALL=C
cd "$(dirname "$0")/.."
temporary="$(mktemp -d)"
trap 'rm -rf "$temporary"' EXIT
first_status=0 second_status=0
cargo run -q -p behavior-store --example replay_evidence_authority >"$temporary/first" || first_status=$?
cargo run -q -p behavior-store --example replay_evidence_authority >"$temporary/second" || second_status=$?
if [ "$first_status" -ne 0 ] || [ "$second_status" -ne 0 ] || [ ! -s "$temporary/first" ] || ! cmp -s "$temporary/first" "$temporary/second"; then
  echo "022 replay determinism: unsuccessful, empty or different runs ($first_status/$second_status)" >&2
  exit 1
fi
python3 - "$PWD" "$temporary/first" <<'PYCHECK'
import hashlib
import json
import os
from pathlib import Path
import sys

root, output = Path(sys.argv[1]), Path(sys.argv[2])
fixtures = root / 'tests/fixtures/replay/022'
manifest = json.loads((fixtures / 'matrix.json').read_bytes())
cases = {case['id']: case for case in manifest['cases']}
required = manifest['runner_case_ids']
assert required and len(required) == len(set(required)), 'invalid reviewed022 inventory'
expected = []
fields = {'format', 'case_id', 'boundary', 'origin', 'record_id', 'profile',
          'result', 'data_version', 'read_only', 'replay'}
for name in required:
    case = cases[name]
    assert case['fixture_status'] == 'captured_baseline' and case['execution_kind'] == 'replay_runner'
    record = json.loads((fixtures / case['fixture']).read_bytes())
    assert record['record_id'] == case['original_record_id'], f'{name}: original identity changed'
    assert record['format'] == case['profile'] and record['data_version'] == case['data_version']
    for boundary in case['boundaries']:
        expected.append((case, boundary, record))
assert len({(case['id'], boundary) for case, boundary, _ in expected}) == len(expected), 'duplicate reviewed022 cell'
raw = output.read_bytes()
assert raw.endswith(b'\n'), 'unterminated022 canonical output'
lines = raw.decode().splitlines()
assert len(lines) == len(expected), 'missing or extra required022 case'
digests = []
for line, (case, boundary, record) in zip(lines, expected):
    actual = json.loads(line)
    name = case['id']
    assert set(actual) == fields, f'{name}/{boundary}: unexpected result fields'
    reference = {'format': 'behavior.replay_determinism_case.v1', 'case_id': name,
                 'boundary': boundary, 'origin': case['origin'],
                 'record_id': case['original_record_id'], 'profile': case['profile'],
                 'result': record.get('result', record.get('outcome', {}).get('kind')),
                 'data_version': case['data_version'], 'read_only': True}
    for field, value in reference.items():
        assert actual[field] == value and type(actual[field]) is type(value), f'{name}/{boundary}: wrong {field}'
    matching = case['expected'][boundary]
    assert actual['replay']['matches'] is matching, f'{name}/{boundary}: unexpected actual replay outcome'
    if matching:
        assert actual['replay'] == {'matches': True}, 'matching022 case carries a diff'
    else:
        assert set(actual['replay']) == {'matches', 'diff'}, 'malformed022 mismatch result'
        assert isinstance(actual['replay']['diff'], str) and actual['replay']['diff'].strip(), 'empty022 mismatch reason'
    canonical = json.dumps(actual, sort_keys=True, separators=(',', ':'), ensure_ascii=False)
    assert line == canonical, 'noncanonical022 output'
    digest = hashlib.sha256((line + '\n').encode()).hexdigest()
    digests.append(f'core\t022:{name}:{boundary}\t{digest}\n')
directory = os.environ.get('BEHAVIOR_DIGEST_DIR')
if directory:
    with (Path(directory) / 'outputs.tsv').open('a') as file: file.writelines(digests)
print(f'022 replay determinism: OK; {len(expected)} actual Core/Store cells')
PYCHECK
