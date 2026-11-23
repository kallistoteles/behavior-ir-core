"""Losslessly retain and remove only the closed571 compiler cache.

The current003 build starts elsewhere. Historical debug inputs already have
independent retained byte copies; no source, report or SDK is removed.
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
NAME = 'quality-cache-maintenance-001'
BASE = N / 'bootstrap-runs' / NAME
OUT = P / 'quality-cache-maintenance' / NAME
TARGET = P / 'disposable/gate-a0569/target'
sys.path.insert(0, str(E))
from artifact_io import RootRegistry, digest, write_once  # noqa: E402
from backend_ir_retention_v2 import _verify_archive  # noqa: E402
from controller_v2 import artifact_context_for, execution_control_paths, ref_for  # noqa: E402
from native_accessor_source_canary_v2 import guard_owned_path, _unlinked_parents  # noqa: E402
from native_partial_cache_retention_v2 import complete_inventory  # noqa: E402
from native_suite_capacity_v2 import _closed_receipt  # noqa: E402
from owned_cleanup import OwnedCleanup  # noqa: E402
from quality_warm_cache_v3 import retain_cache  # noqa: E402
from recorder import V2Runner  # noqa: E402


def guarded(path):
    path = guard_owned_path(Path(path))
    _unlinked_parents(path)
    return path


def owner():
    fence = json.loads(guarded(P / 'active-tree.json').read_text())
    if (fence['output'] != str(P / 'bootstrap' / NAME)
        or fence['boot_id'] != Path('/proc/sys/kernel/random/boot_id').read_text().strip()):
        raise ValueError('QualityMaintenanceOwnerFence')
    cursor, seen = os.getpid(), set()
    while cursor not in seen and cursor > 1:
        if cursor == 2217256:
            raise ValueError('QualityMaintenanceUnrelatedProcess')
        seen.add(cursor)
        raw = Path(f'/proc/{cursor}/stat').read_text()
        fields = raw[raw.rfind(')') + 2:].split()
        if cursor == fence['controller_pid']:
            if int(fields[19]) != fence['controller_start_ticks']:
                raise ValueError('QualityMaintenanceOwnerReused')
            return fence
        cursor = int(fields[1])
    raise ValueError('QualityMaintenanceNotOwnedDescendant')


def child():
    refs, _ = artifact_context_for('w001')
    intent = refs.read(ref_for(guarded(BASE / 'intent.json'), refs))
    for reference in intent['bindings']:
        refs.verify(reference)
    config = refs.read(ref_for(guarded(E / 'quality-inputs-v2.json'), refs))
    if set(config) != {'format', 'cli_result_ref', 'cli_checkpoint_ref', 'runtime_fixture_inputs'}:
        raise ValueError('QualityMaintenanceOldCacheStillSelected')
    cp_path = guarded(N / 'attempts/a0571/checkpoint.json')
    RootRegistry({'attempt': cp_path.parent}).verify_closed('attempt')
    cp = json.loads(cp_path.read_text())
    rc = json.loads(guarded(cp_path.parent / 'child/receipt.json').read_text())
    result = json.loads(guarded(P / 'quality/a0571/result.json').read_text())
    if (cp['stage_outcome'] != 'failed' or cp['source_validation_error'] is not None
        or rc['exit_code'] != 1 or rc['stop_reason'] is not None
        or rc['tree_empty'] is not True or rc['group_empty'] is not True
        or rc['final_storage_inventory_error'] is not None
        or rc['final_incremental_storage_bytes'] != rc['final_resource_observation']['growth_apparent_unique_inode_bytes']
        or result['target'] != str(TARGET) or result['whole_gate_terminal_ok'] is not False):
        raise ValueError('QualityMaintenanceExactClosedFailedOwner')
    retained_path = guarded(N / 'bootstrap-runs/quality-diagnostic-input-retention-001/result.json')
    retained = json.loads(retained_path.read_text())
    retention_rc = json.loads(guarded(P / 'bootstrap/quality-diagnostic-input-retention-001/receipt.json').read_text())
    _closed_receipt(retention_rc, 'NATIVE', 'w001')
    if (retained['actual_exit'] != 0 or retained['stop_reason'] is not None
        or not retained['all_source_bytes_equal_after']):
        raise ValueError('QualityMaintenanceDiagnosticRetention')
    catalog_ref = ref_for(guarded(P / 'diagnostic-input-retention/quality-diagnostic-input-retention-001/result.json'), refs)
    catalog = refs.read(catalog_ref)
    preserved_refs = [row['preserved_snapshot_ref'] for row in catalog['rows']]
    for reference in preserved_refs:
        refs.verify(reference)
    fence = owner()
    target = guarded(TARGET)
    identity = target.stat()
    OUT.mkdir(parents=True, exist_ok=False)
    archive = OUT / 'retained-cache'
    preservation = retain_cache(target, archive, budget=intent['archive_budget'])
    inventory = json.loads(guarded(archive / 'complete-inventory.json').read_text())
    retained_refs = [catalog_ref, *preserved_refs]
    for name in ['complete-inventory.json', 'archive-plan.json', 'result.json']:
        retained_refs.append(ref_for(guarded(archive / name), refs))
    for part in preservation['parts']:
        retained_refs.append(ref_for(guarded(archive / part['name']), refs))
        _verify_archive(archive / part['name'], part['files'])
    registration = OwnedCleanup(P).register(target, retained_refs=retained_refs, registry=refs)
    write_once(OUT / 'registration.json', registration)
    if (owner() != fence
        or (target.stat().st_dev, target.stat().st_ino) != (identity.st_dev, identity.st_ino)
        or complete_inventory(target, maximum_bytes=4*1024**3, domain='closed-quality-cache') != inventory):
        raise ValueError('QualityMaintenanceChangedBeforeDisposal')
    deleted = 0
    # The verified runner lease excludes participating writers. Inspect only
    # its ancestry; never enumerate, inspect or control unrelated processes.
    for directory, directories, files, fd in os.fwalk(target, topdown=False, follow_symlinks=False):
        for name in files:
            guarded(Path(directory) / name)
            if not stat.S_ISREG(os.stat(name, dir_fd=fd, follow_symlinks=False).st_mode):
                raise ValueError('QualityMaintenanceChangedFile')
            os.unlink(name, dir_fd=fd)
            deleted += 1
            time.sleep(0.002)
            if deleted % 8 == 0:
                time.sleep(0.25)
        for name in directories:
            guarded(Path(directory) / name)
            os.rmdir(name, dir_fd=fd)
    os.rmdir(target)
    if deleted != preservation['file_count']:
        raise ValueError('QualityMaintenanceDeletedCount')
    for reference in retained_refs:
        refs.verify(reference)
    write_once(OUT / 'result.json', {
        'format': 'core036.quality-cache-maintenance.v1', 'removed': str(target),
        'preservation_ref': ref_for(archive / 'result.json', refs),
        'files': deleted, 'archive_bytes': preservation['archive_bytes'],
        'unique_cache_bytes_before': preservation['unique_inode_bytes'],
        'all_original_paths_modes_and_bytes_retained': True,
        'diagnostic_input_catalog_ref': catalog_ref,
        'future_old_cache_reuse_requires_explicit_restore': True,
        'feature_complete': False, 'product_adoption': 'unactivated'})
    return 0


def parent():
    refs, store = artifact_context_for('w001')
    previous = json.loads(guarded(P / 'bootstrap/quality-diagnostic-input-retention-001/receipt.json').read_text())
    _closed_receipt(previous, 'NATIVE', 'w001')
    profile_path = guarded(F / 'inputs/v2/profiles/native-preparation-capacity-001.json')
    profile = refs.read(ref_for(profile_path, refs))
    usage = previous['final_resource_observation']['growth_apparent_unique_inode_bytes']
    budget = min(profile['limits']['cache_bytes'] - usage['cache'],
                 profile['limits']['combined_bytes'] - sum(usage.values())) - 64*1024**2
    if budget < 800*1024**2:
        raise ValueError('QualityMaintenanceArchiveHeadroom')
    paths = [Path(__file__), profile_path, E / 'quality-inputs-v2.json', *sorted(E.glob('*.py'))]
    for base in [N / 'attempts/a0571', N / 'attempts/a0573']:
        paths += [base / 'checkpoint.json', base / 'child/receipt.json']
    paths += [N / 'bootstrap-runs/quality-diagnostic-input-retention-001/result.json',
              P / 'bootstrap/quality-diagnostic-input-retention-001/receipt.json']
    bindings = [ref_for(guarded(path), refs) for path in paths]
    BASE.mkdir(parents=True, exist_ok=False)
    # Preserve mutable source inputs as well as their logical identities.
    frozen = refs.read(ref_for(N / 'subjects/r9597/manifest.json', refs), limit=32*1024**2)
    anchors = {(r['logical_ref']['bytes'], r['logical_ref']['sha256']): r['snapshot_ref'] for r in frozen['files']}
    rows = []
    for reference in bindings:
        content = (reference['bytes'], reference['sha256'])
        snapshot = anchors.get(content)
        if snapshot is None:
            path = BASE / 'sources' / reference['sha256']
            if not path.exists():
                write_once(path, refs.verify(reference).read_bytes())
            snapshot = ref_for(path, refs)
        refs.verify(snapshot)
        rows.append({'logical_ref': reference, 'snapshot_ref': snapshot})
    write_once(BASE / 'source-index.json', {'format': 'core036.cache-maintenance-source.v1', 'files': rows})
    write_once(BASE / 'intent.json', {'bindings': bindings, 'archive_budget': budget,
        'reason': 'Fresh003 build uses a new target; fully retain and reclaim only the closed571 compiler cache. Old diagnostic input bytes already conserved independently.'})
    python = refs.read(ref_for(guarded(E / 'native-environment-inputs-v2.json'), refs))['tools']['python']
    if digest(guarded(python['path'])) != python['sha256']:
        raise ValueError('QualityMaintenancePython')
    argv = [python['path'], str(Path(__file__)), '--child']
    source_ref = ref_for(BASE / 'source-index.json', refs)
    write_once(BASE / 'declaration.json', {'stage': 'NATIVE', 'profile': profile,
        'argv': argv, 'wall_seconds': 900, 'start_monotonic_ns': STARTED,
        'source_subject_ref': source_ref, 'scope': 'lossless closed cache maintenance only'})
    runner = V2Runner(profile, started_ns=STARTED,
        control_paths=[*execution_control_paths(), N], artifact_store=store)
    receipt = runner.run(argv, P / 'bootstrap' / NAME, wall_seconds=900,
        source_subject_ref=source_ref,
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
        raise ValueError('QualityMaintenanceArguments')
    parent()
