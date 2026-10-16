#!/usr/bin/env bash
# Separate actual runner, mocked checker and isolated parent-hook test-first lanes.
set -euo pipefail
cd "$(dirname "$0")/../.."
lane=all
baseline=0
for argument in "$@"; do
  case "$argument" in
    --runner|--protocol|--hook)
      if [ "$lane" != all ]; then echo 'only one lane may be selected' >&2; exit 2; fi
      lane="${argument#--}" ;;
    --baseline) baseline=1 ;;
    *) echo 'usage: test_replay_evidence_determinism.sh [--runner|--protocol|--hook] [--baseline]' >&2; exit 2 ;;
  esac
done
if [ "$baseline" -eq 1 ] && [ "$lane" = all ]; then
  echo '--baseline requires an explicit lane' >&2; exit 2
fi
temporary="$(mktemp -d)"
cleanup() {
  if [ -n "${REPLAY022_TEST_CAPTURE_DIR:-}" ]; then
    mkdir -p "$REPLAY022_TEST_CAPTURE_DIR"
    cp -r "$temporary/." "$REPLAY022_TEST_CAPTURE_DIR/"
  fi
  rm -rf "$temporary"
}
trap cleanup EXIT
python3 - "$PWD" "$temporary" "$lane" "$baseline" <<'PYTEST'
import atexit
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess
import sys

root, temporary = Path(sys.argv[1]), Path(sys.argv[2])
lane, baseline = sys.argv[3], sys.argv[4] == '1'
fixtures = root / 'tests/fixtures/replay/022'
manifest = json.loads((fixtures / 'matrix.json').read_bytes())
inventory = {case['id']: case for case in manifest['cases']}
selected = manifest['runner_case_ids']
assert len(selected) == len(set(selected)), 'duplicate reviewed runner case'
assert selected and all(inventory[name]['fixture_status'] == 'captured_baseline' for name in selected)
custody = json.loads((fixtures / 'checksums.json').read_bytes())
# The coordinator may reconcile metadata independently; original captures remain fixed.
originals = {fixtures / name: hashlib.sha256((fixtures / name).read_bytes()).hexdigest()
             for name in custody['files'] if name.startswith(('records/', 'stores/'))}
results = []
sources = {}
for name in ('scripts/tests/test_replay_evidence_determinism.sh',
             'crates/behavior-store/examples/strict_profile_replay.rs',
             'crates/behavior-store/examples/replay_evidence_authority.rs',
             'scripts/check-replay-determinism.sh',
             'scripts/check-replay-evidence-determinism.sh', 'scripts/determinism-check.sh'):
    path = root / name
    if path.is_file(): sources[name] = hashlib.sha256(path.read_bytes()).hexdigest()

def finalize():
    (temporary / 'results.json').write_text(json.dumps({
        'lane': lane, 'baseline': baseline, 'sources_sha256': sources, 'runs': results
    }, indent=2) + '\n')
atexit.register(finalize)

def canonical(value):
    return json.dumps(value, sort_keys=True, separators=(',', ':'), ensure_ascii=False)

def execute(name, command, cwd=root, env=None):
    process = subprocess.run(command, cwd=cwd, env=env, capture_output=True)
    for stream in ('stdout', 'stderr'):
        (temporary / (name + '.' + stream + '.txt')).write_bytes(getattr(process, stream))
    results.append({'name': name, 'command': list(map(str, command)), 'status': process.returncode})
    return process

def executable(path, text):
    path.write_text(text)
    path.chmod(0o755)

def rows022():
    rows = []
    for name in selected:
        case = inventory[name]
        record = json.loads((fixtures / case['fixture']).read_bytes())
        for boundary in case['boundaries']:
            rows.append({'format': 'behavior.replay_determinism_case.v1', 'case_id': name,
                         'boundary': boundary, 'origin': case['origin'],
                         'record_id': case['original_record_id'], 'profile': case['profile'],
                         'result': record.get('result', record.get('outcome', {}).get('kind')),
                         'data_version': case['data_version'], 'read_only': True,
                         'replay': {'matches': True} if case['expected'][boundary] else
                                   {'matches': False, 'diff': 'protocol-only historical mismatch'}})
    return rows

def validate022(output):
    expected = rows022()
    lines = output.decode().splitlines()
    assert output.endswith(b'\n') and len(lines) == len(expected), 'missing or extra022 runner output'
    for line, reference in zip(lines, expected):
        actual = json.loads(line)
        assert line == canonical(actual), 'noncanonical runner output'
        assert set(actual) == set(reference), 'unexpected runner fields'
        for field in set(reference) - {'replay'}:
            assert actual[field] == reference[field] and type(actual[field]) is type(reference[field]), (field, actual)
        assert actual['replay']['matches'] is reference['replay']['matches'], actual
        if actual['replay']['matches']:
            assert actual['replay'] == {'matches': True}
        else:
            assert set(actual['replay']) == {'matches', 'diff'}
            assert isinstance(actual['replay']['diff'], str) and actual['replay']['diff'].strip()

