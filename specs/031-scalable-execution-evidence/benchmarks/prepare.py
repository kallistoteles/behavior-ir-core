#!/usr/bin/env python3
"""Freeze exact 031 inputs and independently forced-full canonical reference artifacts."""
import argparse
import json
import os
from pathlib import Path
import platform
import subprocess
import shutil
import sys
import time

import artifacts as a
from run import run_probe

ROOT = Path(__file__).resolve().parents[3]
FEATURE = Path(__file__).resolve().parent.parent


def archive_inputs(output, files, binaries, source_root=ROOT):
    output=Path(output);source_root=Path(source_root).resolve()
    for name,h in files.items():
        rel=Path(name);source=(source_root/rel).resolve()
        a.require(not rel.is_absolute() and '..' not in rel.parts and source.is_relative_to(source_root),
                  'source snapshot root escape')
        a.require(a.digest(source.read_bytes())==h,'source changed before snapshot')
        dest=output/'source'/rel;dest.parent.mkdir(parents=True,exist_ok=True);shutil.copy2(source,dest)
        a.require(a.digest(dest.read_bytes())==h,'source snapshot bytes')
    (output/'binaries').mkdir()
    for mode,value in binaries.items():
        a.require(a.safe_case_id(mode.replace(':','-')),'binary snapshot name')
        source=Path(value['path']);dest=output/'binaries'/mode.replace(':','-')
        shutil.copy2(source,dest)
        a.require(a.digest(dest.read_bytes())==value['sha256'],'binary changed before snapshot')
        value['original_path']=value['path'];value['path']=str(dest.resolve())
    result={'source_files_verified':len(files),'missing':[],'binary_identities_verified':True}
    (output/'source-retention.json').write_bytes(a.canonical(result))
    return result


