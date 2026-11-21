"""Prospective controls; not executed and not evidence until supervised."""

import json
from pathlib import Path
import tempfile
import unittest


class NonposRootOverlayTests(unittest.TestCase):
    def test_compiling_root_reserves_every_output_companion(self):
        from nonpos_lean_probe_v2 import prepare_library_overlay

        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            backend, compiled = root / "backend", root / "compiled"
            library = backend / ".lake/build/lib/lean"
            (library / "Aeneas").mkdir(parents=True)
            compiled.mkdir()
            originals = {}
            for name in (
                "Aeneas.olean",
                "Aeneas.olean.private",
                "Aeneas.olean.server",
                "Aeneas.ir",
                "Aeneas.ilean",
                "Aeneas/Std.olean",
            ):
                raw = ("immutable-original:" + name).encode()
                (library / name).write_bytes(raw)
                originals[name] = raw
            (backend / "lake-manifest.json").write_text(
                json.dumps({"packagesDir": ".lake/packages", "packages": []})
            )
            paths = prepare_library_overlay(backend, compiled, compile_roots={"Aeneas"})
            self.assertEqual(paths, [compiled])
            self.assertTrue((compiled / "Aeneas/Std.olean").is_symlink())
            for name in originals:
                if "/" not in name:
                    self.assertFalse((compiled / name).exists())
                    self.assertFalse((compiled / name).is_symlink())
                    (compiled / name).write_bytes(b"new-checked-output")
            for name, raw in originals.items():
                self.assertEqual((library / name).read_bytes(), raw)

    def test_ordinary_overlay_retains_existing_root(self):
        from nonpos_lean_probe_v2 import prepare_library_overlay

        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            backend, compiled = root / "backend", root / "compiled"
            library = backend / ".lake/build/lib/lean"
            (library / "Aeneas").mkdir(parents=True)
            compiled.mkdir()
            (library / "Aeneas.olean").write_bytes(b"existing-root")
            (backend / "lake-manifest.json").write_text(
                json.dumps({"packagesDir": ".lake/packages", "packages": []})
            )
            prepare_library_overlay(backend, compiled)
            self.assertTrue((compiled / "Aeneas.olean").is_symlink())
            self.assertEqual((compiled / "Aeneas.olean").read_bytes(), b"existing-root")


if __name__ == "__main__":
    unittest.main()
