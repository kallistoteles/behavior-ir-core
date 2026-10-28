import copy
import hashlib
import tempfile
import unittest
from pathlib import Path

import artifacts as a


def sample():
    return {
        'format': 'core031.campaign.v1', 'campaign_id': 'test',
        'subject': {'source_commit': 'a' * 40, 'tree_sha256': a.digest(a.canonical({'Cargo.lock':'sha256:'+'b'*64})),
                    'files':{'Cargo.lock':'sha256:'+'b'*64},
                    'locks': {'Cargo.lock': 'sha256:' + 'b' * 64}},
        'profile': {'format':'core031.profile.v1','repeats': 3, 'diagnostic_repeats': 1, 'timeout_seconds': 120,
                    'address_space_limit_bytes': 8 * 1024**3},
        'binaries': {'production-like': {'sha256': 'sha256:' + 'c' * 64}},
        'cases': [{'case_id': 'one', 'input_sha256': 'sha256:' + 'd' * 64}],
        'references': {'one': {'path': 'one.json', 'sha256': 'sha256:' + 'e' * 64, 'bytes': 1}},
    }


class ManifestTests(unittest.TestCase):
    def test_case_identity_cannot_escape_output_root(self):
        for name in ['../outside', '/tmp/outside', '.', '..', 'nested/name']:
            m = sample()
            m['cases'][0]['case_id'] = name
            m['references'][name] = m['references'].pop('one')
            with self.subTest(name=name), self.assertRaises(a.InvalidArtifact):
                a.validate_manifest(m)

    def test_valid(self):
        a.validate_manifest(sample())

    def test_invalid_identity_and_duplicates(self):
        for change in [lambda m: m.update(format='other'),
                       lambda m: m['subject'].update(source_commit='wrong'),
                       lambda m: m['subject'].update(tree_sha256='missing'),
                       lambda m: m['subject'].update(locks={}),
                       lambda m: m['subject']['files'].clear(),
                       lambda m: m['subject']['files'].update({'extra.rs':'sha256:'+'f'*64}),
                       lambda m: m['cases'].append(copy.deepcopy(m['cases'][0])),
                       lambda m: m['references'].clear(),
                       lambda m: m['profile'].update(repeats=True),
                       lambda m: m['profile'].update(format='wrong'),
                       lambda m: m['cases'][0].update(argv=['changed']),
                       lambda m: m['binaries'].update({'production-like': {}})]:
            m = sample(); change(m)
            with self.subTest(m=m), self.assertRaises(a.InvalidArtifact):
                a.validate_manifest(m)

    def test_lifecycle_is_not_manifest_identity(self):
        for key in ['state', 'status', 'lifecycle']:
            m = sample(); m[key] = 'Frozen'
            with self.subTest(key=key), self.assertRaises(a.InvalidArtifact):
                a.validate_manifest(m)

    def test_frozen_bytes_cannot_change(self):
        with tempfile.TemporaryDirectory() as d:
            p = Path(d) / 'manifest.json'
            digest = a.freeze_manifest(p, sample())
            self.assertEqual(digest, a.digest(p.read_bytes()))
            m = sample(); m['campaign_id'] = 'different'
            with self.assertRaises(a.InvalidArtifact):
                a.freeze_manifest(p, m)
            self.assertEqual(digest, a.digest(p.read_bytes()))

    def test_status_transitions_are_bound_and_append_only(self):
        h = a.digest(a.canonical(sample()))
        events = [{'manifest_sha256': h, 'state': s} for s in
                  ['Draft', 'Frozen', 'Collecting', 'Collected', 'Assessed']]
        a.validate_status(events, h)
        for changed in [events[1:], events + events[-1:],
                        [dict(events[0], manifest_sha256='sha256:' + 'f' * 64)],
                        [events[0], dict(events[0], state='Assessed')]]:
            with self.subTest(changed=changed), self.assertRaises(a.InvalidArtifact):
                a.validate_status(changed, h)
        a.validate_status(events[:3] + [dict(events[0], state='Incomplete')], h)

    def test_artifact_root_and_hash(self):
        with tempfile.TemporaryDirectory() as d, tempfile.TemporaryDirectory() as outside:
            p = Path(d); data = b'{"exact":true}\n'; (p/'good').write_bytes(data)
            ref = {'path': 'good', 'sha256': a.digest(data), 'bytes': len(data)}
            self.assertEqual(a.read_artifact(p, ref), data)
            for bad in [dict(ref, path='../escape'), dict(ref, path=str(p/'good')),
                        dict(ref, sha256='sha256:'+'0'*64), dict(ref, bytes=0),
                        dict(ref, path='missing')]:
                with self.subTest(bad=bad), self.assertRaises(a.InvalidArtifact):
                    a.read_artifact(p, bad)
            (Path(outside)/'secret').write_bytes(data)
            (p/'link').symlink_to(Path(outside)/'secret')
            with self.assertRaises(a.InvalidArtifact):
                a.read_artifact(p, dict(ref, path='link'))

    def test_metrics_are_finite_and_statuses_separate(self):
        a.validate_metrics({'cycle_ms': 0.0, 'rss_kib': None})
        for value in [float('nan'), float('inf'), -1, True, '0']:
            with self.subTest(value=value), self.assertRaises(a.InvalidArtifact):
                a.validate_metrics({'cycle_ms': value})
        a.validate_row({'collection_status': 'complete', 'execution_outcome': 'DENY',
                        'equivalence': 'match', 'metrics': {'cycle_ms': 1}})
        with self.assertRaises(a.InvalidArtifact):
            a.validate_row({'collection_status': 'timeout', 'execution_outcome': 'DENY',
                            'equivalence': 'match', 'metrics': {}})

    def test_independent_expected_result_is_checked(self):
        expected={'execution_outcome':'ALLOW','final_members':5,'final_position':2}
        a.validate_case_result(expected,expected)
        for changed in [dict(expected,final_members=4),dict(expected,final_position=False),
                        {'execution_outcome':'ALLOW'}]:
            with self.subTest(changed=changed), self.assertRaises(a.InvalidArtifact):
                a.validate_case_result(changed,expected)


if __name__ == '__main__':
    unittest.main()
