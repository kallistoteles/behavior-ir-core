import copy
import unittest
from final_checks import recovery_result


class RecoveryAssessmentTests(unittest.TestCase):
    def setUp(self):
        self.original = {'passed': False, 'records': [
            {'case': name, 'result': {'outcome': 'Succeeded'}}
            for name in ('public-consumer', 'proof-consumer-controls', 'checkpoint-async', 'cold-view-n128')] + [
            {'case': 'cold-view-n8192', 'result': {'outcome': 'NotProduced'}}]}
        self.cold = {'passed': True, 'records': [{'N': 128}, {'N': 8192}]}
        self.native = {'records': [{'case_id': 'n8192-h8-d1-r1-q1-p0', 'candidate': 'A',
                                   'mode': 'existing', 'repetition': 0, 'outcome': 'ResourceExhausted'}]}

    def test_explicit_capacity_and_separate_real_cold_experiment(self):
        report = recovery_result(self.original, self.cold, self.native)
        self.assertTrue(report['passed'])
        self.assertFalse(report['original_report_passed'])
        self.assertEqual(len(report['capacity_limitations']), 1)

    def test_missing_or_duplicate_cold_point_remains_incomplete(self):
        for rows in ([{'N': 128}], [{'N': 128}, {'N': 8192}, {'N': 8192}]):
            self.assertFalse(recovery_result(self.original, dict(self.cold, records=rows), self.native)['passed'])
        self.assertFalse(recovery_result(self.original, dict(self.cold, passed=False), self.native)['passed'])

    def test_tool_failure_is_not_a_capacity_waiver(self):
        native = copy.deepcopy(self.native)
        native['records'][0]['outcome'] = 'ToolFailure'
        self.assertFalse(recovery_result(self.original, self.cold, native)['passed'])

    def test_failed_real_public_or_proof_controls_cannot_be_waived(self):
        for index in range(4):
            original = copy.deepcopy(self.original)
            original['records'][index]['result']['outcome'] = 'ToolFailure'
            self.assertFalse(recovery_result(original, self.cold, self.native)['passed'])
        original = copy.deepcopy(self.original)
        original['records'].append(original['records'][0])
        self.assertFalse(recovery_result(original, self.cold, self.native)['passed'])


if __name__ == '__main__':
    unittest.main()
