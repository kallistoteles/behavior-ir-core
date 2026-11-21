"""Count genuinely materialized metadata; never double-charge immutable aliases."""

import os
import tempfile
import unittest
from pathlib import Path


class MetadataFootprintTests(unittest.TestCase):
    def test_existing_snapshot_hardlinks_are_not_new_materialization(self):
        from metadata_footprint_v2 import materialized_bytes

        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            old = root / "old-source"
            old.write_bytes(b"unchanged-snapshot")
            identity = old.stat()
            previous = {(identity.st_dev, identity.st_ino): identity.st_size}
            new = root / "new-subject"
            new.mkdir()
            os.link(old, new / "source")
            os.link(old, new / "another-alias")
            self.assertEqual(materialized_bytes([new], previous), 0)
            (new / "manifest.json").write_bytes(b"new-metadata")
            self.assertEqual(materialized_bytes([new], previous), len(b"new-metadata"))
            self.assertEqual(
                materialized_bytes([new, new], {}),
                len(b"unchanged-snapshotnew-metadata"),
            )

    def test_changed_exempt_size_symlink_and_special_nodes_refuse(self):
        from metadata_footprint_v2 import materialized_bytes

        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            source = root / "source"
            source.write_bytes(b"original")
            st = source.stat()
            previous = {(st.st_dev, st.st_ino): st.st_size}
            source.write_bytes(b"wrong size")
            with self.assertRaisesRegex(ValueError, "MetadataSnapshotSizeChanged"):
                materialized_bytes([root], previous)
            source.unlink()
            (root / "link").symlink_to("missing")
            with self.assertRaisesRegex(ValueError, "MetadataFootprintSymlink"):
                materialized_bytes([root], {})
            (root / "link").unlink()
            os.mkfifo(root / "fifo")
            with self.assertRaisesRegex(ValueError, "MetadataFootprintSpecialNode"):
                materialized_bytes([root], {})

    def test_snapshot_exemptions_require_owned_refs_and_full_byte_revalidation(self):
        from artifact_io import RootRegistry
        from metadata_footprint_v2 import verified_snapshot_inodes

        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            source = root / "subjects/r0001/sources/00000"
            source.parent.mkdir(parents=True)
            source.write_bytes(b"original")
            registry = RootRegistry({"work": root})
            reference = registry.reference("work", "subjects/r0001/sources/00000")
            anchors = {(reference["bytes"], reference["sha256"]): reference}
            previous = verified_snapshot_inodes(registry, anchors)
            self.assertEqual(sum(previous.values()), len(b"original"))
            source.write_bytes(b"modified")
            with self.assertRaises(ValueError):
                verified_snapshot_inodes(registry, anchors)

        class NoVerify:
            def verify(self, reference):
                raise AssertionError("refused exemption must not be read")

        for name in ("parameters.bin", "compression_prover_key.bin"):
            with self.assertRaisesRegex(ValueError, "ProtectedArtifact"):
                verified_snapshot_inodes(
                    NoVerify(),
                    {"synthetic": {"root_id": "work", "path": "synthetic/" + name}},
                )
        with self.assertRaisesRegex(ValueError, "MetadataSnapshotOwnership"):
            verified_snapshot_inodes(
                NoVerify(),
                {
                    "synthetic": {
                        "root_id": "private",
                        "path": "subjects/r0001/sources/00000",
                    }
                },
            )
