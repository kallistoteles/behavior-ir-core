import copy, hashlib, json, tempfile, unittest
from pathlib import Path
from bootstrap import adopt, validate_profile

class BootstrapTests(unittest.TestCase):
 def setUp(self):
  self.profile=json.loads((Path(__file__).resolve().parents[1]/"profiles/diagnostic.json").read_text())
  self.receipt={"format":"core035.bounded.v1","start_monotonic_ns":100,"boot_id":"test-boot","exit_code":1,"stop_reason":None,"group_empty":True,"tree_empty":True}
  self.digest=hashlib.sha256(json.dumps(self.profile,sort_keys=True,separators=(",",":")).encode()).hexdigest()
 def test_adopts_actual_origin_and_expected_red(self):
  with tempfile.TemporaryDirectory() as d:
   p=Path(d)/"session.json";r=adopt(self.profile,self.receipt,self.digest,p,200,"test-boot")
   self.assertEqual(r["clock"]["started_ns"],100);self.assertEqual(r["bootstrap_exit"],1)
   with self.assertRaises(FileExistsError):adopt(self.profile,self.receipt,self.digest,p,200,"test-boot")
 def test_refuses_wrong_boot_and_time_reset(self):
  for now,boot in [(200,"other"),(99,"test-boot")]:
   with tempfile.TemporaryDirectory() as d:
    with self.assertRaises(ValueError):adopt(self.profile,self.receipt,self.digest,Path(d)/"s",now,boot)
 def test_refuses_changed_profile_or_live_children(self):
  for digest,receipt in [("0"*64,self.receipt),(self.digest,{**self.receipt,"tree_empty":False})]:
   with tempfile.TemporaryDirectory() as d:
    with self.assertRaises(ValueError):adopt(self.profile,receipt,digest,Path(d)/"s",200,"test-boot")
 def test_budget_and_owned_root_guards(self):
  for mutate in [lambda p:p["limits"].update(campaign_seconds=21601),lambda p:p["limits"].update(stop_free_bytes=2*1024**3),lambda p:p["owned_roots"].update(cache="/tmp/other")]:
   p=copy.deepcopy(self.profile);mutate(p)
   with self.assertRaises(ValueError):validate_profile(p)
if __name__=="__main__":unittest.main()
