"""Conserve old diagnostic input bytes before their mutable paths are reused.

Adds a reconstruction catalog. No old receipt, digest, path or outcome changes.
Existing frozen9596 bytes are reused; only absent snapshots are copied anew.
"""

import json
from pathlib import Path
import shutil
import sys
import time

sys.dont_write_bytecode = True
STARTED = time.monotonic_ns()
R = Path('/data/repos/behavior-ir-core-033')
E = R / 'experiments/transition-study036'
F = R / 'specs/036-core-transition-feasibility'
P = Path('/var/tmp/behavior-ir-core036-v2/w001')
N = Path('/var/tmp/behavior-ir-core036-evidence-v2/w001')
NAME = 'quality-diagnostic-input-retention-001'
BASE = N / 'bootstrap-runs' / NAME
OUT = P / 'diagnostic-input-retention' / NAME
sys.path.insert(0, str(E))
from artifact_io import digest, write_once  # noqa: E402
from artifact_registration_v2 import guard_reference  # noqa: E402
from controller_v2 import artifact_context_for, execution_control_paths, ref_for  # noqa: E402
from native_accessor_source_canary_v2 import guard_owned_path, _unlinked_parents  # noqa: E402
from native_suite_capacity_v2 import _closed_receipt  # noqa: E402
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
    frozen = refs.read(intent['frozen_source_ref'], limit=32*1024**2)
    anchors = {key(row['logical_ref']): row['snapshot_ref'] for row in frozen['files']}
    OUT.mkdir(parents=True, exist_ok=False)
    copied, rows, reused = {}, [], 0
    for reference in intent['diagnostic_intent_refs']:
        diagnostic = refs.read(reference)
        name = refs.verify(reference).parent.name
        for logical in diagnostic['bindings']:
            identity = key(logical)
            if identity in anchors:
                snapshot = anchors[identity]
                refs.verify(snapshot)
                method = 'existing_frozen9596_snapshot'
                reused += 1
            else:
                content = (logical['bytes'], logical['sha256'])
                if content not in copied:
                    original = guarded(refs.verify(logical))
                    if logical['bytes'] > 32*1024**2:
                        raise ValueError('DiagnosticRetentionCopyBound')
                    destination = guarded(OUT / ('bytes-' + logical['sha256']))
                    shutil.copyfile(original, destination)
                    if digest(destination) != logical['sha256']:
                        raise ValueError('DiagnosticRetentionCopyChanged')
                    destination.chmod(0o444)
                    copied[content] = ref_for(destination, refs)
                snapshot = copied[content]
                method = 'new_independent_byte_copy'
            if any(snapshot[k] != logical[k] for k in ['bytes', 'sha256']):
                raise ValueError('DiagnosticRetentionWrongFrozenBytes')
            rows.append({'diagnostic': name, 'original_logical_ref': logical,
                         'preserved_snapshot_ref': snapshot, 'method': method})
    if not rows or len(rows) > 20000:
        raise ValueError('DiagnosticRetentionCatalogBound')
    for row in rows:
        refs.verify(row['preserved_snapshot_ref'])
    write_once(OUT / 'result.json', {
        'format': 'core036.diagnostic-input-retention.v1', 'inputs': intent['diagnostic_intent_refs'],
        'frozen_source_ref': intent['frozen_source_ref'], 'rows': rows,
        'reused_frozen_references': reused, 'new_copies': len(copied),
        'new_copy_bytes': sum(size for size, _ in copied),
        'scope': 'Byte retention for independent context reconstruction; mutable original paths are not rebound or assumed immutable. No old outcome is promoted.',
        'original_records_unchanged': True, 'disposal_performed': False,
        'native_proof': 'unestablished', 'feature_complete': False,
        'product_adoption': 'unactivated',
    })
    return 0


def parent():
    refs, store = artifact_context_for('w001')
    closed = refs.read(ref_for(guarded(N / 'attempts/a0573/child/receipt.json'), refs))
    _closed_receipt(closed, 'ENV', 'w001')
    frozen = ref_for(guarded(N / 'subjects/r9596/manifest.json'), refs)
    diagnostic = [ref_for(guarded(N / 'bootstrap-runs' / ('quality-timeout-diagnosis-' + suffix) / 'intent.json'), refs)
                  for suffix in ['001', '002', '003']]
    profile_path = guarded(F / 'inputs/v2/profiles/native-preparation-capacity-001.json')
    profile = refs.read(ref_for(profile_path, refs))
    paths = [Path(__file__), profile_path, N / 'attempts/a0573/checkpoint.json',
             N / 'attempts/a0573/child/receipt.json', *sorted(E.glob('*.py'))]
    bindings = [ref_for(guarded(path), refs) for path in paths] + [frozen, *diagnostic]
    BASE.mkdir(parents=True, exist_ok=False)
    write_once(BASE / 'intent.json', {'bindings': bindings, 'frozen_source_ref': frozen,
        'diagnostic_intent_refs': diagnostic, 'reason': 'Conserve exact old source/compiler-input bytes before any cache reuse; no rewriting, relocation or deletion.'})
    python = refs.read(ref_for(guarded(E / 'native-environment-inputs-v2.json'), refs))['tools']['python']
    if digest(guarded(python['path'])) != python['sha256']:
        raise ValueError('DiagnosticRetentionPython')
    argv = [python['path'], str(Path(__file__)), '--child']
    write_once(BASE / 'declaration.json', {'stage': 'NATIVE', 'profile': profile,
        'argv': argv, 'wall_seconds': 180, 'start_monotonic_ns': STARTED,
        'scope': 'Additive input-byte retention only; no scientific acceptance'})
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
