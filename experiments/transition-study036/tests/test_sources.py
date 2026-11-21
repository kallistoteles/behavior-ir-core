import unittest,tempfile,json,os
from pathlib import Path
from artifact_io import write_once,safe_path,artifact_ref,verify_ref
from sources import validate_index
class SourceTests(unittest.TestCase):
 def test_refs_paths_and_create_once(self):
  with tempfile.TemporaryDirectory() as d:
   root=Path(d);write_once(root/"x",{"x":1});a=artifact_ref(root,"x");verify_ref(root,a)
   with self.assertRaises(FileExistsError):write_once(root/"x",{})
   for p in ["../x","/x","a/../x"]:
    with self.assertRaises(ValueError):safe_path(root,p)
   (root/"escape").symlink_to("/tmp")
   with self.assertRaises(ValueError):safe_path(root,"escape/x")
   (root/"x").write_text("changed")
   with self.assertRaises(ValueError):verify_ref(root,a)
 def test_index_not_empty_or_missing(self):
  for names in [[],["Cargo.toml"],["scripts/gates.sh"]]:
   with self.assertRaises(ValueError):validate_index(names)
