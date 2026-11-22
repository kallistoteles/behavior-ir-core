"""Requested JSON source support must really contain both native bodies."""

import copy
import hashlib
import unittest

VALUE = "{impl serde_core::ser::Serialize for serde_json::value::Value}::serialize"
NUMBER = "{impl serde_core::ser::Serialize for serde_json::number::Number}::serialize"


class JsonSourceSupportTests(unittest.TestCase):
    def test_string_deref_requires_the_observed_native_wrapper(self):
        from extract import source_support_includes, required_source_body_inventory

        pattern = "alloc::string::_::deref"
        self.assertEqual(
            source_support_includes({"source_support_includes": [pattern]}), [pattern]
        )
        row = {
            "def_id": 29,
            "item_meta": {
                "name": [
                    {"Ident": ["alloc", 0]},
                    {"Ident": ["string", 0]},
                    {"Impl": {"Trait": 7}},
                    {"Ident": ["deref", 0]},
                ]
            },
            "body_form": "translated",
            "body_present": True,
            "body_sha256": "c" * 64,
        }
        self.assertEqual(
            required_source_body_inventory([row], [pattern])[0]["function_id"], 29
        )
        for rows in [
            [],
            [row, row],
            [{**row, "body_form": "opaque", "body_present": False}],
        ]:
            with self.subTest(rows=rows), self.assertRaises(ValueError):
                required_source_body_inventory(rows, [pattern])
        for broad in ["alloc::string", "alloc::string::_", "alloc::_::deref"]:
            with self.assertRaises(ValueError):
                source_support_includes({"source_support_includes": [broad]})

    def test_pinned_frontend_inherent_impl_glob_is_narrow_and_body_checked(self):
        from extract import source_support_includes, required_source_body_inventory

        pattern = "serde_json::value::_::as_str"
        self.assertEqual(
            source_support_includes({"source_support_includes": [pattern]}), [pattern]
        )
        row = {
            "def_id": 22,
            "item_meta": {
                "name": [
                    {"Ident": ["serde_json", 0]},
                    {"Ident": ["value", 0]},
                    {"Impl": {"Ty": {}}},
                    {"Ident": ["as_str", 0]},
                ]
            },
            "body_form": "translated",
            "body_present": True,
            "body_sha256": "b" * 64,
        }
        self.assertEqual(
            required_source_body_inventory([row], [pattern])[0]["function_id"], 22
        )
        for broad in [
            "serde_json::value::_",
            "serde_json::_::as_str",
            "serde_json::value::*",
        ]:
            with self.assertRaises(ValueError):
                source_support_includes({"source_support_includes": [broad]})

    def test_value_as_str_needs_its_actual_translated_body(self):
        from extract import source_support_includes, required_source_body_inventory

        pattern = "serde_json::value::{serde_json::value::Value}::as_str"
        self.assertEqual(
            source_support_includes({"source_support_includes": [pattern]}), [pattern]
        )
        row = {
            "def_id": 88,
            "item_meta": {
                "name": [
                    {"Ident": ["serde_json", 0]},
                    {"Ident": ["value", 0]},
                    {"Impl": {"Inherent": 1}},
                    {"Ident": ["as_str", 0]},
                ]
            },
            "body_form": "translated",
            "body_present": True,
            "body_sha256": "b" * 64,
        }
        self.assertEqual(
            required_source_body_inventory([row], [pattern])[0]["function_id"], 88
        )
        for rows in [
            [],
            [row, row],
            [{**row, "body_form": "opaque", "body_present": False}],
        ]:
            with self.subTest(rows=rows), self.assertRaises(ValueError):
                required_source_body_inventory(rows, [pattern])

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
    def test_exact_number_payload_type_is_reviewed_and_must_be_transparent(self):
        from extract import source_support_includes, required_source_type_inventory

        pattern = "serde_json::number::N"
        self.assertEqual(
            source_support_includes({"source_support_includes": [pattern]}), [pattern]
        )
        row = {
            "def_id": 56,
            "item_meta": {
                "name": [{"Ident": [x, 0]} for x in ["serde_json", "number", "N"]]
            },
            "kind": {
                "Enum": [
                    {"name": "PosInt", "fields": [{"ty": "U64"}]},
                    {"name": "NegInt", "fields": [{"ty": "I64"}]},
                    {"name": "Float", "fields": [{"ty": "F64"}]},
                ]
            },
        }
        result = required_source_type_inventory([row], [pattern])
        self.assertEqual(result[0]["type_id"], 56)
        self.assertEqual(result[0]["status"], "unestablished")
        self.assertEqual(len(result[0]["kind_sha256"]), 64)
        for rows in [
            [],
            [row, row],
            [{**row, "kind": "Opaque"}],
            [{**row, "kind": {"Struct": []}}],
            [{**row, "kind": {"Enum": row["kind"]["Enum"][:2]}}],
            [
                {
                    **row,
                    "kind": {
                        "Enum": [{**v, "fields": []} for v in row["kind"]["Enum"]]
                    },
                }
            ],
        ]:
            with self.subTest(rows=rows), self.assertRaises(ValueError):
                required_source_type_inventory(rows, [pattern])
        for broad in ["serde_json::number", "serde_json::_::N"]:
            with self.assertRaises(ValueError):
                source_support_includes({"source_support_includes": [broad]})

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


