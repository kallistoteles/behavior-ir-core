"""A source-support probe can add bodies, never silently broaden its policy."""

import unittest


class ExtractionSupportTests(unittest.TestCase):
    def test_support_includes_are_explicit_and_do_not_change_the_default(self):
        from extract import source_support_includes

        self.assertEqual(source_support_includes({}), [])
        selected = ["serde_core::ser::impls", "core::io::write::Write::write_all"]
        self.assertEqual(
            source_support_includes({"source_support_includes": selected}), selected
        )

    def test_wrong_shape_duplicate_or_unreviewed_pattern_is_rejected(self):
        from extract import source_support_includes

        for value in (
            True,
            "serde_core",
            ["*"],
            ["crate"],
            ["serde_core"],
            ["serde_core::ser::impls"] * 2,
            [None],
        ):
            with self.subTest(value=value), self.assertRaises(ValueError):
                source_support_includes({"source_support_includes": value})
