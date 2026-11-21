"""Bind emitter corrections to the actual previously compiled translator."""

from pathlib import Path
import unittest

ROOT = Path(
    "/var/tmp/behavior-ir-core036-v2/w001/tmp/nonpos-translator/a0292/workspace/aeneas/src"
)


class FrontendSourceSupportTests(unittest.TestCase):
    def sources(self):
        return {
            name: (ROOT / name).read_bytes()
            for name in ("Translate.ml", "extract/ExtractTypes.ml")
        }

    def test_only_the_two_bound_frontend_sources_are_repaired(self):
        from frontend_source_support_v2 import repair_sources, source_patch

        raw = self.sources()
        candidate = repair_sources(raw)
        self.assertEqual(set(candidate), set(raw))
        self.assertNotEqual(candidate, raw)
        patch = source_patch(raw)
        self.assertEqual(patch.count(b"--- a/"), 2)
        self.assertNotIn(b"Funs.lean", patch)

    def test_unbound_or_changed_source_is_rejected(self):
        from frontend_source_support_v2 import repair_sources

        for name in self.sources():
            raw = self.sources()
            raw[name] += b"\n"
            with self.assertRaises(ValueError):
                repair_sources(raw)
        with self.assertRaises(ValueError):
            repair_sources({})

    def test_control_uses_the_actual_emitter_function_from_each_source(self):
        from frontend_source_support_v2 import repair_sources, literal_function

        raw = self.sources()
        candidate = repair_sources(raw)
        old = literal_function(raw["extract/ExtractTypes.ml"])
        new = literal_function(candidate["extract/ExtractTypes.ml"])
        self.assertIn(b"let extract_pure_string", old)
        self.assertIn(b"Char.escaped", old)
        self.assertIn(b"let extract_pure_string", new)
        self.assertNotEqual(old, new)
        self.assertNotIn(b"let extract_str", new)
