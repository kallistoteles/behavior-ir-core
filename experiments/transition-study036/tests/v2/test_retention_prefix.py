"""Resume only an exact prefix of a closed native build's retention set."""

import shutil
import tempfile
import unittest
from pathlib import Path

from artifact_io import write_once
from native_build import verify_retention_prefix_v2


class RetentionPrefixTests(unittest.TestCase):
    def fixture(self, root):
        source = root / "source"
        source.mkdir()
        original = source / "tested"
        original.write_bytes(b"retained exact native bytes\x00")
        destination = root / "retained"
        destination.mkdir()
        write_once(destination / "fixture-symlinks.json", [])
        return original, destination

    def test_empty_and_exact_prefix_accept_without_rewriting(self):
        with tempfile.TemporaryDirectory() as directory:
            original, destination = self.fixture(Path(directory))
            selected = {"tested": original}
            self.assertEqual(
                verify_retention_prefix_v2(destination, selected, []), set()
            )
            target = destination / "tested"
            shutil.copy2(original, target)
            before = target.stat()
            self.assertEqual(
                verify_retention_prefix_v2(destination, selected, []), {"tested"}
            )
            self.assertEqual(target.stat().st_ino, before.st_ino)
            self.assertEqual(target.stat().st_mtime_ns, before.st_mtime_ns)

    def test_changed_extra_symlink_and_metadata_are_rejected_without_writes(self):
        for fault in ("changed", "extra", "symlink", "mode", "links", "directory"):
            with self.subTest(fault=fault), tempfile.TemporaryDirectory() as directory:
                original, destination = self.fixture(Path(directory))
                target = destination / "tested"
                shutil.copy2(original, target)
                if fault == "changed":
                    target.write_bytes(b"changed")
                elif fault == "extra":
                    (destination / "extra").write_bytes(b"keep this evidence")
                elif fault == "symlink":
                    target.unlink()
                    target.symlink_to(original)
                elif fault == "mode":
                    target.chmod(0o700)
                elif fault == "links":
                    (destination / "fixture-symlinks.json").write_text("[{}]")
                else:
                    (destination / "extra").mkdir()
                before = target.lstat()
                with self.assertRaises(ValueError):
                    verify_retention_prefix_v2(destination, {"tested": original}, [])
                self.assertEqual(target.lstat().st_ino, before.st_ino)
                self.assertEqual(target.lstat().st_size, before.st_size)

    def test_nonexistent_and_escaping_selection_do_not_create_files(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            original, destination = self.fixture(root)
            for relative in ("../escape", "/absolute", "", "a/../escape"):
                with self.subTest(relative=relative), self.assertRaises(ValueError):
                    verify_retention_prefix_v2(destination, {relative: original}, [])
            self.assertFalse((root / "escape").exists())
