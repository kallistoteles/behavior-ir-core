"""Reject the actual full-view source-layout/translator mismatch early."""

import unittest

from native_string_layout_source_v2 import (
    STRING_LAYOUT_TYPES,
    charon_source_flags,
)


class NativeWholeViewsProfileTests(unittest.TestCase):
    def test_actual_584_layout_profile_cannot_request_full_view_translation(self):
        from controller_v2 import artifact_context_for

        refs, _ = artifact_context_for("w001")
        config = refs.read(
            refs.reference(
                "future_evidence", "inputs/whole-views-extraction-config-002.json"
            )
        )
        self.assertEqual(config["scope"], "views-canonical")
        with self.assertRaisesRegex(ValueError, "WholeViewsRequiresAeneasPreset"):
            charon_source_flags(config)

    def test_full_view_uses_supported_preset_without_source_layout_erasure_claim(self):
        self.assertEqual(
            charon_source_flags({"scope": "views-canonical"}),
            ["--preset", "aeneas"],
        )

    def test_separate_layout_producer_retains_actual_allocator_flags(self):
        flags = charon_source_flags(
            {
                "scope": "seed-folds",
                "retain_source_allocators": True,
                "source_support_includes": list(STRING_LAYOUT_TYPES),
            }
        )
        self.assertNotIn("--preset", flags)
        self.assertNotIn("--hide-allocator", flags)
