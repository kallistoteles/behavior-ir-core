"""Immutable root-volume retention remains independent of reusable Cargo files."""

import tempfile
import unittest
from pathlib import Path
from unittest.mock import patch

import native_build
from artifact_io import read, write_once
from native_build import retain_private_payloads_v2, verify_private_payloads_v2


class PrivateRetentionTests(unittest.TestCase):
    def test_producer_manifest_checks_the_private_payload_on_every_reuse(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            private = root / "private"
            source = private / "native-builds/a0253"
            (source / "retained").mkdir(parents=True)
            (source / "retained/worker").write_bytes(b"tested worker")
            write_once(source / "result.json", {"actual_exit": 0})
            experiment = root / "experiment"
            write_once(
                experiment / "build-inputs/v2/native-retention-location.json",
                {
                    "format": "core036.native-retention-location.v2",
                    "storage": "private_immutable",
                    "reason": "test immutable archival",
                },
            )
            with (
                patch.object(native_build, "R", root),
                patch.object(native_build, "E", experiment),
            ):
                native_build.retain_previous_build(
                    private, "w001", {"attempt_id": "a0253"}
                )
                metadata = (
                    root
                    / "specs/036-core-transition-feasibility/evidence/v2/w001/development/native-builds/a0253"
                )
                self.assertFalse((metadata / "retained/worker").exists())
                reference = read(metadata / "private-retention.json")["archive_ref"]
                archive = verify_private_payloads_v2(private, "a0253", reference)
                native_build.retain_previous_build(
                    private, "w001", {"attempt_id": "a0253"}
                )
                (archive / "retained/worker").write_bytes(b"tampered")
                with self.assertRaises(ValueError):
                    native_build.retain_previous_build(
                        private, "w001", {"attempt_id": "a0253"}
                    )

    def test_closed_copy_survives_reused_source_and_detects_archive_tamper(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            private = root / "private"
            private.mkdir()
            source = root / "mutable-cargo-binary"
            source.write_bytes(b"tested native executable\x00")
            result = root / "result.json"
            result.write_text('{"actual_exit":0}\n')
            reference = retain_private_payloads_v2(
                private, "a0253", {"tests/worker": source, "result.json": result}, []
            )
            archive = verify_private_payloads_v2(private, "a0253", reference)
            self.assertNotEqual(
                (archive / "tests/worker").stat().st_ino, source.stat().st_ino
            )
            source.write_bytes(b"next compilation overwrites its output")
            verify_private_payloads_v2(private, "a0253", reference)
            self.assertEqual(
                (archive / "tests/worker").read_bytes(), b"tested native executable\x00"
            )
            (archive / "tests/worker").write_bytes(b"corrupted")
            with self.assertRaises(ValueError):
                verify_private_payloads_v2(private, "a0253", reference)

    def test_prefix_recovery_preserves_files_and_rejects_foreign_reference(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            private = root / "private"
            private.mkdir()
            source = root / "source"
            source.write_bytes(b"native")
            archive = private / "closed-native-builds/a0253"
            archive.mkdir(parents=True)
            target = archive / "first"
            import shutil

            shutil.copy2(source, target)
            inode = target.stat().st_ino
            reference = retain_private_payloads_v2(
                private, "a0253", {"first": source, "second": source}, []
            )
            self.assertEqual(target.stat().st_ino, inode)
            verify_private_payloads_v2(private, "a0253", reference)
            for name, change in [
                ("../escape", {}),
                ("a0253", {"root_id": "repository"}),
                ("a0253", {"path": "elsewhere/closed-artifacts.json"}),
            ]:
                with self.subTest(name=name), self.assertRaises(ValueError):
                    verify_private_payloads_v2(private, name, {**reference, **change})
