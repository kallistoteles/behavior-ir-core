"""Repair only the fake solver; keep the actual timeout test requirements."""

from pathlib import Path
import subprocess
import unittest


class QualityTimeoutFixtureTests(unittest.TestCase):
    def test_actual_pinned_rust_formatter_accepts_the_complete_test_source(self):
        from quality_timeout_fixture_v2 import replace_helper

        changed = replace_helper(self.actual()).encode()
        result = subprocess.run(
            [
                "/nix/store/6w2dzfizkrgkjz3bgb9mm8y0fb4pmizq-rust-minimal-1.98.1/bin/rustfmt",
                "--edition",
                "2024",
                "--emit",
                "stdout",
                "--config",
                "skip_children=true",
            ],
            input=changed,
            capture_output=True,
            check=False,
            timeout=20,
        )
        self.assertEqual(result.returncode, 0, result.stderr.decode())
        self.assertEqual(result.stdout, changed)

    def actual(self):
        return Path(
            "/var/tmp/behavior-ir-core036-v2/w001/sources/core-source-inline-export-002/core-reuse/crates/behavior-cli/tests/cli_trusted_governance.rs"
        ).read_text()

    def test_only_helper_construction_changes(self):
        from quality_timeout_fixture_v2 import replace_helper, HELPER_OLD, HELPER_NEW

        old = self.actual()
        new = replace_helper(old)
        self.assertEqual(old.replace(HELPER_OLD, "", 1), new.replace(HELPER_NEW, "", 1))
        self.assertIn('p["wall_clock_guard_ms"] = json!(100);', new)
        self.assertIn(
            'assert!(count >= if mode.starts_with("prefix_") { 2 } else { 1 });', new
        )
        self.assertIn(
            'for mode in ["timeout", "transport", "prefix_timeout", "prefix_transport"]',
            new,
        )
        self.assertIn("exec sleep 0.5", new)
        self.assertIn("previous complete artifact", new)
        self.assertIn("no_seed_disclosure(&o);", new)
        self.assertNotIn("import sys,time,pathlib", new)

    def test_changed_original_or_twice_patched_input_is_refused(self):
        from quality_timeout_fixture_v2 import replace_helper

        original = self.actual()
        for bad in [
            original.replace("json!(100)", "json!(200)"),
            original + "\n// changed\n",
            replace_helper(original),
        ]:
            with self.assertRaises(ValueError):
                replace_helper(bad)

    def test_patch_is_one_existing_test_source_slot(self):
        from quality_timeout_fixture_v2 import patch_bytes

        patch = patch_bytes(self.actual()).decode()
        self.assertEqual(patch.count("+++ b/"), 1)
        self.assertIn(
            "+++ b/crates/behavior-cli/tests/cli_trusted_governance.rs\n", patch
        )
        self.assertNotIn("/dev/null", patch)
        self.assertNotIn('+        p["wall_clock_guard_ms"]', patch)
