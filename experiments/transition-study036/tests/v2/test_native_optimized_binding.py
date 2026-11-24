"""The optimized oracle and workers must expose the same checked build profile."""

import copy
import unittest
from pathlib import Path


class OptimizedBindingTests(unittest.TestCase):
    def test_target_dependencies_cannot_silently_use_unoptimized_profiles(self):
        from native_optimized_binding_v2 import select_optimized_dependency_units

        row = self.artifact()
        row.update(
            package_id="actual-core-package",
            target={"kind": ["lib"], "name": "behavior_engine"},
            filenames=["/target/platform/release/deps/libbehavior_engine.rlib"],
            executable=None,
        )
        packages = [{"id": "actual-core-package", "name": "behavior-engine"}]
        root = Path("/target/platform/release")
        self.assertEqual(
            select_optimized_dependency_units([row], packages, root), [row]
        )
        host = {**row, "filenames": ["/target/release/deps/libbehavior_engine.rlib"]}
        self.assertEqual(
            select_optimized_dependency_units([host, row], packages, root), [row]
        )
        for rows in [
            [host],
            [row, row],
            [{**row, "package_id": "other"}],
            [{**row, "profile": {**row["profile"], "opt_level": "0"}}],
            [{**row, "profile": {**row["profile"], "overflow_checks": False}}],
        ]:
            with self.subTest(rows=rows), self.assertRaises(ValueError):
                select_optimized_dependency_units(rows, packages, root)

    def artifact(self, oracle=False):
        name = "transition036-oracle" if oracle else "transition036-reuse"
        return {
            "reason": "compiler-artifact",
            "package_id": "fixture-package",
            "target": {
                "kind": ["bin"],
                "name": name,
                "src_path": "/fixture/oracle/src/main.rs"
                if oracle
                else "/fixture/src/bin/reuse.rs",
            },
            "features": [] if oracle else ["worker"],
            "executable": "/target/platform/release/" + name,
            "filenames": ["/target/platform/release/" + name],
            "profile": {
                "opt_level": "3",
                "debuginfo": 0,
                "debug_assertions": True,
                "overflow_checks": True,
                "test": False,
            },
            "fresh": False,
        }

    def test_only_fixed_checked_optimized_profile_is_selected(self):
        from native_optimized_binding_v2 import BUILD_PROFILE, selected_profile

        self.assertEqual(selected_profile(None), None)
        self.assertEqual(selected_profile(copy.deepcopy(BUILD_PROFILE)), BUILD_PROFILE)
        for key, value in [
            ("format", "core036.native-optimization.v1"),
            ("opt_level", "0"),
            ("debug_assertions", False),
            ("overflow_checks", False),
            ("cargo_profile", "dev"),
            ("artifact_directory", "debug"),
            ("extra", True),
        ]:
            bad = {**BUILD_PROFILE, key: value}
            with self.subTest(key=key), self.assertRaises(ValueError):
                selected_profile(bad)

    def test_actual_oracle_and_worker_units_need_matching_checked_profiles(self):
        from native_optimized_binding_v2 import select_optimized_bin_artifact

        for oracle in [False, True]:
            row = self.artifact(oracle)
            args = (
                row["package_id"],
                row["target"]["name"],
                Path(row["target"]["src_path"]),
                Path(row["executable"]),
            )
            self.assertEqual(
                select_optimized_bin_artifact([row], *args, oracle=oracle), row
            )
            for field, value in [
                ("features", ["worker"] if oracle else []),
                ("fresh", True),
                ("executable", None),
                ("profile", {**row["profile"], "opt_level": "0"}),
                ("profile", {**row["profile"], "debug_assertions": False}),
                ("profile", {**row["profile"], "overflow_checks": False}),
            ]:
                with (
                    self.subTest(oracle=oracle, field=field),
                    self.assertRaises(ValueError),
                ):
                    select_optimized_bin_artifact(
                        [{**row, field: value}], *args, oracle=oracle
                    )
            with self.assertRaises(ValueError):
                select_optimized_bin_artifact([row, row], *args, oracle=oracle)

    def trace(self, row):
        argv = [
            "--crate-name",
            row["target"]["name"].replace("-", "_"),
            row["target"]["src_path"],
            "--crate-type",
            "bin",
            "--edition=2024",
            "--target",
            "x86_64-unknown-linux-gnu",
            "-C",
            "target-cpu=x86-64",
            "-C",
            "opt-level=3",
            "-C",
            "debug-assertions=on",
            "-C",
            "overflow-checks=on",
        ]
        for feature in row["features"]:
            argv += ["--cfg", 'feature="' + feature + '"']
        return {
            "format": "core036.rustc-invocation.v2",
            "compiler": "/pinned/rustc",
            "cwd": "/fixture",
            "argv": argv,
        }

    def test_actual_rustc_flags_and_exact_role_cfg_are_required(self):
        from native_optimized_binding_v2 import match_optimized_compiler_trace

        for oracle in [False, True]:
            row = self.artifact(oracle)
            trace = self.trace(row)
            args = (row, "/pinned/rustc", "x86_64-unknown-linux-gnu")
            self.assertEqual(
                match_optimized_compiler_trace([trace], *args, oracle=oracle), trace
            )
            repeated = {
                **trace,
                "argv": [*trace["argv"], "-C", "debug-assertions=on"],
            }
            self.assertEqual(
                match_optimized_compiler_trace([repeated], *args, oracle=oracle),
                repeated,
            )
            mutations = [
                [x.replace("opt-level=3", "opt-level=0") for x in trace["argv"]],
                [
                    x.replace("debug-assertions=on", "debug-assertions=off")
                    for x in trace["argv"]
                ],
                [
                    x.replace("overflow-checks=on", "overflow-checks=off")
                    for x in trace["argv"]
                ],
                [*trace["argv"], "-C", "opt-level=0"],
                [*trace["argv"], "--cfg", 'feature="unexpected"'],
                [x.replace("x86_64-unknown-linux-gnu", "other") for x in trace["argv"]],
                [
                    x.replace(row["target"]["src_path"], "/other/source.rs")
                    for x in trace["argv"]
                ],
            ]
            if oracle:
                mutations.append([*trace["argv"], "--cfg", 'feature="worker"'])
            else:
                mutations.append([x for x in trace["argv"] if x != 'feature="worker"'])
            for argv in mutations:
                with (
                    self.subTest(oracle=oracle, argv=argv),
                    self.assertRaises(ValueError),
                ):
                    match_optimized_compiler_trace(
                        [{**trace, "argv": argv}], *args, oracle=oracle
                    )
            with self.assertRaises(ValueError):
                match_optimized_compiler_trace([trace, trace], *args, oracle=oracle)
