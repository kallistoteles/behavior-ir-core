#!/usr/bin/env bash
# Test the018 gate protocol separately from actual Store fixture execution.
# Focused modes support the reviewed test-first sequence; the default runs all.
set -euo pipefail
cd "$(dirname "$0")/../.."
case "${1:-}" in
  "") lane=all ;;
  --hook) lane=hook ;;
  --protocol) lane=protocol ;;
  --runner) lane=runner ;;
  *) echo 'usage: scripts/tests/test_replay_determinism.sh [--hook|--protocol|--runner]' >&2; exit 2 ;;
esac
tmp="$(mktemp -d)"
cleanup() {
  if [ -n "${REPLAY_TEST_CAPTURE_DIR:-}" ]; then
    mkdir -p "$REPLAY_TEST_CAPTURE_DIR"
    for evidence in "$tmp/"*.stdout.txt "$tmp/"*.stderr.txt "$tmp/results.json"; do
      if [ -f "$evidence" ]; then
        cp "$evidence" "$REPLAY_TEST_CAPTURE_DIR/"
      fi
    done
  fi
  rm -rf "$tmp"
}
trap cleanup EXIT
python3 - "$PWD" "$tmp" "$lane" <<'PYTEST'
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess
import sys

root, temporary, lane = Path(sys.argv[1]), Path(sys.argv[2]), sys.argv[3]
fixtures = root / 'tests/fixtures/replay/018'
checker = root / 'scripts/check-replay-determinism.sh'
retained_files = json.loads((fixtures / 'checksums.json').read_bytes())['files']
original = {fixtures / name: hashlib.sha256((fixtures / name).read_bytes()).hexdigest()
            for name in retained_files if name.endswith('.json')}
ids = {
    'audit016:read-v1': 'read:sha256:f3071c1ca0e1402f032dc303f8fb52e6ff491ac622495acc8748ad275084bee3',
    'audit016:invocation-v1': 'invocation:sha256:a68e3ba9ecca66b87e0b4ec9747a1b3be8eeb548c92fa4d28f8277c89879866a',
    'M08-C-D:read-v2': 'read:sha256:56db30540201c2195f5cd78a6315a4a2facdf62377865b942b4efe71c82a7c0a',
    'M08-C-D:duplicate-result': 'read:sha256:56db30540201c2195f5cd78a6315a4a2facdf62377865b942b4efe71c82a7c0a',
}
case_files = {
    'audit016:read-v1': 'archives/audit016-wire08-v1-read.json',
    'audit016:invocation-v1': 'archives/audit016-wire08-v1-invocation.json',
    'M08-C-D:read-v2': 'records/M08-C-D.read.json',
    'M08-C-D:duplicate-result': 'records/M08-C-D.read.json',
}
expected_cargo = ['run', '-q', '-p', 'behavior-store', '--example', 'strict_profile_replay']
results = []


def canonical(value):
    return json.dumps(value, sort_keys=True, separators=(',', ':'), ensure_ascii=False)


def output_rows(base):
    rows = []
    for name, filename in case_files.items():
        record = json.loads((base / filename).read_bytes())
        inner = record['outcome']['record'] if name == 'audit016:invocation-v1' else record
        matching = name != 'M08-C-D:duplicate-result'
        rows.append({'format': 'behavior.replay_determinism_case.v1', 'case_id': name,
                     'boundary': 'store_invocation' if name == 'audit016:invocation-v1' else 'store_read',
                     'record_id': record['record_id'], 'profile': inner['format'],
                     'result': inner['result'], 'data_version': record['data_version'],
                     'read_only': True,
                     'replay': {'matches': True} if matching else {'matches': False, 'diff': 'duplicate object key'}})
    return rows


