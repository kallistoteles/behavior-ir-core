import unittest,json
from records import loads,validate_record,validate_workload,quantity
class RecordTests(unittest.TestCase):
 def valid(self):return dict(format="core036.gate.v1",campaign_id="campaign-001",revision_id="r001",case_id="x",role="R",outcome="blocked",product_adoption="unactivated",input_refs=[],reason="missing",blocking_ref={"path":"x","bytes":0,"sha256":"0"*64})
 def test_strict_json(self):
  for b in [b'{"a":1,"a":2}',b'{} {}',b'{"x":NaN}',bytes([255])]:
   with self.assertRaises(ValueError):loads(b)
  with self.assertRaises(ValueError):loads(b' '*100,limit=99)
 def test_record_constraints(self):
  self.assertEqual(validate_record(self.valid())["outcome"],"blocked")
  for key,value in [("role","x"*257),("format","core999.unknown"),("outcome","magic"),("product_adoption","active"),("extra",True),("reason","")]:
   p=self.valid();p[key]=value
   with self.assertRaises(ValueError):validate_record(p)
  p=self.valid();del p["role"]
  with self.assertRaises(ValueError):validate_record(p)
 def test_workloads(self):
  validate_workload({"N":256,"H":128,"requests":[{}]*128})
  for p in [{"N":257,"H":8,"requests":[]},{"N":2,"H":129,"requests":[]},{"N":2,"H":8,"requests":[{}]*129}]:
   with self.assertRaises(ValueError):validate_workload(p)
 def test_unknown_not_zero(self):
  self.assertIsNone(quantity(None,"bytes","unavailable")["value"])
  with self.assertRaises(ValueError):quantity(None,"bytes","")

class ReferenceValidationTests(unittest.TestCase):
 def test_nested_references_must_be_validated(self):
  d=RecordTests().valid();d["input_refs"]=[{"path":"../escape","bytes":0,"sha256":"0"*64}]
  with self.assertRaises(ValueError):validate_record(d)
