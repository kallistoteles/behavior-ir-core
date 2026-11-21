import hashlib,io,tarfile,tempfile,unittest
from pathlib import Path
from analysis_tools import extract_archive
class ArchiveTests(unittest.TestCase):
 def archive(self,root,name="bin/tool",payload=b"abc",link=None):
  p=root/"a.tar.gz"
  with tarfile.open(p,"w:gz") as t:
   x=tarfile.TarInfo(name)
   if link is not None:x.type=tarfile.SYMTYPE;x.linkname=link;t.addfile(x)
   else:x.size=len(payload);t.addfile(x,io.BytesIO(payload))
  return p,hashlib.sha256(p.read_bytes()).hexdigest()
 def test_safe(self):
  with tempfile.TemporaryDirectory() as d:
   r=Path(d);p,h=self.archive(r);extract_archive(p,r/"out",h,10)
   self.assertEqual((r/"out/bin/tool").read_bytes(),b"abc")
 def test_escape_and_symlink(self):
  for name,link in [("../escape",None),("/outside",None),("link","/tmp")]:
   with tempfile.TemporaryDirectory() as d:
    r=Path(d);p,h=self.archive(r,name,link=link)
    with self.assertRaises(ValueError):extract_archive(p,r/"out",h,10)
 def test_hash_and_size(self):
  for good,limit in [(False,10),(True,2)]:
   with tempfile.TemporaryDirectory() as d:
    r=Path(d);p,h=self.archive(r)
    with self.assertRaises(ValueError):extract_archive(p,r/"out",h if good else "0"*64,limit)
