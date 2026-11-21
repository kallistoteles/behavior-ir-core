"""Independent complete map contracts, without native-admission claims."""

from pathlib import Path
import unittest


class JsonMapRefinementTests(unittest.TestCase):
    def test_complete_value_and_six_property_contracts_have_independent_types(self):
        from native_json_map_refinement_v2 import roots

        values = roots()
        self.assertEqual(len(values), 3)
        for row in values:
            self.assertNotIn("NativeJsonMapRefinement", row["expected_type"])
            self.assertIn(
                "transition_study036.serde_json.value.Value", row["expected_type"]
            )
            self.assertNotIn("Fin 256", row["expected_type"])
        contract = values[0]["expected_type"]
        for token in ("Pairwise", "WellFormed", "length", "lookup", "some replacement"):
            self.assertIn(token, contract)
        bridge = values[-1]["expected_type"]
        self.assertIn("CollectionsData.insert", bridge)
        self.assertIn("∀ query", bridge)
        self.assertNotIn("actual.2 = abstract.2", bridge)

    def test_protected_selection_rejects_before_any_reader(self):
        from native_json_map_refinement_v2 import prepare

        class NoRead:
            def read(self, reference):
                raise AssertionError("protected reference was read")

        for name in ("parameters.bin", "compression_prover_key.bin"):
            with self.assertRaisesRegex(ValueError, "ProtectedArtifact"):
                prepare(NoRead(), {"path": "synthetic/" + name}, Path("/synthetic"))

    def test_report_flags_cannot_grant_native_admission(self):
        from native_json_map_refinement_v2 import prepare

        class Bad:
            def read(self, reference):
                return {
                    "format": "core036.native-json-map-refinement.v2",
                    "model_ref": {},
                    "invariant_ref": {},
                    "native_proof": "proved_for_declared_subject",
                    "feature_complete": True,
                    "scope": "candidate_map_laws_only",
                }

            def verify(self, reference):
                raise AssertionError("invalid native claim reached model IO")

        with self.assertRaisesRegex(ValueError, "NativeJsonMapRefinementSelection"):
            prepare(
                Bad(),
                {
                    "root_id": "repository",
                    "path": "selector.json",
                    "bytes": 0,
                    "sha256": "0" * 64,
                },
                Path("/synthetic"),
            )
