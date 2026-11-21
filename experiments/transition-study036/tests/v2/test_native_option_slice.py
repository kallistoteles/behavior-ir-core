"""Diagnostic slices preserve exact generated native declarations."""

import unittest


class OptionSliceTests(unittest.TestCase):
    def fixture(self):
        return (
            b"module\npublic import Aeneas\n"
            b"namespace transition_study036\n"
            b'@[rust_fun\n  "serde_core::ser::impls::{serde_core::ser::Serialize<core::option::Option<@T>>}::serialize"]\n'
            b"def core.option.Option.Insts.Serde_coreSerSerialize.serialize\n"
            b"  (x : Nat) := x\n"
            b"nonpos_continuity core.option.Option.Insts.Serde_coreSerSerialize.serialize\n"
            b"def unrelated := 42\nend transition_study036\n"
        )

    def test_whole_declaration_and_command_are_byte_exact(self):
        from native_option_slice_v2 import option_slice

        source = self.fixture()
        result = option_slice(source)
        for name in ["header", "declaration", "continuity_command"]:
            start, end = result["ranges"][name]
            self.assertEqual(result[name], source[start:end])
        self.assertIn(b"(x : Nat) := x", result["declaration"])
        self.assertNotIn(b"unrelated", result["declaration"])
        self.assertNotIn(b"nonpos_continuity", result["declaration"])

    def test_missing_duplicate_and_changed_boundaries_fail_closed(self):
        from native_option_slice_v2 import option_slice

        for source in [
            b"",
            self.fixture().replace(
                b"namespace transition_study036", b"namespace wrong"
            ),
            self.fixture().replace(b"@[rust_fun", b"@[unrelated"),
            self.fixture().replace(b"nonpos_continuity", b"wrong_command"),
            self.fixture().replace(
                b"def unrelated",
                b"def core.option.Option.Insts.Serde_coreSerSerialize.serialize\ndef unrelated",
            ),
        ]:
            with self.subTest(source=source), self.assertRaises(ValueError):
                option_slice(source)


class ImportLayoutTests(unittest.TestCase):
    def test_explicit_file_and_directory_links_have_resolved_physical_sources(self):
        from native_option_slice_v2 import import_layout
        import tempfile
        from pathlib import Path

        with tempfile.TemporaryDirectory() as directory:
            base = Path(directory)
            root, library = base / "imports", base / "library"
            root.mkdir()
            library.mkdir()
            (library / "Package").mkdir()
            (library / "Package/Module.olean").write_bytes(b"checked module")
            (root / "Local.olean").write_bytes(b"local module")
            (root / "Package").symlink_to(library / "Package", target_is_directory=True)
            (root / "Alias.olean").symlink_to(library / "Package/Module.olean")
            result = import_layout(root, library)
            self.assertEqual(
                {row["path"] for row in result["files"]},
                {"Local.olean", "Alias.olean", "Package/Module.olean"},
            )
            self.assertEqual(len(result["links"]), 2)
            for row in result["files"]:
                self.assertFalse(Path(row["source"]).is_symlink())

    def test_escape_cycles_and_retargeting_cannot_reuse_a_layout(self):
        from native_option_slice_v2 import import_layout
        import tempfile
        from pathlib import Path

        with tempfile.TemporaryDirectory() as directory:
            base = Path(directory)
            root, library, outside = (
                base / "imports",
                base / "library",
                base / "outside",
            )
            for p in (root, library, outside):
                p.mkdir()
            (outside / "x").write_bytes(b"unregistered")
            link = root / "Alias"
            link.symlink_to(outside / "x")
            with self.assertRaises(ValueError):
                import_layout(root, library)
            link.unlink()
            link.symlink_to(root, target_is_directory=True)
            with self.assertRaises(ValueError):
                import_layout(root, library)
            link.unlink()
            (library / "one").write_bytes(b"same")
            (library / "two").write_bytes(b"same")
            link.symlink_to(library / "one")
            original = import_layout(root, library)
            link.unlink()
            link.symlink_to(library / "two")
            self.assertNotEqual(import_layout(root, library), original)
