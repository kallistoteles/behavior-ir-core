"""Prospective freeze/declare under the admitted whole-work V2 resource profile."""
import json
from pathlib import Path
import sys
import time

sys.dont_write_bytecode = True
R = Path('/data/repos/behavior-ir-core-033')
E = R / 'experiments/transition-study036'
F = R / 'specs/036-core-transition-feasibility'
P = Path('/var/tmp/behavior-ir-core036-v2/w001')
sys.path.insert(0, str(E))
from artifact_io import write_once, digest
from controller_v2 import artifact_context_for, execution_control_paths, ref_for
from recorder import V2Runner

started = time.monotonic_ns()
name, command = sys.argv[1], sys.argv[2:]
import re
if re.fullmatch(r'[a-z0-9][a-z0-9-]{0,80}', name) is None or not command or command[0] not in {'freeze', 'declare', 'resume'}:
    raise ValueError('FutureMetadataArguments')
refs, store = artifact_context_for('w001')
if store.active_root_id != 'future_evidence' or '--work' not in command or Path(command[command.index('--work')+1]) != store.context_path:
    raise ValueError('FutureMetadataSameWorkOnly')
if command[0] in {'declare', 'resume'}:
    destination = Path(command[command.index('--out')+1])
    if destination.parent != refs.roots['future_evidence'] / 'attempts' or re.fullmatch(r'a[0-9]{4,16}', destination.name) is None:
        raise ValueError('FutureMetadataAttemptOutput')
else:
    if re.fullmatch(r'r[0-9]{4,16}', command[command.index('--revision')+1]) is None:
        raise ValueError('FutureMetadataRevision')
profile_path = F / 'inputs/v2/profiles/native-completion-capacity-001.json'
profile_ref = ref_for(profile_path, refs)
profile = refs.read(profile_ref)
base = refs.roots['future_evidence'] / 'bootstrap-runs' / name
base.mkdir(parents=True, exist_ok=False)
sources = [*sorted(E.glob('*.py')), *sorted(E.glob('*.json')), *sorted((E/'tests/v2').glob('*.py')), Path(__file__)]
sources += [profile_path, store.context_path]
for key in ('--inputs', '--slots', '--profile', '--correction', '--checkpoint'):
    if key in command:
        sources.append(Path(command[command.index(key)+1]))
from frozen_source_reuse_v2 import FrozenSourceWriter
anchors = FrozenSourceWriter(refs, 'w001', root_id='future_evidence').anchors
source_rows = []
for index, path in enumerate(dict.fromkeys(sources)):
    if path.name in {'parameters.bin','compression_prover_key.bin'}:
        raise ValueError('ProtectedArtifact')
    reference = ref_for(path, refs)
    anchor = anchors.get((reference['bytes'], reference['sha256']))
    if anchor is not None:
        if refs.verify(anchor).read_bytes() != path.read_bytes():
            raise ValueError('FutureMetadataExistingSnapshotBytes')
        snapshot = dict(anchor)
    else:
        saved = base/'sources'/f'{index:05d}'
        write_once(saved, path.read_bytes())
        snapshot = ref_for(saved, refs)
    if snapshot['sha256'] != reference['sha256']:
        raise ValueError('FutureMetadataSourceChangedBeforeRun')
    source_rows.append({'logical_ref':reference, 'snapshot_ref':snapshot})
write_once(base/'source-index.json', {'format':'core036.metadata-source.v1','files':source_rows})
tools = json.loads((E/'toolchain.json').read_text())['tools']
python = tools['python']['path']
if digest(python) != tools['python']['sha256']:
    raise ValueError('FutureMetadataPinnedPython')
argv = [python, str(E/'study.py'), *command]
write_once(base/'declaration.json', {'format':'core036.metadata-attempt.v1','work_id':'w001',
    'source_subject_ref':ref_for(base/'source-index.json',refs),'profile_ref':profile_ref,
    'inputs':list(store.configuration_refs),'argv':argv,'wall_seconds':60,
    'start_monotonic_ns':started,'scope':'same-work future-only freeze/declare; no scientific acceptance'})
runner = V2Runner(profile, started_ns=started, control_paths=[*execution_control_paths(), refs.roots['future_evidence']], artifact_store=store)
output = P/'bootstrap'/name
receipt = runner.run(argv, output, wall_seconds=60, env={'PYTHONDONTWRITEBYTECODE':'1','PYTHONPATH':str(E)})
after = []
for row in source_rows:
    refs.verify(row['logical_ref'])
    refs.verify(row['snapshot_ref'])
    after.append(row['logical_ref'])
target = refs.roots['future_evidence']/'development'/name
target.mkdir(parents=True,exist_ok=False)
for filename in ('receipt.json','stdout.txt','stderr.txt'):
    write_once(target/filename,(output/filename).read_bytes())
write_once(base/'result.json', {'receipt_ref':ref_for(target/'receipt.json',refs),
    'actual_exit':receipt['exit_code'],'stop_reason':receipt['stop_reason'],
    'tree_empty':receipt['tree_empty'],'group_empty':receipt['group_empty'],
    'all_source_bytes_equal_after':True,'scientific_acceptance':False})
print(json.dumps({key:receipt[key] for key in ('exit_code','stop_reason','tree_empty','group_empty','final_resource_observation','final_storage_inventory_error')}))
print((output/'stderr.txt').read_text()[-3000:])
