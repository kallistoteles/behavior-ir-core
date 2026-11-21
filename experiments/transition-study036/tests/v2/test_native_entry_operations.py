"""Controller contracts for exact entry/default candidate API bindings."""

import unittest
from pathlib import Path


class NativeEntryOperationContractTests(unittest.TestCase):
    def test_fixed_actual_functions_and_general_roots(self):
        from native_entry_operations_v2 import FUNCTIONS, roots, controls

        self.assertEqual(
            FUNCTIONS,
            (
                "alloc.collections.btree.map.BTreeMap.impl.entry",
                "alloc.collections.btree.map.entry.Entry.impl.or_default",
            ),
        )
        selected = roots()
        self.assertEqual(len(selected), 6)
        self.assertEqual(
            {row["declaration"].rsplit(".", 1)[-1] for row in selected},
            {
                "decode_encode",
                "encode_decode",
                "render_encode",
                "or_default_gap",
                "entry_captured",
                "backward_render",
            },
        )
        self.assertTrue(
            all(row["expected_type"].startswith("∀ {K V A : Type}") for row in selected)
        )
        source = (
            Path(__file__).resolve().parents[2]
            / "proofs/Correspondence036/Dependencies/NativeEntryOperations.lean"
        ).read_text()
        mutations = controls(source)
        self.assertEqual(
            {row[0] for row in mutations},
            {
                "wrong-native-entry-default",
                "wrong-native-entry-gap",
                "wrong-native-entry-forward",
            },
        )
        self.assertTrue(all(row[2] == "normalized-False" for row in mutations))
        self.assertTrue(
            all("theorem or_default_gap" not in row[1] for row in mutations)
        )
        self.assertTrue(
            all("serde_json.value.Value.Null" in row[1] for row in mutations)
        )

    def test_reject_protected_reference_before_any_read_and_unknown_selector_fields(
        self,
    ):
        from native_entry_operations_v2 import prepare

        class NoRead:
            def read(self, reference):
                raise AssertionError("protected reference must not be read")

            def verify(self, reference):
                raise AssertionError("protected reference must not be hashed")

        for name in ("parameters.bin", "compression_prover_key.bin"):
            with self.assertRaisesRegex(ValueError, "ProtectedArtifact"):
                prepare(
                    NoRead(),
                    {"path": "synthetic/" + name},
                    "",
                    "0" * 64,
                    Path("/synthetic-not-created"),
                )

        class ExtraField:
            def read(self, reference):
                return {
                    "format": "core036.native-entry-operations.v2",
                    "model_ref": {},
                    "contract_ref": {},
                    "checked": True,
                }

        with self.assertRaisesRegex(ValueError, "NativeEntryOperationsSelection"):
            prepare(
                ExtraField(),
                {"path": "synthetic-selection"},
                "",
                "0" * 64,
                Path("/synthetic-not-created"),
            )
