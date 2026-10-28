import copy
import sys
import tempfile
import unittest
import json
from unittest.mock import patch
from test_compare import observation
from pathlib import Path
import run as r
import artifacts as a
from test_artifacts import sample


def rows():
    m = sample(); h = a.digest(a.canonical(m))
    return [{'case_id': 'one', 'repetition': i, 'mode': 'production-like',
             'strategy': 'baseline', 'manifest_sha256': h,
             'binary_sha256': m['binaries']['production-like']['sha256'],
             'collection_status': 'complete', 'execution_outcome': 'ALLOW',
             'equivalence': 'match', 'limits': {'timeout_seconds':120,'address_space_bytes':8*1024**3,'mechanism':'subprocess timeout and RLIMIT_AS','cpu':None}, 'metrics': {'cycle_ms': 1., 'drain_ms': .1}}
            for i in range(3)]


class RunnerTests(unittest.TestCase):
    def test_complete_coverage(self):
        self.assertEqual(r.assess_rows(rows(), sample(), 'baseline', 'production-like')['status'], 'passed')

    def test_bad_coverage(self):
        mutations = [lambda x: x.pop(), lambda x: x.append(copy.deepcopy(x[0])),
                     lambda x: x[0].update(mode='diagnostic'),
                     lambda x: x[0].update(binary_sha256='sha256:'+'0'*64),
                     lambda x: x[0].update(manifest_sha256='sha256:'+'0'*64),
                     lambda x: x[0].update(collection_status='tool-failure'),
                     lambda x: x[0]['metrics'].pop('drain_ms'),
                     lambda x: x[0]['metrics'].update(cycle_ms=float('nan')),
                     lambda x: x[0].update(equivalence='mismatch')]
        for mutation in mutations:
            data = rows(); mutation(data)
            with self.subTest(mutation=mutation), self.assertRaises(a.InvalidArtifact):
                r.assess_rows(data, sample(), 'baseline', 'production-like')

    def test_subprocess_failure_and_timeout_are_not_allow(self):
        for code, status in [('raise SystemExit(7)', 'tool-failure'),
                             ('import time; time.sleep(2)', 'timeout')]:
            row = r.run_probe([sys.executable, '-c', code], timeout=1 if status == 'tool-failure' else .3, memory_limit=1024**3)
            self.assertEqual(row['collection_status'], status)
            self.assertIsNone(row['execution_outcome'])
            self.assertEqual(row['equivalence'], 'not-compared')

    def test_timeout_retains_partial_stderr(self):
        result=r.run_probe([sys.executable,'-c',
            'import sys,time; print("partial-stage",file=sys.stderr,flush=True); time.sleep(2)'],
            timeout=.3,memory_limit=1024**3)
        self.assertEqual(result['collection_status'],'timeout')
        self.assertEqual(result['stderr'].splitlines()[0], 'partial-stage')

    def test_invalid_stdout_and_wrong_mode(self):
        for text in ['not json', '{"mode":"diagnostic","total_ms":1}']:
            result = r.run_probe([sys.executable, '-c', 'print('+repr(text)+')'],
                                 timeout=1, memory_limit=1024**3, mode='production-like')
            self.assertEqual(result['collection_status'], 'tool-failure')

    def test_assessment_rejects_missing_resource_evidence(self):
        for mutate in [lambda x:x[0].pop('limits'),
                       lambda x:x[0]['limits'].update(timeout_seconds=999),
                       lambda x:x[0]['limits'].update(address_space_bytes=0)]:
            data=rows();mutate(data)
            with self.assertRaises(a.InvalidArtifact):
                r.assess_rows(data,sample(),'baseline','production-like')

    def test_collection_rejects_raw_byte_change(self):
        with tempfile.TemporaryDirectory() as directory:
            root=Path(directory);m=sample();data=a.canonical(observation())
            (root/'one.json').write_bytes(data)
            m['references']['one'].update(sha256=a.digest(data),bytes=len(data))
            m['binaries']['production-like']['sha256']=a.digest(Path(sys.executable).read_bytes())
            m['cases'][0].update(argv=['{}'],input_sha256=a.digest(b'{}'))
            a.freeze_manifest(root/'manifest.json',m)
            def fake(command,**kwargs):
                Path(kwargs['env']['CORE031_OBSERVATION']).write_text(json.dumps(observation(),indent=2))
                return {'mode':'production-like','limits':rows()[0]['limits'],'collection_status':'complete','equivalence':'not-compared',
                        'execution_outcome':'ALLOW','metrics':{'cycle_ms':1.,'drain_ms':.1},'result':{}}
            with patch.object(r,'run_probe',side_effect=fake):
                self.assertFalse(r.collect(root/'manifest.json',root/'output',sys.executable,'baseline','production-like'))

    def test_missing_enforcement_fails(self):
        with self.assertRaises(a.InvalidArtifact):
            r.run_probe([sys.executable, '-c', 'print(1)'], timeout=0, memory_limit=0)

    def test_stale_passing_assessment_is_replaced_on_failure(self):
        with tempfile.TemporaryDirectory() as d:
            p = Path(d)/'assessment.json'; p.write_bytes(a.canonical({'status':'passed'}))
            result = r.write_assessment(p, rows()[:-1], sample(), 'baseline', 'production-like')
            self.assertEqual(result['status'], 'failed')
            self.assertEqual(a.load(p)['status'], 'failed')


if __name__ == '__main__':
    unittest.main()