def validate_real_output(output):
    assert output.strip(), 'runner produced empty output'
    lines = output.decode().splitlines()
    rows = [json.loads(line) for line in lines]
    assert len(rows) == 4 and [row['case_id'] for row in rows] == list(ids), rows
    for row, expected in zip(rows, output_rows(fixtures)):
        for field in ('format', 'case_id', 'boundary', 'record_id', 'profile', 'result', 'data_version', 'read_only'):
            assert row[field] == expected[field], (field, row)
        assert row['record_id'] == ids[row['case_id']], row
        assert row['replay']['matches'] is expected['replay']['matches'], row
        if not row['replay']['matches']:
            assert isinstance(row['replay'].get('diff'), str) and row['replay']['diff'], row
        else:
            assert 'diff' not in row['replay'], row
    assert output.decode() == ''.join(canonical(row) + '\n' for row in rows), 'noncanonical runner JSONL'


def executable(path, source):
    path.write_text(source)
    path.chmod(0o755)


def save(name, process):
    (temporary / (name + '.stdout.txt')).write_bytes(process.stdout)
    (temporary / (name + '.stderr.txt')).write_bytes(process.stderr)
    results.append({'case': name, 'exit_status': process.returncode})
    (temporary / 'results.json').write_text(json.dumps(results, indent=2) + '\n')


if lane in ('all', 'hook'):
    # Execute the existing parent, rather than checking source text for a hook.
    # All legacy operations are isolated protocol mocks, not semantic evidence.
    sandbox = temporary / 'hook-checkout'
    (sandbox / 'scripts').mkdir(parents=True)
    (sandbox / 'tests').mkdir()
    (sandbox / 'tests/fixtures').symlink_to(root / 'tests/fixtures', target_is_directory=True)
    shutil.copy2(root / 'scripts/determinism-check.sh', sandbox / 'scripts/determinism-check.sh')
    for name in ('check-invocation-determinism.sh', 'check-command-determinism.sh'):
        executable(sandbox / 'scripts' / name, '#!/usr/bin/env bash\nexit 0\n')
    executable(sandbox / 'scripts/check-replay-evidence-determinism.sh', '#!/usr/bin/env bash\nexit 0\n')
    (sandbox / 'scripts/check-resulting-state-determinism.py').write_text('raise SystemExit(0)\n')
    marker = temporary / 'hook.calls'
    executable(sandbox / 'scripts/check-replay-determinism.sh', '''#!/usr/bin/env python3
import os,pathlib,sys
with pathlib.Path(os.environ['REPLAY_HOOK_LOG']).open('a') as file: file.write('018 hook\\n')
if os.environ.get('REPLAY_HOOK_MODE')=='fail': sys.exit(19)
if os.environ.get('BEHAVIOR_DIGEST_DIR'):
 with (pathlib.Path(os.environ['BEHAVIOR_DIGEST_DIR'])/'outputs.tsv').open('a') as file:
  file.write('core\\t018:hook-protocol\\t'+'b'*64+'\\n')
''')
    bin_dir = temporary / 'hook-bin'
    bin_dir.mkdir()
    executable(bin_dir / 'cargo', '''#!/usr/bin/env python3
import sys
name=sys.argv[sys.argv.index('--example')+1]
count=3 if name=='lifecycle_history' else 2
for _ in range(count): print('{"ok":true}')
''')
    executable(bin_dir / 'behavior', '''#!/usr/bin/env python3
import pathlib,sys
args=sys.argv[1:]
if args[0]=='read':
 name=pathlib.Path(args[2]).stem
 sys.stdout.write((pathlib.Path('tests/fixtures/reads/records')/(name+'.expected.json')).read_text())
else: print('{}')
''')
    digest = temporary / 'hook-digests'
    digest.mkdir()
    sentinel = 'core\tprevious:sentinel\t' + 'a' * 64 + '\n'
    for mode in ('ok', 'fail'):
        marker.write_text('')
        (digest / 'outputs.tsv').write_text(sentinel)
        env = os.environ | {'PATH': str(bin_dir) + os.pathsep + os.environ['PATH'],
                            'BEHAVIOR_BIN': str(bin_dir / 'behavior'),
                            'BEHAVIOR_Z3': str(temporary / 'intentionally-unavailable-protocol-solver'),
                            'BEHAVIOR_DIGEST_DIR': str(digest), 'REPLAY_HOOK_LOG': str(marker),
                            'REPLAY_HOOK_MODE': mode}
        process = subprocess.run([str(sandbox / 'scripts/determinism-check.sh'), '--core'],
                                 cwd=sandbox, env=env, capture_output=True)
        save('hook-' + mode, process)
        assert marker.read_text().splitlines() == ['018 hook'], 'the018 hook was not invoked exactly once'
        assert (process.returncode == 0) == (mode == 'ok'), (mode, process.returncode, process.stderr)
        assert (digest / 'outputs.tsv').read_text().startswith(sentinel), 'existing digest row changed'
        if mode == 'ok':
            assert '\t018:hook-protocol\t' in (digest / 'outputs.tsv').read_text(), '018 digest omitted'
    print('test_replay_determinism: parent invocation/failure propagation passed')


