"""Lossless, supervised reclamation of the exact closed Native583 build cache."""

import json
import os
from pathlib import Path
import stat
import sys
import time

sys.dont_write_bytecode = True
STARTED = time.monotonic_ns()
R = Path('/data/repos/behavior-ir-core-033')
E = R / 'experiments/transition-study036'
F = R / 'specs/036-core-transition-feasibility'
P = Path('/var/tmp/behavior-ir-core036-v2/w001')
N = Path('/var/tmp/behavior-ir-core036-evidence-v2/w001')
NAME = 'native583-cache-reclamation-001'
BASE = N / 'bootstrap-runs' / NAME
OUT = P / 'tmp' / NAME
TARGET = P / 'disposable/native-a0583/target'
sys.path.insert(0, str(E))
from artifact_io import RootRegistry, digest, read, write_once
from controller_v2 import artifact_context_for, execution_control_paths, ref_for
from native_accessor_source_canary_v2 import guard_owned_path, _unlinked_parents
from native_partial_cache_retention_v2 import complete_inventory
from native_worker_cache_retention_v2 import archive_groups
from backend_ir_retention_v2 import _archive, _verify_archive
from owned_cleanup import OwnedCleanup
from recorder import V2Runner


def guarded(path):
    path = guard_owned_path(Path(path))
    _unlinked_parents(path)
    return path


def owner():
    fence = read(guarded(P / 'active-tree.json'))
    if (fence['output'] != str(P / 'bootstrap' / NAME)
            or fence['boot_id'] != Path('/proc/sys/kernel/random/boot_id').read_text().strip()):
        raise ValueError('Native583CleanupOwnerFence')
    cursor, seen = os.getpid(), set()
    while cursor > 1 and cursor not in seen:
        if cursor == 2217256:
            raise ValueError('Native583CleanupExcludedProcess')
        seen.add(cursor)
        fields = Path('/proc', str(cursor), 'stat').read_text().rsplit(')', 1)[1].split()
        if cursor == fence['controller_pid']:
            if int(fields[19]) != fence['controller_start_ticks']:
                raise ValueError('Native583CleanupReusedOwner')
            return fence
        cursor = int(fields[1])
    raise ValueError('Native583CleanupNotOwned')


def qualify(refs):
    attempt = guarded(N / 'attempts/a0583')
    RootRegistry({'attempt': attempt}).verify_closed('attempt')
    expected = [
        (attempt / 'checkpoint.json', '8dc82b38aabbb2b15169d0de3c89149513190d4602830206047eed9e63625388'),
        (attempt / 'child/receipt.json', '7874dda682fe7b5a4bbc9a2d9ec238da1bf2b4b5dbef433c7e6ce6e816a4bc9c'),
        (P / 'native-builds/a0583/result.json', 'b948fbeb218082f538b0bcb15d2927926485b2930909e67d7767a15fb87876bb'),
    ]
    for path, expected_sha in expected:
        if digest(guarded(path)) != expected_sha:
            raise ValueError('Native583CleanupClosedBytes')
    cp = read(attempt / 'checkpoint.json')
    receipt = read(attempt / 'child/receipt.json', limit=32 * 1024**2)
    result = read(guarded(P / 'native-builds/a0583/result.json'))
    if (cp['stage_outcome'] != 'succeeded' or cp['source_validation_error'] is not None
            or cp['outcome']['operational'] != 'closed' or receipt['exit_code'] != 0
            or receipt['stop_reason'] is not None or not receipt['tree_empty']
            or not receipt['group_empty'] or receipt['final_storage_inventory_error'] is not None
            or cp['source_subject_ref'] != receipt['source_subject_ref']
            or cp['source_subject_ref'] != result['source_subject_ref']
            or result['cargo_exit_code'] != 0 or result['target'] != str(TARGET)
            or result['native_proof'] != 'unestablished'):
        raise ValueError('Native583CleanupUnqualifiedOwner')
    retained = []
    for executable in result['built_executables'].values():
        path = guarded(executable['path'])
        if path.is_relative_to(TARGET) or not path.is_relative_to(P / 'native-builds/a0583/retained'):
            raise ValueError('Native583CleanupExecutableNotRetained')
        if path.stat().st_size != executable['bytes'] or digest(path) != executable['sha256']:
            raise ValueError('Native583CleanupExecutableChanged')
        retained.append(ref_for(path, refs))
    # Neither the build subject nor the latest proof subject can depend on a
    # cache member scheduled for disposal. Sources and native output stay put.
    for reference in [cp['source_subject_ref'], ref_for(guarded(N / 'subjects/r9623/manifest.json'), refs)]:
        subject = refs.read(reference, limit=32 * 1024**2)
        for row in subject['files']:
            logical = row['logical_ref']
            if logical['root_id'] == 'private' and logical['path'].startswith('disposable/native-a0583/target/'):
                raise ValueError('Native583CleanupFrozenInput')
    return retained


