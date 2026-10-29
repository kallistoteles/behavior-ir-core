"""Supplementary reuse sampling with an explicitly measured contiguous acceptance total.

The original early sampler retained process phases but not a per-pair contiguous
wall interval. Preserve those records; this separately frozen group adds that
missing metric without changing binaries, claims, parameters or resource limits.
"""
import os
from pathlib import Path
import time

from artifacts import same_json
from campaign import _read, CampaignError
from early_campaign import freeze, verify_manifest, write_new, sha
from profile import preflight, pin_orchestration, timing_lock, run_child


def collect(parent_manifest, output):
    parent_manifest = Path(parent_manifest).resolve()
    parent = verify_manifest(parent_manifest)
    base = parent_manifest.parent
    output = Path(output).resolve()
    output.mkdir(parents=True, exist_ok=False)
    case = base / parent['cases'][len(parent['comparison']['matrix']['native']) + 1]
    binary = base / parent['comparison']['tools']['nova']
    sources = [base / item['path'] for item in parent['files'] if item['role'] == 'source']
    sources += [parent_manifest, Path(__file__)]
    manifest_path = output / 'manifest.json'
    manifest = freeze(manifest_path, binary=binary, cases=[case], sources=sources,
                      mode='reuse', parameters_from=base / 'proofs/c1-h2-first-use/index.json')
    profile = manifest['profile']
    preflight(profile, output, expected_digest=manifest['profile_sha256'])
    pin_orchestration(profile)
    program = str(output / manifest['binary'])
    expected_case = str(output / manifest['cases'][0])
    parameters = manifest['parameters']
    extra = [str(output / parameters['path']), parameters['sha256'], parameters['identity']]
    records = []
    with timing_lock('/data/core028/core032-measure.lock'):
        for repetition in range(3):
            verify_manifest(manifest_path)
            directory = output / f'rep{repetition}'
            directory.mkdir()
            proof = directory / 'proof.bin'
            start = time.monotonic()
            deadline = start + profile['whole_case_timeout_seconds']
            def launch(argv, name, limit):
                return run_child(argv, output_dir=directory / name,
                                 timeout_seconds=limit, address_space_bytes=profile['address_space_limit_bytes'],
                                 affinity=profile['measurement_cpu'], deadline=deadline,
                                 env=dict(os.environ, RAYON_NUM_THREADS='1'))
            producer = launch([program, 'prove', expected_case, str(proof), str(directory / 'producer-report'), *extra],
                              'producer', profile['proof_timeout_seconds'])
            consumer = None
            row = {'case_id': 'c1-h2', 'candidate': 'accumulated', 'mode': 'reuse', 'repetition': repetition,
                   'producer': producer, 'consumer': None, 'proof': 'NotProduced', 'bridge': 'NotClaimed'}
            if producer['outcome'] == 'Succeeded':
                consumer = launch([program, 'verify', expected_case, str(proof), str(directory / 'consumer-report'), *extra],
                                  'consumer', profile['consumer_timeout_seconds'])
                row['consumer'] = consumer
                if consumer['outcome'] == 'Succeeded':
                    report_path = directory / 'consumer-report/report.json'
                    report = _read(report_path)
                    produced = _read(directory / 'producer-report/report.json')
                    if (report['status'] != 'Verified' or report['mode'] != 'reuse'
                            or not same_json(report['claim'], produced['claim'])
                            or report['parameters'] != produced['parameters']):
                        raise CampaignError('supplementary reuse expected claim differs')
                    row.update(proof='Verified', bridge='Matched', consumer_report=str(report_path.relative_to(output)),
                               consumer_report_sha256=sha(report_path), proof_sha256=sha(proof))
                else:
                    row['proof'] = consumer['outcome']
            else:
                row['proof'] = producer['outcome']
            row['whole_seconds'] = time.monotonic() - start
            if row['whole_seconds'] > profile['whole_case_timeout_seconds']:
                row['proof'] = 'ResourceExhausted'
            write_new(directory / 'attempt.json', row)
            records.append(row)
            print('supplementary-timed-reuse', repetition, row['proof'], round(row['whole_seconds'], 3), flush=True)
    passed = len(records) == 3 and all(r['proof'] == 'Verified' and r['bridge'] == 'Matched' for r in records)
    result = {'format': 'core032.timed-reuse-index.v1', 'passed': passed,
              'manifest_sha256': sha(manifest_path), 'collector_source_sha256': sha(__file__), 'records': records,
              'scope': 'Separately frozen supplementation for missing contiguous per-pair totals; original phase-only reuse records preserved and not pooled. No algorithm, claim, parameter or budget change.'}
    write_new(output / 'index.json', result)
    return result
