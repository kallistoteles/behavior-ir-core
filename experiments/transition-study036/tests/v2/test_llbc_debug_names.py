"""Namespace avoidance may change debug hints, never executable LLBC data."""

import copy
import unittest


def fixture():
    return {
        "translated": {
            "trait_impls": [],
            "type_decls": [
                {
                    "item_meta": {
                        "name": [
                            {"Ident": ["test", 0]},
                            {"Ident": ["error", 0]},
                            {"Ident": ["Failure", 0]},
                        ]
                    }
                }
            ],
            "fun_decls": [
                {
                    "def_id": 1,
                    "item_meta": {
                        "is_local": True,
                        "name": [
                            {"Ident": ["test", 0]},
                            {"Ident": ["error", 0]},
                            {"Ident": ["exit", 0]},
                        ],
                    },
                    "body": {
                        "Structured": {
                            "locals": {
                                "arg_count": 1,
                                "locals": [
                                    {"index": 0, "name": None, "ty": "u8"},
                                    {"index": 1, "name": "error", "ty": "Failure"},
                                    {"index": 2, "name": "v1", "ty": "u64"},
                                ],
                            },
                            "body": {"Return": 1, "literal": "error"},
                        }
                    },
                }
            ],
        }
    }


class DebugNameTests(unittest.TestCase):
    def test_actual_intrinsic_shape_is_retained_and_not_permission_to_edit_it(self):
        from llbc_names_v2 import (
            normalize_namespace_debug_names,
            verify_namespace_debug_normalization,
        )

        original = fixture()
        intrinsic = {
            "Intrinsic": {
                "name": "add_with_overflow",
                "arg_names": ["x", "y"],
                "fallback": None,
                "fallback_is_spec": False,
            }
        }
        original["translated"]["fun_decls"].append(
            {
                "def_id": 2,
                "item_meta": {
                    "name": [{"Ident": ["core", 0]}, {"Ident": ["intrinsics", 0]}]
                },
                "body": intrinsic,
            }
        )
        normalized, receipt = normalize_namespace_debug_names(original)
        self.assertEqual(normalized["translated"]["fun_decls"][1]["body"], intrinsic)
        verify_namespace_debug_normalization(original, normalized, receipt)
        for key, value in [
            ("name", "sub_with_overflow"),
            ("arg_names", ["y", "x"]),
            ("fallback_is_spec", True),
        ]:
            changed = copy.deepcopy(normalized)
            changed["translated"]["fun_decls"][1]["body"]["Intrinsic"][key] = value
            with self.subTest(key=key), self.assertRaises(ValueError):
                verify_namespace_debug_normalization(original, changed, receipt)

    def test_namespace_hint_changes_without_mutating_input_or_statements(self):
        from llbc_names_v2 import (
            normalize_namespace_debug_names,
            verify_namespace_debug_normalization,
        )

        original = fixture()
        pristine = copy.deepcopy(original)
        normalized, receipt = normalize_namespace_debug_names(original)
        self.assertEqual(original, pristine)
        before = original["translated"]["fun_decls"][0]["body"]["Structured"]
        after = normalized["translated"]["fun_decls"][0]["body"]["Structured"]
        self.assertNotIn(after["locals"]["locals"][1]["name"], {"error", "v1"})
        self.assertEqual(after["body"], before["body"])
        self.assertEqual(receipt["native_correspondence"], "unestablished")
        self.assertTrue(receipt["debug_local_changes"])
        verify_namespace_debug_normalization(original, normalized, receipt)

    def test_names_are_not_permission_to_change_ids_types_literals_or_globals(self):
        from llbc_names_v2 import (
            normalize_namespace_debug_names,
            verify_namespace_debug_normalization,
        )

        original = fixture()
        normalized, receipt = normalize_namespace_debug_names(original)
        for mutation in [
            "id",
            "type",
            "literal",
            "statement",
            "global",
            "unscheduled_hint",
        ]:
            changed = copy.deepcopy(normalized)
            body = changed["translated"]["fun_decls"][0]["body"]["Structured"]
            if mutation == "id":
                body["locals"]["locals"][1]["index"] = 2
            elif mutation == "type":
                body["locals"]["locals"][1]["ty"] = "u64"
            elif mutation == "literal":
                body["body"]["literal"] = "renamed data"
            elif mutation == "statement":
                body["body"]["Return"] = 0
            elif mutation == "global":
                changed["translated"]["type_decls"][0]["item_meta"]["name"][1]["Ident"][
                    0
                ] = "other"
            else:
                body["locals"]["locals"][2]["name"] = "other"
            with self.subTest(mutation=mutation), self.assertRaises(ValueError):
                verify_namespace_debug_normalization(original, changed, receipt)

    def test_old_default_still_forbids_debug_name_edits(self):
        from llbc_names_v2 import (
            normalize_local_impl_names,
            verify_name_only_normalization,
        )

        original = fixture()
        normalized, receipt = normalize_local_impl_names(original)
        self.assertEqual(normalized, original)
        normalized["translated"]["fun_decls"][0]["body"]["Structured"]["locals"][
            "locals"
        ][1]["name"] = "fresh"
        with self.assertRaises(ValueError):
            verify_name_only_normalization(original, normalized, receipt)
