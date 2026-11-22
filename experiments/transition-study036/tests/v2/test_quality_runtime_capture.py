"""Fresh canonical quality binds its evaluated tools, not host overrides."""

from pathlib import Path
import unittest


class QualityRuntimeCaptureTests(unittest.TestCase):
    def test_failed_capture_keeps_evaluated_spec_and_never_starts_gate(self):
        import json
        import tempfile
        from unittest.mock import patch
        from quality_runtime_v2 import runtime_job

        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            job = root / "job.json"
            job.write_text(json.dumps(dict(out=str(root), mode="gate")))
            spec = dict(
                format="core036.quality-shell-expectations.v2", providers={}, tools={}
            )
            with (
                patch.dict("os.environ", {"CORE036_Q_RUNTIME_SPEC": json.dumps(spec)}),
                patch(
                    "quality_runtime_v2.runtime_capture",
                    side_effect=ValueError("rejected actual selection"),
                ),
                patch("quality_runtime_v2.subprocess.run") as run,
            ):
                with self.assertRaises(ValueError):
                    runtime_job(job)
                run.assert_not_called()
            self.assertEqual(
                json.loads((root / "evaluated-spec.json").read_text()), spec
            )
            self.assertFalse((root / "result.json").exists())

    def test_different_derivers_must_both_claim_exact_selected_output(self):
        from quality_runtime_v2 import validate_provider_outputs

        output = "/nix/store/fixture-selected-output"
        provider = dict(output=output, derivation="/nix/store/fixture-evaluated.drv")
        observed = "/nix/store/fixture-registered.drv"
        claims = dict(evaluated=[output], registered=[output])
        validate_provider_outputs(provider, observed, claims)
        for wrong in [
            dict(evaluated=[output]),
            dict(evaluated=[output], registered=["/nix/store/other"]),
            dict(evaluated=["/nix/store/other"], registered=[output]),
        ]:
            with self.assertRaises(ValueError):
                validate_provider_outputs(provider, observed, wrong)
        validate_provider_outputs(provider, "unknown-deriver", dict(evaluated=[output]))
        validate_provider_outputs(
            dict(output=output, derivation=None), observed, dict(registered=[output])
        )

    def test_configuration_search_covers_consumer_and_every_ancestor(self):
        from quality_runtime_v2 import applicable_configurations

        paths = applicable_configurations("/owned/core", "/owned/cargo")
        self.assertEqual(len(paths), len(set(paths)))
        for path in [
            "/owned/core/consumer/.cargo/config.toml",
            "/owned/core/.cargo/config",
            "/owned/.cargo/config.toml",
            "/.cargo/config",
            "/owned/cargo/config.toml",
        ]:
            self.assertIn(Path(path), paths)

    def test_source_snapshot_rejects_changed_bytes_and_protected_parent(self):
        import hashlib
        import tempfile
        from quality_runtime_v2 import source_snapshot

        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / "script"
            path.write_bytes(b"original")
            reference = dict(
                path=str(path), bytes=8, sha256=hashlib.sha256(b"original").hexdigest()
            )
            self.assertEqual(
                source_snapshot({"script": reference}), {"script": reference}
            )
            path.write_bytes(b"modified")
            with self.assertRaises(ValueError):
                source_snapshot({"script": reference})
            with self.assertRaisesRegex(ValueError, "ProtectedArtifact"):
                source_snapshot(
                    {
                        "script": {
                            **reference,
                            "path": str(Path(directory) / "parameters.bin" / "leaf"),
                        }
                    }
                )

    def test_executable_resolution_preserves_invocation_name_and_rejects_escape(self):
        import os
        import tempfile
        from quality_runtime_v2 import executable_identity

        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            package = root / "package"
            package.mkdir()
            executable = package / "real"
            executable.write_bytes(b"fixture executable")
            executable.chmod(0o755)
            alias = package / "invocation"
            alias.symlink_to("real")
            value = executable_identity(alias, [package])
            self.assertEqual(value["invocation"], str(alias))
            self.assertEqual(value["canonical"], str(executable))
            self.assertEqual(value["bytes"], 18)
            outside = root / "outside"
            outside.write_bytes(b"x")
            outside.chmod(0o755)
            alias.unlink()
            alias.symlink_to(outside)
            with self.assertRaises(ValueError):
                executable_identity(alias, [package])
            accepted = executable_identity(alias, [package, outside])
            self.assertEqual(accepted["canonical"], str(outside))
            self.assertEqual(accepted["invocation"], str(alias))
            del os

    def test_applicable_cargo_configs_include_absence_and_reject_mutation(self):
        import tempfile
        from quality_runtime_v2 import configuration_snapshot

        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            absent = root / "absent.toml"
            present = root / "config.toml"
            present.write_text("[net]\noffline = true\n")
            before = configuration_snapshot([present, absent])
            self.assertFalse(before[1]["exists"])
            absent.write_text('[alias]\nclippy = "build"\n')
            with self.assertRaises(ValueError):
                configuration_snapshot([present, absent])

    def test_launch_environment_rejects_host_overrides_without_logging_secrets(self):
        from quality_runtime_v2 import launch_environment

        bootstrap = dict(bash="/selected/bash/bin/bash", nix_bin="/selected/nix/bin")
        owned = dict(
            CARGO_HOME="/owned/cargo",
            CARGO_TARGET_DIR="/owned/target",
            TMPDIR="/owned/tmp",
            BEHAVIOR_BIN="/owned/retained/cli",
        )
        host = dict(
            HOME="/existing/home",
            USER="fixture",
            PATH="/host/poison",
            RUSTC="/host/poison/rustc",
            BASH_ENV="/host/poison/init",
            LD_PRELOAD="/host/poison/lib.so",
            TOKEN="secret",
            CARGO_ENCODED_RUSTFLAGS="poison",
        )
        env = launch_environment(bootstrap, owned, host)
        for name in [
            "RUSTC",
            "BASH_ENV",
            "LD_PRELOAD",
            "TOKEN",
            "CARGO_ENCODED_RUSTFLAGS",
        ]:
            self.assertNotIn(name, env)
        self.assertEqual(env["HOME"], host["HOME"])
        self.assertEqual(env["NIX_BUILD_SHELL"], bootstrap["bash"])
        self.assertNotIn("/host", env["PATH"])
        self.assertEqual(env["CARGO_BUILD_JOBS"], "1")
        self.assertEqual(env["CARGO_PROFILE_TEST_OPT_LEVEL"], "2")

    def test_before_after_equality_ignores_only_phase_label(self):
        from quality_runtime_v2 import validate_capture_pair

        before = dict(
            format="core036.quality-runtime-capture.v2",
            phase="before",
            shell_pid=17,
            driver_pid=18,
            tools={"rustc": {"sha256": "a" * 64}},
            configurations=[],
            sources={"script": "b" * 64},
            environment={"PATH": "selected"},
            closures={"rust": ["selected"]},
        )
        after = {**before, "phase": "after"}
        validate_capture_pair(before, after)
        for field, value in [
            ("shell_pid", 19),
            ("tools", {}),
            ("configurations", [{"unexpected": True}]),
            ("sources", {}),
            ("environment", {}),
            ("closures", {}),
        ]:
            with self.assertRaises(ValueError):
                validate_capture_pair(before, {**after, field: value})

    def test_capture_outputs_are_create_once_and_byte_hashes_are_checked(self):
        import tempfile
        from quality_runtime_v2 import write_capture, read_capture

        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / "capture.json"
            ref = write_capture(path, {"format": "fixture", "value": 17})
            self.assertEqual(
                read_capture(path, ref), {"format": "fixture", "value": 17}
            )
            with self.assertRaises(FileExistsError):
                write_capture(path, {"value": 18})
            path.write_text('{"value":18}')
            with self.assertRaises(ValueError):
                read_capture(path, ref)

    def test_cargo_configuration_cannot_redirect_declared_tools_or_alias_gates(self):
        from quality_runtime_v2 import validate_cargo_configuration

        validate_cargo_configuration(
            {
                "net": {"offline": True},
                "source": {"crates-io": {"replace-with": "reviewed"}},
            }
        )
        for value in [
            {"alias": {"clippy": "build"}},
            {"env": {"RUSTC": "wrong"}},
            {"build": {"rustc-wrapper": "wrong"}},
            {"target": {"x86_64-unknown-linux-gnu": {"runner": "wrong"}}},
        ]:
            with self.assertRaises(ValueError):
                validate_cargo_configuration(value)
