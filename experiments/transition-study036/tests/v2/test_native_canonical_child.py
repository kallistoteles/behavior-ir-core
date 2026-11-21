"""Canonical source-row and incremental-view agreement controls."""

import unittest
from pathlib import Path
import tempfile

from artifact_io import RootRegistry


class NativeCanonicalChildTests(unittest.TestCase):
    def test_model_bytes_are_verified_and_scope_cannot_be_promoted(self):
        from native_canonical_child_v2 import prepare, SOURCE_SHA256

        with tempfile.TemporaryDirectory() as directory:
            source_dir = Path(directory)
            refs = RootRegistry({"case": source_dir})
            raw = b"module\npublic import NativeProjectionLaws\n"
            model = refs.write("case", "NativeCanonicalChild.lean", raw)
            selection = {
                "format": "core036.native-canonical-child-laws.v2",
                "scope": "actual_component_under_candidate_dependencies_not_native_admission",
                "model_ref": model,
                "source_sha256": SOURCE_SHA256,
                "native_proof": "unestablished",
                "feature_complete": False,
            }
            selected = refs.write("case", "selection.json", selection)
            component = {"source_sha256": SOURCE_SHA256}
            source, actual, statements = prepare(refs, selected, source_dir, component)
            self.assertEqual(source, source_dir / "NativeCanonicalChild.lean")
            self.assertEqual(actual, raw)
            self.assertEqual(len(statements), 2)
            promoted = refs.write(
                "case", "promoted.json", {**selection, "feature_complete": True}
            )
            with self.assertRaisesRegex(ValueError, "NativeCanonicalChildSelection"):
                prepare(refs, promoted, source_dir, component)
            source.write_bytes(raw + b"-- actual source mutation\n")
            with self.assertRaisesRegex(ValueError, "V2ArtifactBytes"):
                prepare(refs, selected, source_dir, component)

    def test_independent_full_types_and_input_facts(self):
        from native_canonical_child_v2 import roots

        rows = roots()
        self.assertEqual(len(rows), 2)
        self.assertEqual(len({row["id"] for row in rows}), 2)
        for row in rows:
            text = row["expected_type"]
            self.assertNotIn("Correspondence036.NativeCanonicalChild", text)
            self.assertNotIn("Correspondence036.NativeProjectionLaws", text)
            self.assertIn("reference.state_fact_row", text)
            self.assertIn("raw : transition_study036.serde_json.value.Value", text)
            self.assertIn("idBound", text)
            for field in ("id", "phase", "owner"):
                self.assertIn(field + "Read", text)
                self.assertIn('toStr "' + field + '"', text)
            self.assertEqual(text.count("NativeJsonMapOperations.orderedInsert"), 3)
        agreement = rows[1]["expected_type"]
        self.assertIn(" ∧ ", agreement)
        self.assertIn("materialize_loop1.body", agreement)
        self.assertIn("Iter.mk tail", agreement)
        self.assertIn("let updated :=", agreement)

    def test_protected_and_wrong_source_or_scope_fail_before_model_io(self):
        from native_canonical_child_v2 import prepare, SOURCE_SHA256

        class NoRead:
            def read(self, reference):
                raise AssertionError("protected reference read")

        for name in ("parameters.bin", "compression_prover_key.bin"):
            with self.assertRaisesRegex(ValueError, "ProtectedArtifact"):
                prepare(NoRead(), {"path": "synthetic/" + name}, Path("/synthetic"), {})

        class Selection:
            def read(self, reference):
                return {
                    "format": "core036.native-canonical-child-laws.v2",
                    "scope": "actual_component_under_candidate_dependencies_not_native_admission",
                    "model_ref": {"path": "synthetic/not-read.lean"},
                    "source_sha256": SOURCE_SHA256,
                    "native_proof": "unestablished",
                    "feature_complete": False,
                }

            def verify(self, reference):
                raise AssertionError("wrong source reached model IO")

        with self.assertRaisesRegex(ValueError, "NativeCanonicalChildSelection"):
            prepare(
                Selection(),
                {"path": "synthetic/selector"},
                Path("/synthetic"),
                {"source_sha256": "0" * 64},
            )
