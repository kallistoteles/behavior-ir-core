"""Source-facing JSON map candidate contract guards."""
import unittest
from pathlib import Path


class NativeJsonMapContractTests(unittest.TestCase):
    def test_exact_interfaces_independent_specification_and_body_controls(self):
        from native_json_map_operations_v2 import FUNCTIONS, roots, controls

        self.assertEqual(FUNCTIONS, (
            "serde_json.map.MapStringValue.impl.new",
            "serde_json.map.MapStringValue.impl.insert",
        ))
        selected = roots()
        self.assertEqual(len(selected), 9)
        self.assertEqual(len({row["id"] for row in selected}), len(selected))
        self.assertEqual({row["declaration"].rsplit(".", 1)[-1] for row in selected}, {
            "write_prepend", "capture_write", "insert_spec", "empty_new", "insert_empty",
            "write_vacant", "write_occupied", "occupied_frame", "vacant_frame",
        })
        source = (Path(__file__).resolve().parents[2] /
                  "proofs/Correspondence036/Dependencies/NativeJsonMapOperations.lean").read_text()
        mutants = controls(source)
        self.assertEqual({row[0] for row in mutants}, {
            "wrong-json-map-new", "wrong-json-map-old-value", "wrong-json-map-replacement",
        })
        self.assertTrue(all(row[2] == "normalized-False" for row in mutants))
        self.assertTrue(all("theorem insert_spec" not in row[1] for row in mutants))
        with self.assertRaisesRegex(ValueError, "NativeJsonMapMutationPoint"):
            controls(source.replace("ok (result.1,", "ok (none,", 1))

    def test_protected_refs_before_io_and_unknown_field_refusal(self):
        from native_json_map_operations_v2 import prepare

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
                return {"format": "core036.native-json-map-operations.v2",
                        "model_ref": {}, "contract_ref": {}, "checked": True}

        with self.assertRaisesRegex(ValueError, "NativeJsonMapOperationsSelection"):
            prepare(Extra(), {"path": "synthetic-selection"}, "", "0" * 64, Path("/synthetic"))
