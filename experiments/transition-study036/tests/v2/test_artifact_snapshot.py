"""Only future snapshots are reused or excluded for a future-store writer."""

import tempfile
from pathlib import Path
import unittest
from artifact_io import RootRegistry
from frozen_source_reuse_v2 import FrozenSourceWriter
from metadata_footprint_v2 import verified_snapshot_inodes


class ArtifactSnapshotTests(unittest.TestCase):
    def test_future_reuse_never_relinks_legacy_snapshots_and_scope_is_exact(self):
        with tempfile.TemporaryDirectory() as folder:
            base = Path(folder)
            roots = {
                name: base / name for name in ("work", "repository", "future_evidence")
            }
            for path in roots.values():
                path.mkdir()
            registry = RootRegistry(roots)
            raw = b"synthetic source bytes"
            original = registry.write("repository", "source.bin", raw)
            old = registry.write("work", "subjects/r0001/sources/00000", raw)

            def manifest(root_id, revision, snapshot):
                registry.write(
                    root_id,
                    f"subjects/{revision}/manifest.json",
                    {
                        "format": "core036.source.v2",
                        "work_id": "w001",
                        "record_id": revision,
                        "outcome": {
                            "operational": "completed",
                            "acceptance": "blocked",
                        },
                        "files": [{"logical_ref": original, "snapshot_ref": snapshot}],
                    },
                )

            manifest("work", "r0001", old)
            old_path = registry.verify(old)
            old_inode = (old_path.stat().st_dev, old_path.stat().st_ino)
            writer = FrozenSourceWriter(registry, "w001", root_id="future_evidence")
            first = writer.write("subjects/r0002/sources/00000", raw, original)
            first_path = registry.verify(first)
            self.assertNotEqual(
                (first_path.stat().st_dev, first_path.stat().st_ino), old_inode
            )
            manifest("future_evidence", "r0002", first)
            writer = FrozenSourceWriter(registry, "w001", root_id="future_evidence")
            second = writer.write("subjects/r0003/sources/00000", raw, original)
            second_path = registry.verify(second)
            self.assertEqual(first_path.stat().st_ino, second_path.stat().st_ino)
            excluded = verified_snapshot_inodes(
                registry, writer.anchors, root_id="future_evidence"
            )
            self.assertIn(
                (first_path.stat().st_dev, first_path.stat().st_ino), excluded
            )
            self.assertNotIn(old_inode, excluded)
            self.assertEqual(old_path.read_bytes(), raw)
            with self.assertRaises(ValueError):
                verified_snapshot_inodes(
                    registry, {"synthetic": old}, root_id="future_evidence"
                )
