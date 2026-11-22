"""A resource-stopped historical canary owns only its actual plain target."""

from pathlib import Path
import unittest


class NativePartialCacheRetentionTests(unittest.TestCase):
    def test_inventory_never_queries_directory_type_through_a_symlink(self):
        import tempfile
        from unittest.mock import patch
        from backend_ir_retention_v2 import guarded_inventory_paths

        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            alias = root / "alias"
            alias.symlink_to(root / "absent")
            original = Path.is_dir

            def no_follow(path):
                if path == alias:
                    raise AssertionError("followed symlink metadata")
                return original(path)

            with patch.object(Path, "is_dir", no_follow):
                self.assertEqual(list(guarded_inventory_paths(root)), [alias])

    def test_complete_inventory_preserves_empty_directories_and_counts_unique_inodes(
        self,
    ):
        import os
        import tempfile
        from native_partial_cache_retention_v2 import complete_inventory

        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory) / "cache"
            root.mkdir()
            (root / "empty").mkdir()
            (root / "one").write_bytes(b"payload")
            os.link(root / "one", root / "two")
            rows = complete_inventory(root)
            self.assertEqual(rows["file_bytes"], 14)
            self.assertEqual(rows["unique_inode_bytes"], 7)
            self.assertIn("empty", [d["path"] for d in rows["directories"]])
            os.link(root / "one", Path(directory) / "external")
            with self.assertRaisesRegex(ValueError, "ExternalLink"):
                complete_inventory(root)

    def test_special_modes_and_symlinks_are_not_silently_lost(self):
        import tempfile
        from native_partial_cache_retention_v2 import complete_inventory

        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            p = root / "file"
            p.write_bytes(b"x")
            p.chmod(0o4755)
            with self.assertRaisesRegex(ValueError, "SpecialMode"):
                complete_inventory(root)
            p.chmod(0o644)
            (root / "alias").symlink_to(p)
            with self.assertRaises(ValueError):
                complete_inventory(root)

    def context(self):
        private = Path("/synthetic/private")
        target = private / "disposable/native-accessor-canary-a0492/target"
        subject = dict(root_id="future_evidence", path="subjects/r9517/manifest.json")
        cp = dict(
            attempt_id="a0493",
            source_subject_ref=subject,
            stage_outcome="resource_stopped",
            source_validation_error=None,
            outcome={"operational": "closed"},
        )
        rc = dict(
            source_subject_ref=subject,
            exit_code=-9,
            stop_reason="ControllerError",
            controller_error="StorageEventsLost('StorageGuardWatchLost')",
            tree_empty=True,
            group_empty=True,
            final_storage_inventory_error=None,
        )
        initial = dict(removed_metadata_files=[], new_empty_target=str(target))
        env = dict(CARGO_TARGET_DIR=str(target))
        metadata = dict(
            target_directory=str(target), workspace_root=str(target.parent / "worker")
        )
        return cp, rc, initial, env, metadata, private

    def test_exact_resource_stop_does_not_become_extraction_success(self):
        from native_partial_cache_retention_v2 import partial_target

        context = self.context()
        self.assertEqual(
            partial_target(*context),
            context[-1] / "disposable/native-accessor-canary-a0492/target",
        )
        self.assertEqual(context[0]["stage_outcome"], "resource_stopped")

    def test_retrospective_attempt_suffix_or_other_owner_is_rejected(self):
        from native_partial_cache_retention_v2 import partial_target

        cp, rc, initial, env, metadata, private = self.context()
        for patch in [
            dict(attempt_id="a0494"),
            dict(stage_outcome="succeeded"),
            dict(source_validation_error="changed"),
        ]:
            with self.assertRaises(ValueError):
                partial_target({**cp, **patch}, rc, initial, env, metadata, private)
        bad = str(private / "disposable/native-accessor-canary-a0492/target-a0493")
        with self.assertRaises(ValueError):
            partial_target(
                cp,
                rc,
                {**initial, "new_empty_target": bad},
                {"CARGO_TARGET_DIR": bad},
                {**metadata, "target_directory": bad},
                private,
            )
        for patch in [
            dict(tree_empty=False),
            dict(controller_error="different"),
            dict(stop_reason=None),
        ]:
            with self.assertRaises(ValueError):
                partial_target(cp, {**rc, **patch}, initial, env, metadata, private)

    def test_protected_component_rejects_before_metadata(self):
        from native_partial_cache_retention_v2 import partial_target

        context = list(self.context())
        context[-1] = Path("/synthetic/compression_prover_key.bin/never-read")
        with self.assertRaisesRegex(ValueError, "ProtectedArtifact"):
            partial_target(*context)
