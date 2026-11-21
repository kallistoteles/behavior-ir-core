import tempfile
import unittest
from pathlib import Path
from recorder import v2_footprints

class FootprintTests(unittest.TestCase):
    def test_directory_symlink_counts_its_inode_without_following_target(self):
        with tempfile.TemporaryDirectory() as d,tempfile.TemporaryDirectory() as other:
            p=Path(d);(Path(other)/'unowned').write_bytes(b'x'*1000)
            (p/'link').symlink_to(other,target_is_directory=True)
            self.assertEqual(v2_footprints({'cache':p})['cache'],(p/'link').lstat().st_size)
