"""Actual immutable-library mutations and path guards for proof imports."""

from pathlib import Path
import tempfile
import unittest
from unittest.mock import patch

from lean_import_inventory_v2 import (
    backend_library_roots,
    capture_imports,
    verify_imports,
)


class LeanImportInventoryTests(unittest.TestCase):
    def setUp(self):
        temporary = tempfile.TemporaryDirectory()
        self.addCleanup(temporary.cleanup)
        self.root = Path(temporary.name) / "backend"
        self.library = self.root / ".lake/build/lib"
        self.library.mkdir(parents=True)
        self.module = self.library / "Example.olean"
        self.module.write_bytes(b"first")
        self.missing = self.root / ".lake/packages/Unused/.lake/build/lib"
        self.libraries = [self.library, self.missing]

    def test_current_bytes_and_absent_search_root_are_bound(self):
        inventory = capture_imports(self.root, self.libraries)
        verify_imports(self.root, self.libraries, inventory)
        self.assertTrue(inventory["libraries"][0]["present"])
        self.assertFalse(inventory["libraries"][1]["present"])
        self.assertEqual(inventory["files"], 1)
        self.assertEqual(inventory["bytes"], 5)

    def test_backend_own_library_is_included_with_package_libraries(self):
        package = self.root / ".lake/packages/Dependency/.lake/build/lib"
        with patch(
            "lean_import_inventory_v2.dependency_library_paths",
            return_value=[package / "lean"],
        ):
            libraries = backend_library_roots(self.root)
        self.assertIn(self.library, libraries)
        self.assertIn(package, libraries)

    def test_same_size_changed_object_is_rejected(self):
        inventory = capture_imports(self.root, self.libraries)
        self.module.write_bytes(b"other")
        with self.assertRaisesRegex(ValueError, "LeanImportInventoryChanged"):
            verify_imports(self.root, self.libraries, inventory)

    def test_new_module_in_previously_absent_root_is_rejected(self):
        inventory = capture_imports(self.root, self.libraries)
        self.missing.mkdir(parents=True)
        (self.missing / "Injected.olean").write_bytes(b"unexpected")
        with self.assertRaisesRegex(ValueError, "LeanImportInventoryChanged"):
            verify_imports(self.root, self.libraries, inventory)

    def test_symlink_cannot_supply_an_import(self):
        self.module.unlink()
        outside = self.root.parent / "outside.olean"
        outside.write_bytes(b"outside")
        self.module.symlink_to(outside)
        with self.assertRaises(ValueError):
            capture_imports(self.root, self.libraries)

    def test_protected_name_is_rejected_before_stat_or_hash(self):
        forbidden = self.library / "parameters.bin"
        from lean_import_inventory_v2 import digest

        original_iterdir = Path.iterdir
        original_lstat = Path.lstat

        def directory_entries(path):
            if path == self.library:
                return iter([forbidden])
            return original_iterdir(path)

        def checked_digest(path):
            self.assertNotEqual(path.name, "parameters.bin")
            return digest(path)

        def checked_lstat(path, *args, **kwargs):
            self.assertNotEqual(path, forbidden)
            return original_lstat(path, *args, **kwargs)

        with (
            patch.object(Path, "iterdir", directory_entries),
            patch.object(Path, "lstat", checked_lstat),
            patch("lean_import_inventory_v2.digest", side_effect=checked_digest),
        ):
            with self.assertRaises(ValueError):
                capture_imports(self.root, self.libraries)

    def test_library_cannot_escape_declared_backend(self):
        with self.assertRaises(ValueError):
            capture_imports(self.root, [self.root.parent])