def rows018():
    files = ('archives/audit016-wire08-v1-read.json',
             'archives/audit016-wire08-v1-invocation.json', 'records/M08-C-D.read.json',
             'records/M08-C-D.read.json')
    ids = ('audit016:read-v1', 'audit016:invocation-v1', 'M08-C-D:read-v2', 'M08-C-D:duplicate-result')
    rows = []
    for index, (name, filename) in enumerate(zip(ids, files)):
        record = json.loads((root / 'tests/fixtures/replay/018' / filename).read_bytes())
        inner = record['outcome']['record'] if index == 1 else record
        rows.append({'format': 'behavior.replay_determinism_case.v1', 'case_id': name,
                     'boundary': 'store_invocation' if index == 1 else 'store_read',
                     'record_id': record['record_id'], 'profile': inner['format'],
                     'result': inner['result'], 'data_version': record['data_version'],
                     'read_only': True, 'replay': {'matches': True} if index < 3 else
                     {'matches': False, 'diff': 'protocol-only duplicate object key'}})
    return rows

if lane in ('all', 'runner'):
    cargo = shutil.which('cargo')
    assert cargo, 'setup failure: cargo unavailable'
    example = 'strict_profile_replay' if baseline else 'replay_evidence_authority'
    assert (root / 'crates/behavior-store/examples' / (example + '.rs')).is_file(), 'setup failure: runner unavailable'
    command = [cargo, 'run', '-q', '-p', 'behavior-store', '--example', example]
    first = execute('runner-first', command)
    second = execute('runner-second', command)
    assert first.returncode == second.returncode == 0, 'runner execution/setup failure'
    assert first.stdout and first.stdout == second.stdout, 'actual runner output changed'
    if baseline:
        actual = [json.loads(line) for line in first.stdout.splitlines()]
        legacy = rows018()
        assert len(actual) == len(legacy), 'existing018 runner control failed'
        for row, reference in zip(actual, legacy):
            for field in set(reference) - {'replay'}: assert row[field] == reference[field]
            assert row['replay']['matches'] is reference['replay']['matches']
        print('existing018 actual replay control passed', flush=True)
        assert {(r['case_id'], r['boundary']) for r in actual} == {
            (r['case_id'], r['boundary']) for r in rows022()
        }, 'RED runner coverage: runnable018 subject lacks required022 replay inventory'
    validate022(first.stdout)
    one = execute('runner-selected', [*command, '--', '--case', selected[0]])
    assert one.returncode == 0 and len(one.stdout.splitlines()) == len(inventory[selected[0]]['boundaries'])
    unknown = execute('runner-unknown', [*command, '--', '--case', 'unknown022'])
    assert unknown.returncode != 0, 'runner accepted an unknown case'
    copied = temporary / 'runner-fixtures'
    shutil.copytree(fixtures, copied)
    target = copied / inventory[selected[0]]['fixture']
    saved = target.read_bytes()
    target.unlink()
    missing = execute('runner-missing-fixture', [*command, '--', '--fixture-root', str(copied)])
    assert missing.returncode != 0, 'runner skipped a required fixture'
    target.write_bytes(saved)
    changed = json.loads(saved)
    changed['record_id'] = 'read:sha256:' + '0' * 64
    target.write_text(canonical(changed) + '\n')
    invalid = execute('runner-substituted-identity', [*command, '--', '--fixture-root', str(copied)])
    assert invalid.returncode != 0, 'runner accepted changed fixture identity'
    print('actual022 runner: inventory, twice-run output and fixture guards passed')

