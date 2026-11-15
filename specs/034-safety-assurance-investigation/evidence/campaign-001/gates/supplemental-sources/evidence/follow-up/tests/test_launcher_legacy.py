import hashlib,json,tempfile,unittest
from pathlib import Path
import study,final_checks
class LauncherLegacyTests(unittest.TestCase):
 def test_multi_call_command_name_survives_pinning(self):
  tools=study._tools()
  for name in ['nix-shell','nix-store']:
   self.assertEqual(Path(tools[name]['path']).name,name)
   self.assertTrue(tools[name]['path'].startswith('/nix/store/'))
 def test_legacy_diagnostic_float_does_not_enter_new_semantic_wire(self):
  with tempfile.TemporaryDirectory()as d:
   p=Path(d)/'old.json';p.write_text(json.dumps({'preparation_elapsed_seconds':0.5,'files':{'old.rs':'a'*64}}))
   self.assertEqual(final_checks._legacy_files(p),{'old.rs':'a'*64})
if __name__=='__main__':unittest.main()
