"""Exact JSON scalar interface and copied-body mutation contracts."""

import unittest
from pathlib import Path


class NativeJsonScalarContractTests(unittest.TestCase):
    def test_full_scalar_interfaces_and_all_constructor_roots(self):
        from native_json_scalar_operations_v2 import FUNCTIONS, roots, controls

        self.assertEqual(
            FUNCTIONS,
            (
                "alloc.string.String.Insts.CoreCloneClone.clone",
                "serde_json.value.Value.Insts.CoreCloneClone.clone",
                "serde_json.value.Value.impl.as_str",
            ),
        )
        selected = roots()
        self.assertEqual(len(selected), 9)
        self.assertEqual(
            {row["declaration"].rsplit(".", 1)[-1] for row in selected},
            {
                "string_clone",
                "value_clone",
                "string_clone_bytes",
                "as_str_string",
                "as_str_null",
                "as_str_bool",
                "as_str_number",
                "as_str_array",
                "as_str_object",
            },
        )
        source = (
            Path(__file__).resolve().parents[2]
            / "proofs/Correspondence036/Dependencies/NativeJsonScalarOperations.lean"
        ).read_text()
        values = controls(source)
        self.assertEqual(
            {value[0] for value in values},
            {
                "wrong-native-string-clone",
                "wrong-native-value-clone",
                "wrong-native-json-as-str",
            },
        )
        self.assertTrue(all(value[2] == "normalized-False" for value in values))
        self.assertTrue(all("theorem value_clone" not in value[1] for value in values))
        with self.assertRaisesRegex(ValueError, "NativeJsonScalarMutationPoint"):
            controls(
                source.replace("fun value => ok value", "fun value => fail .undef", 1)
            )

    def test_protected_refs_before_read_and_unknown_selector_refusal(self):
        from native_json_scalar_operations_v2 import prepare

        class NoRead:
            def read(self, reference):
                raise AssertionError("protected data must not be read")

            def verify(self, reference):
                raise AssertionError("protected data must not be hashed")

        for name in ("parameters.bin", "compression_prover_key.bin"):
            with self.assertRaisesRegex(ValueError, "ProtectedArtifact"):
                prepare(
                    NoRead(),
                    {"path": "synthetic/" + name},
                    "",
                    "0" * 64,
                    Path("/synthetic-not-created"),
                )

        class Extra:
            def read(self, reference):
                return {
                    "format": "core036.native-json-scalar-operations.v2",
                    "model_ref": {},
                    "contract_ref": {},
                    "checked": True,
                }

        with self.assertRaisesRegex(ValueError, "NativeJsonScalarOperationsSelection"):
            prepare(
                Extra(),
                {"path": "synthetic-selection"},
                "",
                "0" * 64,
                Path("/synthetic-not-created"),
            )
