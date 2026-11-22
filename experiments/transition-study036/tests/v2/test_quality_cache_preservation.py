"""Unexecuted test-first draft for a prospective closed quality-cache check."""

import copy
import json
from pathlib import Path
import tempfile
import unittest


class QualityCachePreservationTests(unittest.TestCase):
    def test_only_closed_successful_actual_owner_is_admitted(self):
        from quality_cache_retention_v2 import quality_target

        subject = dict(
            root_id="future_evidence",
            path="subjects/r9567/manifest.json",
            bytes=1,
            sha256="a" * 64,
        )
        cp = dict(
            attempt_id="a0540",
            stage_outcome="succeeded",
            source_validation_error=None,
            outcome=dict(operational="closed"),
            source_subject_ref=subject,
        )
        receipt = dict(
            source_subject_ref=subject,
            exit_code=0,
            stop_reason=None,
            tree_empty=True,
            group_empty=True,
            controller_error=None,
            final_storage_inventory_error=None,
        )
        result = dict(
            source_subject_ref=subject,
            format="core036.canonical-result.v2",
            exit_code=0,
            whole_gate_terminal_ok=True,
            target="/owned/disposable/gate-a0538/target",
        )
        self.assertEqual(
            quality_target(cp, receipt, result, Path("/owned")), Path(result["target"])
        )
        for obj, key, value in (
            (cp, "attempt_id", "a0539"),
            (cp, "stage_outcome", "failed"),
            (cp, "source_validation_error", "changed"),
            (cp, "outcome", dict(operational="running")),
            (receipt, "exit_code", False),
            (receipt, "stop_reason", "WallLimit"),
            (receipt, "tree_empty", False),
            (receipt, "group_empty", False),
            (receipt, "controller_error", "error"),
            (receipt, "final_storage_inventory_error", "error"),
            (result, "source_subject_ref", {}),
            (result, "whole_gate_terminal_ok", False),
            (result, "target", "/owned/disposable/native-a0480/target"),
        ):
            original = copy.deepcopy(obj[key])
            obj[key] = value
            with self.subTest(key=key), self.assertRaises(ValueError):
                quality_target(cp, receipt, result, Path("/owned"))
            obj[key] = original

    def fixture(self, directory):
        from quality_warm_cache_v3 import retain_cache

        base = Path(directory)
        target = base / "target"
        (target / "empty").mkdir(parents=True)
        (target / "generated.rs").write_bytes(b"retained generated source")
        retain_cache(target, base / "archive", budget=32 * 1024**2)
        return target, base / "archive"

    def test_all_unchanged_bytes_and_directory_modes_can_reuse_existing_archives(self):
        from quality_cache_retention_v2 import verify_existing_preservation

        with tempfile.TemporaryDirectory() as directory:
            target, folder = self.fixture(directory)
            inventory, result = verify_existing_preservation(target, folder)
            self.assertEqual(len(inventory["files"]), 1)
            self.assertTrue(result["no_disposal"])
            self.assertTrue((target / "generated.rs").exists())
            (target / "generated.rs").write_bytes(b"changed cache")
            with self.assertRaisesRegex(ValueError, "ChangedAfterPreservation"):
                verify_existing_preservation(target, folder)
            self.assertEqual((target / "generated.rs").read_bytes(), b"changed cache")

    def test_corrupt_archive_and_escaping_member_name_are_rejected(self):
        from quality_cache_retention_v2 import verify_existing_preservation

        with tempfile.TemporaryDirectory() as directory:
            target, folder = self.fixture(directory)
            path = folder / "result.json"
            result = json.loads(path.read_text())
            part = folder / result["parts"][0]["name"]
            original = part.read_bytes()
            part.write_bytes(original[:-1] + bytes([original[-1] ^ 1]))
            with self.assertRaisesRegex(ValueError, "ArchiveIdentity"):
                verify_existing_preservation(target, folder)
            part.write_bytes(original)
            result["parts"][0]["name"] = "../outside.tar.gz"
            path.write_text(json.dumps(result))
            with self.assertRaisesRegex(ValueError, "ArchiveName"):
                verify_existing_preservation(target, folder)
            self.assertTrue((target / "generated.rs").exists())

    def test_protected_ancestors_are_rejected_before_any_io(self):
        from quality_cache_retention_v2 import verify_existing_preservation

        with self.assertRaisesRegex(ValueError, "ProtectedArtifact"):
            verify_existing_preservation(
                Path("/not-present/parameters.bin/child"), Path("/not-present/archive")
            )
