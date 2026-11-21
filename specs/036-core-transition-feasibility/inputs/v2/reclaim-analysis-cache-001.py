"""Bounded metadata maintenance to recover admission after the actual cache stop.
No compiler, prover, benchmark, SDK/source deletion or ordinary budget increase.
"""
import hashlib
import json
import shutil
import signal
import sys
import time
from pathlib import Path
sys.dont_write_bytecode=True
R=Path('/data/repos/behavior-ir-core-033');E=R/'experiments/transition-study036';W=R/'specs/036-core-transition-feasibility/evidence/v2/w001';P=Path('/var/tmp/behavior-ir-core036-v2/w001')
sys.path.insert(0,str(E))
from artifact_io import RootRegistry,read,write_once,digest
from owned_cleanup import OwnedCleanup
signal.alarm(60)
started=time.monotonic_ns();out=W/'development/cache-recovery-analysis-001'
source=Path(__file__);declaration=read(source.with_suffix('.json'))
if digest(source)!=declaration['source_sha256']:raise ValueError('MaintenanceSourceChanged')
refs=RootRegistry({'repository':R,'private':P,'work':W},readonly=['repository'])
for name in ['a0091','a0100','a0107']:
 path=W/'attempts'/name;RootRegistry({'attempt':path}).verify_closed('attempt')
 if read(path/'checkpoint.json')['outcome']['operational']!='closed':raise ValueError('MaintenanceUnclosedPredecessor')
stop=read(W/'attempts/a0107/child/receipt.json',limit=32*1024**2)
if stop['stop_reason']!='CacheGrowthLimit' or not stop['tree_empty'] or not stop['group_empty']:raise ValueError('MaintenanceNotActualCacheRecovery')
target=P/'disposable/analysis-a0091/target';cleanup=OwnedCleanup(P);cleanup._target(target);out.mkdir(parents=True)
retained=[refs.reference('work',f'attempts/{name}/checkpoint.json') for name in ['a0091','a0100','a0107']]
retained.append(refs.reference('private','native-extraction/a0100/result.json'))
files=list(target.rglob('*'));before=sum(p.stat().st_size for p in files if p.is_file());total=0;copied=[]
for path in sorted(files):
 if not path.is_file() or not path.stat().st_mode & 0o111:continue
 with path.open('rb') as stream:
  if stream.read(4)!=b'\x7fELF':continue
 total+=path.stat().st_size
 if total>256*1024**2:raise ValueError('MaintenanceRetentionBound')
 saved=out/'retained'/path.relative_to(target);saved.parent.mkdir(parents=True,exist_ok=True);shutil.copy2(path,saved)
 ref=refs.reference('work',str(saved.relative_to(W)))
 if ref['sha256']!=digest(path):raise ValueError('MaintenanceRetainedBinaryChanged')
 retained.append(ref);copied.append(ref)
write_once(out/'retained-executables.json',copied)
registration=cleanup.register(target,retained_refs=retained,registry=refs);write_once(out/'registration.json',registration)
receipt=cleanup.dispose(target,paced=True);write_once(out/'cleanup.json',receipt)
write_once(out/'result.json',dict(format='core036.maintenance-recovery.v2',declared_seconds=60,wall_ns=time.monotonic_ns()-started,boot_id=Path('/proc/sys/kernel/random/boot_id').read_text().strip(),target=str(target),cached_file_apparent_bytes_before=before,retained_executable_bytes=total,original_limit_bytes=21474836480,original_stop_cache_bytes=stop['final_resource_observation']['growth_apparent_unique_inode_bytes']['cache'],scope='Small bounded closed-cache maintenance only to permit a new normally supervised SDK deduplication attempt; no ordinary work ran outside v2 and no ceiling increased.',aggregate_peak=None,aggregate_peak_reason='Not a sampled scientific attempt; metadata maintenance has an actual wall bound and recorded output/cache removal.',native_proof='unestablished',feature_complete=False,product_adoption='unactivated'))
RootRegistry({'maintenance':out}).seal('maintenance');print(json.dumps(dict(removed_cache_file_bytes=before,retained_executable_bytes=total,wall_ns=time.monotonic_ns()-started)))
