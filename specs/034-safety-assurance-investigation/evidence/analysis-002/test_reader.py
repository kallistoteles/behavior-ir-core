import unittest
import reader
class CostTests(unittest.TestCase):
 def test_three_raw_samples_keep_order_and_only_median_range(self):
  r=reader.stats([30,10,20]);self.assertEqual(r['raw_ns'],[30,10,20]);self.assertEqual(r['median_ns'],20);self.assertEqual(r['min_ns'],10);self.assertEqual(r['max_ns'],30);self.assertEqual(r['n_complete'],3);self.assertNotIn('p95',r)
 def test_missing_cost_is_not_zero_or_a_complete_triplet(self):
  r=reader.stats([]);self.assertIsNone(r['median_ns']);self.assertEqual(r['n_complete'],0);self.assertTrue(r['median_ns_reason'])
  r=reader.stats([1,2]);self.assertIsNone(r['median_ns']);self.assertEqual(r['n_complete'],2)
 def test_noninteger_negative_and_boolean_are_not_time_observations(self):
  for values in [[True],[-1],[0.5]]:
   with self.assertRaises(ValueError):reader.stats(values)
 def test_program_and_parent_cost_never_become_ordinary_latency(self):
  r={'program_check_ns':10**12,'samples':[{'parent':{'position':8},'endpoint':{'position':9},'operation_ns':n,'preparation_ns':10**9}for n in [30,10,20]]}
  out=reader.a_costs(r);self.assertEqual(out['operation']['median_ns'],20);self.assertEqual(out['program_check_ns'],10**12);self.assertEqual(out['parent_preparation']['median_ns'],10**9)
 def test_different_exact_parents_cannot_be_pooled(self):
  r={'program_check_ns':1,'samples':[{'parent':{'record':n},'endpoint':{},'operation_ns':10,'preparation_ns':20}for n in ['a','a','b']]}
  with self.assertRaises(ValueError):reader.a_costs(r)
