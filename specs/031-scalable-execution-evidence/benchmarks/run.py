#!/usr/bin/env python3
"""Bounded Core 031 collector. Explicit binaries, immutable inputs, no semantic authority."""
from __future__ import annotations
import argparse
import json
import os
from pathlib import Path
import resource
import subprocess
import time

import artifacts as a


def run_probe(command, *, timeout, memory_limit, mode='production-like', cpu=None, env=None):
    a.require(timeout > 0 and type(memory_limit) is int and memory_limit > 0,
              'positive enforced timeout and address-space limit required')
    def limits():
        resource.setrlimit(resource.RLIMIT_AS, (memory_limit, memory_limit))
        if cpu is not None:
            os.sched_setaffinity(0, {cpu})
    started = time.monotonic()
    row = {'command': command, 'mode': mode, 'collection_status': 'incomplete',
           'execution_outcome': None, 'equivalence': 'not-compared', 'metrics': {},
           'limits': {'timeout_seconds': timeout, 'address_space_bytes': memory_limit,
                      'mechanism': 'subprocess timeout and RLIMIT_AS', 'cpu': cpu}}
    try:
        result = subprocess.run(command, capture_output=True, text=True, timeout=timeout,
                                preexec_fn=limits, env=env)
        row.update(stdout=result.stdout, stderr=result.stderr, returncode=result.returncode)
        if result.returncode:
            row['collection_status'] = 'tool-failure'
        else:
            output = result.stdout
            markers = [line.split('CORE031_RESULT ', 1)[1] for line in output.splitlines()
                       if 'CORE031_RESULT ' in line]
            if markers:
                a.require(len(markers) == 1, 'duplicate probe result markers')
                output = markers[0]
            value = json.loads(output)
            a.require(value.get('mode') == mode, 'probe binary/mode mismatch')
            metrics = value.get('metrics', {})
            if not metrics:
                metrics = {k: v for k, v in value.items() if k.endswith('_ms')}
                if 'total_ms' in metrics:
                    metrics['cycle_ms'] = metrics.pop('total_ms')
            a.validate_metrics(metrics)
            row.update(collection_status='complete', execution_outcome=value.get('execution_outcome', 'ALLOW'),
                       metrics=metrics, result=value)
    except subprocess.TimeoutExpired as e:
        row.update(collection_status='timeout', stdout=(e.stdout or b'').decode(errors='replace')
                   if isinstance(e.stdout, bytes) else (e.stdout or ''), stderr=((e.stderr or b'').decode(errors='replace')
                       if isinstance(e.stderr, bytes) else (e.stderr or '')) + '\n' + str(e))
    except (OSError, ValueError, subprocess.SubprocessError) as e:
        row.update(collection_status='tool-failure', stderr=str(e))
    row['metrics']['process_wall_ms'] = (time.monotonic() - started) * 1000
    return row


def assess_rows(rows, manifest, strategy, mode):
    a.validate_manifest(manifest)
    expected = manifest['profile']['repeats'] if mode == 'production-like' else manifest['profile']['diagnostic_repeats']
    if strategy == 'full-reference':
        expected = 1
    wanted = {(c['case_id'], i) for c in manifest['cases'] for i in range(expected)}
    seen = set()
    h = a.digest(a.canonical(manifest))
    binary = manifest['binaries'].get(strategy + ':' + mode, manifest['binaries'].get(mode))
    a.require(binary is not None, 'binary not declared')
    for row in rows:
        a.validate_row(row)
        key = (row.get('case_id'), row.get('repetition'))
        a.require(key in wanted and key not in seen, 'duplicate/unexpected repetition')
        seen.add(key)
        a.require(row.get('strategy') == strategy and row.get('mode') == mode, 'strategy/mode')
        a.require(row.get('manifest_sha256') == h, 'manifest identity')
        a.require(row.get('binary_sha256') == binary['sha256'], 'binary identity')
        limits = row.get('limits', {})
        a.require(limits.get('timeout_seconds') == manifest['profile']['timeout_seconds'] and
                  limits.get('address_space_bytes') == manifest['profile']['address_space_limit_bytes'] and
                  limits.get('cpu') == manifest['profile'].get('measurement_cpu') and
                  limits.get('mechanism') == 'subprocess timeout and RLIMIT_AS',
                  'missing or mismatched enforced resource profile')
        a.require(row['collection_status'] == 'complete' and row['equivalence'] == 'match',
                  'failed/uncompared/mismatched observation')
        a.require(row['metrics'].get('cycle_ms', -1) >= 0 and
                  row['metrics'].get('drain_ms', 0) > 0, 'missing cycle/final drain')
    a.require(seen == wanted, 'missing required repetitions')
    return {'status': 'passed', 'rows': len(rows), 'cases': len(manifest['cases']),
            'mode': mode, 'strategy': strategy, 'manifest_sha256': h}


