"""Build preparation must never stand in for the unchanged quality gates."""

import json
import copy
from pathlib import Path
import subprocess
import tempfile
import unittest
from unittest.mock import patch


class QualityBuildPreparationTests(unittest.TestCase):
    def test_all_compile_variants_and_consumer_are_prepared_without_running_tests(self):
        from quality_runtime_v2 import compile_preparation_commands

        plan = compile_preparation_commands(
            "/selected/cargo", "/owned/core", "/owned/target"
        )
        self.assertEqual(len(plan), 6)
        self.assertEqual(
            [r["label"] for r in plan],
            [
                "consumer",
                "workspace-clippy",
                "workspace-tests",
                "prepared-state-tests",
                "incremental-tests",
                "workspace-build",
            ],
        )
        self.assertEqual(plan[0]["target"], "/owned/target/consumer")
        for row in plan:
            self.assertEqual(row["argv"][0], "/selected/cargo")
            self.assertIn("--offline", row["argv"])
            self.assertIn("--locked", row["argv"])
            self.assertNotIn("scripts/gates.sh", " ".join(row["argv"]))
            if row["argv"][1] == "test":
                self.assertIn("--no-run", row["argv"])
        self.assertIn("--all-targets", plan[1]["argv"])
        self.assertIn("--workspace", plan[2]["argv"])
        self.assertIn("prepared_tests", plan[3]["argv"])
        self.assertIn("store::incremental::", plan[4]["argv"])
        self.assertIn("validation-work", plan[3]["argv"])
        self.assertIn("validation-work", plan[4]["argv"])

    def test_protected_or_relative_plan_paths_fail_before_any_command(self):
        from quality_runtime_v2 import compile_preparation_commands

        for cargo, core, target in [
            ("relative", "/owned/core", "/owned/target"),
            ("/selected/cargo", "/owned/parameters.bin/child", "/owned/target"),
            (
                "/selected/cargo",
                "/owned/core",
                "/owned/compression_prover_key.bin/child",
            ),
        ]:
            with self.assertRaises(ValueError):
                compile_preparation_commands(cargo, core, target)

    def run_fixture(self, fail_at):
        from quality_runtime_v2 import run_compile_preparation

        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            job = {
                "core": str(root / "core"),
                "target": str(root / "target"),
                "out": str(root),
            }
            count = 0

            def execute(argv, **kwargs):
                nonlocal count
                self.assertEqual(kwargs["cwd"], job["core"])
                self.assertIn("CARGO_TARGET_DIR", kwargs["env"])
                kwargs["stdout"].write(b"actual-unit-output\n")
                kwargs["stderr"].write(b"actual-unit-diagnostic\n")
                code = 7 if count == fail_at else 0
                count += 1
                return subprocess.CompletedProcess(argv, code)

            with patch("quality_runtime_v2.subprocess.run", side_effect=execute):
                result = run_compile_preparation(
                    job, {"tools": {"cargo": {"path": "/selected/cargo"}}}, None
                )
            self.assertIs(result["whole_gate_ran"], False)
            self.assertIs(result["quality_pass_inherited"], False)
            self.assertEqual(result["exit_code"], 7 if fail_at is not None else 0)
            self.assertEqual(count, fail_at + 1 if fail_at is not None else 6)
            self.assertEqual(len(result["commands"]), count)
            for row in result["commands"]:
                for key in ["stdout", "stderr"]:
                    ref = row[key]
                    self.assertEqual(Path(ref["path"]).stat().st_size, ref["bytes"])
            self.assertEqual(
                json.loads((root / "compile-preparation.json").read_text()), result
            )

    def test_compilation_result_cannot_claim_a_gate_pass_or_omit_work(self):
        from quality_runtime_v2 import (
            run_compile_preparation,
            validate_compile_preparation,
        )

        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            job = {
                "core": str(root / "core"),
                "target": str(root / "target"),
                "out": str(root),
            }
            spec = {"tools": {"cargo": {"path": "/selected/cargo"}}}

            def execute(argv, **kwargs):
                kwargs["stdout"].write(b"retained command output\n")
                return subprocess.CompletedProcess(argv, 0)

            with patch("quality_runtime_v2.subprocess.run", side_effect=execute):
                result = run_compile_preparation(job, spec, None)
            validate_compile_preparation(result, job, "/selected/cargo")
            for field, value in [
                ("whole_gate_ran", True),
                ("quality_pass_inherited", True),
                ("exit_code", False),
            ]:
                bad = copy.deepcopy(result)
                bad[field] = value
                with self.subTest(field=field), self.assertRaises(ValueError):
                    validate_compile_preparation(bad, job, "/selected/cargo")
            bad = copy.deepcopy(result)
            bad["commands"].pop()
            with self.assertRaises(ValueError):
                validate_compile_preparation(bad, job, "/selected/cargo")
            bad = copy.deepcopy(result)
            bad["commands"][2]["argv"].remove("--no-run")
            with self.assertRaises(ValueError):
                validate_compile_preparation(bad, job, "/selected/cargo")
            Path(result["commands"][0]["stdout"]["path"]).write_bytes(
                b"changed after execution"
            )
            with self.assertRaises(ValueError):
                validate_compile_preparation(result, job, "/selected/cargo")

    def test_every_command_is_recorded_but_no_quality_is_inherited(self):
        self.run_fixture(None)

    def test_failed_command_stops_preparation_and_is_not_relabelled_success(self):
        for index in [0, 2, 5]:
            with self.subTest(index=index):
                self.run_fixture(index)

    def test_only_the_declared_native_preparation_can_use_its_extended_clock(self):
        from native_suite_capacity_v2 import native_suite_child_seconds

        root = Path(__file__).resolve().parents[4]
        profile = json.loads(
            (
                root
                / "specs/036-core-transition-feasibility/inputs/v2/profiles/native-preparation-capacity-001.json"
            ).read_text()
        )
        self.assertEqual(
            native_suite_child_seconds(["quality-runtime-prepare"], profile), 7200
        )
        self.assertEqual(
            native_suite_child_seconds(["native-codec-controls"], profile), 3600
        )
        profile["stage"] = "Q"
        with self.assertRaises(ValueError):
            native_suite_child_seconds(["quality-runtime-prepare"], profile)
