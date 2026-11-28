"""Conserve the actual complete generated source and reject wrong bindings."""

from pathlib import Path
import re
import unittest

from native_whole_views_context_v2 import build_project


class NativeWholeViewsContextTests(unittest.TestCase):
    def test_local_imports_are_present_and_topologically_ordered(self):
        generated, sources = self.fixture()
        files, _ = build_project(generated, sources)
        available = set()
        for name, raw in files.items():
            for imported in re.findall(
                rb"(?m)^(?:public )?import ([A-Za-z_][A-Za-z0-9_.]*)", raw
            ):
                imported = imported.decode()
                if imported.split(".")[0] not in {"Aeneas", "Init", "Std", "Lean"}:
                    self.assertIn(imported, available, (name, imported))
            available.add(name)

    def test_unavailable_local_import_is_rejected_before_lean(self):
        generated, sources = self.fixture()
        sources["NativeWholeViewsMaterialize"] += b"\npublic import AbsentLocalProof\n"
        with self.assertRaisesRegex(ValueError, "WholeViewsLocalImport"):
            build_project(generated, sources)

    def fixture(self):
        from controller_v2 import artifact_context_for

        refs, _ = artifact_context_for("w001")
        root = refs.roots["private"] / "native-extraction/a0585/generated"
        generated = {
            name: refs.verify(
                refs.reference(
                    "private", str((root / name).relative_to(refs.roots["private"]))
                )
            ).read_bytes()
            for name in [
                "Types.lean",
                "Funs.lean",
                "TypesExternal_Template.lean",
                "FunsExternal_Template.lean",
            ]
        }
        source = (
            Path(__file__).resolve().parents[2]
            / "proofs/Correspondence036/Dependencies"
        )
        names = [
            "CollectionsData",
            "CollectionsInvariant",
            "CollectionsOrder",
            "NativeCollectionsData",
            "NativeJsonIterators",
            "NativeCollectionIteration",
            "NativeKeyOrder",
            "NativeStringCodec",
            "NativeStringOperations",
            "NativeWholeViewsOperations",
            "RuntimeNames",
            "NativeProjectionLaws",
            "NativeMaterializeLoop",
            "NativeWholeViewsMaterialize",
        ]
        return generated, {
            name: (source / (name + ".lean")).read_bytes() for name in names
        }

    def test_complete_generated_functions_and_types_are_byte_exact(self):
        generated, sources = self.fixture()
        files, report = build_project(generated, sources)
        self.assertEqual(files["ViewsCanonicalNames.Funs"], generated["Funs.lean"])
        self.assertEqual(files["ViewsCanonicalNames.Types"], generated["Types.lean"])
        for name in [
            b"views.Views.impl.seed",
            b"views.Views.impl.stage",
            b"views.Views.impl.apply",
            b"reference.state_facts",
        ]:
            self.assertIn(name, files["ViewsCanonicalNames.Funs"])
        self.assertEqual(report["native_proof"], "unestablished")
        self.assertEqual(
            len(report["bindings"]) + len(report["unbound_external_nodes"]), 85
        )
        self.assertIn(
            "behavior_store.Backend.keys_by_field_at.default",
            report["unbound_external_nodes"],
        )

    def test_changed_generated_program_cannot_enter_the_model(self):
        generated, sources = self.fixture()
        generated["Funs.lean"] = generated["Funs.lean"].replace(
            b'toStr "parents"', b'toStr "changed"', 1
        )
        with self.assertRaisesRegex(ValueError, "WholeViewsGeneratedSource"):
            build_project(generated, sources)

    def test_wrong_runtime_signature_is_rejected(self):
        generated, sources = self.fixture()
        sources["NativeWholeViewsOperations"] = sources[
            "NativeWholeViewsOperations"
        ].replace(
            b"String \xe2\x86\x92 Result String", b"String \xe2\x86\x92 Result Bool", 1
        )
        with self.assertRaisesRegex(ValueError, "WholeViewsPrimitiveSignature"):
            build_project(generated, sources)

    def test_store_is_retained_as_an_unestablished_external_dependency(self):
        generated, sources = self.fixture()
        files, _ = build_project(generated, sources)
        self.assertIn(
            b"axiom behavior_store.store.Store.impl.export_seed_at",
            files["ViewsCanonicalNames.FunsExternal"],
        )