def write_assessment(path, rows, manifest, strategy, mode):
    result = {'status': 'failed', 'reason': 'validation not completed'}
    Path(path).write_bytes(a.canonical(result))
    try:
        result = assess_rows(rows, manifest, strategy, mode)
    except a.InvalidArtifact as e:
        result = {'status': 'failed', 'reason': str(e)}
    Path(path).write_bytes(a.canonical(result))
    return result


def collect(manifest_path, output, binary, strategy, mode):
    manifest_path = Path(manifest_path).resolve(); manifest = a.load(manifest_path)
    a.validate_manifest(manifest)
    output = Path(output).resolve()
    a.require(not output.exists(), 'fresh output directory required; old runs are immutable')
    binary = Path(binary).resolve(strict=True)
    identity = a.digest(binary.read_bytes())
    declared = manifest['binaries'].get(strategy + ':' + mode, manifest['binaries'].get(mode))
    a.require(declared is not None and identity == declared['sha256'], 'explicit binary identity')
    stat = os.statvfs(output.parent)
    a.require(stat.f_bavail * stat.f_frsize >= manifest['profile'].get('free_space_min_bytes', 0),
              'free-space preflight')
    output.mkdir(parents=True)
    h = a.freeze_manifest(output/'manifest.json', manifest)
    for state in ['Draft', 'Frozen', 'Collecting']:
        a.append_status(output/'status.jsonl', state, h)
    rows = []
    profile = manifest['profile']
    if 'orchestration_cpu' in profile:
        os.sched_setaffinity(0, {profile['orchestration_cpu']})
    repeats = profile['repeats'] if mode == 'production-like' else profile['diagnostic_repeats']
    if strategy == 'full-reference':
        repeats = 1
    for repetition in range(repeats):
        for case in manifest['cases']:
            observation = output/f'{case["case_id"]}-{repetition}.json'
            env = dict(os.environ, CORE031_OBSERVATION=str(observation), CORE031_CASE_ID=case['case_id'],
                       CORE031_CASE_ARGV=json.dumps(case['argv']))
            command = ([str(binary), '--exact',
                        'store::incremental::research031_tests::research031_reference_probe',
                        '--ignored', '--nocapture', '--test-threads=1'] if strategy == 'full-reference'
                       else [str(binary), *map(str, case['argv'])])
            row = run_probe(command, timeout=profile['timeout_seconds'],
                            memory_limit=profile['address_space_limit_bytes'], mode=mode,
                            cpu=profile.get('measurement_cpu'), env=env)
            row.update(case_id=case['case_id'], repetition=repetition, strategy=strategy,
                       manifest_sha256=h, binary_sha256=identity)
            if row['collection_status'] == 'complete':
                try:
                    reference_bytes = a.read_artifact(manifest_path.parent, manifest['references'][case['case_id']])
                    a.require(reference_bytes == observation.read_bytes(), 'raw canonical observation bytes differ')
                    expected = json.loads(reference_bytes)
                    actual = a.load(observation)
                    a.compare_complete(expected, actual)
                    a.validate_case_result(row['result'], case.get('expected', {}))
                    row['equivalence'] = 'match'
                    row['observation'] = {'path': observation.name, 'sha256': a.digest(observation.read_bytes()),
                                          'bytes': observation.stat().st_size}
                except (a.InvalidArtifact, ValueError) as e:
                    row['equivalence'] = 'mismatch'; row['comparison_error'] = str(e)
            with (output/'rows.jsonl').open('ab') as stream:
                stream.write(a.canonical(row))
            rows.append(row)
            print(json.dumps({'case':case['case_id'], 'repetition':repetition,
                              'collection':row['collection_status'], 'equivalence':row['equivalence']}), flush=True)
            if row['collection_status'] != 'complete' or row['equivalence'] != 'match':
                a.append_status(output/'status.jsonl', 'Incomplete', h)
                write_assessment(output/'assessment.json', rows, manifest, strategy, mode)
                return False
    result = write_assessment(output/'assessment.json', rows, manifest, strategy, mode)
    a.append_status(output/'status.jsonl', 'Collected' if result['status']=='passed' else 'Incomplete', h)
    if result['status']=='passed':
        a.append_status(output/'status.jsonl', 'Assessed', h)
    return result['status']=='passed'


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('--manifest', type=Path, required=True)
    p.add_argument('--output', type=Path, required=True)
    p.add_argument('--binary', type=Path, required=True)
    p.add_argument('--strategy', choices=['baseline','experiment','full-reference'], default='baseline')
    p.add_argument('--mode', choices=['production-like','diagnostic'], required=True)
    args = p.parse_args()
    try:
        ok = collect(args.manifest, args.output, args.binary, args.strategy, args.mode)
    except (a.InvalidArtifact, OSError) as e:
        p.exit(1, str(e)+'\n')
    raise SystemExit(0 if ok else 1)


if __name__ == '__main__':
    main()
