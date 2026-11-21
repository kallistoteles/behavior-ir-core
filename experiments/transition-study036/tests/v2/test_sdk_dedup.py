"""Byte-preserving sharing of immutable owned SDK files, never a proof flag."""

import os
import tempfile
import unittest
from pathlib import Path
from sdk_dedup_v2 import link_identical_v2


class SdkDedupTests(unittest.TestCase):
    def test_identical_files_share_inode_without_changing_bytes_or_mode(self):
        with tempfile.TemporaryDirectory() as d:
            a, b = Path(d) / "anchor", Path(d) / "copy"
            a.write_bytes(b"checked SDK bytes" * 4096)
            b.write_bytes(a.read_bytes())
            old = b.stat().st_ino
            result = link_identical_v2(a, b)
            self.assertTrue(result["linked"])
            self.assertNotEqual(old, b.stat().st_ino)
            self.assertEqual(a.stat().st_ino, b.stat().st_ino)
            self.assertEqual(b.read_bytes(), b"checked SDK bytes" * 4096)
            self.assertEqual(a.stat().st_mode, b.stat().st_mode)
            self.assertEqual(link_identical_v2(a, b)["reason"], "already_shared")

    def test_different_bytes_or_mode_remain_independent(self):
        with tempfile.TemporaryDirectory() as d:
            a, b = Path(d) / "anchor", Path(d) / "copy"
            a.write_bytes(b"a")
            a.chmod(0o644)
            b.write_bytes(b"b")
            old = b.stat().st_ino
            self.assertFalse(link_identical_v2(a, b)["linked"])
            self.assertEqual(old, b.stat().st_ino)
            self.assertEqual(b.read_bytes(), b"b")
            b.write_bytes(b"a")
            b.chmod(0o600)
            self.assertFalse(link_identical_v2(a, b)["linked"])
            self.assertEqual(old, b.stat().st_ino)
            self.assertEqual(b.stat().st_mode & 0o777, 0o600)

    def test_symlink_is_rejected_without_replacing_it(self):
        with tempfile.TemporaryDirectory() as d:
            a, b = Path(d) / "anchor", Path(d) / "copy"
            a.write_bytes(b"a")
            os.symlink(a, b)
            with self.assertRaises(ValueError):
                link_identical_v2(a, b)
            self.assertTrue(b.is_symlink())
            self.assertEqual(a.read_bytes(), b"a")
