"""The repair changes four translator files, never native Core or an output proof."""

import hashlib
import tempfile
import unittest
from pathlib import Path


class NonposSourceTests(unittest.TestCase):
    def test_exact_printer_paths_and_digest_are_required(self):
        from nonpos_source_prepare_v2 import verify_patch

        paths = [
            "Translate.ml",
            "extract/Extract.ml",
            "extract/ExtractBase.ml",
            "extract/ExtractTypes.ml",
        ]
        raw = "".join(
            "--- a/" + p + "\n+++ b/" + p + "\n@@ -1 +1 @@\n-old\n+new\n" for p in paths
        ).encode()
        digest = hashlib.sha256(raw).hexdigest()
        self.assertEqual(verify_patch(raw, digest), paths)
        with self.assertRaises(ValueError):
            verify_patch(raw + b"\n", digest)
        for replacement in ("../native.rs", "extract/Other.ml"):
            changed = raw.replace(b"Translate.ml", replacement.encode())
            with self.assertRaises(ValueError):
                verify_patch(changed, hashlib.sha256(changed).hexdigest())

    def test_missing_duplicate_and_binary_patch_are_rejected(self):
        from nonpos_source_prepare_v2 import verify_patch

        for raw in (
            b"",
            b"GIT binary patch\n",
            b"--- a/Translate.ml\n+++ b/Translate.ml\n" * 4,
        ):
            with self.assertRaises(ValueError):
                verify_patch(raw, hashlib.sha256(raw).hexdigest())

    def test_inventory_records_symlink_text_without_reading_target(self):
        from nonpos_source_prepare_v2 import source_inventory

        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory) / "source"
            root.mkdir()
            outside = Path(directory) / "outside"
            outside.mkdir()
            (outside / "unrelated").write_bytes(b"not source")
            (root / "directory-link").symlink_to(outside, target_is_directory=True)
            rows = source_inventory(root)
            self.assertEqual([row["path"] for row in rows], ["directory-link"])
            self.assertEqual(rows[0]["kind"], "symlink-text")
            self.assertEqual(
                rows[0]["sha256"], hashlib.sha256(str(outside).encode()).hexdigest()
            )

    def test_charon_pin_accepts_comments_but_requires_one_exact_commit(self):
        from nonpos_source_prepare_v2 import CHARON, verify_charon_pin

        verify_charon_pin("# publisher comment\n" + CHARON + "\n")
        verify_charon_pin(CHARON + "\n")
        for raw in ("# no pin\n", "0" * 40, CHARON + "\n" + CHARON, CHARON + " extra"):
            with self.assertRaises(ValueError):
                verify_charon_pin(raw)
