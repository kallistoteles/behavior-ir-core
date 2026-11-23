"""Diagnose the actual571 timeout-fixture failure without altering its tests.

Retain exact Python helpers, a prospective lightweight equivalent, every raw
response and counter. This is diagnostic engineering, never canonical success.
"""

import hashlib
import json
from pathlib import Path
import re
import shlex
import subprocess
import sys
import time

sys.dont_write_bytecode = True
STARTED = time.monotonic_ns()
R = Path('/data/repos/behavior-ir-core-033')
E = R / 'experiments/transition-study036'
F = R / 'specs/036-core-transition-feasibility'
P = Path('/var/tmp/behavior-ir-core036-v2/w001')
N = Path('/var/tmp/behavior-ir-core036-evidence-v2/w001')
NAME = 'quality-timeout-diagnosis-002'
BASE = N / 'bootstrap-runs' / NAME
OUT = P / 'quality-diagnostics' / NAME
CORE = P / 'sources/core-source-inline-export-002/core-reuse'
TEST = CORE / 'crates/behavior-cli/tests/cli_trusted_governance.rs'
CLI = P / 'disposable/gate-a0569/target/debug/behavior'
sys.path.insert(0, str(E))
from artifact_io import digest, write_once  # noqa: E402
from controller_v2 import artifact_context_for, execution_control_paths, ref_for  # noqa: E402
from native_accessor_source_canary_v2 import guard_owned_path, _unlinked_parents  # noqa: E402
from recorder import V2Runner  # noqa: E402


def guarded(path):
    path = guard_owned_path(Path(path))
    _unlinked_parents(path)
    return path


def shell_helper(counter, mode):
    return (
        '#!/usr/bin/env bash\nset -eu\n'
        'if [ "${1-}" = --version ]; then\n'
        "  printf '%s\\n' 'Z3 version 4.16.0 - 64 bit'; exit 0\nfi\n"
        'while IFS= read -r line; do :; done\n'
        f'counter={shlex.quote(str(counter))}\nmode={shlex.quote(mode)}\nn=0\n'
        'if [ -f "$counter" ]; then IFS= read -r n < "$counter" || true; fi\n'
        'printf \'%s\' "$((n + 1))" > "$counter"\n'
        'case "$mode" in prefix_*)\n'
        '  if [ "$n" -eq 0 ]; then\n'
        "    printf '%s\\n' unsat '(:reason-unknown \"\")'; exit 0\n  fi;;\nesac\n"
        'case "$mode" in *timeout*) sleep 0.5;;\n'
        "  *) printf '%s\\n' 'not a solver answer';;\nesac\n"
    )


def tagged(profile):
    body = {k: v for k, v in profile.items() if k != 'hash'}
    raw = json.dumps(body, sort_keys=True, separators=(',', ':'), ensure_ascii=False).encode()
    return 'sha256:' + hashlib.sha256(b'behavior.profile.v1\x00' + raw).hexdigest()


def child():
    refs, _ = artifact_context_for('w001')
    intent = refs.read(ref_for(guarded(BASE / 'intent.json'), refs))
    for ref in intent['bindings']:
        refs.verify(ref)
    environment = json.loads(guarded(P / 'quality/a0571/runtime/before.json').read_text())['environment']
    environment['TMPDIR'] = str(P / 'tmp' / NAME)
    guarded(Path(environment['TMPDIR'])).mkdir(exist_ok=False)
    OUT.mkdir(parents=True, exist_ok=False)
    text = guarded(TEST).read_text()
    block = text.split('fn timeout_and_nonreproducible_completed_prefix_preserve_existing_out_and_emit_no_envelope()', 1)[1].split('\n#[test]', 1)[0]
    literals = re.findall(r'let source = format!\(\s*("(?:\\.|[^"\\])*"),?\s*\);', block)
    if len(literals) != 1 or 'json!(100)' not in block or 'time.sleep(0.5)' not in literals[0]:
        raise ValueError('TimeoutDiagnosticActualFixture')
    template = json.loads(literals[0])
    if template.count('{counter:?}') != 1 or template.count('{mode_text:?}') != 1:
        raise ValueError('TimeoutDiagnosticTemplateSites')
    original = json.loads(guarded(CORE / 'tests/fixtures/governance-v2/profile.json').read_text())
    if tagged(original) != original['hash']:
        raise ValueError('TimeoutDiagnosticProfileHash')
    profile = {**original, 'wall_clock_guard_ms': 100}
    profile['hash'] = tagged(profile)
    write_once(OUT / 'profile.json', profile)
    undisclosed = guarded(CORE / 'tests/fixtures/governance-v2/authorizer.seed').read_bytes().strip()
    observations = []
    # Fixed interleaved order, all results retained; no fastest-run selection.
    for replicate in range(3):
        for kind in ['original_python', 'candidate_shell']:
            for mode in ['timeout', 'transport', 'prefix_timeout', 'prefix_transport']:
                folder = OUT / f'{replicate}-{kind}-{mode}'
                folder.mkdir()
                counter = folder / 'counter'
                source = (template.replace('{counter:?}', json.dumps(str(counter)))
                          .replace('{mode_text:?}', json.dumps(mode))) if kind == 'original_python' else shell_helper(counter, mode)
                helper = folder / 'solver'
                write_once(helper, source.encode())
                helper.chmod(0o755)
                destination = folder / 'envelope.json'
                previous = b'previous complete artifact\n'
                write_once(destination, previous)
                argv = [str(CLI), 'governance', 'verify', str(CORE / 'tests/fixtures/soundness/module.json'),
                        '--profile', str(OUT / 'profile.json'), '--seed',
                        str(CORE / 'tests/fixtures/governance-v2/verifier.seed'), '--out', str(destination)]
                began = time.monotonic_ns()
                result = subprocess.run(argv, cwd=CORE, env={**environment, 'BEHAVIOR_Z3': str(helper)},
                                        capture_output=True, timeout=5, check=False)
                elapsed = time.monotonic_ns() - began
                write_once(folder / 'stdout.txt', result.stdout)
                write_once(folder / 'stderr.txt', result.stderr)
                count = int(counter.read_text()) if counter.exists() else None
                row = {'replicate': replicate, 'helper': kind, 'mode': mode,
                       'exit_code': result.returncode, 'wall_ns': elapsed, 'counter': count,
                       'expected_min_counter': 2 if mode.startswith('prefix_') else 1,
                       'existing_output_preserved': destination.read_bytes() == previous,
                       'no_envelope_emitted': b'behavior.verification_envelope.v2' not in result.stdout,
                       'no_seed_disclosed': undisclosed not in result.stdout and undisclosed not in result.stderr,
                       'helper_sha256': digest(helper)}
                row['original_assertions_hold'] = (row['exit_code'] == 3 and count is not None
                    and count >= row['expected_min_counter'] and row['existing_output_preserved']
                    and row['no_envelope_emitted'] and row['no_seed_disclosed'])
                write_once(folder / 'result.json', row)
                observations.append(row)
    write_once(OUT / 'result.json', {'format': 'core036.quality-timeout-diagnosis.v1',
        'rows': observations, 'canonical_quality_established': False,
        'feature_complete': False, 'product_adoption': 'unactivated',
        'scope': 'exact actual fixture and prospective helper; 100ms guard and 500ms sleep unchanged'})
    return 0


