"""Separate cold-reconstruction cases: large native comparison output is not a prerequisite.

This adds no replacement primary sample. Freeze this protocol before running it;
retain the original large-point timeout/unavailable anchor independently.
"""
import json
import os
from pathlib import Path
import shutil
import time
from artifacts import same_json
from early_campaign import verify_manifest, write_new, sha
from campaign import _read, CampaignError
from profile import preflight, pin_orchestration, run_child, timing_lock
from package_evidence import pack_file


def prepare(manifest_path, output):
    manifest_path = Path(manifest_path).resolve()
    manifest = verify_manifest(manifest_path)
    base = manifest_path.parent
    output = Path(output).resolve()
    output.mkdir(parents=True, exist_ok=False)
    tool = output / 'native_study'
    shutil.copyfile(base / manifest['binary'], tool)
    tool.chmod(0o755)
    source = output / 'cold_recovery.py'
    shutil.copyfile(__file__, source)
    cases = []
    for n in (128, 8192):
        point = next(i for i, v in enumerate(manifest['comparison']['matrix']['native'])
                     if v['coordinates']['N'] == n and v['coordinates']['H'] == 8
                     and v['coordinates']['padding'] == 0 and v['coordinates']['query_probes'] == 0)
        case = _read(base / manifest['cases'][point])
        case['prefix'] = []
        case['operations'] = [{'action': 'Emit'}]
        path = output / f'n{n}.json'
        write_new(path, case)
        cases.append({'N': n, 'path': path.name, 'sha256': sha(path)})
    protocol = {'format': 'core032.cold-recovery-protocol.v1',
                'parent_manifest_sha256': sha(manifest_path),
                'tool': {'path': tool.name, 'sha256': sha(tool)},
                'source_sha256': sha(source), 'profile': manifest['profile'],
                'profile_sha256': manifest['profile_sha256'], 'cases': cases,
                'purpose': 'fresh authoritative reconstruction and full J rebuild at two live populations; one command-only anchor, independent of eight-creation primary capacity',
                'acceptance': 'both exact cold anchors reconstructed; retain failed setup/recovery attempts; never substitute these cases for primary execution samples'}
    write_new(output / 'protocol.json', protocol)
    return protocol


def run(output):
    output = Path(output).resolve()
    protocol = _read(output / 'protocol.json')
    tool = output / protocol['tool']['path']
    if sha(tool) != protocol['tool']['sha256'] or sha(output / 'cold_recovery.py') != protocol['source_sha256']:
        raise CampaignError('frozen cold-recovery tool/source changed')
    profile = protocol['profile']
    preflight(profile, output, expected_digest=protocol['profile_sha256'])
    pin_orchestration(profile)
    records = []
    with timing_lock('/data/core028/core032-measure.lock'):
        for item in protocol['cases']:
            case = output / item['path']
            if sha(case) != item['sha256']:
                raise CampaignError('frozen cold-recovery input changed')
            directory = output / f'n{item["N"]}'
            directory.mkdir()
            anchor = directory / 'anchor.json'
            recovered = directory / 'recovered.json'
            def launch(argv, name):
                return run_child(argv, output_dir=directory / name,
                                 timeout_seconds=profile['native_timeout_seconds'],
                                 address_space_bytes=profile['address_space_limit_bytes'],
                                 affinity=profile['measurement_cpu'],
                                 env=dict(os.environ, RAYON_NUM_THREADS='1'))
            setup = launch([str(tool), 'run', str(case), str(anchor), 'A', 'existing'], 'anchor')
            result = None
            observation = None
            if setup['outcome'] == 'Succeeded':
                started = time.monotonic()
                result = launch([str(tool), 'recover', str(case), str(recovered), str(anchor), 'existing'], 'cold')
                if result['outcome'] == 'Succeeded':
                    observation = _read(recovered)
                    accepted = _read(anchor)['observations'][-1]['after']
                    if (not same_json(observation['head'], accepted['history'])
                            or observation['live'] != item['N'] or observation['used'] != item['N']
                            or observation['view_count'] != item['N']
                            or observation['complete_history_checked'] is not True):
                        raise CampaignError('cold reconstruction did not establish exact state/J')
                cold_whole = time.monotonic() - started
            else:
                cold_whole = None
            artifacts = []
            for file in sorted(directory.rglob('*')):
                if file.is_file() and file.suffix in ('.json', '.txt'):
                    artifact = pack_file(file, remove_workspace_file=True)
                    artifact['path'] = str(file.with_suffix(file.suffix + '.gz').relative_to(output))
                    artifacts.append(artifact)
            records.append({'N': item['N'], 'anchor': setup, 'recovery': result,
                            'cold_whole_seconds': cold_whole, 'observation': observation,
                            'artifacts': artifacts})
            print('separate-cold-view', item['N'], result['outcome'] if result else 'NotProduced', flush=True)
    passed = all(row['recovery'] and row['recovery']['outcome'] == 'Succeeded' for row in records)
    report = {'format': 'core032.cold-recovery-index.v1', 'passed': passed,
              'protocol_sha256': sha(output / 'protocol.json'), 'records': records}
    write_new(output / 'index.json', report)
    return report
