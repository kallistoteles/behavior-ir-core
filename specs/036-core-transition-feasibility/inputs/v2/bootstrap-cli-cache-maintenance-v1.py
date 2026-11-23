"""Retain the exact closed567 CLI target, then remove only that owned cache.

The567 shell realization remains resource-unestablished and is not promoted.
The current568 CLI target, all retained executables and source/results remain.
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
NAME = 'cli-cache-maintenance-001'
BASE = N / 'bootstrap-runs' / NAME
OUTPUT = P / 'cli-cache-maintenance' / NAME
TARGET = P / 'disposable/cli-a0567/target'
sys.path.insert(0, str(E))
from artifact_io import RootRegistry, digest, write_once  # noqa: E402
from backend_ir_retention_v2 import _archive, _archive_stream, _verify_archive  # noqa: E402
from controller_v2 import artifact_context_for, execution_control_paths, ref_for  # noqa: E402
from native_accessor_source_canary_v2 import guard_owned_path, _unlinked_parents  # noqa: E402
from native_canary_cache_retention_v2 import CountOnlySink  # noqa: E402
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
    result = refs.read(ref_for(guarded(P / 'core-cli-builds' / attempt / 'result.json'), refs))
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
    expected = P / 'disposable' / ('cli-' + attempt) / 'target'
    if result['target'] != str(expected):
        raise ValueError('NativeMaintenanceTargetBinding')
    for row in refs.read(cp['source_subject_ref'], limit=8*1024**2)['files']:
        ref = row['logical_ref']
        guard_owned_path(Path(ref['path']))
        if ref['root_id'] == 'private' and (P / ref['path']).is_relative_to(TARGET):
            raise ValueError('NativeMaintenanceSelectedSource')
    return cp, rc, result


def child():
    refs, _ = artifact_context_for('w001')
    intent = refs.read(ref_for(guarded(BASE / 'intent.json'), refs))
    for ref in intent['bindings']:
        refs.verify(ref)
    closed(refs, 'a0567')
    closed(refs, 'a0568')
    fence = owner()
    target = guarded(TARGET)
    identity = target.stat()
    rows = strict_inventory(target, maximum_files=10000, maximum_bytes=2*1024**3)
    counter = CountOnlySink()
    _archive_stream(target, rows, counter, compressed_limit=intent['archive_limit'])
    OUTPUT.mkdir(parents=True, exist_ok=False)
    archive = OUTPUT / 'all-files.tar.gz'
    write_once(OUTPUT / 'inventory.json', rows)
    _archive(target, rows, archive, compressed_limit=intent['archive_limit'])
    _verify_archive(archive, rows)
    if archive.stat().st_size != counter.total:
        raise ValueError('NativeMaintenanceArchiveChanged')
    preserved = {
        'files': len(rows), 'raw_bytes': sum(r['bytes'] for r in rows),
        'archive_bytes': archive.stat().st_size, 'archive_sha256': digest(archive),
        'all_original_files_modes_and_bytes_retained': True,
    }
    write_once(OUTPUT / 'retention.json', preserved)
    retained = intent['bindings'] + [ref_for(OUTPUT / name, refs) for name in
                                    ['inventory.json', 'all-files.tar.gz', 'retention.json']]
    registration = OwnedCleanup(P).register(target, retained_refs=retained, registry=refs)
    write_once(OUTPUT / 'registration.json', registration)
    if (owner() != fence or strict_inventory(target, maximum_files=10000,
        maximum_bytes=2*1024**3) != rows or (target.stat().st_dev, target.stat().st_ino)
        != (identity.st_dev, identity.st_ino)):
        raise ValueError('NativeMaintenanceChangedBeforeDisposal')
    _verify_archive(archive, rows)
    # The outer runner owns the work lease. Inspect only its verified ancestry;
    # never enumerate or inspect unrelated host processes.
    deleted = 0
    for directory, directories, files, fd in os.fwalk(target, topdown=False, follow_symlinks=False):
        for name in files:
            guarded(Path(directory) / name)
            if not stat.S_ISREG(os.stat(name, dir_fd=fd, follow_symlinks=False).st_mode):
                raise ValueError('NativeMaintenanceChangedNode')
            os.unlink(name, dir_fd=fd)
            deleted += 1
            time.sleep(0.002)
            if deleted % 8 == 0:
                time.sleep(0.25)
        for name in directories:
            guarded(Path(directory) / name)
            os.rmdir(name, dir_fd=fd)
    os.rmdir(target)
    if deleted != len(rows):
        raise ValueError('NativeMaintenanceDeletedCount')
    for ref in retained:
        refs.verify(ref)
    write_once(OUTPUT / 'result.json', {
        **preserved, 'format': 'core036.cli-cache-maintenance.v1',
        'removed': str(target), 'archive_ref': ref_for(archive, refs),
        'net_reclaimed_bytes': preserved['raw_bytes'] - preserved['archive_bytes'],
        'future_reuse_requires_explicit_archive_restore': True,
        'feature_complete': False, 'product_adoption': 'unactivated',
    })
    return 0


def parent():
    refs, store = artifact_context_for('w001')
    if store.active_root_id != 'future_evidence' or guarded(OUTPUT).exists():
        raise ValueError('NativeMaintenanceOutputOrRoot')
    _, latest, _ = closed(refs, 'a0568')
    closed(refs, 'a0567')
    profile_path = F / 'inputs/v2/profiles/current-env-capacity-001.json'
    profile = refs.read(ref_for(guarded(profile_path), refs))
    headroom = profile['limits']['cache_bytes'] - latest['final_resource_observation']['growth_apparent_unique_inode_bytes']['cache']
    archive_limit = min(128*1024**2, headroom - 32*1024**2)
    if archive_limit < 64*1024**2:
        raise ValueError('NativeMaintenanceArchiveHeadroom')
    bindings = [ref_for(guarded(p), refs) for p in
                [Path(__file__), profile_path, *sorted(E.glob('*.py'))]]
    for attempt in ['a0567', 'a0568']:
        bindings += [ref_for(guarded(p), refs) for p in [
            N / 'attempts' / attempt / 'checkpoint.json',
            N / 'attempts' / attempt / 'child/receipt.json',
            P / 'core-cli-builds' / attempt / 'result.json']]
    BASE.mkdir(parents=True, exist_ok=False)
    write_once(BASE / 'intent.json', {'bindings': bindings, 'target': str(TARGET),
               'archive_limit': archive_limit, 'scope': 'lossless fixed closed owned cache only'})
    python = refs.read(ref_for(guarded(E / 'native-environment-inputs-v2.json'), refs))['tools']['python']
    if digest(guarded(python['path'])) != python['sha256']:
        raise ValueError('NativeMaintenancePython')
    argv = [python['path'], str(Path(__file__)), '--child']
    write_once(BASE / 'declaration.json', {'stage': 'ENV', 'profile': profile,
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
