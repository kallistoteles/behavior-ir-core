"""A failed compiler permits only its exact closed owned cache to be reclaimed."""

import copy
import json
from pathlib import Path
import unittest


class FailedTranslatorCacheTests(unittest.TestCase):
    def setUp(self):
        self.repository = Path(__file__).resolve().parents[4]
        self.private = Path("/var/tmp/behavior-ir-core036-v2/w001")
        self.project = (
            self.private / "disposable/frontend-translator-a0403/workspace/aeneas/src"
        )
        self.checkpoint = json.loads(
            (
                self.repository
                / "specs/036-core-transition-feasibility/evidence/v2/w001/attempts/a0403/checkpoint.json"
            ).read_text()
        )
        self.build = json.loads(
            (
                self.private / "nonpos-translator/a0403/commands/build/result.json"
            ).read_text()
        )
        result = json.loads(
            (self.private / "nonpos-translator/a0395/result.json").read_text()
        )
        self.baseline_build = next(
            row for row in result["commands"] if row["label"] == "build"
        )
        self.stderr = (
            self.private / "nonpos-translator/a0403/commands/build/stderr.txt"
        ).read_text()

    def check(self, cp=None, build=None, stderr=None, project=None):
        from failed_translator_cache_v2 import failed_target

        return failed_target(
            self.checkpoint if cp is None else cp,
            self.build if build is None else build,
            self.baseline_build,
            self.stderr if stderr is None else stderr,
            self.project if project is None else project,
            self.private,
        )

    def test_actual_closed_failure_selects_only_403_build(self):
        self.assertEqual(self.check(), self.project / "_build")

    def test_wrong_or_unclosed_attempt_and_changed_source_reject(self):
        for field, value in [
            ("attempt_id", "a0395"),
            ("stage_outcome", "succeeded"),
            ("source_validation_error", "changed"),
        ]:
            bad = copy.deepcopy(self.checkpoint)
            bad[field] = value
            with self.subTest(field=field), self.assertRaises(ValueError):
                self.check(cp=bad)
        bad = copy.deepcopy(self.checkpoint)
        bad["outcome"]["operational"] = "running"
        with self.assertRaises(ValueError):
            self.check(cp=bad)

    def test_wrong_command_exit_diagnostic_and_project_reject(self):
        for field, value in [
            ("exit_code", 0),
            ("exit_code", False),
            ("cwd", str(self.private / "sources")),
            ("argv", [*self.build["argv"][:-1], "other.exe"]),
        ]:
            bad = copy.deepcopy(self.build)
            bad[field] = value
            with self.subTest(field=field, value=value), self.assertRaises(ValueError):
                self.check(build=bad)
        for message in ["", "disk full", "late_bound appears in a successful log"]:
            with self.subTest(message=message), self.assertRaises(ValueError):
                self.check(stderr=message)
        with self.assertRaises(ValueError):
            self.check(
                project=self.private
                / "disposable/frontend-translator-a0395/workspace/aeneas/src"
            )


if __name__ == "__main__":
    unittest.main()
