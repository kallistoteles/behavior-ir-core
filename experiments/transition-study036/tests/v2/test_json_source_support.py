"""Requested JSON source support must really contain both native bodies."""

import copy
import unittest

VALUE = "{impl serde_core::ser::Serialize for serde_json::value::Value}::serialize"
NUMBER = "{impl serde_core::ser::Serialize for serde_json::number::Number}::serialize"


class JsonSourceSupportTests(unittest.TestCase):
    def rows(self):
        return [
            {
                "def_id": index,
                "item_meta": {
                    "name": [{"Ident": [part, 0]} for part in prefix]
                    + [{"Impl": {"Trait": index}}, {"Ident": ["serialize", 0]}]
                },
                "body_form": "translated",
                "body_present": True,
                "body_sha256": "a" * 64,
            }
            for index, prefix in enumerate(
                [("serde_json", "value", "ser"), ("serde_json", "number")]
            )
        ]

    def test_exact_patterns_are_reviewed_without_broadening_module_policy(self):
        from extract import source_support_includes

        self.assertEqual(
            source_support_includes({"source_support_includes": [VALUE, NUMBER]}),
            [VALUE, NUMBER],
        )
        self.assertEqual(source_support_includes({}), [])
        for broad in [
            "serde_json",
            "serde_json::value",
            "serde_json::number",
            "{impl serde_core::ser::Serialize for _}::serialize",
        ]:
            with self.assertRaises(ValueError):
                source_support_includes({"source_support_includes": [broad]})

    def test_requested_bodies_are_observed_not_inferred_from_include_flags(self):
        from extract import required_source_body_inventory

        result = required_source_body_inventory(self.rows(), [VALUE, NUMBER])
        self.assertEqual({row["function_id"] for row in result}, {0, 1})
        self.assertTrue(all(row["body_sha256"] == "a" * 64 for row in result))
        self.assertTrue(all(row["status"] == "unestablished" for row in result))
        self.assertEqual(required_source_body_inventory([], []), [])

    def test_missing_opaque_wrong_or_duplicate_body_cannot_pass(self):
        from extract import required_source_body_inventory

        cases = []
        rows = self.rows()
        rows.pop()
        cases.append(rows)
        rows = self.rows()
        rows[0].update(body_form="opaque", body_present=False, body_sha256=None)
        cases.append(rows)
        rows = self.rows()
        rows[0]["item_meta"]["name"][-1] = {"Ident": ["deserialize", 0]}
        cases.append(rows)
        rows = self.rows()
        rows.append(copy.deepcopy(rows[0]))
        cases.append(rows)
        rows = self.rows()
        rows[0]["body_sha256"] = None
        cases.append(rows)
        for rows in cases:
            with self.assertRaises(ValueError):
                required_source_body_inventory(rows, [VALUE, NUMBER])


class NumberTypeSupportTests(unittest.TestCase):
    def rows(self):
        return [
            {
                "def_id": 55,
                "item_meta": {
                    "name": [
                        {"Ident": [x, 0]} for x in ["serde_json", "number", "Number"]
                    ],
                    "opacity": "Foreign",
                },
                "kind": {"Struct": [{"name": "n", "ty": {"Adt": 232}}]},
            }
        ]

    def test_exact_number_type_selector_is_reviewed(self):
        from extract import source_support_includes

        self.assertEqual(
            source_support_includes(
                {"source_support_includes": ["serde_json::number::Number"]}
            ),
            ["serde_json::number::Number"],
        )

    def test_actual_struct_kind_matters_even_with_foreign_metadata(self):
        from extract import required_source_type_inventory

        result = required_source_type_inventory(
            self.rows(), ["serde_json::number::Number"]
        )
        self.assertEqual(len(result), 1)
        self.assertEqual(result[0]["type_id"], 55)
        self.assertEqual(result[0]["status"], "unestablished")
        self.assertEqual(len(result[0]["kind_sha256"]), 64)
        self.assertEqual(required_source_type_inventory([], []), [])

    def test_opaque_absent_alias_or_ambiguous_number_cannot_pass(self):
        from extract import required_source_type_inventory

        for rows in [
            [],
            self.rows() * 2,
            [{**self.rows()[0], "kind": "Opaque"}],
            [{**self.rows()[0], "kind": {"Alias": {"Adt": 232}}}],
        ]:
            with self.assertRaises(ValueError):
                required_source_type_inventory(rows, ["serde_json::number::Number"])
