"""Bounded metadata recovery after actual closed child and stale ledger writer."""
import hashlib
import os
import signal
import sys
import time
from pathlib import Path
sys.dont_write_bytecode = True
R = Path('/data/repos/behavior-ir-core-033')
E = R / 'experiments/transition-study036'
W = R / 'specs/036-core-transition-feasibility/evidence/v2/w001'
sys.path.insert(0, str(E))
from artifact_io import RootRegistry, read, write_once, digest
from controller_v2 import load_work, _subject, ref_for
signal.alarm(60)
source = Path(__file__)
declaration = read(source.with_suffix('.json'))
if digest(source) != declaration['source_sha256']:
    raise ValueError('RecoverySourceChanged')
if Path('/proc/1918443').exists():
    raise ValueError('OriginalControllerStillExists')
ctx, registry, ledger = load_work(W / 'context.json')
name = 'a0116'
item = ledger.attempts[name]
if item['state'] != 'running':
    raise ValueError('RecoveryExpectedRunningLedger')
folder = W / 'attempts' / name
d = read(folder / 'declaration.json')
receipt = read(folder / 'child/receipt.json', limit=32*1024**2)
if receipt['exit_code'] != 1 or receipt['stop_reason'] is not None or not receipt['tree_empty'] or not receipt['group_empty'] or receipt['final_storage_inventory_error'] is not None:
    raise ValueError('RecoveryExpectedActualClosedFailedChild')
if receipt['argv'][1] != str(E / 'quality_v2.py') or receipt['argv'][3] != str(folder / 'declaration.json'):
    raise ValueError('RecoveryWrongActualExecution')
if receipt['boot_id'] != Path('/proc/sys/kernel/random/boot_id').read_text().strip():
    raise ValueError('RecoveryWrongBoot')
for filename, key in [('stdout.txt','stdout_sha256'), ('stderr.txt','stderr_sha256')]:
    if digest(folder / 'child' / filename) != receipt[key]:
        raise ValueError('RecoveryActualLogChanged')
if _subject(ctx, registry, d['revision']) != d['source_subject_ref']:
    raise ValueError('RecoverySourceChanged')
for ref in d['executor_sources']:
    registry.verify(ref)
now = time.monotonic_ns()
start = item['started_ns']
stage_start = receipt['start_monotonic_ns'] - start
stage_end = stage_start + receipt['wall_ns']
if not 0 <= stage_start <= stage_end <= now-start:
    raise ValueError('RecoveryActualIntervalOrder')
intervals = [dict(kind='controller',start_ns=0,end_ns=stage_start), dict(kind='stage',start_ns=stage_start,end_ns=stage_end), dict(kind='unclassified',start_ns=stage_end,end_ns=now-start)]
reason = 'Actual complete child exited1 at canonical cargo test; original controller could not append closure because later declarations changed its ledger snapshot. Recover with fresh ledger and charge the entire observed post-child gap without attributing it to test execution.'
ledger.close(name, now_ns=now, boot_id=receipt['boot_id'], outcome='failed', reason=reason, closed_tree=True, intervals=intervals)
out = W / 'development/ledger-writer-recovery-001'
out.mkdir(exist_ok=False)
write_once(out / 'recovery.json', dict(format='core036.metadata-recovery.v2',attempt_id=name,reason=reason,original_child_exit_code=receipt['exit_code'],original_child_wall_ns=receipt['wall_ns'],closure_monotonic_ns=now,post_child_gap_ns=(now-start)-stage_end,post_child_gap_scope='unclassified: includes original controller/source checks, intervening read-only diagnosis and metadata recovery',source_validation_error=None,scientific_sample=False,feature_complete=False,inputs=[ref_for(source.with_suffix('.json'),registry),ref_for(folder/'child/receipt.json',registry)]))
RootRegistry({'recovery':out}).seal('recovery')
checkpoint = dict(format='core036.checkpoint.v2',work_id=ctx['work_id'],record_id=name+'-closed',specification_ref=ctx['specification_ref'],source_subject_ref=d['source_subject_ref'],inputs=[ref_for(folder/'declaration.json',registry),ref_for(folder/'child/receipt.json',registry),ref_for(out/'recovery.json',registry)],product_adoption='unactivated',outcome=dict(operational='closed',acceptance='blocked'),reason=reason,blocking_ref=ctx['specification_ref'],attempt_id=name,stage_outcome='failed',initial_authority='unverified',feature_complete=False,pending_slots=d['slots'],source_validation_error=None)
registry.write('work',f'attempts/{name}/checkpoint.json',checkpoint)
RootRegistry({'attempt':folder}).seal('attempt')
print('Recovered actual a0116 failed closure; no test or clock reset; pending a0117/a0118 remain declared.')
