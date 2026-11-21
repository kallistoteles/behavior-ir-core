"""Closed-owned proof-cache scope and real archive/inventory guards."""

from builtins import BaseExceptionGroup
import tempfile
import unittest
from pathlib import Path


class ProofCacheRetentionTests(unittest.TestCase):
    def test_476_runtime_baseline_is_exact_sealed_and_source_valid(self):
        from artifact_io import RootRegistry
        from proof_cache_retention_v2 import closed_runtime_baseline

        with tempfile.TemporaryDirectory() as directory:
            work = Path(directory)
            path = work / "attempts/a0476"
            path.mkdir(parents=True)
            attempt = RootRegistry({"attempt": path})
            expected = {
                "attempt_id": "a0476",
                "outcome": {"operational": "closed"},
                "stage_outcome": "succeeded",
                "source_validation_error": None,
            }
            attempt.write("attempt", "checkpoint.json", expected)
            attempt.seal("attempt")
            refs = RootRegistry({"work": work})
            self.assertEqual(closed_runtime_baseline(refs, "a0476"), expected)
            (path / "checkpoint.json").write_bytes(b"actual baseline corruption")
            with self.assertRaises(ValueError):
                closed_runtime_baseline(refs, "a0476")
            with self.assertRaisesRegex(ValueError, "ProofCacheRuntimeBaseline"):
                closed_runtime_baseline(object(), "a0292")

    def test_targets_are_only_fixed_recent_compilation_caches(self):
        from proof_cache_retention_recovery_v2 import PARENTS, targets

        root = Path("/synthetic/private")
        self.assertEqual(
            PARENTS,
            ("a0355", "a0357", "a0359", "a0360", "a0361", "a0366", "a0367", "a0478"),
        )
        for attempt in PARENTS:
            names = (
                ("compiled", "default-compiled")
                if attempt == "a0478"
                else ("compiled",)
            )
            self.assertEqual(
                targets(root, attempt),
                [root / "ground-lean-probe" / attempt / name for name in names],
            )

        for attempt in (
            "a0292",
            "a0114",
            "a0353",
            "a0444",
            "a0448",
            "a0455",
            "../a0448",
            "/tmp",
        ):
            with self.assertRaisesRegex(ValueError, "ProofCacheUnknownParent"):
                targets(root, attempt)

    def test_actual_bounded_inventory_rejects_source_and_symlink(self):
        from proof_cache_retention_recovery_v2 import (
            PARENTS,
            targets,
            cache_inventory,
        )

        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            for attempt in PARENTS:
                for path in targets(root, attempt):
                    path.mkdir(parents=True)
                    (path / "Module.olean").write_bytes(b"synthetic-intermediate")
            rows = cache_inventory(root)
            self.assertEqual(len(rows), 9)
            self.assertEqual(len({row["path"] for row in rows}), 9)
            extra = targets(root, PARENTS[0])[0] / "MustRetain.lean"
            extra.write_text("source")
            with self.assertRaisesRegex(ValueError, "ProofCacheUnexpectedFile"):
                cache_inventory(root)
            extra.unlink()
            link = extra.with_suffix(".olean")
            link.symlink_to("Module.olean")
            with self.assertRaisesRegex(ValueError, "BackendIrSymlink"):
                cache_inventory(root)

    def test_protected_reference_rejects_before_reader(self):
        from proof_cache_retention_recovery_v2 import run_retention

        class NoRead:
            def read(self, reference):
                raise AssertionError("protected reference must never be read")

        for name in ("parameters.bin", "compression_prover_key.bin"):
            with self.assertRaisesRegex(ValueError, "ProtectedArtifact"):
                run_retention(
                    NoRead(),
                    {"path": "synthetic/" + name},
                    {},
                    Path("/synthetic-not-created"),
                )

    def test_unknown_selector_fields_cannot_authorize_disposal(self):
        from proof_cache_retention_recovery_v2 import run_retention

        class Invalid:
            def read(self, reference):
                return {
                    "format": "core036.proof-cache-retention.v2",
                    "native_verified": True,
                }

        with self.assertRaisesRegex(ValueError, "ProofCacheSelection"):
            run_retention(
                Invalid(),
                {"path": "synthetic-selection"},
                {},
                Path("/synthetic-not-created"),
            )

    def test_ancestor_symlink_and_special_node_reject_before_archival(self):
        import os
        from proof_cache_retention_recovery_v2 import (
            PARENTS,
            targets,
            cache_inventory,
        )

        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            for attempt in PARENTS:
                for path in targets(root, attempt):
                    path.mkdir(parents=True)
                    (path / "Module.olean").write_bytes(b"synthetic-intermediate")
            node = targets(root, PARENTS[0])[0] / "special.olean"
            os.mkfifo(node)
            with self.assertRaisesRegex(ValueError, "ProofCacheSpecialNode"):
                cache_inventory(root)
            node.unlink()
            owner = targets(root, PARENTS[0])[0].parent
            moved = owner.with_name("held-synthetic")
            owner.rename(moved)
            owner.symlink_to(moved, target_is_directory=True)
            with self.assertRaisesRegex(ValueError, "V2ArtifactSymlink"):
                cache_inventory(root)

    def test_disposable_root_satisfies_existing_cleanup_scope(self):
        from types import SimpleNamespace
        from artifact_io import RootRegistry
        from owned_cleanup import OwnedCleanup
        from proof_cache_retention_recovery_v2 import disposable_root

        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            owner = SimpleNamespace(root=root, registry=RootRegistry({"private": root}))
            target = disposable_root(root, "a0450")
            target.mkdir(parents=True)
            self.assertEqual(OwnedCleanup._target(owner, target), target)
            with self.assertRaisesRegex(ValueError, "V2CleanupScope"):
                OwnedCleanup._target(owner, target.parent)
            for invalid in ("../a0450", "a0450/cache", "a0449/../../old"):
                with self.assertRaisesRegex(ValueError, "ProofCacheDisposableAttempt"):
                    disposable_root(root, invalid)

    def test_failed_recovery_record_still_restores_every_predisposal_move(self):
        from unittest.mock import patch
        from artifact_io import RootRegistry
        from proof_cache_retention_v2 import _recover_failed_move

        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            refs = RootRegistry({"private": root})
            moves = []
            for name in ("first", "second"):
                original = root / "ground" / name / "compiled"
                target = root / "disposable" / name / "compiled"
                target.mkdir(parents=True)
                (target / "Module.olean").write_bytes(name.encode())
                moves.append((original, target))
            error = RuntimeError("original kernel failure")
            with patch(
                "proof_cache_retention_v2.write_once",
                side_effect=OSError("synthetic recovery record failure"),
            ):
                with self.assertRaises(BaseExceptionGroup) as caught:
                    _recover_failed_move(
                        refs, root / "out", root / "archive.tar.gz", moves, False, error
                    )
            self.assertIs(caught.exception.exceptions[0], error)
            self.assertEqual(len(caught.exception.exceptions), 2)
            for original, target in moves:
                self.assertTrue((original / "Module.olean").is_file())
                self.assertFalse(target.exists())
