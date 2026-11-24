"""Bind the exact closed575 cache before prospective whole-quality reuse."""

import json
from pathlib import Path
import sys
import time

sys.dont_write_bytecode = True
STARTED = time.monotonic_ns()
R = Path('/data/repos/behavior-ir-core-033')
E = R / 'experiments/transition-study036'
F = R / 'specs/036-core-transition-feasibility'
P = Path('/var/tmp/behavior-ir-core036-v2/w001')
N = Path('/var/tmp/behavior-ir-core036-evidence-v2/w001')
NAME = 'quality-consumer-cache-575-001'
BASE = N / 'bootstrap-runs' / NAME
OUT = P / 'quality-cache-continuation' / NAME
sys.path.insert(0, str(E))
from artifact_io import digest, write_once  # noqa: E402
from artifact_registration_v2 import guard_reference  # noqa: E402
from controller_v2 import artifact_context_for, execution_control_paths, ref_for  # noqa: E402
from native_accessor_source_canary_v2 import guard_owned_path, _unlinked_parents  # noqa: E402
from recorder import V2Runner  # noqa: E402


def guarded(path):
    path = guard_owned_path(Path(path))
    _unlinked_parents(path)
    return path


def key(reference):
    guard_reference(reference)
    return tuple(reference[k] for k in ['root_id', 'path', 'bytes', 'sha256'])


def child():
    refs, _ = artifact_context_for('w001')
    intent = refs.read(ref_for(guarded(BASE / 'intent.json'), refs))
    for reference in intent['bindings']:
        refs.verify(reference)
    from quality_warm_cache_v3 import wall_cache_target
    from native_partial_cache_retention_v2 import complete_inventory
    cp = refs.read(intent['checkpoint_ref'])
    previous = refs.read(intent['declaration_ref'])
    receipt = refs.read(intent['receipt_ref'], limit=32*1024**2)
    job = refs.read(intent['job_ref'])
    from artifact_io import RootRegistry
    RootRegistry({'attempt': refs.verify(intent['checkpoint_ref']).parent}).verify_closed('attempt')
    target = wall_cache_target(cp, previous, receipt, job, P)
    inventory = complete_inventory(target, maximum_bytes=4*1024**3, domain='closed-quality-cache')
    OUT.mkdir(parents=True, exist_ok=False)
    write_once(OUT / 'inventory.json', inventory)
    write_once(OUT / 'result.json', {
        'format': 'core036.closed-quality-cache-binding.v1',
        'checkpoint_ref': intent['checkpoint_ref'],
        'target': str(target), 'inventory_ref': ref_for(OUT / 'inventory.json', refs),
        'source_subject_ref': cp['source_subject_ref'],
        'file_count': len(inventory['files']), 'file_bytes': inventory['file_bytes'],
        'disposal_performed': False, 'quality_pass_inherited': False,
        'feature_complete': False,
    })
    return 0


def parent():
    refs, store = artifact_context_for('w001')
    from bootstrap import validate_v2_profile
    checkpoint = ref_for(guarded(N / 'attempts/a0575/checkpoint.json'), refs)
    declaration = ref_for(guarded(N / 'attempts/a0575/declaration.json'), refs)
    receipt = ref_for(guarded(N / 'attempts/a0575/child/receipt.json'), refs)
    job = ref_for(guarded(P / 'quality/a0575/runtime-job.json'), refs)
    profile_path = guarded(F / 'inputs/v2/profiles/native-consumer-capacity-001.json')
    profile = refs.read(ref_for(profile_path, refs))
    validate_v2_profile(profile)
    paths = [Path(__file__), profile_path, *sorted(E.glob('*.py'))]
    bindings = [ref_for(guarded(path), refs) for path in paths] + [checkpoint, declaration, receipt, job]
    BASE.mkdir(parents=True, exist_ok=False)
    write_once(BASE / 'intent.json', {'bindings': bindings,
        'checkpoint_ref': checkpoint, 'declaration_ref': declaration,
        'receipt_ref': receipt, 'job_ref': job,
        'reason': 'Bind exact closed575 current cache before retention and reuse; no cache writes, deletion or inherited pass.'})
    python = refs.read(ref_for(guarded(E / 'native-environment-inputs-v2.json'), refs))['tools']['python']
    if digest(guarded(python['path'])) != python['sha256']:
        raise ValueError('DiagnosticRetentionPython')
    argv = [python['path'], str(Path(__file__)), '--child']
    write_once(BASE / 'declaration.json', {'stage': 'NATIVE', 'profile': profile,
        'argv': argv, 'wall_seconds': 180, 'start_monotonic_ns': STARTED,
        'scope': 'Read-only closed cache binding; no scientific acceptance'})
    runner = V2Runner(profile, started_ns=STARTED,
        control_paths=[*execution_control_paths(), N], artifact_store=store)
    receipt = runner.run(argv, P / 'bootstrap' / NAME, wall_seconds=180,
        env={'PYTHONDONTWRITEBYTECODE': '1', 'PYTHONPATH': str(E)})
    for reference in bindings:
        refs.verify(reference)
    write_once(BASE / 'result.json', {'receipt_ref': ref_for(P / 'bootstrap' / NAME / 'receipt.json', refs),
        'actual_exit': receipt['exit_code'], 'stop_reason': receipt['stop_reason'],
        'tree_empty': receipt['tree_empty'], 'group_empty': receipt['group_empty'],
        'all_source_bytes_equal_after': True, 'feature_complete': False})
    print(json.dumps({k: receipt[k] for k in ['exit_code', 'stop_reason', 'tree_empty', 'group_empty',
        'final_storage_inventory_error', 'final_resource_observation']}))
    print((P / 'bootstrap' / NAME / 'stderr.txt').read_text()[-2500:])


if __name__ == '__main__':
    if sys.argv[1:] == ['--child']:
        raise SystemExit(child())
    if len(sys.argv) != 1:
        raise ValueError('DiagnosticRetentionArguments')
    parent()
