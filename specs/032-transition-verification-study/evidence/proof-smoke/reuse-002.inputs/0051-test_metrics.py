import unittest
from metrics import summarize, succinctness, MetricsError
class MetricsTests(unittest.TestCase):
    def test_whole_cycles_are_measured_and_not_sums_of_phase_medians(self):
        rows=[{'whole_seconds':3,'producer_seconds':1,'consumer_seconds':2},{'whole_seconds':5,'producer_seconds':4,'consumer_seconds':1},{'whole_seconds':5,'producer_seconds':3,'consumer_seconds':2}]
        result=summarize(rows);self.assertEqual(result['whole_seconds']['median'],5)
        self.assertIsNone(summarize([{'whole_seconds':None}])['whole_seconds']['median'])
        with self.assertRaises(MetricsError):summarize([{'whole_seconds':False}])
    def test_linear_bridge_prevents_end_to_end_succinctness_claim(self):
        self.assertFalse(succinctness(folding_independent=True,bridge_independent=False))
if __name__=='__main__':unittest.main()
