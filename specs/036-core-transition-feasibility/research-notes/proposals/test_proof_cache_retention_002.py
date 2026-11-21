"""Closed-owned proof-cache scope and real archive/inventory guards."""
import tempfile
import unittest
from pathlib import Path

class ProofCacheRetentionTests(unittest.TestCase):
    def test_targets_are_only_fixed_recent_compilation_caches(self):
        from proof_cache_retention_v2 import PARENTS, targets
        root = Path("/synthetic/private")
        self.assertEqual(len(PARENTS), 8)
        for attempt in PARENTS:
            self.assertEqual(targets(root, attempt), [root / "ground-lean-probe" / attempt / "compiled", root / "ground-lean-probe" / attempt / "default-compiled"])
        for attempt in ("a0292", "a0114", "a0353", "a0444", "../a0448", "/tmp"):
            with self.assertRaisesRegex(ValueError, "ProofCacheUnknownParent"):
                targets(root, attempt)

    def test_actual_bounded_inventory_rejects_source_and_symlink(self):
        from proof_cache_retention_v2 import PARENTS, targets, cache_inventory
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            for attempt in PARENTS:
                for path in targets(root, attempt):
                    path.mkdir(parents=True)
                    (path / "Module.olean").write_bytes(b"synthetic-intermediate")
            rows = cache_inventory(root)
            self.assertEqual(len(rows), 16)
            self.assertEqual(len({row["path"] for row in rows}), 16)
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
        from proof_cache_retention_v2 import run_retention
        class NoRead:
            def read(self, reference):
                raise AssertionError("protected reference must never be read")
        for name in ("parameters.bin", "compression_prover_key.bin"):
            with self.assertRaisesRegex(ValueError, "ProtectedArtifact"):
                run_retention(NoRead(), {"path": "synthetic/"+name}, {}, Path("/synthetic-not-created"))

    def test_unknown_selector_fields_cannot_authorize_disposal(self):
        from proof_cache_retention_v2 import run_retention
        class Invalid:
            def read(self, reference):
                return {"format": "core036.proof-cache-retention.v2", "native_verified": True}
        with self.assertRaisesRegex(ValueError, "ProofCacheSelection"):
            run_retention(Invalid(), {"path": "synthetic-selection"}, {}, Path("/synthetic-not-created"))


    def test_ancestor_symlink_and_special_node_reject_before_archival(self):
        import os
        from proof_cache_retention_v2 import PARENTS, targets, cache_inventory
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
