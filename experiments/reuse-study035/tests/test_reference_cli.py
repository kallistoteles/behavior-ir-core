import json,os,subprocess,tempfile,unittest
from pathlib import Path
class ReferenceCli(unittest.TestCase):
 def test_upstream_original_reference_case_matches_exactly(self):
  binary=os.environ['CORE035_REFERENCE_BIN'];expected=json.loads(Path(os.environ['CORE035_ORACLE_CASE']).read_text())
  with tempfile.TemporaryDirectory()as d:
   out=Path(d)/'actual.json';p=subprocess.run([binary,'native-reference','--case','growth-D1','--out',str(out)],capture_output=True,timeout=60)
   self.assertEqual(p.returncode,0,p.stderr.decode());actual=json.loads(out.read_text());self.assertEqual(actual,expected)
   self.assertEqual(actual['expected']['post_state']['children']['c0000']['phase'],'Terminal');self.assertEqual(actual['drain_expected']['after_history']['position'],10)
if __name__=='__main__':unittest.main()
