"""Checked research artifacts. These helpers confer no Core semantic authority."""
from __future__ import annotations

import hashlib
import json
import math
from pathlib import Path
import re


class InvalidArtifact(ValueError):
    pass


def canonical(value):
    try:
        return (json.dumps(value, sort_keys=True, separators=(',', ':'),
                           ensure_ascii=False, allow_nan=False) + '\n').encode()
    except (TypeError, ValueError) as e:
        raise InvalidArtifact(str(e)) from e


def digest(data):
    return 'sha256:' + hashlib.sha256(data).hexdigest()


def load(path):
    def pairs(entries):
        result = {}
        for key, value in entries:
            if key in result:
                raise InvalidArtifact('duplicate JSON key: ' + key)
            result[key] = value
        return result
    def invalid(value):
        raise InvalidArtifact('nonfinite JSON: ' + value)
    try:
        return json.loads(Path(path).read_text(), object_pairs_hook=pairs, parse_constant=invalid)
    except (OSError, ValueError) as e:
        raise InvalidArtifact(f'{path}: {e}') from e


def require(condition, message):
    if not condition:
        raise InvalidArtifact(message)


def is_digest(value):
    return isinstance(value, str) and re.fullmatch(r'sha256:[0-9a-f]{64}', value) is not None


def natural(value, positive=False):
    return type(value) is int and value >= int(positive)


def safe_case_id(value):
    return (isinstance(value, str) and bool(value) and '\0' not in value and
            value not in {'.', '..'} and Path(value).name == value and
            not Path(value).is_absolute())


def validate_manifest(m):
    require(type(m) is dict, 'manifest must be an object')
    require(m.get('format') == 'core031.campaign.v1', 'manifest format')
    require(isinstance(m.get('campaign_id'), str) and bool(m['campaign_id']), 'campaign identity')
    require(not {'state', 'status', 'lifecycle'} & m.keys(), 'status belongs in append-only status.jsonl')
    subject = m.get('subject', {})
    require(isinstance(subject.get('source_commit'), str) and
            re.fullmatch('[0-9a-f]{40}', subject['source_commit']) is not None, 'source commit')
    require(is_digest(subject.get('tree_sha256')), 'exact source tree digest')
    files = subject.get('files', {})
    require(type(files) is dict and bool(files) and all(is_digest(v) for v in files.values()),
            'complete source file inventory')
    require(digest(canonical(files)) == subject['tree_sha256'], 'source inventory digest')
    require(bool(subject.get('locks')) and all(is_digest(x) for x in subject['locks'].values()), 'locks')
    require(all(files.get(k) == v for k, v in subject['locks'].items()), 'lock/source correspondence')
    profile = m.get('profile', {})
    require(profile.get('format') == 'core031.profile.v1', 'measurement profile version')
    require(natural(profile.get('repeats'), True) and profile['repeats'] >= 3, 'timing repetitions')
    require(natural(profile.get('diagnostic_repeats'), True), 'diagnostic repetitions')
    for key in ['timeout_seconds', 'address_space_limit_bytes']:
        require(natural(profile.get(key), True), key)
    binaries = m.get('binaries', {})
    require(bool(binaries) and all(type(v) is dict and is_digest(v.get('sha256'))
                                  for v in binaries.values()), 'binary identities')
    cases = m.get('cases', [])
    require(type(cases) is list and bool(cases), 'case inventory')
    ids = []
    for case in cases:
        require(type(case) is dict and safe_case_id(case.get('case_id')) and
                is_digest(case.get('input_sha256')), 'case identity')
        ids.append(case['case_id'])
        if 'argv' in case:
            require(type(case['argv']) is list and len(case['argv']) == 1 and
                    isinstance(case['argv'][0], str) and
                    digest(case['argv'][0].encode()) == case['input_sha256'],
                    'case argument/input digest correspondence')
    require(len(set(ids)) == len(ids), 'duplicate case identity')
    refs = m.get('references', {})
    require(type(refs) is dict and set(refs) == set(ids), 'complete reference inventory')
    for ref in refs.values():
        require(type(ref) is dict and isinstance(ref.get('path'), str) and
                not Path(ref['path']).is_absolute() and '..' not in Path(ref['path']).parts and
                is_digest(ref.get('sha256')) and natural(ref.get('bytes')), 'reference identity')
    return m


def freeze_manifest(path, manifest):
    validate_manifest(manifest)
    data = canonical(manifest)
    p = Path(path); p.parent.mkdir(parents=True, exist_ok=True)
    if p.exists():
        require(p.read_bytes() == data, 'frozen manifest cannot change')
    else:
        with p.open('xb') as f:
            f.write(data)
    return digest(data)