RUST = "alloc::string::{core::ops::deref::Deref<alloc::string::String, str>}::deref"
LEAN = "alloc.string.String.Insts.CoreOpsDerefDerefStr.deref"
BLOCK = (
    "/-- [native dereference] -/\n"
    '@[rust_fun\n  "' + RUST + '"]\n'
    "axiom " + LEAN + "\n  : String → Result Str\n\n"
)
TAIL = '/-- [unresolved] -/\n@[rust_fun "other"] axiom unresolved : String → Result String\n\n'


class NativeBorrowPacketTests(unittest.TestCase):
    def test_actual_types_template_gets_explicit_full_bit_float_carriers(self):
        from pathlib import Path
        from native_json_borrow_probe_v2 import complete_borrow_types

        source = Path(
            "/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0486"
            "/generated/TypesExternal_Template.lean"
        ).read_text()
        actual = complete_borrow_types(source)
        self.assertIn("public import RuntimeNames", actual)
        self.assertNotIn("axiom serde_json.map.Map", actual)
        self.assertIn("K → V → serde_json.map.Map K V", actual)
        for bad in [
            source.replace("public import Aeneas", "public import Unexpected"),
            source + "\naxiom serde_json.number.Number : Type\n",
            source + "\naxiom serde_json.number.N : Type\n",
            source + "\naxiom Aeneas.Std.F64 : Type\n",
        ]:
            with self.subTest(bad=bad), self.assertRaises(ValueError):
                complete_borrow_types(bad)

    def test_leaf_scope_does_not_assert_native_or_runtime_completion(self):
        from native_json_borrow_probe_v2 import validate_packet_scope

        packet = dict(
            format="core036.native-json-borrow-packet.v2",
            scope="source_bound_accessor_leaf_only",
            native_proof="unestablished",
            feature_complete=False,
            runtime_totality_established=False,
        )
        self.assertIsNone(validate_packet_scope(packet))
        for changed in [
            {"scope": "complete_core"},
            {"native_proof": "proved_for_declared_subject"},
            {"feature_complete": True},
            {"runtime_totality_established": True},
            {"feature_complete": 0},
            {"unexpected": True},
        ]:
            with self.subTest(changed=changed), self.assertRaises(ValueError):
                validate_packet_scope({**packet, **changed})


class NativeBorrowBindingTests(unittest.TestCase):
    def test_actual486_multiline_template_with_pinned_blocks(self):
        from pathlib import Path
        from native_borrow_bindings_v2 import bind_borrow_primitives

        source = Path(
            "/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0486"
            "/generated/FunsExternal_Template.lean"
        ).read_text()
        self.assertEqual(
            hashlib.sha256(source.encode()).hexdigest(),
            "c8425661d252ca5a367035d398e1c8eac30aa3fce8cf01b1765fdcdb91671345",
        )
        bindings = [
            dict(
                rust="alloc::string::{alloc::string::String}::as_str",
                lean="alloc.string.String.impl.as_str",
                block_bytes=342,
                block_sha256="959509a76d9e38362451a555cefbbabe88b21dbd762b202e78672df80ae6d313",
            ),
            dict(
                rust=RUST,
                lean=LEAN,
                block_bytes=462,
                block_sha256="17a8fb170d8d79117ea0e3f224ba29f1dac3650ee4552d7d4a84207b8783d308",
            ),
        ]
        remaining, definitions = bind_borrow_primitives(source, bindings)
        self.assertEqual(len(source.encode()) - len(remaining.encode()), 804)
        self.assertEqual(definitions.count("borrowResult"), 2)
        self.assertIn("axiom Str.Insts.CoreCmpPartialEqStr.eq", remaining)
        self.assertIn(
            "axiom serde_json.value.Value.Insts.CoreCloneClone.clone", remaining
        )
        self.assertEqual(source.count("axiom ") - remaining.count("axiom "), 2)

    def binding(self):
        return dict(
            rust=RUST,
            lean=LEAN,
            block_bytes=len(BLOCK.encode()),
            block_sha256=hashlib.sha256(BLOCK.encode()).hexdigest(),
        )

    def test_multiline_binding_preserves_every_unselected_byte(self):
        from native_borrow_bindings_v2 import bind_borrow_primitives

        external = "module\npublic import Aeneas\n\n" + BLOCK + TAIL
        remaining, definitions = bind_borrow_primitives(external, [self.binding()])
        self.assertEqual(remaining, "module\npublic import Aeneas\n\n" + TAIL)
        self.assertIn("def " + LEAN + " : String → Result Str :=", definitions)
        self.assertIn("Correspondence036.NativeStringBorrow.borrowResult", definitions)
        self.assertNotIn("axiom", definitions)

    def test_unknown_signature_hash_duplicate_or_extra_node_rejects(self):
        from native_borrow_bindings_v2 import bind_borrow_primitives

        external = "module\n\n" + BLOCK + TAIL
        cases = [
            (external, [{**self.binding(), "block_sha256": "0" * 64}]),
            (external, [{**self.binding(), "lean": "unresolved"}]),
            (external, [self.binding(), self.binding()]),
            (external + BLOCK, [self.binding()]),
            (
                external.replace("String → Result Str", "String → Result String"),
                [self.binding()],
            ),
            (external.replace("  : String", "  : Bool"), [self.binding()]),
            (external.replace("axiom " + LEAN, "def " + LEAN), [self.binding()]),
            ("module\n\n" + TAIL, [self.binding()]),
        ]
        for source, bindings in cases:
            with (
                self.subTest(source=source, bindings=bindings),
                self.assertRaises(ValueError),
            ):
                bind_borrow_primitives(source, bindings)
