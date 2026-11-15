import json,sys,tempfile,time,unittest
from pathlib import Path
from unittest.mock import patch
sys.path.insert(0,str(Path(__file__).resolve().parents[1]))
import study
from recorder import Ledger
class ReachedLaunch(Exception):pass
class BootstrapTests(unittest.TestCase):
 def fixture(self,root):
  m={'clock':{'started_ns':time.monotonic_ns(),'boot_id':study._boot()},'tools':{},'profile':study._read(study.HERE/'profiles/diagnostic.json')}
  study._write(root/'input-manifest.json',{'unit':'not executable authority'})
  worker=root/'bin/assurance034';worker.parent.mkdir();worker.write_bytes(b'unit worker bytes')
  directory=root/'roles/build';(directory/'product').mkdir(parents=True);(directory/'command').mkdir()
  study._write(directory/'product/worker.json',study.artifact_ref(root,'bin/assurance034','executed_worker'))
  study._write(directory/'result.json',{'operational':'completed','expectations_met':True,'receipt':'roles/build/command/receipt.json'})
  study._write(directory/'command/receipt.json',{'exit_code':0,'stop_reason':None,'group_empty':True,'tree_empty':True})
  return m,worker
 def test_bootstrap_oracle_reaches_real_launch_without_prepared_manifest(self):
  with tempfile.TemporaryDirectory()as d:
   root=Path(d);m,worker=self.fixture(root);case=m['profile']['cases'][0];role=case['roles'][1];ledger=Ledger(m['clock']['started_ns'],m['clock']['boot_id'],7200)
   def launch(argv,*a,**kw):
    self.assertEqual(argv[0],str(worker));self.assertEqual(argv[1],'prepare');raise ReachedLaunch()
   with patch.object(study,'_built_worker',return_value=worker,create=True),patch.object(study,'_worker',side_effect=AssertionError('Bootstrap cannot require its own future prepared manifest')),patch.object(study,'run',side_effect=launch):
    with self.assertRaises(ReachedLaunch):study._execute_role((root,m,ledger,ledger),case,role)
 def test_built_transport_is_bound_and_no_later_prepared_guard_is_weakened(self):
  with tempfile.TemporaryDirectory()as d:
   root=Path(d);m,worker=self.fixture(root)
   self.assertEqual(study._built_worker(root,m),worker)
   with self.assertRaises((FileNotFoundError,ValueError)):study._worker(root,m)
   worker.write_bytes(b'changed')
   with self.assertRaises(ValueError):study._built_worker(root,m)
 def test_failed_or_unclosed_build_cannot_select_worker(self):
  for key,value in [('exit_code',1),('stop_reason','WallLimit'),('tree_empty',False)]:
   with tempfile.TemporaryDirectory()as d:
    root=Path(d);m,_=self.fixture(root);p=root/'roles/build/command/receipt.json';r=study._read(p);r[key]=value;p.write_text(json.dumps(r))
    with self.assertRaises(ValueError):study._built_worker(root,m)