if lane in ('all', 'protocol'):
    assert checker.is_file(), 'new checker interface unavailable; this is not semantic RED'
    bin_dir = temporary / 'protocol-bin'
    bin_dir.mkdir()
    log = temporary / 'cargo.calls.jsonl'
    valid = temporary / 'mock-runner-output.json'
    valid.write_text(json.dumps(output_rows(fixtures)))
    executable(bin_dir / 'cargo', '''#!/usr/bin/env python3
import json,os,pathlib,sys
log=pathlib.Path(os.environ['REPLAY_MOCK_LOG'])
with log.open('a') as file: file.write(json.dumps(sys.argv[1:])+'\\n')
count=len(log.read_text().splitlines())
mode=os.environ.get('REPLAY_MOCK_MODE','ok')
rows=json.loads(pathlib.Path(os.environ['REPLAY_MOCK_ROWS']).read_text())
status=0
if mode=='consistent_failure': status=72
if mode=='unequal_exits' and count==2: status=71
if mode=='changed_output' and count==2: rows[0]['changed']=True
if mode=='missing_case': rows.pop()
if mode=='extra_case': rows.append(dict(rows[0],case_id='unexpected'))
if mode=='duplicate_case': rows[-1]=rows[0]
if mode=='wrong_identity': rows[0]['record_id']='read:sha256:'+'0'*64
if mode=='wrong_profile': rows[0]['profile']='behavior.read_record.v2'
if mode=='wrong_result': rows[0]['result']='VALUE'
if mode=='wrong_coordinates': rows[0]['data_version']='store:wrong;state:wrong;position:0'
if mode=='unexpected_mismatch': rows[0]['replay']={'matches':False,'diff':'wrong'}
if mode=='ambiguous_match': rows[-1]['replay']={'matches':True}
if mode=='empty_diff': rows[-1]['replay']={'matches':False,'diff':''}
if mode=='changed_store': rows[0]['read_only']=False
if mode=='malformed_output': print('not JSON')
elif mode!='empty_output':
 for row in rows:
  print(json.dumps(row,sort_keys=True,separators=(',',':')) if mode!='noncanonical_output' else json.dumps(row))
sys.exit(status)
''')
    digest = temporary / 'protocol-digests'
    digest.mkdir()
    sentinel = 'core\tprevious:sentinel\t' + 'a' * 64 + '\n'
    modes = ('ok', 'changed_output', 'consistent_failure', 'unequal_exits', 'empty_output',
             'missing_case', 'extra_case', 'duplicate_case', 'wrong_identity', 'wrong_profile',
             'wrong_result', 'wrong_coordinates', 'unexpected_mismatch', 'ambiguous_match',
             'empty_diff', 'changed_store', 'malformed_output', 'noncanonical_output')
    for mode in modes:
        log.write_text('')
        (digest / 'outputs.tsv').write_text(sentinel)
        env = os.environ | {'PATH': str(bin_dir) + os.pathsep + os.environ['PATH'],
                            'BEHAVIOR_DIGEST_DIR': str(digest), 'REPLAY_MOCK_LOG': str(log),
                            'REPLAY_MOCK_ROWS': str(valid), 'REPLAY_MOCK_MODE': mode}
        process = subprocess.run([str(checker)], cwd=root, env=env, capture_output=True)
        save('protocol-' + mode, process)
        calls = [json.loads(line) for line in log.read_text().splitlines()]
        assert calls == [expected_cargo, expected_cargo], (mode, calls)
        assert (process.returncode == 0) == (mode == 'ok'), (mode, process.returncode, process.stderr)
        rows = (digest / 'outputs.tsv').read_text().splitlines()
        assert rows[0] == sentinel.rstrip('\n'), 'existing digest row changed'
        if mode == 'ok':
            assert len(rows) == 5, rows
            additions = [row.split('\t') for row in rows[1:]]
            assert {row[1] for row in additions} == {'018:' + name for name in ids}, additions
            assert all(row[0] == 'core' and len(row) == 3 and len(row[2]) == 64 for row in additions)
            assert len({row[1] for row in additions}) == 4, 'duplicate018 digest labels'
            for row, expected in zip(additions, output_rows(fixtures)):
                assert row[2] == hashlib.sha256((canonical(expected) + '\n').encode()).hexdigest(), row
        else:
            assert len(rows) == 1, 'failed case emitted accepted digest evidence'
    print('test_replay_determinism: twice-run protocol/identities/outcomes/digests passed')


