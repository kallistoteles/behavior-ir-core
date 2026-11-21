"""Bound actual-source component law scope and independent expanded statements."""
import unittest
from pathlib import Path


class NativeProjectionLawTests(unittest.TestCase):
    def test_three_actual_functions_and_expanded_independent_output_types(self):
        from native_projection_laws_v2 import roots

        values = roots()
        self.assertEqual(len(values), 3)
        self.assertEqual({row["declaration"].rsplit(".", 1)[-1] for row in values}, {
            "child_entity_value", "materialize_empty", "materialize_step",
        })
        for row in values:
            self.assertIn("transition_study036.views.", row["expected_type"])
            self.assertNotIn("Correspondence036.NativeProjectionLaws", row["expected_type"])
        constructor = next(row for row in values if row["id"].endswith("child_entity_value"))
        self.assertEqual(constructor["expected_type"].count("NativeJsonMapOperations.orderedInsert"), 3)
        step = next(row for row in values if row["id"].endswith("materialize_step"))
        self.assertEqual(step["expected_type"].count("NativeJsonMapOperations.orderedInsert"), 3)
        self.assertIn("row.owner", step["expected_type"])
        self.assertIn("row.phase", step["expected_type"])
        self.assertIn("Iter.mk tail", step["expected_type"])

    def test_protected_refs_and_scope_source_substitution_cannot_read_model(self):
        from native_projection_laws_v2 import SOURCE_SHA256, prepare

        class NoRead:
            def read(self, reference):
                raise AssertionError("protected reference must not be read")

        for name in ("parameters.bin", "compression_prover_key.bin"):
            with self.assertRaisesRegex(ValueError, "ProtectedArtifact"):
                prepare(NoRead(), {"path": "synthetic/" + name}, Path("/synthetic"), {})

        class Selection:
            def read(self, reference):
                return {
                    "format": "core036.native-projection-laws.v2",
                    "scope": "actual_component_under_candidate_dependencies_not_native_admission",
                    "model_ref": {"path": "synthetic/not-read.lean"},
                    "source_sha256": SOURCE_SHA256,
                    "native_proof": "unestablished",
                    "feature_complete": False,
                }

            def verify(self, reference):
                raise AssertionError("wrong component source must fail before model read")

        with self.assertRaisesRegex(ValueError, "NativeProjectionLawsSelection"):
            prepare(Selection(), {"path": "synthetic/selector"}, Path("/synthetic"), {"source_sha256": "0" * 64})
