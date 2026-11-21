"""Source inventories retain unresolved work and cannot create proof status."""

import unittest


class CorrespondenceInventoryTests(unittest.TestCase):
    def test_completion_executor_is_not_the_compiled_rust_subject(self):
        from correspondence_inventory_v2 import source_chain

        native = dict(
            format="core036.native-completion.v2",
            source_subject_ref={"revision": "executor"},
            compiled_source_subject_ref={"revision": "compiled"},
            compiled_checkpoint_ref={"attempt": "compiler"},
        )
        extraction = dict(native_source_subject_ref={"revision": "compiled"})
        config = dict(
            extraction_ref={"attempt": "extract"},
            translation_ref={"attempt": "translate"},
        )
        results = dict(
            native=native,
            extraction=extraction,
            translation=dict(original_extraction_ref=config["extraction_ref"]),
            typecheck=dict(extraction_result_ref=config["translation_ref"]),
        )
        self.assertEqual(source_chain(config, results), {"revision": "compiled"})
        for replacement in ({"revision": "executor"}, {"revision": "other"}):
            with self.assertRaisesRegex(ValueError, "SourceChain"):
                source_chain(
                    config,
                    {
                        **results,
                        "extraction": dict(native_source_subject_ref=replacement),
                    },
                )
        for bad in (
            {**native, "format": "core036.native-build.v2"},
            {k: v for k, v in native.items() if k != "compiled_checkpoint_ref"},
        ):
            with self.assertRaisesRegex(ValueError, "CompiledContext"):
                source_chain(config, {**results, "native": bad})

    def rows(self):
        return [
            dict(
                def_id=3,
                direct_function_ids=[8],
                unresolved_call_sites=[],
                body_form="translated",
            ),
            dict(
                def_id=8,
                direct_function_ids=[3, 12],
                unresolved_call_sites=[
                    {"json_pointer": "/call", "func": {"TraitMethod": 4}}
                ],
                body_form="translated",
            ),
            dict(
                def_id=12,
                direct_function_ids=[],
                unresolved_call_sites=[],
                body_form="opaque",
            ),
            dict(
                def_id=20,
                direct_function_ids=[],
                unresolved_call_sites=[],
                body_form="translated",
            ),
        ]

    def test_cycle_retains_opaque_and_indirect_edges_without_claiming_proof(self):
        from correspondence_inventory_v2 import direct_closure

        result = direct_closure(self.rows(), [3])
        self.assertEqual(result["reachable_function_ids"], [3, 8, 12])
        self.assertEqual(result["opaque_function_ids"], [12])
        self.assertEqual(
            result["unresolved_call_sites"],
            [{"caller_function_id": 8, "inventory_row": 1, "site_index": 0}],
        )
        self.assertEqual(result["semantic_status"], "unestablished")

    def test_missing_duplicate_and_boolean_ids_refuse(self):
        from correspondence_inventory_v2 import direct_closure

        for rows, roots in (
            (self.rows(), [99]),
            (self.rows() + [self.rows()[0]], [3]),
            ([{**self.rows()[0], "direct_function_ids": [99]}], [3]),
            (self.rows(), [True]),
        ):
            with self.assertRaises(ValueError):
                direct_closure(rows, roots)