def child():
    refs, _ = artifact_context_for('w001')
    intent = read(guarded(BASE / 'intent.json'))
    for reference in intent['bindings']:
        refs.verify(reference)
    retained = qualify(refs)
    fence = owner()
    current = complete_inventory(TARGET, maximum_bytes=2 * 1024**3)
    if current['file_bytes'] > 768 * 1024**2:
        raise ValueError('Native583CleanupExpectedCapacity')
    OUT.mkdir(parents=True, exist_ok=False)
    write_once(OUT / 'complete-inventory.json', current)
    retained.append(ref_for(OUT / 'complete-inventory.json', refs))
    parts, archive_bytes = [], 0
    for index, rows in enumerate(archive_groups(current['files'])):
        path = guarded(OUT / f'part-{index:04d}.tar.gz')
        # The actual cache was below 512MiB. Conservatively reserve 768MiB
        # temporary space and retain every member; never raise a reader bound.
        _archive(TARGET, rows, path)
        _verify_archive(path, rows)
        reference = ref_for(path, refs)
        archive_bytes += reference['bytes']
        if archive_bytes > 768 * 1024**2:
            raise ValueError('Native583CleanupArchiveCapacity')
        parts.append({'archive_ref': reference, 'files': rows})
        retained.append(reference)
    write_once(OUT / 'archive-index.json', {'parts': parts, 'archive_bytes': archive_bytes})
    retained.append(ref_for(OUT / 'archive-index.json', refs))
    if complete_inventory(TARGET, maximum_bytes=2 * 1024**3) != current:
        raise ValueError('Native583CleanupChangedBeforeDisposal')
    qualify(refs)
    registration = OwnedCleanup(P).register(TARGET, retained_refs=retained, registry=refs)
    write_once(OUT / 'registration.json', registration)
    # Do not use the generic global /proc scanner. The closed predecessor,
    # exclusive tree lease, fixed own-fence ancestry and unchanged bytes bound
    # this finite disposal. Inspect only our own ancestry, never other tasks.
    removed = 0
    for row in current['files']:
        if owner() != fence:
            raise ValueError('Native583CleanupOwnerChanged')
        path = guarded(TARGET / row['path'])
        info = path.lstat()
        if (not stat.S_ISREG(info.st_mode) or info.st_size != row['bytes']
                or stat.S_IMODE(info.st_mode) != row['mode'] or digest(path) != row['sha256']):
            raise ValueError('Native583CleanupMemberChanged')
        path.unlink()
        removed += 1
        time.sleep(0.002)
        if removed % 8 == 0:
            time.sleep(0.25)
    for row in sorted([r for r in current['directories'] if r['path'] != '.'],
                      key=lambda r: (-len(Path(r['path']).parts), r['path'])):
        if owner() != fence:
            raise ValueError('Native583CleanupOwnerChanged')
        path = guarded(TARGET / row['path'])
        if stat.S_IMODE(path.lstat().st_mode) != row['mode']:
            raise ValueError('Native583CleanupDirectoryChanged')
        path.rmdir()
        time.sleep(0.01)
    remaining = complete_inventory(TARGET, maximum_bytes=2 * 1024**3)
    if remaining['files'] or len(remaining['directories']) != 1:
        raise ValueError('Native583CleanupUnexpectedRemainder')
    for reference in retained:
        refs.verify(reference)
    qualify(refs)
    write_once(OUT / 'result.json', {
        'format': 'core036.native583-cache-reclamation.v1', 'target': str(TARGET),
        'removed_files': removed, 'removed_unique_inode_bytes': current['unique_inode_bytes'],
        'archive_bytes': archive_bytes, 'all_original_paths_modes_bytes_retained': True,
        'retained_executables_verified': True, 'feature_complete': False,
    })
    return 0


