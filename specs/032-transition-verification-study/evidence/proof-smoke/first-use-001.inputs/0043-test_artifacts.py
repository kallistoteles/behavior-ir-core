"""Hostile artifact controls for the actual research reader."""
import gzip
import hashlib
import json
from pathlib import Path
import tempfile
import unittest

from artifacts import ArtifactError, attempt_coverage, read_gzip, read_json

SCHEMA = {"type": "object", "additionalProperties": False,
          "required": ["format", "count", "mode"],
          "properties": {"format": {"const": "core032.example.v1"},
                         "count": {"type": "integer", "minimum": 0},
                         "mode": {"enum": ["first-use", "reuse"]}}}


class ArtifactTests(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        self.root = Path(self.temp.name)

    def read(self, raw):
        p = self.root / "input.json"
        p.write_bytes(raw)
        return read_json(p, SCHEMA)

    def test_complete_typed_input(self):
        self.assertEqual(self.read(b'{"format":"core032.example.v1","count":0,"mode":"first-use"}')["count"], 0)

    def test_missing_and_extra_fields(self):
        for raw in [b'{"format":"core032.example.v1","count":0}',
                    b'{"format":"core032.example.v1","count":0,"mode":"reuse","extra":1}']:
            with self.subTest(raw=raw), self.assertRaises(ArtifactError):
                self.read(raw)

    def test_json_types_do_not_coerce(self):
        for value in [False, True, "0", None, 0.0]:
            raw = json.dumps({"format": "core032.example.v1", "count": value, "mode": "reuse"}).encode()
            with self.subTest(value=value), self.assertRaises(ArtifactError):
                self.read(raw)

    def test_duplicate_keys_and_nonfinite(self):
        for raw in [b'{"format":"core032.example.v1","count":0,"count":1,"mode":"reuse"}',
                    b'{"format":"core032.example.v1","count":NaN,"mode":"reuse"}']:
            with self.subTest(raw=raw), self.assertRaises(ArtifactError):
                self.read(raw)

    def test_changed_hash_and_bound(self):
        p = self.root / "input.json"
        p.write_text('{"format":"core032.example.v1","count":0,"mode":"reuse"}')
        with self.assertRaises(ArtifactError):
            read_json(p, SCHEMA, expected_sha256="0" * 64)
        with self.assertRaises(ArtifactError):
            read_json(p, SCHEMA, max_bytes=3)

    def test_gzip_authenticates_raw_bytes_and_length(self):
        p = self.root / "input.gz"
        raw = b"content" * 20
        p.write_bytes(gzip.compress(raw, mtime=0))
        sha = hashlib.sha256(raw).hexdigest()
        self.assertEqual(read_gzip(p, raw_sha256=sha, raw_bytes=len(raw), max_bytes=200), raw)
        for kwargs in [{"raw_sha256": "0" * 64, "raw_bytes": len(raw), "max_bytes": 200},
                       {"raw_sha256": sha, "raw_bytes": len(raw) - 1, "max_bytes": 200},
                       {"raw_sha256": sha, "raw_bytes": len(raw), "max_bytes": 10}]:
            with self.subTest(kwargs=kwargs), self.assertRaises(ArtifactError):
                read_gzip(p, **kwargs)
        p.write_bytes(p.read_bytes()[:-3])
        with self.assertRaises(ArtifactError):
            read_gzip(p, raw_sha256=sha, raw_bytes=len(raw), max_bytes=200)

    def test_coverage_rejects_missing_duplicate_and_changed_keys(self):
        expected = [("c", "A", "first-use", 0), ("c", "A", "first-use", 1)]
        rows = [{"case_id": "c", "candidate": "A", "mode": "first-use", "repetition": n, "outcome": "ResourceExhausted"} for n in range(2)]
        self.assertEqual(attempt_coverage(rows, expected), 2)
        for wrong in [rows[:1], rows + rows[:1], [dict(rows[0], repetition=False), rows[1]],
                      [dict(rows[0], candidate="B"), rows[1]]]:
            with self.subTest(wrong=wrong), self.assertRaises(ArtifactError):
                attempt_coverage(wrong, expected)


if __name__ == "__main__":
    unittest.main()
