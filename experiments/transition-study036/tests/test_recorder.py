import unittest,tempfile,time,sys,json
from pathlib import Path
import recorder
class RecorderTests(unittest.TestCase):
 def test_ledger(self):
  x=recorder.Ledger(100,"boot",21600)
  self.assertEqual(x.remaining_ns(200,"boot"),21600*10**9-100)
  for now,boot in [(99,"boot"),(200,"other")]:
   with self.assertRaises(ValueError):x.remaining_ns(now,boot)
 def test_growth(self):
  G=1024**3
  self.assertIsNone(recorder._growth_reason({"artifacts":2*G,"cache":6*G,"temporary":0}))
  self.assertEqual(recorder._growth_reason({"artifacts":0,"cache":6*G+1,"temporary":0}),"CacheGrowthLimit")
  self.assertEqual(recorder._growth_reason({"artifacts":2*G,"cache":6*G,"temporary":1}),"CombinedGrowthLimit")
 def test_real_fast_child_and_final_growth(self):
  with tempfile.TemporaryDirectory() as d:
   v=iter([{"artifacts":0,"cache":0,"temporary":0},{"artifacts":0,"cache":7*1024**3,"temporary":0}])
   def growth():return next(v,{"artifacts":0,"cache":7*1024**3,"temporary":0})
   r=recorder.run([sys.executable,"-c","pass"],Path(d)/"out",5,free_bytes=lambda:20*1024**3,growth_bytes=growth)
   self.assertEqual(r["stop_reason"],"CacheGrowthLimit");self.assertTrue(r["tree_empty"])
 def test_stage_caps(self):
  with self.assertRaises(ValueError):recorder.Ledger(100,"boot",21601)
  self.assertEqual(recorder.permitted_wall([recorder.Ledger(0,"b",21600)],0,"b",1800),900)

class LaunchFloorTests(unittest.TestCase):
 def test_campaign_reserve_is_not_repeated_for_each_child(self):
  origin={"started_ns":100,"boot_id":"b"};ledger=recorder.Ledger(100,"b",21600)
  session={"clock":origin}
  bootstrap={"start_monotonic_ns":100,"boot_id":"b","group_id":1,"stop_reason":None,"tree_empty":True,"group_empty":True}
  self.assertEqual(recorder.launch_floor(ledger,session,bootstrap),4*1024**3)
  self.assertEqual(recorder.launch_floor(None,None,None),16*1024**3)
  with self.assertRaises(ValueError):recorder.launch_floor(recorder.Ledger(101,"b",21600),session,bootstrap)
