import json,sys,tempfile,unittest,hashlib,threading,time
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[1]))
import artifact_io as io
class ArchiveTests(unittest.TestCase):
 def test_write_once_and_exact_changed_bytes(self):
  with tempfile.TemporaryDirectory()as d:
   r=Path(d);io.write_once(r/'x',b'original');self.assertEqual((r/'x').read_bytes(),b'original')
   ref=io.artifact_ref(r,'x');io.verify_ref(r,ref)
   with self.assertRaises(FileExistsError):io.write_once(r/'x',b'replace')
   (r/'x').write_bytes(b'changed')
   with self.assertRaises(ValueError):io.verify_ref(r,ref)
 def test_escape_and_symlink_escape(self):
  with tempfile.TemporaryDirectory()as d:
   r=Path(d)/'owned';r.mkdir();(Path(d)/'other').write_bytes(b'outside');(r/'link').symlink_to(Path(d)/'other')
   for name in ['../other','/etc/passwd','link']:
    with self.assertRaises(ValueError):io.artifact_ref(r,name)
 def test_closed_archive_complete_unique_and_logs(self):
  with tempfile.TemporaryDirectory()as d:
   r=Path(d);(r/'log').write_bytes(b'actual');a=io.seal(r,['log']);io.verify_archive(r,a)
   with self.assertRaises(ValueError):io.seal(r,['log','log'])
   with self.assertRaises(ValueError):io.verify_archive(r,dict(a,format='other'))
   (r/'log').unlink()
   with self.assertRaises(ValueError):io.verify_archive(r,a)
 def test_delayed_write_after_hash_is_detected(self):
  with tempfile.TemporaryDirectory()as d:
   r=Path(d);(r/'log').write_bytes(b'before');a=io.seal(r,['log'])
   th=threading.Thread(target=lambda:((r/'log').write_bytes(b'late')));th.start();th.join()
   with self.assertRaises(ValueError):io.verify_archive(r,a)
 def test_reference_fields_and_read_bounds(self):
  with tempfile.TemporaryDirectory()as d:
   r=Path(d);(r/'x').write_bytes(b'1234');ref=io.artifact_ref(r,'x')
   with self.assertRaises(ValueError):io.verify_ref(r,dict(ref,verified=True))
   with self.assertRaises(ValueError):io.verify_ref(r,dict(ref,bytes=True))
   with self.assertRaises(ValueError):io.bounded_read(r/'x',3)
   self.assertEqual(io.bounded_read(r/'x',4),b'1234')
if __name__=='__main__':unittest.main()
