"""The main exact exporter must select a patch over existing source slots."""

from pathlib import Path
import re
import tomllib
import unittest


class CoreSpanExportTests(unittest.TestCase):
    def test_real_core_span_controls_are_registered_for_cargo(self):
        root = Path(__file__).resolve().parents[2]
        manifest = tomllib.loads((root / "Cargo.toml").read_text())
        targets = {target["name"] for target in manifest["test"]}
        self.assertTrue(
            {"v2_core_spans", "v2_core_span_clock_faults", "v2_core_operation_spans"}
            <= targets,
            "CoreSpanControlsMustEnterTheNativeCargoGate",
        )

    def test_candidate_selects_inline_patch_without_new_source_paths(self):
        import sources

        patches = sources.reviewed_patches()
        self.assertTrue(
            patches[-1]["path"].endswith("/v2/core-phase-spans-inline.patch"),
            "MainCandidateMustSelectCheckedCoreSpanPatch",
        )
        patch = Path(patches[-1]["path"]).read_text()
        self.assertNotIn("/dev/null", patch)
        changed = re.findall(r"^\+\+\+ b/(.+)$", patch, re.M)
        self.assertEqual(
            changed,
            [
                "crates/behavior-core/src/eval/work.rs",
                "crates/behavior-store/src/store.rs",
            ],
        )
        selected = set(sources.selected_paths_v2(sources.ROOT, sources.CORE_REV))
        self.assertTrue(set(changed) <= selected)
        self.assertIn("+pub mod research036_spans {", patch)
        self.assertIn("research036_begin_spans", patch)
        self.assertIn("research036_take_spans", patch)
