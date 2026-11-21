"""Checks for exact original compiler IR reuse."""

from pathlib import Path
import tempfile
import unittest


class RetranslationTests(unittest.TestCase):
    def fixture(self, folder):
        from artifact_io import digest

        raw = folder / "worker_entrypoints.llbc"
        normalized = folder / "worker_entrypoints_names.llbc"
        raw.write_bytes(b'{"name":null,"body":17}')
        normalized.write_bytes(b'{"name":"Core036LocalTraitImpl7","body":17}')
        return normalized, dict(
            extraction_exit_code=0,
            translation_exit_code=0,
            llbc_sha256=digest(raw),
            aeneas_input_sha256=digest(normalized),
            name_normalization=dict(
                raw_llbc_sha256=digest(raw), aeneas_input_sha256=digest(normalized)
            ),
        )

    def test_unchanged_closed_pair_is_used_in_place(self):
        from retranslate_v2 import checked_ir

        with tempfile.TemporaryDirectory() as directory:
            folder = Path(directory)
            normalized, result = self.fixture(folder)
            self.assertEqual(checked_ir(folder, result), normalized)

    def test_mutation_or_failed_original_is_rejected(self):
        from retranslate_v2 import checked_ir

        with tempfile.TemporaryDirectory() as directory:
            folder = Path(directory)
            normalized, result = self.fixture(folder)
            result["extraction_exit_code"] = 1
            with self.assertRaises(ValueError):
                checked_ir(folder, result)
            result["extraction_exit_code"] = 0
            normalized.write_bytes(b'{"name":"Core036LocalTraitImpl7","body":18}')
            with self.assertRaises(ValueError):
                checked_ir(folder, result)


class TranslatorRepairTests(unittest.TestCase):
    def test_exact_two_map_repairs_leave_parent_sources_unchanged(self):
        from nonpos_translator_build_v2 import repair_sources

        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            (root / "extract").mkdir()
            for name in ("Translate.ml", "extract/Extract.ml"):
                (root / name).write_text(
                    "before\nTraitDeclId.TreeMap.find_opt id ctx.trans_trait_decls\nafter\n"
                    + ("TraitDeclId.TreeMap.exists\n" if name == "Translate.ml" else "")
                )
            changed = repair_sources(root)
            self.assertEqual(set(changed), {"Translate.ml", "extract/Extract.ml"})
            self.assertIn("TraitDeclId.Map.exists", (root / "Translate.ml").read_text())
            for name in changed:
                self.assertIn("TraitDeclId.Map.find_opt", (root / name).read_text())
            with self.assertRaises(ValueError):
                repair_sources(root)

    def test_unexpected_context_refuses_before_either_write(self):
        from nonpos_translator_build_v2 import repair_sources

        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            (root / "extract").mkdir()
            good = "TraitDeclId.TreeMap.find_opt id ctx.trans_trait_decls\nTraitDeclId.TreeMap.exists"
            (root / "Translate.ml").write_text(good)
            (root / "extract/Extract.ml").write_text("unexpected")
            with self.assertRaises(ValueError):
                repair_sources(root)
            self.assertEqual((root / "Translate.ml").read_text(), good)
