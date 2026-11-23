"""Lossless bounded chunks of the exact closed545 and565 compiler caches.

Retain all raw sources/results/executed binaries. Never inspect unrelated
processes. A verified chunk is retained before removing its exact original files.
"""

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
NAME = 'native-cache-maintenance-002'
BASE = N / 'bootstrap-runs' / NAME
OUTPUT = N / 'native-cache-maintenance' / NAME
TARGETS = tuple(P / 'disposable' / ('native-' + a) / 'target' for a in ['a0545', 'a0565'])
sys.path.insert(0, str(E))
from artifact_io import RootRegistry, digest, write_once  # noqa: E402
from backend_ir_retention_v2 import _archive, _verify_archive  # noqa: E402
from controller_v2 import artifact_context_for, execution_control_paths, ref_for  # noqa: E402
from native_accessor_source_canary_v2 import guard_owned_path, _unlinked_parents  # noqa: E402
from owned_cleanup import OwnedCleanup  # noqa: E402
from proof_cache_retention_v2 import strict_inventory  # noqa: E402
from recorder import V2Runner  # noqa: E402


def guarded(path):
    path = guard_owned_path(path)
    _unlinked_parents(path)
    return path


def owner():
    fence = json.loads(guarded(P / 'active-tree.json').read_bytes())
    if (fence['output'] != str(P / 'bootstrap' / NAME)
        or fence['boot_id'] != Path('/proc/sys/kernel/random/boot_id').read_text().strip()):
        raise ValueError('NativeMaintenanceOwnerFence')
    cursor, seen = os.getpid(), set()
    while cursor not in seen:
        seen.add(cursor)
        raw = Path(f'/proc/{cursor}/stat').read_text()
        fields = raw[raw.rfind(')') + 2:].split()
        if cursor == fence['controller_pid']:
            if int(fields[19]) != fence['controller_start_ticks']:
                raise ValueError('NativeMaintenanceOwnerReused')
            return fence
        cursor = int(fields[1])
        if cursor <= 1:
            break
    raise ValueError('NativeMaintenanceNotOwnedDescendant')


def closed(refs, attempt):
    base = N / 'attempts' / attempt
    cp = refs.read(ref_for(guarded(base / 'checkpoint.json'), refs))
    rc = refs.read(ref_for(guarded(base / 'child/receipt.json'), refs), limit=32*1024**2)
    result = refs.read(ref_for(guarded(P / 'native-builds' / attempt / 'result.json'), refs))
    RootRegistry({'attempt': base}).verify_closed('attempt')
    if (cp['attempt_id'] != attempt or cp['stage_outcome'] != 'succeeded'
        or cp['outcome']['operational'] != 'closed' or cp['source_validation_error'] is not None
        or rc['source_subject_ref'] != cp['source_subject_ref']
        or result['source_subject_ref'] != cp['source_subject_ref']
        or type(rc['exit_code']) is not int or rc['exit_code'] != 0
        or rc['stop_reason'] is not None or rc['tree_empty'] is not True
        or rc['group_empty'] is not True or rc['final_storage_inventory_error'] is not None
        or rc['final_incremental_storage_bytes'] != rc['final_resource_observation']['growth_apparent_unique_inode_bytes']):
        raise ValueError('NativeMaintenanceClosedCause')
    expected = P / 'disposable' / ('native-' + attempt) / 'target'
    if result['target'] != str(expected):
        raise ValueError('NativeMaintenanceTargetBinding')
    for row in refs.read(cp['source_subject_ref'], limit=8*1024**2)['files']:
        ref = row['logical_ref']
        guard_owned_path(Path(ref['path']))
        if ref['root_id'] == 'private' and any((P / ref['path']).is_relative_to(t) for t in TARGETS):
            raise ValueError('NativeMaintenanceSelectedSource')
    return cp, rc, result