def validate_status(events, manifest_digest):
    allowed = {None: {'Draft'}, 'Draft': {'Frozen'}, 'Frozen': {'Collecting'},
               'Collecting': {'Collected', 'Incomplete'}, 'Collected': {'Assessed'},
               'Assessed': set(), 'Incomplete': set()}
    previous = None
    for event in events:
        require(type(event) is dict and event.get('manifest_sha256') == manifest_digest,
                'status manifest identity')
        state = event.get('state')
        require(state in allowed[previous], 'invalid lifecycle transition')
        previous = state
    return previous


def append_status(path, state, manifest_digest):
    p = Path(path)
    events = [json.loads(x) for x in p.read_text().splitlines()] if p.exists() else []
    event = {'manifest_sha256': manifest_digest, 'state': state}
    validate_status([*events, event], manifest_digest)
    with p.open('ab') as stream:
        stream.write(canonical(event))


def read_artifact(root, ref):
    root = Path(root).resolve()
    relative = Path(ref.get('path', ''))
    require(not relative.is_absolute() and '..' not in relative.parts, 'artifact root escape')
    p = (root / relative).resolve()
    require(p.is_relative_to(root), 'artifact symlink escapes root')
    try:
        data = p.read_bytes()
    except OSError as e:
        raise InvalidArtifact(str(e)) from e
    require(len(data) == ref.get('bytes') and digest(data) == ref.get('sha256'), 'artifact bytes/hash')
    return data


def validate_metrics(metrics):
    require(type(metrics) is dict, 'metrics object')
    for key, value in metrics.items():
        if value is not None:
            require(type(value) in (int, float) and math.isfinite(value) and value >= 0,
                    'invalid metric: ' + key)


def validate_row(row):
    status = row.get('collection_status')
    require(status in {'complete', 'timeout', 'memory-limit', 'disk-limit',
                       'tool-failure', 'incomplete'}, 'collection status')
    require(row.get('equivalence') in {'match', 'mismatch', 'not-compared'}, 'equivalence status')
    require(status == 'complete' or row['equivalence'] != 'match', 'exhaustion is not semantic agreement')
    require(status == 'complete' or row.get('execution_outcome') is None,
            'collection failure cannot invent execution outcome')
    validate_metrics(row.get('metrics', {}))


def first_difference(expected, actual, path='$'):
    if type(expected) is not type(actual):
        return f'{path}: JSON type {type(expected).__name__} != {type(actual).__name__}'
    if isinstance(expected, dict):
        if expected.keys() != actual.keys():
            return f'{path}: keys differ'
        for key in sorted(expected):
            delta = first_difference(expected[key], actual[key], path + '.' + key)
            if delta:
                return delta
    elif isinstance(expected, list):
        if len(expected) != len(actual):
            return f'{path}: lengths differ'
        for index, (a, b) in enumerate(zip(expected, actual)):
            delta = first_difference(a, b, f'{path}[{index}]')
            if delta:
                return delta
    elif expected != actual:
        return f'{path}: values differ'
    return None


def compare_complete(expected, actual):
    families = {'subject', 'records', 'bundles', 'commits', 'head', 'versions',
                'reads', 'commands', 'replay'}
    require(type(expected) is dict and families <= expected.keys(), 'incomplete reference observations')
    require(type(actual) is dict and families <= actual.keys(), 'incomplete candidate observations')
    delta = first_difference(expected, actual)
    require(delta is None, delta or '')
    require(canonical(expected) == canonical(actual), 'canonical observation bytes differ')


def validate_case_result(result, expected):
    require(type(result) is dict and type(expected) is dict, 'case oracle object')
    for key, value in expected.items():
        require(key in result and type(result[key]) is type(value) and result[key] == value,
                'independent oracle mismatch: ' + key)


def read_packed_artifact(root, ref, max_bytes=512*1024**2):
    """Recover exact research bytes with a bounded gzip read; no semantic authority."""
    import gzip
    import io
    import zlib
    require(type(ref) is dict and ref.get('compression') == 'gzip', 'packed artifact format')
    require(isinstance(ref.get('path'), str), 'packed artifact path')
    require(natural(max_bytes, True) and natural(ref.get('bytes')) and ref['bytes'] <= max_bytes,
            'packed artifact size bound')
    require(is_digest(ref.get('sha256')) and is_digest(ref.get('compressed_sha256')) and
            natural(ref.get('compressed_bytes')), 'packed artifact identities')
    packed = read_artifact(root, {'path':ref.get('path'), 'sha256':ref['compressed_sha256'],
                                  'bytes':ref['compressed_bytes']})
    try:
        with gzip.GzipFile(fileobj=io.BytesIO(packed)) as stream:
            raw = stream.read(ref['bytes'] + 1)
    except (OSError, EOFError, zlib.error) as error:
        raise InvalidArtifact('corrupt gzip artifact: ' + str(error)) from error
    require(len(raw) == ref['bytes'] and digest(raw) == ref['sha256'],
            'recovered original bytes/hash')
    return raw
