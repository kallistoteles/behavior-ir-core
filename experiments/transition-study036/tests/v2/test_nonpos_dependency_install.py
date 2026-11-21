"""Installing dependencies must preserve exact plans, sources and cache bytes."""

import hashlib
from pathlib import Path
import tempfile
import unittest


class NonposDependencyInstallTests(unittest.TestCase):
    def test_version_table_is_exact_and_never_accepts_a_duplicate(self):
        from nonpos_dependency_install_v2 import installed_versions

        self.assertEqual(
            installed_versions(b"dune 3.25.0\nvisitors 20260520\n"),
            {"dune": "3.25.0", "visitors": "20260520"},
        )
        for raw in (b"dune 1\ndune 2\n", b"dune\n", b"name version extra\n"):
            with self.assertRaises(ValueError):
                installed_versions(raw)

    def test_verified_cache_seed_checks_all_hashes_and_preserves_existing_bytes(self):
        from nonpos_dependency_install_v2 import seed_cache

        raw = b"verified source payload\n"
        hashes = {
            name: hashlib.new(name, raw).hexdigest()
            for name in ("md5", "sha256", "sha512")
        }
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            payload = root / "source"
            payload.write_bytes(raw)
            paths = seed_cache(payload, root / "cache", hashes)
            self.assertEqual(len(paths), 3)
            self.assertTrue(all(Path(p).read_bytes() == raw for p in paths))
            self.assertEqual(seed_cache(payload, root / "cache", hashes), paths)
            Path(paths[0]).write_bytes(b"changed existing cache")
            with self.assertRaises(ValueError):
                seed_cache(payload, root / "cache", hashes)
            self.assertEqual(Path(paths[0]).read_bytes(), b"changed existing cache")
            with self.assertRaises(ValueError):
                seed_cache(payload, root / "other", {"sha512": "0" * 128})
