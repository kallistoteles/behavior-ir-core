"""Missing unwind/drop/indirect dependencies must not disappear from the graph."""

import unittest

from llbc_inventory_v2 import body_inventory


def pointer(index):
    return {"kind": {"Fun": index}, "generics": {"types": []}}


class LlbcInventoryTests(unittest.TestCase):
    def test_opaque_is_never_a_translated_body(self):
        result = body_inventory("Opaque")
        self.assertFalse(result["body_present"])
        self.assertEqual(result["body_form"], "opaque")
        self.assertEqual(result["call_sites"], [])
        self.assertIsNone(result["body_sha256"])
        self.assertEqual(body_inventory(None)["body_form"], "absent")
        for malformed in [[], "unrecognized body sentinel", 1]:
            with self.subTest(malformed=malformed), self.assertRaises(ValueError):
                body_inventory(malformed)

    def test_unwind_drop_function_values_and_indirect_calls_are_retained(self):
        indirect = {"Regular": {"kind": {"TraitMethod": [2, "apply"]}}}
        body = {
            "statements": [
                {
                    "kind": {
                        "Call": {
                            "call": {"func": {"Regular": pointer(0)}, "args": []},
                            "on_unwind": {
                                "kind": {
                                    "Call": {"call": {"func": indirect, "args": []}}
                                }
                            },
                        }
                    }
                },
                {"kind": {"Drop": {"fn_ptr": pointer(7)}}},
                {"constant": {"FnPtr": pointer(8)}},
            ]
        }
        result = body_inventory(body, function_ids={0, 7, 8})
        self.assertEqual(len(result["call_sites"]), 2)
        self.assertEqual(result["direct_function_ids"], [0, 7, 8])
        self.assertEqual(len(result["unresolved_call_sites"]), 1)
        self.assertEqual(result["unresolved_call_sites"][0]["func"], indirect)
        self.assertIn("on_unwind", result["unresolved_call_sites"][0]["json_pointer"])
        self.assertEqual(len(result["function_references"]), 3)
        self.assertEqual(len(result["body_sha256"]), 64)
        self.assertEqual(result["classification"], "unestablished")

    def test_missing_function_and_unknown_call_target_cannot_look_complete(self):
        body = {"kind": {"Call": {"call": {"func": {"Regular": pointer(4)}}}}}
        with self.assertRaisesRegex(ValueError, "MissingFunctionDeclaration"):
            body_inventory(body, function_ids={0})
        body["kind"]["Call"]["call"]["func"] = {"UnknownTargetForm": "retained"}
        result = body_inventory(body, function_ids={0})
        self.assertEqual(len(result["unresolved_call_sites"]), 1)
        self.assertEqual(
            result["unresolved_call_sites"][0]["func"],
            {"UnknownTargetForm": "retained"},
        )
        body["kind"]["Call"]["call"].pop("func")
        with self.assertRaisesRegex(ValueError, "CallShape"):
            body_inventory(body)

    def test_function_ids_have_exact_integer_type_and_paths_escape_keys(self):
        with self.assertRaisesRegex(ValueError, "FunctionId"):
            body_inventory({"fn_ptr": pointer(True)})
        result = body_inventory({"a/b~c": {"fn_ptr": pointer(1)}}, function_ids={1})
        self.assertEqual(
            result["function_references"][0]["json_pointer"], "/a~1b~0c/fn_ptr"
        )