if lane in ('all', 'protocol'):
    checker = root / ('scripts/check-replay-determinism.sh' if baseline else 'scripts/check-replay-evidence-determinism.sh')
    assert checker.is_file(), 'setup failure: checker unavailable'
    bin_dir = temporary / 'protocol-bin'
    bin_dir.mkdir()
    mocked_rows = temporary / 'mocked-rows.json'
    call_log = temporary / 'cargo.calls'
    executable(bin_dir / 'cargo', '''#!/usr/bin/env python3
import json,os,pathlib,sys
log=pathlib.Path(os.environ['REPLAY022_MOCK_LOG'])
with log.open('a') as file: file.write(json.dumps(sys.argv[1:])+'\\n')
count=len(log.read_text().splitlines())
rows=json.loads(pathlib.Path(os.environ['REPLAY022_MOCK_ROWS']).read_text())
mode=os.environ.get('REPLAY022_MOCK_MODE','ok')
status=0
if mode=='consistent_failure': status=71
if mode=='unequal_exits' and count==2: status=72
if mode=='changed_output' and count==2: rows[0]['origin']='changed'
if mode=='missing_case': rows.pop()
if mode=='extra_case': rows.append(dict(rows[0],case_id='extra'))
if mode=='duplicate_case': rows[-1]=rows[0]
if mode=='wrong_identity': rows[0]['record_id']='read:sha256:'+'0'*64
if mode=='wrong_profile': rows[0]['profile']='behavior.read_record.v1'
if mode=='wrong_coordinates': rows[0]['data_version']='foreign:state'
if mode=='wrong_result': rows[0]['result']='VALUE'
if mode=='wrong_origin': rows[0]['origin']='intent'
if mode=='wrong_boundary': rows[0]['boundary']='unsupported'
if mode=='wrong_match': rows[0]['replay']={'matches':False,'diff':'wrong'}
if mode=='changed_store': rows[0]['read_only']=False
if mode=='empty_diff':
 next(row for row in rows if row['replay']['matches'] is False)['replay']['diff']=''
if mode=='malformed_output': print('not JSON')
elif mode!='empty_output':
 for row in rows:
  print(json.dumps(row,sort_keys=True,separators=(',',':'),ensure_ascii=False) if mode!='noncanonical_output' else json.dumps(row))
sys.exit(status)
''')
    digests = temporary / 'protocol-digests'
    digests.mkdir()
    sentinel = 'core\tprevious:sentinel\t' + 'a' * 64 + '\n'
    def protocol(name, rows, mode='ok', subject=checker):
        mocked_rows.write_text(json.dumps(rows))
        call_log.write_text('')
        (digests / 'outputs.tsv').write_text(sentinel)
        env = os.environ | {'PATH': str(bin_dir) + os.pathsep + os.environ['PATH'],
                            'REPLAY022_MOCK_LOG': str(call_log), 'REPLAY022_MOCK_ROWS': str(mocked_rows),
                            'REPLAY022_MOCK_MODE': mode, 'BEHAVIOR_DIGEST_DIR': str(digests)}
        return execute(name, [str(subject)], env=env)
    if baseline:
        legacy = protocol('checker-existing018-positive', rows018())
        assert legacy.returncode == 0, 'existing018 checker positive control failed'
        print('existing018 checker positive control passed', flush=True)
        extension = protocol('checker-required022-positive', rows022())
        assert extension.returncode == 0, 'RED checker coverage: runnable018 catalog rejects valid022 output'
    modes = ('ok', 'consistent_failure', 'unequal_exits', 'changed_output', 'missing_case',
             'extra_case', 'duplicate_case', 'wrong_identity', 'wrong_profile', 'wrong_coordinates',
             'wrong_result', 'wrong_origin', 'wrong_boundary', 'wrong_match', 'changed_store',
             'empty_diff', 'malformed_output', 'empty_output', 'noncanonical_output')
    for mode in modes:
        process = protocol('checker-' + mode, rows022(), mode)
        assert (process.returncode == 0) == (mode == 'ok'), (mode, process.returncode, process.stderr)
        emitted = (digests / 'outputs.tsv').read_text().splitlines()
        assert emitted[0] == sentinel.rstrip('\n'), 'existing digest changed'
        if mode == 'ok':
            assert len(emitted) == len(rows022()) + 1
            expected = {'022:' + row['case_id'] + ':' + row['boundary'] for row in rows022()}
            assert {row.split('\t')[1] for row in emitted[1:]} == expected
        else: assert len(emitted) == 1, 'failed protocol emitted accepted digests'
    # Changed exact fixture bytes must fail even when identity/semantic content agree.
    sandbox = temporary / 'checker-checkout'
    (sandbox / 'scripts').mkdir(parents=True)
    (sandbox / 'tests/fixtures/replay').mkdir(parents=True)
    shutil.copy2(checker, sandbox / 'scripts/check-replay-evidence-determinism.sh')
    shutil.copytree(fixtures, sandbox / 'tests/fixtures/replay/022')
    for filename in json.loads((fixtures / 'checksums.json').read_bytes())['external_inputs']:
        destination = sandbox / filename
        destination.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(root / filename, destination)
    copied = sandbox / 'tests/fixtures/replay/022' / inventory[selected[0]]['fixture']
    saved = copied.read_bytes()
    for name, contents in [('changed-fixture', b' ' + saved), ('missing-fixture', None)]:
        if contents is None: copied.unlink()
        else: copied.write_bytes(contents)
        process = protocol('checker-' + name, rows022(), subject=sandbox / 'scripts/check-replay-evidence-determinism.sh')
        assert process.returncode != 0, 'checker accepted changed/missing captured bytes'
        assert (digests / 'outputs.tsv').read_text() == sentinel
        copied.write_bytes(saved)
    print('mocked022 checker: valid acceptance, protocol negatives and custody guards passed')