def source_inventory():
    names = subprocess.check_output(['git', 'ls-files', '-z', '--cached', '--others', '--exclude-standard'], cwd=ROOT).decode().split('\0')
    selected = []
    for name in names:
        p = ROOT/name
        if not p.is_file():
            continue
        source = (name.startswith(('crates/', 'consumer/')) and p.suffix in {'.rs','.toml','.lock'})
        source |= name in {'Cargo.toml','Cargo.lock','flake.nix','flake.lock','rust-toolchain.toml'}
        source |= name.startswith('scripts/') and p.suffix in {'.sh','.py'}
        source |= name.startswith('tests/fixtures/')
        source |= name.startswith('specs/031-scalable-execution-evidence/benchmarks/') and p.suffix in {'.py','.json'}
        if source:
            selected.append((name, a.digest(p.read_bytes())))
    return dict(sorted(selected))


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('--output', type=Path, required=True)
    p.add_argument('--production-binary', type=Path, required=True)
    p.add_argument('--diagnostic-binary', type=Path, required=True)
    p.add_argument('--reference-binary', type=Path, required=True)
    args = p.parse_args()
    a.require(not args.output.exists(), 'fresh preparation directory required')
    profile = a.load(FEATURE/'benchmarks/profile.json')
    profile = {k:v for k,v in profile.items() if k != 'status'}
    profile['timing_repetitions'] = profile['repeats']
    for filesystem in [ROOT/'target', args.output.parent]:
        filesystem.mkdir(parents=True, exist_ok=True)
        stat = os.statvfs(filesystem)
        a.require(stat.f_bavail*stat.f_frsize >= profile['free_space_min_bytes'], 'free-space preflight')
    binaries = {mode: {'path':str(path.resolve()),'sha256':a.digest(path.read_bytes())} for mode,path in [
        ('production-like',args.production_binary),('diagnostic',args.diagnostic_binary),
        ('full-reference:diagnostic',args.reference_binary)]}
    files = source_inventory()
    subject = {'source_commit':subprocess.check_output(['git','rev-parse','HEAD'],cwd=ROOT,text=True).strip(),
               'release_commit':'63a8c164523275e06ac1d7dc5330db4a899c9d99',
               'tree_sha256':a.digest(a.canonical(files)), 'files':files,
               'locks':{name:a.digest((ROOT/name).read_bytes()) for name in ['Cargo.lock','consumer/Cargo.lock','flake.lock','rust-toolchain.toml']}}
    cases = a.load(FEATURE/'benchmarks/cases.json')
    oracles = a.load(FEATURE/'benchmarks/oracles.json')
    args.output.mkdir();(args.output/'references').mkdir()
    inputs = {'subject':subject,'profile':profile,'binaries':binaries,'cases':cases,'oracles':oracles}
    (args.output/'preparation-inputs.json').write_bytes(a.canonical(inputs))
    archive_inputs(args.output,files,binaries)
    os.sched_setaffinity(0,{profile['orchestration_cpu']})
    references = {}; manifest_cases = []
    for case in cases:
        a.require(a.safe_case_id(case.get('case_id')), 'safe case identity required before writing')
        argv = [json.dumps(case,sort_keys=True,separators=(',',':'))]
        path = args.output/'references'/f'{case["case_id"]}.json'
        env = dict(os.environ, CORE031_CASE_ARGV=json.dumps(argv), CORE031_CASE_ID=case['case_id'],
                   CORE031_OBSERVATION=str(path.resolve()))
        command = [binaries['full-reference:diagnostic']['path'],'--exact',
                   'store::incremental::research031_tests::research031_reference_probe',
                   '--ignored','--nocapture','--test-threads=1']
        row = run_probe(command,timeout=profile['timeout_seconds'],memory_limit=profile['address_space_limit_bytes'],
                        cpu=profile['measurement_cpu'],mode='diagnostic',env=env)
        row['case_id']=case['case_id']
        if row['collection_status'] != 'complete':
            (args.output/'preparation-failure.json').write_bytes(a.canonical(row))
            raise a.InvalidArtifact('full reference preparation failed: '+case['case_id'])
        result=row['result'];oracle=oracles[case['case_id']]
        expected={'execution_outcome':oracle['expected_outcome'],'final_members':oracle['final_members'],
                  'final_position':oracle['final_position'],'prepared_history_position':oracle['prepared_position']}
        a.validate_case_result(result,expected)
        observed=a.load(path)
        a.compare_complete(observed,observed)
        for kind in oracle['replays']:
            a.require(observed['replay'][kind]['ok'] is True,'independent successful replay expectation')
        a.require(len(observed['commands']['items']) == oracle['page_command_count'], 'independent command multiplicity expectation')
        data=path.read_bytes()
        references[case['case_id']]={'path':str(path.relative_to(args.output)),'sha256':a.digest(data),'bytes':len(data)}
        manifest_cases.append({'case_id':case['case_id'],'input_sha256':a.digest(argv[0].encode()),'argv':argv,
                               'factors':case,'expected':expected})
        with (args.output/'reference-rows.jsonl').open('ab') as stream:
            stream.write(a.canonical(row))
        print(json.dumps({'reference_case':case['case_id'],'bytes':len(data),'wall_ms':row['metrics']['process_wall_ms']}),flush=True)
        del observed
    manifest={'format':'core031.campaign.v1','campaign_id':args.output.name,'subject':subject,'profile':profile,
              'binaries':binaries,'cases':manifest_cases,'references':references,
              'environment':{'platform':platform.platform(),'machine':platform.machine(),
                             'collector_runtime':{'executable':sys.executable,'version':sys.version},
                             'cpuinfo':Path('/proc/cpuinfo').read_text(),'memory':Path('/proc/meminfo').read_text(),
                             'load_average':os.getloadavg(),'captured_at_unix':time.time(),
                             'cache':'fresh process/store; OS page cache not flushed',
                             'memory_limit':'enforced RLIMIT_AS (virtual address space), not a cgroup RSS ceiling',
                             'other_work':'Unrelated host processes are not stopped; observed load/variance retained.'}}
    h=a.freeze_manifest(args.output/'manifest.json',manifest)
    for state in ['Draft','Frozen']:
        a.append_status(args.output/'status.jsonl',state,h)
    (args.output/'freeze-result.json').write_bytes(a.canonical({'manifest_sha256':h,'cases':len(cases),'status':'frozen-reference-not-timing-acceptance'}))
    print(json.dumps({'manifest_sha256':h,'cases':len(cases),'manifest':str(args.output/'manifest.json')}),flush=True)


if __name__ == '__main__':
    try:
        main()
    except (a.InvalidArtifact,OSError) as error:
        raise SystemExit(str(error)) from error
