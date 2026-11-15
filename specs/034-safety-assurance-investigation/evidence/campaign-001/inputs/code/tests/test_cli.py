import copy,json,sys,tempfile,unittest
from pathlib import Path
from unittest.mock import patch
sys.path.insert(0,str(Path(__file__).resolve().parents[1]))
import study
HERE=Path(__file__).resolve().parents[1]
PROFILE=HERE/'profiles/diagnostic.json'
class CliTests(unittest.TestCase):
 def test_freeze_declares_all_cases_caps_and_no_future_digest(self):
  with tempfile.TemporaryDirectory()as d:
   root=Path(d)/'unit';m=study.freeze(PROFILE,root)
   self.assertEqual(m['format'],'core034.input.v1');self.assertEqual(len(m['profile']['cases']),12);self.assertEqual(m['limits']['process_seconds'],900)
   self.assertTrue(all(isinstance(s,str)for s in m['output_slots']));self.assertTrue((root/'input-manifest.json').is_file());self.assertFalse((root/'prepared-manifest.json').exists())
   with self.assertRaises(FileExistsError):study.freeze(PROFILE,root)
 def test_raised_limits_extra_code_and_missing_control_reject(self):
  for mode in ['limit','code','control']:
   with tempfile.TemporaryDirectory()as d:
    p=json.loads(PROFILE.read_text())
    if mode=='limit':p['limits']['process_seconds']=901
    if mode=='code':p['execute']='supplied.py'
    if mode=='control':p['controls'].pop()
    profile=Path(d)/'profile.json';profile.write_text(json.dumps(p))
    with self.assertRaises(ValueError):study.freeze(profile,Path(d)/'out')
 def test_unknown_case_and_missing_prepared_never_launch(self):
  with tempfile.TemporaryDirectory()as d:
   root=Path(d)/'unit';study.freeze(PROFILE,root)
   with patch.object(study,'_execute_role')as launch:
    for case in ['arbitrary-shell','integration','growth-D1']:
     with self.subTest(case=case),self.assertRaises(ValueError):study.run_case(root/'input-manifest.json',case)
    launch.assert_not_called()
 def test_source_mutation_or_clock_reset_cannot_continue(self):
  with tempfile.TemporaryDirectory()as d:
   root=Path(d)/'unit';m=study.freeze(PROFILE,root)
   p=root/m['code'][0]['path'];p.write_bytes(b'mutated')
   with self.assertRaises(ValueError):study.run_case(root/'input-manifest.json','bootstrap')
  with tempfile.TemporaryDirectory()as d:
   root=Path(d)/'unit';m=study.freeze(PROFILE,root);m['clock']['boot_id']='another-boot';(root/'input-manifest.json').write_text(json.dumps(m))
   with self.assertRaises(ValueError):study.run_case(root/'input-manifest.json','bootstrap')
 def test_operational_stop_is_three_never_proof_and_outputs_once(self):
  with tempfile.TemporaryDirectory()as d:
   root=Path(d)/'unit';study.freeze(PROFILE,root)
   failed={'operational':'resource_stopped','assurance':'unestablished','exit_code':3,'expectations_met':False,'stop_reason':'WallLimit','artifact_refs':[]}
   with patch.object(study,'_execute_role',return_value=failed):result=study.run_case(root/'input-manifest.json','bootstrap')
   self.assertEqual(result['exit_code'],3);self.assertNotEqual(result['assurance'],'established_under_premises');self.assertFalse((root/'prepared-manifest.json').exists())
   with self.assertRaises(FileExistsError):study.run_case(root/'input-manifest.json','bootstrap')
 def test_collect_requires_actual_authored_assessment(self):
  with tempfile.TemporaryDirectory()as d:
   root=Path(d)/'unit';study.freeze(PROFILE,root)
   with self.assertRaises(ValueError):study.collect(root/'input-manifest.json',root/'assessment')
