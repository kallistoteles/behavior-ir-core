"""A source-support probe can add bodies, never silently broaden its policy."""

import unittest


class ExtractionSupportTests(unittest.TestCase):
    def test_typed_seed_packet_selects_actual_row_and_error_translation_roots(self):
        from extract import extraction_roots

        self.assertEqual(
            extraction_roots("typed-seed-row"),
            [
                "crate::views::seed_row",
                "crate::views::_::into_study",
            ],
        )
        self.assertEqual(
            extraction_roots("canonical-row"), ["crate::reference::state_fact_row"]
        )
        for scope in ("typed-seed", "*", True, None):
            with self.subTest(scope=scope), self.assertRaises(ValueError):
                extraction_roots(scope)

    def test_typed_seed_methods_require_unique_actual_translated_bodies(self):
        from extract import source_support_includes, required_source_body_inventory

        patterns = [
            "crate::views::seed_row",
            "crate::views::text",
            "crate::views::_::into_study",
        ]
        self.assertEqual(
            source_support_includes({"source_support_includes": patterns}), patterns
        )
        rows = [
            dict(
                def_id=i,
                item_meta={
                    "name": [
                        {"Ident": ["transition_study036", 0]},
                        {"Ident": ["views", 0]},
                        *([{"Impl": {"Ty": {}}}] if name == "into_study" else []),
                        {"Ident": [name, 0]},
                    ]
                },
                body_present=True,
                body_form="translated",
                body_sha256="a" * 64,
            )
            for i, name in enumerate(("seed_row", "text", "into_study"))
        ]
        self.assertEqual(
            [r["function_id"] for r in required_source_body_inventory(rows, patterns)],
            [0, 1, 2],
        )
        for invalid in (
            rows[:-1],
            rows + [rows[0]],
            [{**r, "body_present": False} for r in rows],
        ):
            with self.subTest(invalid=invalid), self.assertRaises(ValueError):
                required_source_body_inventory(invalid, patterns)
        for broad in ("crate::views", "crate::views::*", "crate::views::_"):
            with self.assertRaises(ValueError):
                source_support_includes({"source_support_includes": [broad]})

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
