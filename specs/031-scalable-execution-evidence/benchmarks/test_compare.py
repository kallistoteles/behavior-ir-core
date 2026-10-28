import copy
import unittest
import artifacts as a


def observation():
    return {'subject': {'behavior': 'exact', 'history': 3, 'profile': '0.8'},
            'records': [{'result': 'ALLOW', 'position': 0}], 'bundles': [],
            'commits': [], 'head': {}, 'versions': [], 'reads': [],
            'commands': [], 'replay': {'data': True}}


class ComparisonTests(unittest.TestCase):
    def test_equal(self):
        self.assertIsNone(a.first_difference(observation(), observation()))
        a.compare_complete(observation(), observation())

    def test_json_types(self):
        for left, right in [(0, False), (1, True), (1, 1.0), ([], {}), (None, '')]:
            with self.subTest(left=left, right=right):
                self.assertIsNotNone(a.first_difference(left, right))

    def test_every_family_matters(self):
        for key in observation():
            changed = observation(); changed.pop(key)
            with self.subTest(key=key), self.assertRaises(a.InvalidArtifact):
                a.compare_complete(observation(), changed)

    def test_each_semantic_change_is_detected(self):
        changes = [lambda x: x['records'][0].update(position=False),
                   lambda x: x['subject'].update(history=4),
                   lambda x: x['subject'].update(profile='old'),
                   lambda x: x['commands'].append({'intent': 'omitted'}),
                   lambda x: x['replay'].update(data=False)]
        for change in changes:
            changed = observation(); change(changed)
            with self.subTest(changed=changed), self.assertRaises(a.InvalidArtifact):
                a.compare_complete(observation(), changed)

    def test_bytes_cannot_be_replaced_by_digest(self):
        with self.assertRaises(a.InvalidArtifact):
            a.compare_complete({'digest': 'same'}, {'digest': 'same'})
        self.assertIsNotNone(a.first_difference({'canonical': '{"x":1}'},
                                               {'canonical': '{"x": 1}'}))


if __name__ == '__main__':
    unittest.main()
