"""Exact JSON dictionary candidate interfaces and fault-control guards."""
import unittest
from pathlib import Path


class NativeJsonIndexContractTests(unittest.TestCase):
    def test_all_seven_distinct_signatures_and_eighteen_independent_roots(self):
        from native_json_index_operations_v2 import FUNCTIONS, roots, controls

        expected = {
            prefix + name
            for prefix in ("Str.Insts.Serde_jsonValueIndexIndex.", "Shared0T.Insts.Serde_jsonValueIndexIndex.")
            for name in ("index_into", "index_into_mut", "index_or_insert")
        } | {"serde_json.value.Value.Insts.CoreOpsIndexIndexIValue.index"}
        self.assertEqual(set(FUNCTIONS), expected)
        self.assertEqual(len(FUNCTIONS), 7)
        selected = roots()
        self.assertEqual(len(selected), 18)
        self.assertEqual(len({row["id"] for row in selected}), 18)
        self.assertEqual({row["declaration"].rsplit(".", 1)[-1] for row in selected}, {
            "decode_key", "read_object", "read_null", "read_bool", "read_number",
            "read_string", "read_array", "mutable_object", "mutable_roundtrip", "mutable_null",
            "shared_read", "shared_mutable", "shared_insert", "index_some", "index_none",
            "index_failure", "index_divergence", "insert_null",
        })
        source = (Path(__file__).resolve().parents[2] /
                  "proofs/Correspondence036/Dependencies/NativeJsonIndexOperations.lean").read_text()
        values = controls(source)
        self.assertEqual({row[0] for row in values}, {
            "wrong-json-read-data", "wrong-json-mutable-frame", "wrong-json-null-backward",
        })
        self.assertTrue(all(row[2] == "normalized-False" for row in values))
        self.assertTrue(all("theorem read_object" not in row[1] for row in values))
        with self.assertRaisesRegex(ValueError, "NativeJsonIndexMutationPoint"):
            controls(source.replace("ok (Correspondence036.CollectionsData.lookup owned map.data)", "ok none", 1))

    def test_protected_references_and_unknown_status_cannot_be_admitted(self):
        from native_json_index_operations_v2 import prepare

        class NoRead:
            def read(self, reference):
                raise AssertionError("protected data must not be read")

            def verify(self, reference):
                raise AssertionError("protected data must not be hashed")

        for name in ("parameters.bin", "compression_prover_key.bin"):
            with self.assertRaisesRegex(ValueError, "ProtectedArtifact"):
                prepare(NoRead(), {"path": "synthetic/" + name}, "", "0" * 64, Path("/synthetic"))

        class Extra:
            def read(self, reference):
                return {"format": "core036.native-json-index-operations.v2",
                        "model_ref": {}, "contract_ref": {}, "native_proof": "proved_for_declared_subject"}

        with self.assertRaisesRegex(ValueError, "NativeJsonIndexOperationsSelection"):
            prepare(Extra(), {"path": "synthetic-selection"}, "", "0" * 64, Path("/synthetic"))