def parent():
    refs, store = artifact_context_for('w001')
    if guarded(P / 'active-tree.json').exists():
        raise ValueError('Native583CleanupExistingTree')
    qualify(refs)
    baseline = guarded(N / 'attempts/a0599')
    RootRegistry({'attempt': baseline}).verify_closed('attempt')
    receipt = read(baseline / 'child/receipt.json', limit=32 * 1024**2)
    if receipt['exit_code'] != 0 or receipt['stop_reason'] is not None or not receipt['tree_empty'] or not receipt['group_empty']:
        raise ValueError('Native583CleanupBaseline')
    profile_path = guarded(F / 'inputs/v2/profiles/native-consumer-capacity-001.json')
    profile = read(profile_path)
    usage = receipt['final_resource_observation']['growth_apparent_unique_inode_bytes']
    if profile['limits']['temporary_bytes'] - usage['temporary'] < 800 * 1024**2:
        raise ValueError('Native583CleanupTemporaryHeadroom')
    if profile['limits']['combined_bytes'] - sum(usage.values()) < 256 * 1024**2:
        raise ValueError('Native583CleanupCombinedHeadroom')
    sources = [Path(__file__), profile_path, *sorted(E.glob('*.py')), *sorted(E.glob('*.json')),
               N / 'attempts/a0583/checkpoint.json', N / 'attempts/a0583/child/receipt.json',
               P / 'native-builds/a0583/result.json', baseline / 'checkpoint.json', baseline / 'child/receipt.json']
    bindings = [ref_for(guarded(path), refs) for path in sources]
    BASE.mkdir(parents=True, exist_ok=False)
    from frozen_source_reuse_v2 import FrozenSourceWriter
    anchors = FrozenSourceWriter(refs, 'w001', root_id='future_evidence').anchors
    rows = []
    for reference in bindings:
        snapshot = anchors.get((reference['bytes'], reference['sha256']))
        if snapshot is None:
            saved = BASE / 'sources' / reference['sha256']
            if not saved.exists():
                write_once(saved, refs.verify(reference).read_bytes())
            snapshot = ref_for(saved, refs)
        refs.verify(snapshot)
        rows.append({'logical_ref': reference, 'snapshot_ref': snapshot})
    write_once(BASE / 'source-index.json', {'format': 'core036.cache-maintenance-source.v1', 'files': rows})
    write_once(BASE / 'intent.json', {'bindings': bindings, 'target': str(TARGET),
        'reason': 'Losslessly retain and reclaim only the exact closed Native583 compiler cache; preserve worker sources, immutable build results, retained executables, proof sources/raw exports, unrelated033 and shared SDK/backend data.'})
    python = read(guarded(E / 'native-environment-inputs-v2.json'))['tools']['python']
    if digest(guarded(python['path'])) != python['sha256']:
        raise ValueError('Native583CleanupPython')
    argv = [python['path'], str(Path(__file__)), '--child']
    source_ref = ref_for(BASE / 'source-index.json', refs)
    write_once(BASE / 'declaration.json', {'stage': 'NATIVE', 'profile': profile, 'argv': argv,
        'wall_seconds': 1800, 'start_monotonic_ns': STARTED, 'source_subject_ref': source_ref,
        'scope': 'lossless closed compiler cache reclamation; no scientific acceptance'})
    runner = V2Runner(profile, started_ns=STARTED,
        control_paths=[*execution_control_paths(), N], artifact_store=store)
    receipt = runner.run(argv, P / 'bootstrap' / NAME, wall_seconds=1800,
        child_kind='extended', source_subject_ref=source_ref,
        env={'PYTHONDONTWRITEBYTECODE': '1', 'PYTHONPATH': str(E)})
    for reference in bindings:
        refs.verify(reference)
    write_once(BASE / 'result.json', {'receipt_ref': ref_for(P / 'bootstrap' / NAME / 'receipt.json', refs),
        'actual_exit': receipt['exit_code'], 'stop_reason': receipt['stop_reason'],
        'tree_empty': receipt['tree_empty'], 'group_empty': receipt['group_empty'],
        'all_source_bytes_equal_after': True, 'feature_complete': False})
    print(json.dumps({k: receipt[k] for k in ['exit_code', 'stop_reason', 'tree_empty', 'group_empty',
        'final_storage_inventory_error', 'final_resource_observation']}))
    print(guarded(P / 'bootstrap' / NAME / 'stderr.txt').read_text()[-2500:])


if __name__ == '__main__':
    if sys.argv[1:] == ['--child']:
        raise SystemExit(child())
    if len(sys.argv) != 1:
        raise ValueError('Native583CleanupArguments')
    parent()
