"""Frozen data reuse must never alias a mutable input or import authority."""

import errno
import json
import tempfile
import unittest
from pathlib import Path
from unittest.mock import patch

from artifact_io import RootRegistry, write_once
from frozen_source_reuse_v2 import FrozenSourceWriter


class FrozenSourceReuseTests(unittest.TestCase):
    def setUp(self):
        self.temporary = tempfile.TemporaryDirectory()
        self.addCleanup(self.temporary.cleanup)
        self.root = Path(self.temporary.name)
        self.work = self.root / "work"
        self.repository = self.root / "repository"
        self.work.mkdir()
        self.repository.mkdir()
        self.registry = RootRegistry({"work": self.work, "repository": self.repository})
        self.original = self.repository / "source.bin"
        self.raw = b"exact retained binary\x00\xff\n"
        self.original.write_bytes(self.raw)
        self.expected = self.registry.reference("repository", "source.bin")
        self.saved = self.registry.write(
            "work", "subjects/r0001/sources/00000", self.raw
        )
        self.manifest = {
            "format": "core036.source.v2",
            "work_id": "w001",
            "record_id": "r0001",
            "outcome": {"operational": "completed", "acceptance": "blocked"},
            "files": [{"logical_ref": self.expected, "snapshot_ref": self.saved}],
        }
        self.manifest_path = self.work / "subjects/r0001/manifest.json"
        write_once(self.manifest_path, self.manifest)

    def test_identical_snapshots_share_only_old_frozen_data(self):
        writer = FrozenSourceWriter(self.registry, "w001")
        result = writer.write("subjects/r0002/sources/00000", self.raw, self.expected)
        old = self.registry.verify(self.saved)
        new = self.registry.verify(result)
        self.assertEqual(old.stat().st_ino, new.stat().st_ino)
        self.assertNotEqual(self.original.stat().st_ino, new.stat().st_ino)
        self.original.write_bytes(b"mutable input changed")
        self.assertEqual(new.read_bytes(), self.raw)
        self.registry.verify(self.saved)
        self.registry.verify(result)
        with self.assertRaises(FileExistsError):
            writer.write("subjects/r0002/sources/00000", self.raw, self.expected)

    def test_changed_input_is_copied_and_reference_races_are_rejected(self):
        writer = FrozenSourceWriter(self.registry, "w001")
        changed = b"new source bytes"
        self.original.write_bytes(changed)
        expected = self.registry.reference("repository", "source.bin")
        result = writer.write("subjects/r0002/sources/00000", changed, expected)
        saved = self.registry.verify(result)
        self.assertNotEqual(saved.stat().st_ino, self.original.stat().st_ino)
        self.assertNotEqual(
            saved.stat().st_ino, self.registry.verify(self.saved).stat().st_ino
        )
        with self.assertRaises(ValueError):
            writer.write("subjects/r0003/sources/00000", changed, self.expected)
        self.assertFalse((self.work / "subjects/r0003/sources/00000").exists())

    def test_corrupt_frozen_candidate_cannot_be_reused(self):
        writer = FrozenSourceWriter(self.registry, "w001")
        self.registry.verify(self.saved).write_bytes(b"hostile fixture mutation")
        with self.assertRaises(ValueError):
            writer.write("subjects/r0002/sources/00000", self.raw, self.expected)
        self.assertFalse((self.work / "subjects/r0002/sources/00000").exists())

    def test_cross_device_link_refusal_uses_an_independent_copy(self):
        writer = FrozenSourceWriter(self.registry, "w001")
        with patch(
            "frozen_source_reuse_v2.os.link", side_effect=OSError(errno.EXDEV, "test")
        ):
            result = writer.write(
                "subjects/r0002/sources/00000", self.raw, self.expected
            )
        saved = self.registry.verify(result)
        self.assertEqual(saved.read_bytes(), self.raw)
        self.assertNotEqual(
            saved.stat().st_ino, self.registry.verify(self.saved).stat().st_ino
        )

    def test_incomplete_subject_is_skipped_but_wrong_owner_and_root_are_rejected(self):
        (self.work / "subjects/r9999").mkdir()
        writer = FrozenSourceWriter(self.registry, "w001")
        result = writer.write("subjects/r0002/sources/00000", self.raw, self.expected)
        self.assertEqual(
            self.registry.verify(result).stat().st_ino,
            self.registry.verify(self.saved).stat().st_ino,
        )
        for mutate in (
            lambda d: d.update({"work_id": "different"}),
            lambda d: d["files"][0].update({"snapshot_ref": self.expected}),
        ):
            changed = json.loads(json.dumps(self.manifest))
            mutate(changed)
            self.manifest_path.write_text(json.dumps(changed))
            with self.assertRaises(ValueError):
                FrozenSourceWriter(self.registry, "w001")

    def test_writes_cannot_escape_or_reopen_frozen_readonly_or_sealed_roots(self):
        writer = FrozenSourceWriter(self.registry, "w001")
        for name in ("../escape", "context.json", "subjects/r0001/sources/00001"):
            with self.assertRaises(ValueError):
                writer.write(name, self.raw, self.expected)
        readonly = RootRegistry({"work": self.work}, readonly=["work"])
        with self.assertRaises(ValueError):
            FrozenSourceWriter(readonly, "w001").write(
                "subjects/r0002/sources/00000", self.raw, self.expected
            )
        (self.work / "closed-artifacts.json").write_bytes(b"{}")
        with self.assertRaises(ValueError):
            writer.write("subjects/r0002/sources/00000", self.raw, self.expected)
