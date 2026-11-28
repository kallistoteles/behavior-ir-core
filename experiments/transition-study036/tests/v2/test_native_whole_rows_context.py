"""Conserve the unified source while reusing the checked read-only abstraction."""

from pathlib import Path
import unittest

from native_whole_rows_context_v2 import SOURCES, build_project, roots


class NativeWholeRowsContextTests(unittest.TestCase):
    def fixture(self):
        from controller_v2 import artifact_context_for

        refs, _ = artifact_context_for("w001")
        generated = {
            name: refs.verify(
                refs.reference("private", "native-extraction/a0585/generated/" + name)
            ).read_bytes()
            for name in (
                "Types.lean",
                "Funs.lean",
                "TypesExternal_Template.lean",
                "FunsExternal_Template.lean",
            )
        }
        source = (
            Path(__file__).resolve().parents[2]
            / "proofs/Correspondence036/Dependencies"
        )
        return generated, {
            name: (source / (name + ".lean")).read_bytes() for name in SOURCES
        }

    def test_complete_source_and_read_proof_are_conserved(self):
        generated, sources = self.fixture()
        files, report = build_project(generated, sources)
        self.assertEqual(files["ViewsCanonicalNames.Funs"], generated["Funs.lean"])
        self.assertEqual(files["ViewsCanonicalNames.Types"], generated["Types.lean"])
        self.assertEqual(
            files["NativeCanonicalRowProofs"], sources["NativeCanonicalRowProofs"]
        )
        self.assertEqual(len(report["bindings"]), 28)
        self.assertEqual(len(report["unbound_external_nodes"]), 57)
        self.assertIn("RowAbstractionAudit", files)
        self.assertEqual(len(roots()), 18)
        self.assertEqual(
            files["NativeWholeCanonicalFold"], sources["NativeWholeCanonicalFold"]
        )
        self.assertEqual(
            files["NativeWholeTypedText"], sources["NativeWholeTypedText"]
        )
        self.assertIn("whole_typed.text_exact", {root["id"] for root in roots()})
        self.assertFalse(report["mutable_json_api_admitted"])
        self.assertEqual(report["native_proof"], "unestablished")

    def test_inactive_error_carriers_do_not_erase_store_dependencies(self):
        generated, sources = self.fixture()
        files, _ = build_project(generated, sources)
        types = files["ViewsCanonicalNames.TypesExternal"]
        for name in (b"core.io.error.Error", b"serde_json.error.Error"):
            self.assertIn(
                b"structure " + name + b" where\n  opaqueToken : List UInt8", types
            )
            self.assertNotIn(b"axiom " + name + b" : Type", types)
        self.assertIn(b"axiom behavior_store.store.Store", types)
        self.assertIn(
            b"axiom behavior_store.store.Store.impl.export_seed_at",
            files["ViewsCanonicalNames.FunsExternal"],
        )

    def test_wrong_json_read_signature_is_rejected(self):
        generated, sources = self.fixture()
        sources["NativeWholeRowOperations"] = sources[
            "NativeWholeRowOperations"
        ].replace(
            b": String \xe2\x86\x92 Result Str", b": String \xe2\x86\x92 Result Bool", 1
        )
        with self.assertRaisesRegex(ValueError, "WholeViewsPrimitiveSignature"):
            build_project(generated, sources)

    def test_missing_read_noninterference_proof_is_rejected(self):
        generated, sources = self.fixture()
        del sources["NativeCanonicalRowProofs"]
        with self.assertRaisesRegex(ValueError, "WholeRowsModelInventory"):
            build_project(generated, sources)

    def test_wrong_typed_collection_signature_is_rejected(self):
        generated, sources = self.fixture()
        sources["NativeWholeTypedOperations"] = sources[
            "NativeWholeTypedOperations"
        ].replace(b"K \xe2\x86\x92 V \xe2\x86\x92", b"K \xe2\x86\x92 Bool \xe2\x86\x92", 1)
        with self.assertRaisesRegex(ValueError, "WholeViewsPrimitiveSignature"):
            build_project(generated, sources)
