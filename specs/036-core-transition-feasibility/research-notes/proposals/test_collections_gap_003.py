"""Expected-type and actual captured-gap mutation controller contracts."""
import unittest
from pathlib import Path


class CollectionsGapContractTests(unittest.TestCase):
    def test_expected_roots_are_fixed_complete_and_general(self):
        from collections_gap_contract_v2 import roots
        selected = roots()
        names = {row["declaration"].rsplit(".", 1)[-1] for row in selected}
        self.assertEqual(names, {
            "render_prepend", "capture_render", "enter_roundtrip",
            "captureM_pure", "captureM_failure", "captureM_divergence",
            "front_member", "prepend_valid", "capture_valid", "valid_vacant_splice_order",
            "ordered_unique", "captureM_failure_prefix", "captureM_divergence_prefix",
            "occupied_ignores_default", "vacant_calls_default", "vacant_failure",
            "vacant_divergence", "occupied_replacement", "vacant_replacement",
            "keys_append", "length_append", "splice_length", "splice_lookup", "splice_order",
        })
        self.assertEqual(len(selected), 24)
        self.assertEqual(len({row["id"] for row in selected}), 24)
        for row in selected:
            self.assertTrue(row["expected_type"].startswith("∀ {Key Value : Type}"))
            self.assertNotIn("axiom", row["expected_type"])
        self.assertIn("transitive", next(row["expected_type"] for row in selected if row["declaration"].endswith(".splice_order")))

    def test_control_mutates_actual_vacant_body_and_preserves_the_occupied_body(self):
        from collections_gap_contract_v2 import controls
        source = (Path(__file__).resolve().parents[2] / "proofs/Correspondence036/Dependencies/CollectionsGap.lean").read_text()
        values = controls(source)
        self.assertEqual(len(values), 1)
        label, mutant, expected = values[0]
        self.assertEqual(label, "wrong-captured-gap")
        self.assertEqual(expected, "normalized-False")
        self.assertIn(".occupied (append front suffix) key replacement .nil", mutant)
        self.assertIn("ok (current, fun replacement => .occupied front stored replacement suffix)", mutant)
        self.assertNotIn("theorem render_prepend", mutant)
        self.assertIn("ok [1, 2, 3]", mutant)
        with self.assertRaisesRegex(ValueError, "CollectionsGapMutationPoint"):
            controls(source.replace("ok (current, fun replacement => .occupied front key replacement suffix)", "ok (current, fun replacement => .occupied front key replacement .nil)"))