def child():
    refs, _ = artifact_context_for('w001')
    intent = refs.read(ref_for(guarded(BASE / 'intent.json'), refs))
    for ref in intent['bindings']:
        refs.verify(ref)
    for attempt in ['a0545', 'a0565']:
        closed(refs, attempt)
    OUTPUT.mkdir(parents=True, exist_ok=False)
    saved = guarded(P / 'native-cache-maintenance' / NAME)
    saved.mkdir(parents=True, exist_ok=False)
    totals = []
    for target in TARGETS:
        fence = owner()
        target = guarded(target)
        identity = target.stat()
        rows = strict_inventory(target, maximum_files=10000, maximum_bytes=2*1024**3)
        name = target.parent.name
        out = OUTPUT / name
        out.mkdir()
        write_once(out / 'inventory.json', rows)
        groups, group, size = [], [], 0
        for row in rows:
            if row['bytes'] > 40*1024**2:
                raise ValueError('NativeMaintenanceLargeFileNeedsDeclaredSuccessor')
            if group and size + row['bytes'] > 32*1024**2:
                groups.append(group)
                group, size = [], 0
            group.append(row)
            size += row['bytes']
        if group:
            groups.append(group)
        registration = OwnedCleanup(P).register(target, retained_refs=
            intent['bindings'] + [ref_for(out / 'inventory.json', refs)], registry=refs)
        write_once(out / 'registration.json', registration)
        archive_rows, deleted, archive_bytes = [], 0, 0
        for number, group in enumerate(groups):
            archive = saved / (name + '-' + str(number).zfill(4) + '.tar.gz')
            _archive(target, group, archive, compressed_limit=48*1024**2)
            _verify_archive(archive, group)
            reference = ref_for(archive, refs)
            write_once(out / ('part-' + str(number).zfill(4) + '.json'), {
                'archive_ref': reference, 'files': group,
                'original_target': str(target), 'verified_before_disposal': True})
            if (owner() != fence or (target.stat().st_dev, target.stat().st_ino)
                != (identity.st_dev, identity.st_ino)):
                raise ValueError('NativeMaintenanceTargetChanged')
            for row in group:
                path = guarded(target / row['path'])
                info = path.stat()
                if (not stat.S_ISREG(info.st_mode) or info.st_size != row['bytes']
                    or stat.S_IMODE(info.st_mode) != row['mode']
                    or digest(path) != row['sha256']):
                    raise ValueError('NativeMaintenanceFileChangedBeforeDisposal')
                path.unlink()
                deleted += 1
                time.sleep(0.002)
                if deleted % 8 == 0:
                    time.sleep(0.25)
            refs.verify(reference)
            _verify_archive(archive, group)
            archive_rows.append(reference)
            archive_bytes += reference['bytes']
        if deleted != len(rows):
            raise ValueError('NativeMaintenanceDeletedCount')
        if owner() != fence:
            raise ValueError('NativeMaintenanceLostOwner')
        for directory, directories, files, fd in os.fwalk(target, topdown=False, follow_symlinks=False):
            if files:
                raise ValueError('NativeMaintenanceUnexpectedResidualFiles')
            for item in directories:
                guarded(Path(directory) / item)
                os.rmdir(item, dir_fd=fd)
        os.rmdir(target)
        result = {'removed': str(target), 'files': deleted,
            'raw_bytes': sum(row['bytes'] for row in rows),
            'archive_bytes': archive_bytes, 'archives': archive_rows,
            'all_original_files_modes_and_bytes_retained': True,
            'future_reuse_requires_explicit_archive_restore': True}
        result['net_payload_reclaimed_bytes'] = result['raw_bytes'] - archive_bytes
        write_once(out / 'result.json', result)
        totals.append(result)
    for ref in intent['bindings']:
        refs.verify(ref)
    write_once(OUTPUT / 'result.json', {
        'format': 'core036.native-cache-maintenance.v2', 'results': totals,
        'feature_complete': False, 'product_adoption': 'unactivated',
        'scope': 'two fixed closed disposable caches; all chunks verified before deletion'})
    return 0


