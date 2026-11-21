import unittest
from check_proofs import native_verified,validate_obligations
class CorrespondenceTests(unittest.TestCase):
 def test_model_only_is_not_native(self):
  self.assertFalse(native_verified({"model_roots_checked":12,"native_status":"conditional"}))
 def test_success_flags_are_not_proof(self):
  self.assertFalse(native_verified({"verified":True,"native_status":"proved"}))
 def test_missing_and_assumed_bridge_fail(self):
  with self.assertRaises(ValueError):validate_obligations([])
  with self.assertRaises(ValueError):validate_obligations([{"id":"B01","status":"proved","premises":["assume exact output"]}])
