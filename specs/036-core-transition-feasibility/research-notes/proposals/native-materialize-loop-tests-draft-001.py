"""Actual loop source conservation and independent finite-fold statement."""
from pathlib import Path
import unittest


class MaterializeLoopTests(unittest.TestCase):
    def test_original_complete_loop_is_in_conserved_component(self):
        from native_projection_component_v2 import NAMES
        self.assertIn("views.Views.impl.materialize_loop1.body", NAMES)
        self.assertIn("views.Views.impl.materialize_loop1", NAMES)
        self.assertEqual(len(NAMES), 9)

    def test_full_fold_type_independent_of_proof_aliases(self):
        from native_materialize_loop_v2 import roots
        values = roots()
        self.assertEqual(len(values), 1)
        text = values[0]["expected_type"]
        self.assertIn("List.foldl", text)
        self.assertIn("materialize_loop1 (", text)
        self.assertNotIn("materialize_loop1.body", text)
        self.assertNotIn("Correspondence036.NativeMaterializeLoop", text)
        self.assertNotIn("Correspondence036.NativeProjectionLaws", text)
        self.assertEqual(text.count("NativeJsonMapOperations.orderedInsert"), 3)
        self.assertIn("basis children", text)
        self.assertIn("Iter.mk entries", text)

    def test_protected_ref_and_body_only_component_fail_before_model_io(self):
        from native_materialize_loop_v2 import prepare, SOURCE_SHA256
        class NoRead:
            def read(self, reference):
                raise AssertionError("protected reference read")
        for name in ("parameters.bin", "compression_prover_key.bin"):
            with self.assertRaisesRegex(ValueError, "ProtectedArtifact"):
                prepare(NoRead(), {"path": "synthetic/" + name}, Path("/synthetic"), {})
        class Selection:
            def read(self, reference):
                return {"format": "core036.native-materialize-loop-laws.v2", "scope": "actual_component_under_candidate_dependencies_not_native_admission", "model_ref": {"path": "synthetic/not-read.lean"}, "source_sha256": SOURCE_SHA256, "native_proof": "unestablished", "feature_complete": False}
            def verify(self, reference):
                raise AssertionError("body-only component reached model IO")
        with self.assertRaisesRegex(ValueError, "NativeMaterializeLoopSelection"):
            prepare(Selection(), {"path": "synthetic/selector"}, Path("/synthetic"), {"source_sha256": SOURCE_SHA256, "declarations": [{"name": "views.Views.impl.materialize_loop1.body"}]})
