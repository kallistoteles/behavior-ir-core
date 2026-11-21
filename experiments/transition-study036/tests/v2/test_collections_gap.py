"""Expected-type and actual captured-gap mutation controller contracts."""

import unittest
from pathlib import Path


class CollectionsGapContractTests(unittest.TestCase):
    def test_expected_roots_are_fixed_complete_and_general(self):
        from collections_gap_contract_v2 import roots

        selected = roots()
        names = {row["declaration"].rsplit(".", 1)[-1] for row in selected}
        self.assertEqual(
            names,
            {
                "render_prepend",
                "capture_render",
                "enter_roundtrip",
                "captureM_pure",
                "captureM_failure",
                "captureM_divergence",
                "front_member",
                "prepend_valid",
                "capture_valid",
                "valid_vacant_splice_order",
                "ordered_unique",
                "captureM_failure_prefix",
                "captureM_divergence_prefix",
                "occupied_ignores_default",
                "vacant_calls_default",
                "vacant_failure",
                "vacant_divergence",
                "occupied_replacement",
                "vacant_replacement",
                "keys_append",
                "length_append",
                "splice_length",
                "splice_lookup",
                "splice_order",
            },
        )
        self.assertEqual(len(selected), 24)
        self.assertEqual(len({row["id"] for row in selected}), 24)
        for row in selected:
            self.assertTrue(row["expected_type"].startswith("∀ {Key Value : Type}"))
            self.assertNotIn("axiom", row["expected_type"])
        self.assertIn(
            "transitive",
            next(
                row["expected_type"]
                for row in selected
                if row["declaration"].endswith(".splice_order")
            ),
        )

    def test_control_mutates_actual_vacant_body_and_preserves_the_occupied_body(self):
        from collections_gap_contract_v2 import controls

        source = (
            Path(__file__).resolve().parents[2]
            / "proofs/Correspondence036/Dependencies/CollectionsGap.lean"
        ).read_text()
        values = controls(source)
        self.assertEqual(len(values), 4)
        label, mutant, expected = values[0]
        self.assertEqual(
            {row[0] for row in values},
            {
                "wrong-captured-gap",
                "wrong-forward-gap",
                "wrong-comparator-failure",
                "wrong-occupied-default",
            },
        )
        self.assertEqual(label, "wrong-captured-gap")
        self.assertEqual(expected, "normalized-False")
        self.assertIn(".occupied (append front suffix) key replacement .nil", mutant)
        self.assertIn(
            "ok (current, fun replacement => .occupied front stored replacement suffix)",
            mutant,
        )
        self.assertNotIn("theorem render_prepend", mutant)
        self.assertIn("ok [1, 2, 3]", mutant)
        with self.assertRaisesRegex(ValueError, "CollectionsGapMutationPoint"):
            controls(
                source.replace(
                    "ok (current, fun replacement => .occupied front key replacement suffix)",
                    "ok (current, fun replacement => .occupied front key replacement .nil)",
                )
            )


class StringExtensionsCoexistenceTests(unittest.TestCase):
    def test_codec_and_native_api_roots_and_controls_remain_independent_lists(self):
        from native_collection_layout_probe_v2 import string_codec_specification
        from native_string_operations_v2 import (
            roots as api_roots,
            controls as api_controls,
        )

        directory = (
            Path(__file__).resolve().parents[2]
            / "proofs/Correspondence036/Dependencies"
        )
        codec_roots, codec_controls = string_codec_specification(
            (directory / "NativeStringCodec.lean").read_text()
        )
        selected_api_roots = api_roots()
        selected_api_controls = api_controls(
            (directory / "NativeStringOperations.lean").read_text()
        )
        for value in (
            codec_roots,
            codec_controls,
            selected_api_roots,
            selected_api_controls,
        ):
            self.assertIsInstance(value, list)
        self.assertEqual(
            [
                len(value)
                for value in (
                    codec_roots,
                    codec_controls,
                    selected_api_roots,
                    selected_api_controls,
                )
            ],
            [16, 1, 12, 1],
        )
        self.assertTrue(
            {row["id"] for row in codec_roots}.isdisjoint(
                {row["id"] for row in selected_api_roots}
            )
        )
        self.assertNotEqual(codec_controls[0][0], selected_api_controls[0][0])
