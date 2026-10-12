"""Read-only validation of the separately captured immutable CLI records.

The initial capture metadata incorrectly inferred exit 2 for lifecycle refusal.
Keep that attempt and manifest unchanged; validate exits against the producer's
actual documented result_code contract and all original table assertions here.
This is capture verification, not execution of the repository's Rust test suite.
"""
from pathlib import Path
import datetime
import hashlib
import json
import subprocess

ROOT = Path('/home/kalle/repos/behavior-ir-core-017')
ARCHIVE = ROOT / 'tests/fixtures/resulting-state-validity/compatibility-archive'
LOGS = ROOT / 'specs/017-resulting-state-validity/evidence/runs/US4/compatibility-archive-capture'
manifest = json.loads((ARCHIVE / 'manifest.json').read_text())
BASE = Path(manifest['producer_checkout'])


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def at(value, dotted):
    for part in dotted.split('.'):
        if isinstance(value, list) and part.isdecimal():
            value = value[int(part)] if int(part) < len(value) else None
        elif isinstance(value, dict):
            value = value.get(part)
        else:
            return None
    return value


def subset(expected, actual, path=''):
    problems = []
    if isinstance(expected, dict) and isinstance(actual, dict):
        for key, value in expected.items():
            if key.startswith('$'):
                continue
            if key not in actual:
                problems.append(path + '.' + key + ': missing')
            else:
                problems += subset(value, actual[key], path + '.' + key)
    elif isinstance(expected, list) and isinstance(actual, list):
        if len(expected) != len(actual):
            problems.append(path + ': array length mismatch')
        else:
            for i, (e, a) in enumerate(zip(expected, actual)):
                problems += subset(e, a, path + '[' + str(i) + ']')
    elif expected != actual:
        problems.append(path + ': value mismatch')
    return problems


errors = []
counts = {'captured_documents': 0, 'golden_byte_comparisons': 0,
          'root_table_assertions': 0, '002_table_assertions': 0,
          'subset_table_assertions': 0, 'producer_exit_contract_checks': 0}
for case in manifest['cases']:
    tag = case['group'] + '/' + case['name']
    record_path = ARCHIVE / case['record_path']
    assert sha(record_path) == case['record_sha256'], tag
    assert record_path.stat().st_size == case['record_bytes'], tag
    assert sha(ROOT / case['stderr_path']) == case['stderr_sha256'], tag
    assert all(sha(BASE / p) == h for p, h in case['input_files'].items()), tag
    record = json.loads(record_path.read_text())
    counts['captured_documents'] += 1
    table = json.loads((BASE / case['expectation_table']).read_text())
    if case['group'].startswith('evaluation/'):
        expected = table[case['name']]
        code = {'ALLOW': 0, 'DENY': 1, 'ENTITY_ID_ALREADY_USED': 1,
                'LIFECYCLE_CONFLICT': 1, 'ERROR': 3}.get(record['result'], 2)
        assert record['result'] == expected['result'], tag
        trace = record.get('trace', [])
        if case['group'] in ['evaluation/root', 'evaluation/002']:
            assert [s['phase'] for s in trace] == expected['phases'], tag
            for step, outcome in zip(trace, expected['outcomes']):
                if isinstance(outcome, dict) and 'error_prefix' in outcome:
                    assert step['outcome']['error'].startswith(outcome['error_prefix']), tag
                else:
                    assert step['outcome'] == outcome, tag
            assert len(trace) == len(expected['outcomes']), tag
            assert [r['code'] for r in record['reasons']] == expected['reasons'], tag
            assert record['changes'] == expected['changes'], tag
            if case['group'] == 'evaluation/root':
                for index, reads in expected['reads'].items():
                    assert trace[int(index)]['reads'] == reads, tag
                if 'derived' in expected:
                    assert [[d['name'], d['phase_state'], d['value']]
                            for d in record['derived']] == expected['derived'], tag
                assert all(s['hash'].startswith('sha256:') for s in trace), tag
                counts['root_table_assertions'] += 1
            else:
                assert record['record_version'] == '0.4', tag
                if 'roles' in expected:
                    assert [s['role'] for s in trace] == expected['roles'], tag
                counts['002_table_assertions'] += 1
        else:
            problems = subset(expected, record)
            for path, needles in expected.get('$contains', {}).items():
                actual = at(record, path)
                for needle in needles:
                    if not isinstance(actual, str) or needle not in actual:
                        problems.append(path + ': substring absent')
            for path in expected.get('$absent', []):
                if at(record, path) is not None:
                    problems.append(path + ': should be absent')
            errors.extend(tag + ': ' + p for p in problems)
            counts['subset_table_assertions'] += 1
    else:
        code = 0 if table['outcome']['kind'] == 'evaluated' else 3
    assert case['exit_status'] == code, tag
    counts['producer_exit_contract_checks'] += 1
    if 'original_golden' in case:
        assert record_path.read_bytes() == (BASE / case['original_golden']).read_bytes(), tag
        counts['golden_byte_comparisons'] += 1

assert not errors, errors
assert counts == {'captured_documents': 106, 'golden_byte_comparisons': 39,
                  'root_table_assertions': 13, '002_table_assertions': 6,
                  'subset_table_assertions': 61, 'producer_exit_contract_checks': 106}, counts
assert all(sha(BASE / p) == h for p, h in manifest['baseline_source_files'].items())
assert subprocess.check_output(['git', 'status', '--porcelain'], cwd=BASE, text=True) == ''
assert subprocess.check_output(['git', 'rev-parse', 'HEAD'], cwd=BASE, text=True).strip() == manifest['producer_revision']
assert sha(Path(manifest['producer_binary'])) == manifest['producer_binary_sha256']
assert all(sha(ROOT / p) == h for p, h in manifest['original546_fixture_sha256'].items())
assert all(sha(ROOT / p) == h for p, h in manifest['original42_capture_sha256'].items())
assert sha(ROOT / 'tests/fixtures/resulting-state-validity/archive-manifest.json') == manifest['original_archive_manifest_sha256']
report = {
    'checked_at_utc': datetime.datetime.now(datetime.timezone.utc).isoformat(),
    'command': ['python3', str(Path(__file__).relative_to(ROOT))],
    'cwd': str(ROOT), 'exit_status': 0, 'counts': counts,
    'compatibility_manifest_sha256': sha(ARCHIVE / 'manifest.json'),
    'validator_sha256': sha(Path(__file__)),
    'capture_metadata_correction': {
        'case': 'evaluation/006/open_account_used',
        'incorrect_inferred_expected_exit': 2,
        'actual_and_contract_exit': 1,
        'producer_contract': 'crates/behavior-cli/src/lib.rs:433',
        'original_expectation_table_has_exit_column': False,
        'original_capture_metadata_retained_unchanged': True,
    },
    'baseline_315_source_files_and_original_546_fixtures_and_42_captures_unchanged': True,
    'scope': 'Read-only capture validation; no Rust test, replay, gate or current implementation pass is claimed.',
}
(LOGS / 'validation.json').write_text(json.dumps(report, indent=2, sort_keys=True) + '\n')
print(json.dumps(report, indent=2, sort_keys=True))
