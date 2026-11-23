import tempfile
import unittest
from pathlib import Path
from native_build import validate_embedded_inputs


class BuildInputTests(unittest.TestCase):
    def test_cli_build_uses_pinned_tools_and_no_shell_or_inherited_environment(self):
        from core_cli_build_v2 import build_plan

        tools = {
            name: {"path": "/nix/store/test-" + name + "/bin/" + name}
            for name in ["cargo", "rustc", "cc", "git", "python"]
        }
        private = Path("/var/tmp/behavior-ir-core036-v2/w001")
        target = private / "disposable/cli-test/target"
        core = private / "sources/candidate/core-reuse"
        argv, env, emitted = build_plan(tools, private, target, core)
        self.assertEqual(argv[0], tools["cargo"]["path"])
        self.assertIn("--offline", argv)
        self.assertIn("--locked", argv)
        self.assertEqual(argv[argv.index("--target") + 1], "x86_64-unknown-linux-gnu")
        self.assertEqual(env["RUSTC"], tools["rustc"]["path"])
        self.assertEqual(env["CC"], tools["cc"]["path"])
        self.assertIn("-C linker=" + tools["cc"]["path"], env["RUSTFLAGS"])
        self.assertEqual(env["CARGO_BUILD_JOBS"], "1")
        self.assertEqual(env["CARGO_NET_OFFLINE"], "true")
        self.assertNotIn("HOME", env)
        self.assertNotIn("RUSTC_WRAPPER", env)
        self.assertNotIn("NIX_PATH", env)
        self.assertEqual(emitted, target / "x86_64-unknown-linux-gnu/release/behavior")

    def test_cli_plan_refuses_missing_or_nonabsolute_compiler_bindings(self):
        from core_cli_build_v2 import build_plan

        root = Path("/var/tmp/behavior-ir-core036-v2/w001")
        for tools in [
            {},
            {
                "cargo": {"path": "cargo"},
                "cc": {"path": "/cc"},
                "rustc": {"path": "/rustc"},
            },
        ]:
            with self.assertRaises(ValueError):
                build_plan(
                    tools, root, root / "disposable/cli/target", root / "sources/core"
                )

    def test_actual_embed_requires_retained_expected_files(self):
        with tempfile.TemporaryDirectory() as d:
            p = Path(d)
            (p / "src").mkdir()
            (p / "expected").mkdir()
            (p / "src/lib.rs").write_text(
                'const X: &str = include_str!("../expected/input.json");'
            )
            with self.assertRaises(ValueError):
                validate_embedded_inputs(p)
            (p / "expected/input.json").write_bytes(b"{}")
            refs = validate_embedded_inputs(p)
            self.assertEqual([r["path"] for r in refs], ["expected/input.json"])
            (p / "src/lib.rs").write_text(
                'const X: &str = include_str!("../../escape");'
            )
            with self.assertRaises(ValueError):
                validate_embedded_inputs(p)