if lane in ('all', 'runner'):
    # No mocks here: exercise the actual example and Store fixture boundary.
    cargo = shutil.which('cargo')
    assert cargo, 'cargo is unavailable; no runner test was executed'
    command = [cargo, *expected_cargo]
    first = subprocess.run(command, cwd=root, capture_output=True)
    save('runner-first', first)
    assert first.returncode == 0, ('runner interface or actual Store case failed', first.stderr.decode())
    second = subprocess.run(command, cwd=root, capture_output=True)
    save('runner-second', second)
    assert second.returncode == 0 and first.stdout == second.stdout, 'actual runner differs across runs'
    validate_real_output(first.stdout)
    one = subprocess.run([*command, '--', '--case', 'audit016:read-v1'], cwd=root, capture_output=True)
    save('runner-selected-case', one)
    assert one.returncode == 0 and len(one.stdout.splitlines()) == 1
    selected = json.loads(one.stdout)
    assert selected['case_id'] == 'audit016:read-v1' and selected['record_id'] == ids['audit016:read-v1']
    assert selected['replay']['matches'] is True and selected['read_only'] is True
    unknown = subprocess.run([*command, '--', '--case', 'unknown'], cwd=root, capture_output=True)
    save('runner-unknown-case', unknown)
    assert unknown.returncode != 0, 'runner accepted an unknown case'
    missing = subprocess.run([*command, '--', '--fixture-root', str(temporary / 'missing-fixtures')],
                             cwd=root, capture_output=True)
    save('runner-missing-fixture-root', missing)
    assert missing.returncode != 0, 'runner accepted missing fixture input'
    sandbox = temporary / 'runner-fixtures'
    shutil.copytree(fixtures, sandbox)
    filename = sandbox / case_files['audit016:read-v1']
    saved = filename.read_bytes()
    filename.unlink()
    failed = subprocess.run([*command, '--', '--fixture-root', str(sandbox)], cwd=root, capture_output=True)
    save('runner-missing-case-fixture', failed)
    assert failed.returncode != 0, 'runner silently skipped a required fixture/case'
    filename.write_bytes(saved)
    current = sandbox / case_files['M08-C-D:read-v2']
    saved = current.read_bytes()
    wrong = json.loads(saved)
    wrong['value'] = 99
    current.write_text(canonical(wrong))
    failed = subprocess.run([*command, '--', '--fixture-root', str(sandbox)], cwd=root, capture_output=True)
    save('runner-wrong-outcome', failed)
    assert failed.returncode != 0, 'actual runner accepted a mismatching current claim'
    current.write_bytes(saved)
    wrong = json.loads(saved)
    wrong['record_id'] = 'read:sha256:' + '0' * 64
    current.write_text(canonical(wrong))
    failed = subprocess.run([*command, '--', '--fixture-root', str(sandbox)], cwd=root, capture_output=True)
    save('runner-wrong-identity', failed)
    assert failed.returncode != 0, 'actual runner accepted substituted evidence identity'
    print('test_replay_determinism: actual Store runner and negative fixtures passed')

assert all(hashlib.sha256(path.read_bytes()).hexdigest() == digest for path, digest in original.items()), 'test changed an original fixture'
print('test_replay_determinism: OK; ' + lane)
PYTEST
