import copy
import gzip
import tempfile
import unittest
from pathlib import Path
import artifacts as a

class PackedTests(unittest.TestCase):
    def fixture(self, root):
        raw=b"{\"exact\":true}\n";packed=gzip.compress(raw,mtime=0)
        (root/"good.gz").write_bytes(packed)
        return raw,packed,{"path":"good.gz","sha256":a.digest(raw),"bytes":len(raw),
            "compression":"gzip","compressed_sha256":a.digest(packed),"compressed_bytes":len(packed)}

    def test_roundtrip_preserves_original_bytes(self):
        with tempfile.TemporaryDirectory() as d:
            raw,_,ref=self.fixture(Path(d));self.assertEqual(a.read_packed_artifact(d,ref),raw)

    def test_untrusted_packed_identity_cannot_pass(self):
        with tempfile.TemporaryDirectory() as d:
            _,_,ref=self.fixture(Path(d));bad=dict(ref,sha256="sha256:"+"0"*64)
            with self.assertRaises(a.InvalidArtifact):a.read_packed_artifact(d,bad)

    def test_size_hash_format_root_and_corruption_are_checked(self):
        with tempfile.TemporaryDirectory() as d:
            root=Path(d)/"root";root.mkdir();raw,packed,ref=self.fixture(root)
            for bad in [dict(ref,bytes=False),dict(ref,bytes=0),dict(ref,compressed_bytes=0),
                        dict(ref,compressed_sha256="sha256:"+"0"*64),dict(ref,compression="other"),
                        dict(ref,path="missing"),dict(ref,path=None)]:
                with self.subTest(bad=bad),self.assertRaises(a.InvalidArtifact):a.read_packed_artifact(root,bad)
            with self.assertRaises(a.InvalidArtifact):a.read_packed_artifact(root,ref,max_bytes=1)
            (Path(d)/"outside.gz").write_bytes(packed)
            with self.assertRaises(a.InvalidArtifact):a.read_packed_artifact(root,dict(ref,path="../outside.gz"))
            for broken in [b"not-gzip",packed[:-3],packed[:-8]+bytes([packed[-8]^1])+packed[-7:]]:
                (root/"bad.gz").write_bytes(broken)
                bad=dict(ref,path="bad.gz",compressed_bytes=len(broken),compressed_sha256=a.digest(broken))
                with self.subTest(broken=broken),self.assertRaises(a.InvalidArtifact):a.read_packed_artifact(root,bad)

if __name__=="__main__":unittest.main()