if lane in ('all', 'hook'):
    sandbox = temporary / 'hook-checkout'
    (sandbox / 'scripts').mkdir(parents=True)
    (sandbox / 'tests').mkdir()
    fixture_root = sandbox / 'tests/fixtures'
    fixture_root.mkdir()
    for child in (root / 'tests/fixtures').iterdir():
        if child.name != 'bindings':
            (fixture_root / child.name).symlink_to(child, target_is_directory=child.is_dir())
    # This lane isolates the 022 parent protocol. The unrelated 026 operation is
    # mocked here; test_binding_conformance.sh executes its real semantic corpus.
    binding_mock = fixture_root / 'bindings/current'
    binding_mock.mkdir(parents=True)
    (binding_mock / 'check.py').write_text('print(\'{"cases":[]}\')\n')
    parent = sandbox / 'scripts/determinism-check.sh'
    shutil.copy2(root / 'scripts/determinism-check.sh', parent)
    for name in ('check-invocation-determinism.sh', 'check-command-determinism.sh'):
        executable(sandbox / 'scripts' / name, '#!/usr/bin/env bash\nexit 0\n')
    executable(sandbox / 'scripts/check-replay-determinism.sh', '''#!/usr/bin/env python3
import os,pathlib
with (pathlib.Path(os.environ['BEHAVIOR_DIGEST_DIR'])/'outputs.tsv').open('a') as file:
 file.write('core\\t018:hook-protocol\\t'+'c'*64+'\\n')
''')
    (sandbox / 'scripts/check-resulting-state-determinism.py').write_text('raise SystemExit(0)\n')
    marker = temporary / 'hook.calls'
    executable(sandbox / 'scripts/check-replay-evidence-determinism.sh', '''#!/usr/bin/env python3
import os,pathlib,sys
with pathlib.Path(os.environ['REPLAY022_HOOK_LOG']).open('a') as file: file.write('022 hook\\n')
if os.environ.get('REPLAY022_HOOK_MODE')=='fail': sys.exit(19)
if os.environ.get('BEHAVIOR_DIGEST_DIR'):
 with (pathlib.Path(os.environ['BEHAVIOR_DIGEST_DIR'])/'outputs.tsv').open('a') as file:
  file.write('core\\t022:hook-protocol\\t'+'b'*64+'\\n')
''')
    bin_dir = temporary / 'hook-bin'
    bin_dir.mkdir()
    executable(bin_dir / 'cargo', '''#!/usr/bin/env python3
import sys
name=sys.argv[sys.argv.index('--example')+1]
for _ in range(3 if name=='lifecycle_history' else 2): print('{"ok":true}')
''')
    executable(bin_dir / 'behavior', '''#!/usr/bin/env python3
import pathlib,sys
args=sys.argv[1:]
if args[0]=='read':
 name=pathlib.Path(args[2]).stem
 sys.stdout.write((pathlib.Path('tests/fixtures/reads/records')/(name+'.expected.json')).read_text())
else: print('{}')
''')
    digests = temporary / 'hook-digests'
    digests.mkdir()
    sentinel = 'core\tprevious:sentinel\t' + 'a' * 64 + '\n'
    for mode in ('ok', 'fail'):
        marker.write_text('')
        (digests / 'outputs.tsv').write_text(sentinel)
        env = os.environ | {'PATH': str(bin_dir) + os.pathsep + os.environ['PATH'],
                            'BEHAVIOR_BIN': str(bin_dir / 'behavior'),
                            'BEHAVIOR_Z3': str(temporary / 'protocol-only-unavailable-solver'),
                            'BEHAVIOR_DIGEST_DIR': str(digests), 'REPLAY022_HOOK_LOG': str(marker),
                            'REPLAY022_HOOK_MODE': mode}
        process = execute('hook-' + mode, [str(parent), '--core'], cwd=sandbox, env=env)
        assert 'core\t018:hook-protocol\t' + 'c' * 64 in (digests / 'outputs.tsv').read_text(), 'existing018 hook digest lost'
        if baseline:
            assert process.returncode == 0, 'controlled existing parent positive control failed'
            print('controlled unchanged parent operations passed', flush=True)
        assert marker.read_text().splitlines() == ['022 hook'], 'RED hook integration: existing parent does not invoke022 checker exactly once'
        assert (process.returncode == 0) == (mode == 'ok'), 'checker error was not propagated'
        assert (digests / 'outputs.tsv').read_text().startswith(sentinel), 'legacy digest prefix changed'
    print('isolated022 hook: invocation and failure propagation passed')

assert all(hashlib.sha256(path.read_bytes()).hexdigest() == digest for path, digest in originals.items()), 'test changed original fixtures'
print('test_replay_evidence_determinism: OK; ' + lane)
PYTEST
