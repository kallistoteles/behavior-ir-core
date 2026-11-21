import unittest
from campaign import eligible,check_revision,budget_remaining
class SupervisorTests(unittest.TestCase):
 def test_gate_separation(self):
  g={"native_ready":True,"S1":False,"Q":False}
  self.assertTrue(eligible("Q",g));self.assertFalse(eligible("S2",g))
  g["Q"]=True;self.assertFalse(eligible("S3",g))
  g["S1"]=True;self.assertTrue(eligible("S2",g))
  self.assertFalse(eligible("S4",g))
 def test_source_changes(self):
  check_revision("a","a")
  with self.assertRaises(ValueError):check_revision("a","b")
 def test_global_closing_reserve(self):
  self.assertEqual(budget_remaining(21600,20000,1800),0)
