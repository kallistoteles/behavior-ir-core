"""Reproducible derived costs; raw measurements remain the authority for numbers."""
import collections
import hashlib
import json
import math
from pathlib import Path
import statistics

from early_campaign import write_new, sha
from campaign import _read


def summarize(values):
    present = [v for v in values if v is not None]
    if any(type(v) not in (int, float) or not math.isfinite(v) or v < 0 for v in present):
        raise ValueError('invalid measured value')
    return {'median': statistics.median(present) if present else None,
            'range': [min(present), max(present)] if present else None,
            'measured': len(present), 'unknown': len(values) - len(present),
            'reason': 'no available measurements for this scope' if not values else 'not measured/not produced for this scope' if len(present) != len(values) else None}


def analyze(feature):
    feature = Path(feature).resolve()
    evidence = feature / 'evidence'
    base = evidence / 'campaign-002'
    manifest = _read(base / 'manifest.json')
    native = _read(base / 'native/index.json')
    proofs = _read(base / 'proofs/index.json')
    timed = _read(evidence / 'timed-reuse-001/index.json')
    cold = _read(evidence / 'cold-recovery-001/index.json')
    if not native['coverage_complete'] or not proofs['primary_passed'] or not timed['passed'] or not cold['passed']:
        raise ValueError('complete required data is unavailable')
    grouped = collections.defaultdict(list)
    for row in native['records']:
        grouped[(row['case_id'], row['candidate'], row['mode'])].append(row)
    groups = []
    for key, rows in sorted(grouped.items()):
        successful = [r for r in rows if r['outcome'] == 'Succeeded']
        def metric(row, field):
            return (row.get('metrics') or {}).get(field)
        def artifact(row, field):
            item = next((a for a in row['artifacts'] if a['path'].endswith('producer-output.json.gz')), None)
            return item[field] if item else None
        reference = [r for r in successful if r['candidate'] == 'reference']
        core = [sum(s['evaluate_ms'] + s['commit_ms'] for s in r['metrics']['step_metrics']) / 1000 for r in reference]
        steps = [sum(s['whole_ms'] for s in r['metrics']['step_metrics']) / 1000 for r in reference]
        residual = [whole - engine for whole, engine in zip(steps, core)]
        if any(v < -1e-6 for v in residual):
            raise ValueError('nested reference timing scopes inconsistent')
        groups.append({'case_id': key[0], 'candidate': key[1], 'profile': key[2],
                       'outcomes': dict(collections.Counter(r['outcome'] for r in rows)),
                       'whole': summarize([r['whole_seconds'] for r in successful]),
                       'process_chain': summarize([sum(p['wall_seconds'] for p in r['phases'].values()) for r in successful]),
                       'child_peak_rss': summarize([max(p['peak_rss_bytes'] for p in r['phases'].values() if p.get('peak_rss_bytes') is not None) for r in rows]),
                       'retention': summarize([r['retention_seconds'] for r in rows]),
                       'raw_producer_file_bytes': summarize([artifact(r, 'raw_bytes') for r in successful]),
                       'gzip_producer_file_bytes': summarize([artifact(r, 'container_bytes') for r in successful]),
                       'producer_initialization': summarize([metric(r, 'initialization_seconds') for r in successful]),
                       'producer_preparation': summarize([metric(r, 'prefix_seconds') for r in successful]),
                       'reference_evaluate_plus_commit': summarize(core),
                       'reference_measured_step_whole': summarize(steps),
                       'reference_step_residual': summarize(residual)})
    lookup = {(r['case_id'], r['candidate'], r['profile']): r for r in groups}
    axes = []
    for axis, points in manifest['comparison']['matrix']['axes'].items():
        for candidate in ('reference', 'A', 'B'):
            for profile in ('existing', 'study'):
                values = [{'x': p['value'], 'case_id': p['case_id'],
                           'whole': lookup[(p['case_id'], candidate, profile)]['whole'],
                           'outcomes': lookup[(p['case_id'], candidate, profile)]['outcomes']} for p in points]
                ratios = []
                for previous, current in zip(values, values[1:]):
                    before, after = previous['whole']['median'], current['whole']['median']
                    ratios.append({'from': previous['x'], 'to': current['x'],
                                   'time_ratio': after / before if before and after else None,
                                   'descriptive_log_slope': math.log(after / before) / math.log(current['x'] / previous['x']) if before and after else None,
                                   'reason': 'resource-censored/unfinished points have no successful whole latency' if not before or not after else 'descriptive adjacent medians, not an asymptotic theorem'})
                axes.append({'axis': axis, 'candidate': candidate, 'profile': profile, 'points': values, 'adjacent': ratios})
    def proof_row(group, row):
        consumer = group / row['consumer_report'] if row.get('consumer_report') else None
        report = _read(consumer) if consumer else {}
        producer = _read(consumer.parent.parent / 'producer-report/report.json') if consumer else {}
        return {'outcome': row['proof'], 'bridge': row['bridge'], 'whole': row.get('whole_seconds'),
                'producer_process': row['producer']['wall_seconds'],
                'consumer_process': row['consumer']['wall_seconds'] if row.get('consumer') else None,
                'producer_setup': producer.get('setup_seconds'), 'consumer_setup': report.get('setup_seconds'),
                'producer_bridge': producer.get('core_bridge_seconds'), 'consumer_bridge': report.get('core_bridge_seconds'),
                'proof_initialization': producer.get('phases', {}).get('initialization_seconds'),
                'fold_total': sum(producer['phases']['fold_seconds']) if producer.get('phases', {}).get('fold_seconds') is not None else None,
                'verify': report.get('phases', {}).get('verify_seconds'),
                'proof_bytes': producer.get('phases', {}).get('proof_container_bytes'),
                'parameter_bytes_exported': (report.get('parameter_export') or {}).get('bytes'),
                'attempts': report.get('attempts'), 'commits': report.get('commits'), 'commands': report.get('commands')}
    capacity = [dict(proof_row(base / 'proofs' / row['group'], row), case_id=row['case_id'], repetition=row['repetition']) for row in proofs['records']]
    first = [r for r in capacity if r['case_id'] == 'c1-h2']
    warm = [proof_row(evidence / 'timed-reuse-001', row) for row in timed['records']]
    numeric = ('whole', 'producer_process', 'consumer_process', 'producer_setup', 'consumer_setup',
               'producer_bridge', 'consumer_bridge', 'proof_initialization', 'fold_total', 'verify', 'proof_bytes')
    modes = {name: {field: summarize([r[field] for r in rows]) for field in numeric}
             for name, rows in (('first-use', first), ('reuse-supplement', warm))}
    recovery = _read(base / 'recovery/index.json')
    control = _read(base / 'recovery/control-inputs/report.json')
    asynchronous = []
    for row in recovery['records']:
        for observation in row.get('observations', []):
            if observation.get('format') == 'core032.async-observation.v1':
                previous = control['commits']
                arrivals = [{'seconds': a['seconds'], 'raw_progress': a['progress'],
                             'independently_verified_head_at_arrival': previous,
                             'arrival_to_final_verification_seconds': observation['whole_seconds'] - a['seconds']} for a in observation['arrivals']]
                asynchronous.append({'source': observation, 'previous_verified_head': previous,
                                     'arrivals': arrivals, 'bounded_completed_commits_per_second': (observation['final']['native'] - previous) / observation['whole_seconds'],
                                     'scope': 'known finite arrival burst, prepared parameters; raw proved denotes folded construction, new independent acceptance only after final verification; not steady-state throughput'})
    result = {'format': 'core032.lifecycle-costs.v1', 'native': groups, 'axes': axes,
              'proof_capacity': capacity, 'proof_modes': modes, 'cold_reconstruction': cold['records'],
              'asynchronous': asynchronous,
              'scope': {'timings': 'actual contiguous acceptance totals; internal phases nested; no sum of phase medians',
                        'resources': 'per-child RSS/AS, not controller/OS whole-machine peak',
                        'bytes': 'actual producer transport envelope and verified gzip archive, not minimum protocol support or one Core decision record',
                        'reference_residual': 'step whole minus evaluate/commit; includes full snapshot/state/history and wrapper work, not an isolated export profiler',
                        'growth': 'three-repetition descriptive medians; no latency distribution/asymptotic inference; exhausted points censored',
                        'compression': 'lossless gzip is transport, not an evaluated Nova CompressedSNARK'},
              'source_sha256': sha(__file__)}
    write_new(evidence / 'lifecycle-costs.json', result)
    return result


if __name__ == '__main__':
    analyze(Path(__file__).resolve().parents[1])
