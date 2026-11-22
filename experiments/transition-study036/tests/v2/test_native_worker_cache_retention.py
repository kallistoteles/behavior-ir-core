"""Retain current native compiler intermediates without removing retained workers."""

from pathlib import Path
import unittest


class NativeWorkerCacheRetentionTests(unittest.TestCase):
    def test_symlink_ancestor_is_rejected_before_querying_its_leaf(self):
        import os
        import tempfile
        from unittest.mock import patch
        from native_accessor_source_canary_v2 import _unlinked_parents

        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            outside = root / "outside"
            outside.mkdir()
            (outside / "file").write_bytes(b"x")
            alias = root / "alias"
            alias.symlink_to(outside, target_is_directory=True)
            leaf = alias / "file"
            original = os.lstat

            def checked(path, *args, **kwargs):
                if Path(path) == leaf:
                    raise AssertionError("queried leaf through symlink ancestor")
                return original(path, *args, **kwargs)

            with (
                patch("os.lstat", checked),
                self.assertRaisesRegex(ValueError, "SourceLink"),
            ):
                _unlinked_parents(leaf)

    def context(self):
        subject = dict(root_id="future_evidence", path="subjects/r9505/manifest.json")
        compiled_subject = dict(
            root_id="future_evidence", path="subjects/r9504/manifest.json"
        )
        cp = dict(
            attempt_id="a0482",
            source_subject_ref=subject,
            stage_outcome="succeeded",
            source_validation_error=None,
            outcome={"operational": "closed"},
        )
        rc = dict(
            source_subject_ref=subject,
            exit_code=0,
            stop_reason=None,
            tree_empty=True,
            group_empty=True,
            final_storage_inventory_error=None,
        )
        native = dict(
            format="core036.native-unit-completion.v3",
            source_subject_ref=subject,
            compiled_source_subject_ref=compiled_subject,
            completed_prior_tests=77,
            original_observations_compared=12,
            native_proof="unestablished",
            feature_complete=False,
        )
        compiled = dict(
            attempt_id="a0481",
            source_subject_ref=compiled_subject,
            source_validation_error=None,
            outcome={"operational": "closed"},
        )
        return cp, rc, native, compiled, Path("/synthetic/private")

    def test_exact_latest_closed_compiler_owner_is_required(self):
        from native_worker_cache_retention_v2 import worker_target

        context = self.context()
        self.assertEqual(
            worker_target(*context), context[-1] / "disposable/native-a0480/target"
        )
        cp, rc, native, compiled, private = context
        for patch in [
            dict(attempt_id="a0329"),
            dict(stage_outcome="failed"),
            dict(source_validation_error="changed"),
        ]:
            with self.assertRaises(ValueError):
                worker_target({**cp, **patch}, rc, native, compiled, private)
        with self.assertRaises(ValueError):
            worker_target(cp, {**rc, "tree_empty": False}, native, compiled, private)
        with self.assertRaises(ValueError):
            worker_target(
                cp, rc, {**native, "feature_complete": True}, compiled, private
            )

    def test_archive_parts_cover_every_file_once_under_explicit_bound(self):
        from native_worker_cache_retention_v2 import archive_groups

        rows = [dict(path=str(i), bytes=40 * 1024**2) for i in range(3)]
        parts = archive_groups(rows)
        self.assertEqual([row for part in parts for row in part], rows)
        self.assertEqual(len(parts), 3)
        with self.assertRaises(ValueError):
            archive_groups([dict(path="too-large", bytes=129 * 1024**2)])

    def test_worker_inventory_has_only_two_explicit_size_domains(self):
        import tempfile
        from native_partial_cache_retention_v2 import complete_inventory

        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            (root / "file").write_bytes(b"x")
            self.assertEqual(
                complete_inventory(root, maximum_bytes=2 * 1024**3)[
                    "unique_inode_bytes"
                ],
                1,
            )
            for size in [True, 0, 3 * 1024**3]:
                with self.assertRaises(ValueError):
                    complete_inventory(root, maximum_bytes=size)

    def test_protected_reference_is_rejected_before_any_owner_io(self):
        from native_worker_cache_retention_v2 import run_retention

        class NeverRead:
            def read(self, _):
                raise AssertionError("protected IO")

        with self.assertRaisesRegex(ValueError, "ProtectedArtifact"):
            run_retention(
                NeverRead(),
                dict(path="synthetic/parameters.bin/no"),
                {},
                Path("/unused"),
            )
