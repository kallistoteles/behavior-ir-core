"""Registered no-symlink paths need one canonical-root resolution."""
import os
from pathlib import Path
import tempfile
import unittest
from unittest.mock import patch
from artifact_io import RootRegistry
from test_artifact_io import ArtifactsV2Tests  # noqa: F401


class RegisteredPathWorkTests(unittest.TestCase):
    def test_one_resolution_and_same_lexical_target(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory).resolve()
            registry = RootRegistry({"case": root})
            original = os.path.realpath
            with patch("os.path.realpath", wraps=original) as resolve:
                target = registry.path("case", "a/b/data.json")
            self.assertEqual(target, root / "a/b/data.json")
            self.assertLessEqual(resolve.call_count, 1)

    def test_inside_root_symlink_is_rejected_even_when_destination_is_owned(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            (root / "actual").mkdir()
            (root / "alias").symlink_to(root / "actual", target_is_directory=True)
            registry = RootRegistry({"case": root})
            with self.assertRaisesRegex(ValueError, "V2ArtifactSymlink"):
                registry.path("case", "alias/item")

    def test_registered_root_replaced_by_symlink_is_rejected(self):
        with tempfile.TemporaryDirectory() as directory:
            base = Path(directory)
            root = base / "root"
            root.mkdir()
            registry = RootRegistry({"case": root})
            root.rename(base / "moved")
            root.symlink_to(base / "moved", target_is_directory=True)
            with self.assertRaises(ValueError):
                registry.path("case", "item")