def parent():
    refs, store = artifact_context_for('w001')
    cp = json.loads(guarded(N / 'attempts/a0571/checkpoint.json').read_text())
    receipt = json.loads(guarded(N / 'attempts/a0571/child/receipt.json').read_text())
    if (cp['stage_outcome'] != 'failed' or cp['source_validation_error'] is not None
        or receipt['exit_code'] != 1 or receipt['stop_reason'] is not None
        or receipt['tree_empty'] is not True or receipt['group_empty'] is not True
        or receipt['final_storage_inventory_error'] is not None
        or receipt['final_incremental_storage_bytes'] != receipt['final_resource_observation']['growth_apparent_unique_inode_bytes']):
        raise ValueError('TimeoutDiagnosticClosedCause')
    profile = refs.read(ref_for(guarded(F / 'inputs/v2/profiles/quality-combined-continuation-001.json'), refs))
    paths = [Path(__file__), N / 'bootstrap-runs/quality-timeout-diagnosis-001/result.json',
             P / 'bootstrap/quality-timeout-diagnosis-001/receipt.json', TEST, CLI, CORE / 'tests/fixtures/governance-v2/profile.json',
             CORE / 'tests/fixtures/governance-v2/authorizer.seed',
             CORE / 'tests/fixtures/governance-v2/verifier.seed',
             CORE / 'tests/fixtures/soundness/module.json', CORE / 'crates/behavior-core/src/canonical.rs',
             CORE / 'crates/behavior-verify/src/solver.rs',
             N / 'attempts/a0571/checkpoint.json', N / 'attempts/a0571/child/receipt.json',
             P / 'quality/a0571/stdout.txt', P / 'quality/a0571/stderr.txt',
             P / 'quality/a0571/runtime/before.json', *sorted(E.glob('*.py'))]
    bindings = [ref_for(guarded(path), refs) for path in paths]
    BASE.mkdir(parents=True, exist_ok=False)
    write_once(BASE / 'intent.json', {'bindings': bindings, 'replicates': 3,
        'guard_ms': 100, 'sleep_ms': 500, 'canonical_quality_established': False})
    python = refs.read(ref_for(guarded(E / 'native-environment-inputs-v2.json'), refs))['tools']['python']
    if digest(guarded(python['path'])) != python['sha256']:
        raise ValueError('TimeoutDiagnosticPython')
    argv = [python['path'], str(Path(__file__)), '--child']
    write_once(BASE / 'declaration.json', {'stage': 'Q', 'profile': profile,
        'argv': argv, 'wall_seconds': 180, 'start_monotonic_ns': STARTED,
        'scope': 'bounded diagnostic only; all original assertions and observations retained'})
    runner = V2Runner(profile, started_ns=STARTED,
        control_paths=[*execution_control_paths(), N], artifact_store=store)
    result = runner.run(argv, P / 'bootstrap' / NAME, wall_seconds=180,
        env={'PYTHONDONTWRITEBYTECODE': '1', 'PYTHONPATH': str(E)})
    for ref in bindings:
        refs.verify(ref)
    write_once(BASE / 'result.json', {'receipt_ref': ref_for(P / 'bootstrap' / NAME / 'receipt.json', refs),
        'actual_exit': result['exit_code'], 'stop_reason': result['stop_reason'],
        'tree_empty': result['tree_empty'], 'group_empty': result['group_empty'],
        'all_source_bytes_equal_after': True, 'feature_complete': False})
    print(json.dumps({key: result[key] for key in ['exit_code', 'stop_reason', 'tree_empty', 'group_empty',
        'final_storage_inventory_error', 'final_resource_observation']}))
    print((P / 'bootstrap' / NAME / 'stderr.txt').read_text()[-2500:])


if __name__ == '__main__':
    if sys.argv[1:] == ['--child']:
        raise SystemExit(child())
    if len(sys.argv) != 1:
        raise ValueError('TimeoutDiagnosticArguments')
    parent()
