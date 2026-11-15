import json,sys,tempfile,unittest
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[1]))
import study
class ClockInheritanceTests(unittest.TestCase):
 def test_controller_source_revision_keeps_original_budget_and_binds_parent(self):
  with tempfile.TemporaryDirectory()as d:
   parent=Path(d)/'parent';original=study.freeze(study.HERE/'profiles/diagnostic.json',parent)
   root=Path(d)/'corrected';new=study.freeze(study.HERE/'profiles/diagnostic.json',root,inherit_manifest=parent/'input-manifest.json')
   self.assertEqual(new['clock'],original['clock']);self.assertEqual(new['limits'],original['limits'])
   ref=new['sources']['inherited_budget']['manifest'];study.verify_ref(root,ref)
   self.assertEqual(study._read(root/ref['path']),original)
 def test_wrong_boot_cannot_restart_budget(self):
  with tempfile.TemporaryDirectory()as d:
   parent=Path(d)/'parent';m=study.freeze(study.HERE/'profiles/diagnostic.json',parent);m['clock']['boot_id']='different';(parent/'input-manifest.json').write_text(json.dumps(m))
   with self.assertRaisesRegex(ValueError,'ClockProvenance'):study.freeze(study.HERE/'profiles/diagnostic.json',Path(d)/'corrected',inherit_manifest=parent/'input-manifest.json')
