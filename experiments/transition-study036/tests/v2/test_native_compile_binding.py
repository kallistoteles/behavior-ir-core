"""Compile-unit evidence is stricter than a resolved package graph."""

import copy
import tempfile
import unittest
from unittest.mock import patch
from pathlib import Path


class NativeCompileBindingTests(unittest.TestCase):
    def test_completion_audit_rejects_changed_materialized_bytes(self):
        from artifact_io import RootRegistry
        from native_unit_completion_481_v2 import verify_materialized

        with tempfile.TemporaryDirectory() as raw:
            root = Path(raw)
            names = [
                "Cargo.toml",
                "Cargo.lock",
                "build-identity.json",
                "oracle/Cargo.toml",
                "oracle/Cargo.lock",
            ]
            for name in names:
                path = root / name
                path.parent.mkdir(parents=True, exist_ok=True)
                path.write_bytes(b"original")
            registry = RootRegistry({"worker": root})
            inventory = [
                {
                    k: v
                    for k, v in registry.reference("worker", name).items()
                    if k != "root_id"
                }
                for name in names
            ]
            verify_materialized(root, inventory)
            (root / "Cargo.toml").write_bytes(b"changed!")
            with self.assertRaises(ValueError):
                verify_materialized(root, inventory)

    def test_completion_audit_protected_name_precedes_reference_io(self):
        from native_unit_completion_481_v2 import verify_materialized

        with (
            tempfile.TemporaryDirectory() as raw,
            patch("artifact_io.RootRegistry.verify") as reader,
        ):
            with self.assertRaisesRegex(ValueError, "ProtectedArtifact"):
                verify_materialized(
                    Path(raw),
                    [{"path": "parameters.bin", "bytes": 0, "sha256": "0" * 64}],
                )
            reader.assert_not_called()

    def test_host_and_target_json_units_remain_distinct(self):
        from native_compile_binding_v2 import select_json_artifact

        target = self.artifact()
        target.update(
            package_id="json-package",
            target={"kind": ["lib"], "name": "serde_json"},
            features=["arbitrary_precision", "default", "std", "unbounded_depth"],
            filenames=[
                "/target/x86_64-unknown-linux-gnu/debug/deps/libserde_json-target.rlib"
            ],
        )
        host = {
            **target,
            "features": ["default", "std"],
            "filenames": ["/target/debug/deps/libserde_json-host.rlib"],
        }
        self.assertEqual(
            select_json_artifact(
                [target, host], "json-package", Path("/target/x86_64-unknown-linux-gnu")
            ),
            target,
        )
        with self.assertRaises(ValueError):
            select_json_artifact(
                [host], "json-package", Path("/target/x86_64-unknown-linux-gnu")
            )
        with self.assertRaises(ValueError):
            select_json_artifact(
                [target, target, host],
                "json-package",
                Path("/target/x86_64-unknown-linux-gnu"),
            )

    def artifact(self):
        return {
            "reason": "compiler-artifact",
            "package_id": "path+file:///fixture#transition-study036@0.1.0",
            "target": {
                "kind": ["bin"],
                "name": "transition036-reuse",
                "src_path": "/fixture/src/bin/reuse.rs",
            },
            "features": ["worker"],
            "executable": "/target/debug/transition036-reuse",
            "filenames": ["/target/debug/transition036-reuse"],
            "profile": {
                "opt_level": "0",
                "debuginfo": 0,
                "debug_assertions": True,
                "overflow_checks": True,
                "test": False,
            },
            "fresh": False,
        }

    def test_exact_native_bin_unit_is_required(self):
        from native_compile_binding_v2 import select_bin_artifact

        row = self.artifact()
        args = (
            row["package_id"],
            "transition036-reuse",
            Path(row["target"]["src_path"]),
            Path(row["executable"]),
        )
        self.assertEqual(select_bin_artifact([row], *args), row)
        for key, value in (
            ("features", []),
            ("executable", None),
            ("fresh", True),
            ("profile", {**row["profile"], "test": True}),
        ):
            bad = copy.deepcopy(row)
            bad[key] = value
            with self.subTest(key=key), self.assertRaises(ValueError):
                select_bin_artifact([bad], *args)
        bad = copy.deepcopy(row)
        bad["target"]["kind"] = ["lib"]
        with self.assertRaises(ValueError):
            select_bin_artifact([bad], *args)
        with self.assertRaises(ValueError):
            select_bin_artifact([row, row], *args)

    def test_json_representation_features_are_checked_on_actual_units(self):
        from native_compile_binding_v2 import check_json_unit

        row = {
            **self.artifact(),
            "target": {
                "kind": ["lib"],
                "name": "serde_json",
                "src_path": "/registry/serde_json/src/lib.rs",
            },
            "features": ["default", "std", "unbounded_depth"],
        }
        check_json_unit(row)
        for feature in (
            "arbitrary_precision",
            "preserve_order",
            "float_roundtrip",
            "raw_value",
        ):
            with self.subTest(feature=feature), self.assertRaises(ValueError):
                check_json_unit({**row, "features": [*row["features"], feature]})

    def test_cargo_config_cannot_be_inherited_implicitly(self):
        from native_compile_binding_v2 import configuration_inventory

        with tempfile.TemporaryDirectory() as raw:
            root = Path(raw)
            worker = root / "a/worker"
            cargo = root / "cargo"
            worker.mkdir(parents=True)
            cargo.mkdir()
            self.assertEqual(configuration_inventory(worker, cargo), [])
            hidden = root / "a/.cargo"
            hidden.mkdir()
            (hidden / "config.toml").write_text('[build]\ntarget="other"\n')
            with self.assertRaisesRegex(ValueError, "ImplicitCargoConfiguration"):
                configuration_inventory(worker, cargo)

    def test_effective_compiler_trace_requires_target_source_and_worker_cfg(self):
        from native_compile_binding_v2 import match_compiler_trace

        row = self.artifact()
        argv = [
            "--crate-name",
            "transition036_reuse",
            row["target"]["src_path"],
            "--crate-type",
            "bin",
            "--edition=2024",
            "--target",
            "x86_64-unknown-linux-gnu",
            "--cfg",
            'feature="worker"',
            "-C",
            "target-cpu=x86-64",
        ]
        trace = {
            "format": "core036.rustc-invocation.v2",
            "compiler": "/pinned/rustc",
            "argv": argv,
            "cwd": "/fixture",
        }
        self.assertEqual(
            match_compiler_trace(
                [trace], row, "/pinned/rustc", "x86_64-unknown-linux-gnu"
            ),
            trace,
        )
        for changed in (
            [x for x in argv if x != 'feature="worker"'],
            [x.replace("reuse.rs", "reference.rs") for x in argv],
            [x.replace("x86_64-unknown-linux-gnu", "other") for x in argv],
        ):
            with self.subTest(changed=changed), self.assertRaises(ValueError):
                match_compiler_trace(
                    [{**trace, "argv": changed}],
                    row,
                    "/pinned/rustc",
                    "x86_64-unknown-linux-gnu",
                )