def parent():
    refs, store = artifact_context_for('w001')
    p = guarded(F / 'inputs/v2/bootstrap-native-cache-maintenance-v1.py')
    if store.active_root_id != 'future_evidence' or guarded(OUTPUT).exists():
        raise ValueError('NativeMaintenanceOutputOrRoot')
    _, latest, _ = closed(refs, 'a0565')
    closed(refs, 'a0545')
    profile_path = F / 'inputs/v2/profiles/native-suite-capacity-001.json'
    profile = refs.read(ref_for(guarded(profile_path), refs))
    cause_path = N / 'bootstrap-runs/native-cache-maintenance-001/result.json'
    cause = refs.read(ref_for(guarded(cause_path), refs))
    prior = refs.read(cause['receipt_ref'], limit=32*1024**2)
    if (type(cause['actual_exit']) is not int or cause['actual_exit'] != 1
        or cause['stop_reason'] is not None or not cause['tree_empty']
        or not cause['group_empty'] or not cause['all_source_bytes_equal_after']
        or prior['final_storage_inventory_error'] is not None
        or prior['final_incremental_storage_bytes'] != prior['final_resource_observation']['growth_apparent_unique_inode_bytes']):
        raise ValueError('NativeMaintenanceClosedPredecessor')
    headroom = profile['limits']['cache_bytes'] - prior['final_resource_observation']['growth_apparent_unique_inode_bytes']['cache']
    if headroom < 80*1024**2:
        raise ValueError('NativeMaintenanceChunkPeakHeadroom')
    bindings = [ref_for(guarded(p), refs) for p in
                [Path(__file__), p, profile_path, cause_path, refs.verify(cause['receipt_ref']), *sorted(E.glob('*.py'))]]
    for attempt in ['a0545', 'a0565']:
        bindings += [ref_for(guarded(p), refs) for p in [
            N / 'attempts' / attempt / 'checkpoint.json',
            N / 'attempts' / attempt / 'child/receipt.json',
            P / 'native-builds' / attempt / 'result.json']]
    BASE.mkdir(parents=True, exist_ok=False)
    write_once(BASE / 'intent.json', {'bindings': bindings, 'targets': list(map(str, TARGETS)),
               'archive_limit': 48*1024**2, 'scope': 'lossless chunks of two fixed closed owned caches',
               'correction': 'Previous256MiB argument exceeded the existing128MiB helper API before compression; no deletion occurred. Each new chunk uses48MiB or less, is independently verified, then only its exact files are removed. All limits stay unchanged.'})
    python = refs.read(ref_for(guarded(E / 'native-environment-inputs-v2.json'), refs))['tools']['python']
    if digest(guarded(python['path'])) != python['sha256']:
        raise ValueError('NativeMaintenancePython')
    argv = [python['path'], str(Path(__file__)), '--child']
    write_once(BASE / 'declaration.json', {'stage': 'NATIVE', 'profile': profile,
        'argv': argv, 'wall_seconds': 900, 'start_monotonic_ns': STARTED,
        'scope': 'storage maintenance only; no scientific sample or proof'})
    runner = V2Runner(profile, started_ns=STARTED,
        control_paths=[*execution_control_paths(), N], artifact_store=store)
    rc = runner.run(argv, P / 'bootstrap' / NAME, wall_seconds=900,
        env={'PYTHONDONTWRITEBYTECODE': '1', 'PYTHONPATH': str(E)})
    for ref in bindings:
        refs.verify(ref)
    write_once(BASE / 'result.json', {
        'receipt_ref': ref_for(P / 'bootstrap' / NAME / 'receipt.json', refs),
        'actual_exit': rc['exit_code'], 'stop_reason': rc['stop_reason'],
        'tree_empty': rc['tree_empty'], 'group_empty': rc['group_empty'],
        'all_source_bytes_equal_after': True, 'feature_complete': False})
    print(json.dumps({k: rc[k] for k in ['exit_code', 'stop_reason', 'tree_empty',
        'group_empty', 'final_resource_observation', 'final_storage_inventory_error']}))
    print((P / 'bootstrap' / NAME / 'stderr.txt').read_text()[-3000:])


if __name__ == '__main__':
    if sys.argv[1:] == ['--child']:
        raise SystemExit(child())
    if len(sys.argv) != 1:
        raise ValueError('NativeMaintenanceArguments')
    parent()
