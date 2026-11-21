import tempfile
import unittest
from pathlib import Path
from artifact_io import RootRegistry
from preservation import HistoricalResolver, verify_unrelated_v2


class PreservationV2Tests(unittest.TestCase):
    def test_revised_logical_path_resolves_exact_old_bytes_only(self):
        with tempfile.TemporaryDirectory() as d:
            p = Path(d)
            roots = RootRegistry({"repository": p})
            roots.write("repository", "old/source.py", b"old")
            roots.write("repository", "source.py", b"new")
            old = roots.reference("repository", "old/source.py")
            logical = {**old, "path": "source.py"}
            mapping = {
                "mappings": [
                    {
                        "logical_v1": {
                            k: logical[k] for k in ("path", "bytes", "sha256")
                        },
                        "physical": old,
                    }
                ]
            }
            resolver = HistoricalResolver(roots, [mapping])
            self.assertEqual(resolver.resolve(logical).read_bytes(), b"old")
            with self.assertRaises(ValueError):
                resolver.resolve({**logical, "sha256": "0" * 64})
            (p / "old/source.py").write_bytes(b"bad")
            with self.assertRaises(ValueError):
                resolver.resolve(logical)

    def test_conflicting_mapping_cycle_and_unrelated_metadata(self):
        with tempfile.TemporaryDirectory() as d:
            p = Path(d)
            roots = RootRegistry({"repository": p})
            roots.write("repository", "x", b"x")
            roots.write("repository", "y", b"x")
            a = roots.reference("repository", "x")
            b = roots.reference("repository", "y")
            entry = {
                "logical_v1": {k: a[k] for k in ("path", "bytes", "sha256")},
                "physical": b,
            }
            with self.assertRaises(ValueError):
                HistoricalResolver(
                    roots, [{"mappings": [entry, {**entry, "physical": a}]}]
                )
            st = (p / "x").stat()
            ref = {
                "path": "x",
                "bytes": 1,
                "mtime_ns": st.st_mtime_ns,
                "inode": st.st_ino,
                "method": "metadata_only_no_payload_hash",
            }
            verify_unrelated_v2(p, [ref])
            (p / "x").write_bytes(b"xx")
            with self.assertRaises(ValueError):
                verify_unrelated_v2(p, [ref])
