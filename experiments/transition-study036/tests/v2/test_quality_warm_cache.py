"""A stopped gate contributes cache data, never passed quality results."""

import copy
from pathlib import Path
import tempfile
import unittest


class QualityWarmCacheTests(unittest.TestCase):
    def test_only_diagnosed_closed_watch_race_stop_is_reusable(self):
        from quality_warm_cache_v3 import wall_cache_target

        cp, previous, receipt, job = self.fixture()
        cp.update(attempt_id="a0540", stage_outcome="resource_stopped")
        previous["record_id"] = "a0540"
        receipt.update(
            stop_reason="ControllerError",
            controller_error="FileNotFoundError(2, 'inotify_add_watch')",
        )
        self.assertEqual(
            wall_cache_target(cp, previous, receipt, job, Path("/owned")),
            Path(job["target"]),
        )
        for error in (None, "PermissionError", "StorageEventsLost"):
            wrong = dict(receipt, controller_error=error)
            with self.assertRaises(ValueError):
                wall_cache_target(cp, previous, wrong, job, Path("/owned"))

    def test_only_pinned_missing_utility_and_two_reviewed_sources_may_change(self):
        from quality_warm_cache_v3 import (
            check_compile_environment,
            SHARED_SOURCES,
            UTILITY_SOURCE_CHANGE,
            RIPGREP,
            RIPGREP_SHA,
        )

        before = dict(
            tools={"cargo": {"sha256": "a" * 64}},
            configurations=[],
            environment=dict(
                CARGO_TARGET_DIR="/owned/disposable/gate-a0538/target",
                TMPDIR="/owned/tmp/nix-shell-1-2",
                PATH="/compiler:/tools",
            ),
            closures={"rust": {"paths": ["selected"]}},
            sources={name: dict(bytes=7, sha256="b" * 64) for name in SHARED_SOURCES},
        )
        for name, pair in UTILITY_SOURCE_CHANGE.items():
            before["sources"][name] = dict(zip(("bytes", "sha256"), pair[0]))
        after = copy.deepcopy(before)
        after["tools"]["rg"] = dict(
            invocation=RIPGREP + "/bin/rg",
            canonical=RIPGREP + "/bin/rg",
            sha256=RIPGREP_SHA,
            bytes=6910032,
            mode=0o555,
            provider="ripgrep",
            symlinks=[],
        )
        after["closures"]["ripgrep"] = dict(
            paths=[RIPGREP],
            provider=dict(
                output=RIPGREP, derivation=None, origin="explicit-existing-output"
            ),
        )
        after["environment"]["PATH"] = (
            RIPGREP + "/bin:/compiler:" + RIPGREP + "/bin:/tools"
        )
        for name, pair in UTILITY_SOURCE_CHANGE.items():
            after["sources"][name] = dict(zip(("bytes", "sha256"), pair[1]))
        check_compile_environment(before, after)
        for section, name, value in (
            ("tools", "cargo", {}),
            ("tools", "unexpected", {}),
            ("environment", "RUSTFLAGS", "changed"),
            ("environment", "PATH", "/escape:" + after["environment"]["PATH"]),
            ("closures", "unexpected", {"paths": []}),
            ("sources", "flake.lock", {"bytes": 7, "sha256": "c" * 64}),
            ("sources", "experiments/transition-study036/shell.nix", {}),
        ):
            wrong = copy.deepcopy(after)
            wrong[section][name] = value
            with (
                self.subTest(section=section, name=name),
                self.assertRaises(ValueError),
            ):
                check_compile_environment(before, wrong)

    def test_latest_failed_owner_does_not_inherit_quality_success(self):
        from quality_warm_cache_v3 import wall_cache_target

        cp, previous, receipt, job = self.fixture()
        cp.update(attempt_id="a0539", stage_outcome="failed")
        previous["record_id"] = "a0539"
        receipt.update(exit_code=1, stop_reason=None)
        self.assertEqual(
            wall_cache_target(cp, previous, receipt, job, Path("/owned")),
            Path(job["target"]),
        )
        for key, value in (("exit_code", 0), ("stop_reason", "WallLimit")):
            wrong = dict(receipt, **{key: value})
            with self.assertRaises(ValueError):
                wall_cache_target(cp, previous, wrong, job, Path("/owned"))

    def test_rejected_actual_warm_environment_never_starts_original_gate(self):
        import json
        from unittest.mock import patch
        from quality_runtime_v2 import runtime_job, write_capture

        with tempfile.TemporaryDirectory() as directory:
            base = Path(directory)
            previous = dict(tools={"cargo": {"sha256": "a" * 64}})
            reference = write_capture(base / "previous.json", previous)
            job = base / "job.json"
            job.write_text(
                json.dumps(dict(out=str(base), mode="gate", previous_capture=reference))
            )
            spec = dict(
                format="core036.quality-shell-expectations.v2", tools={}, providers={}
            )
            with (
                patch.dict("os.environ", {"CORE036_Q_RUNTIME_SPEC": json.dumps(spec)}),
                patch(
                    "quality_runtime_v2.runtime_capture", return_value=dict(tools={})
                ),
                patch("quality_runtime_v2.subprocess.run") as run,
            ):
                with self.assertRaisesRegex(
                    ValueError, "QualityWarmCompileEnvironment"
                ):
                    runtime_job(job)
                run.assert_not_called()
            self.assertFalse((base / "result.json").exists())

    def fixture(self):
        subject = dict(
            root_id="future_evidence",
            path="subjects/r9565/manifest.json",
            bytes=1,
            sha256="a" * 64,
        )
        cp = dict(
            attempt_id="a0538",
            stage_outcome="resource_stopped",
            source_validation_error=None,
            outcome=dict(operational="closed"),
            source_subject_ref=subject,
        )
        previous = dict(
            record_id="a0538",
            stage="Q",
            slots=["canonical-quality"],
            source_subject_ref=subject,
        )
        receipt = dict(
            exit_code=-9,
            stop_reason="WallLimit",
            tree_empty=True,
            group_empty=True,
            final_storage_inventory_error=None,
            source_subject_ref=subject,
        )
        job = dict(mode="gate", target="/owned/disposable/gate-a0538/target")
        return cp, previous, receipt, job

    def test_only_exact_closed_wall_stopped_owner_is_reusable(self):
        from quality_warm_cache_v3 import wall_cache_target

        cp, previous, receipt, job = self.fixture()
        self.assertEqual(
            wall_cache_target(cp, previous, receipt, job, Path("/owned")),
            Path(job["target"]),
        )
        for obj, key, value in [
            (cp, "attempt_id", "a0169"),
            (cp, "stage_outcome", "succeeded"),
            (cp, "source_validation_error", "changed"),
            (receipt, "tree_empty", False),
            (receipt, "group_empty", False),
            (receipt, "stop_reason", "ControllerError"),
            (receipt, "final_storage_inventory_error", "lost"),
            (receipt, "source_subject_ref", {}),
            (job, "mode", "prepare"),
            (job, "target", "/owned/disposable/gate-a0169/target"),
        ]:
            original = copy.deepcopy(obj[key])
            obj[key] = value
            with self.subTest(key=key), self.assertRaises(ValueError):
                wall_cache_target(cp, previous, receipt, job, Path("/owned"))
            obj[key] = original

    def test_all_cache_files_modes_and_empty_directories_are_preserved_before_reuse(
        self,
    ):
        from quality_warm_cache_v3 import retain_cache
        from artifact_io import read
        from backend_ir_retention_v2 import _verify_archive

        with tempfile.TemporaryDirectory() as directory:
            base = Path(directory)
            target = base / "target"
            (target / "build/empty").mkdir(parents=True)
            source = target / "build/generated.rs"
            source.write_bytes(b"original generated source")
            executable = target / "test"
            executable.write_bytes(b"ELF fixture")
            executable.chmod(0o755)
            result = retain_cache(target, base / "preserved", budget=32 * 1024**2)
            inventory = read(base / "preserved/complete-inventory.json")
            self.assertEqual(result["file_count"], 2)
            self.assertTrue(source.exists())
            self.assertTrue(executable.exists())
            self.assertIn(
                dict(path="build/empty", mode=0o755), inventory["directories"]
            )
            for part in result["parts"]:
                _verify_archive(base / "preserved" / part["name"], part["files"])
            source.write_bytes(b"changed after safe retention")
            for part in result["parts"]:
                _verify_archive(base / "preserved" / part["name"], part["files"])

    def test_insufficient_peak_budget_writes_no_archive_and_changes_no_source(self):
        from quality_warm_cache_v3 import retain_cache

        with tempfile.TemporaryDirectory() as directory:
            base = Path(directory)
            target = base / "target"
            target.mkdir()
            source = target / "source.rs"
            source.write_bytes(b"original")
            with self.assertRaises(ValueError):
                retain_cache(target, base / "preserved", budget=1)
            self.assertEqual(source.read_bytes(), b"original")
            self.assertEqual(list((base / "preserved").glob("*.tar.gz")), [])

    def test_actual_compile_environment_mismatch_never_reuses_cached_quality(self):
        from quality_warm_cache_v3 import check_compile_environment
        from quality_warm_cache_v3 import SHARED_SOURCES

        before = dict(
            tools={"cargo": dict(sha256="a" * 64)},
            configurations=[],
            environment=dict(
                CARGO_TARGET_DIR="/owned/disposable/gate-a0538/target",
                RUSTFLAGS="selected",
                TMPDIR="/owned/tmp/nix-shell-1-2",
            ),
            closures={"rust": dict(paths=["selected"])},
            sources={name: dict(bytes=7, sha256="b" * 64) for name in SHARED_SOURCES},
        )
        check_compile_environment(before, copy.deepcopy(before))
        another_tmp = copy.deepcopy(before)
        another_tmp["environment"]["TMPDIR"] = "/owned/tmp/nix-shell-3-4"
        check_compile_environment(before, another_tmp)
        another_tmp["environment"]["TMPDIR"] = "/outside/nix-shell-3-4"
        with self.assertRaises(ValueError):
            check_compile_environment(before, another_tmp)
        for key, value in [
            ("tools", {}),
            ("configurations", [dict(changed=True)]),
            ("environment", {}),
            ("sources", {}),
        ]:
            wrong = copy.deepcopy(before)
            wrong[key] = value
            with self.subTest(key=key), self.assertRaises(ValueError):
                check_compile_environment(before, wrong)
