"""Unselected prospective tests; not executed or a cleanup admission."""

import hashlib
import tempfile
import unittest
from pathlib import Path


class CountOnlySink:
    def __init__(self):
        self.total = 0
        self.checksum = hashlib.sha256()

    def tell(self):
        return self.total

    def write(self, data):
        self.total += len(data)
        self.checksum.update(data)
        return len(data)

    def flush(self):
        pass


class CanaryCacheArchiveStreamTests(unittest.TestCase):
    def test_dry_compressed_size_and_hash_match_lossless_written_archive(self):
        from backend_ir_retention_v2 import (
            _archive,
            _archive_stream,
            _inventory,
            _verify_archive,
        )

        with tempfile.TemporaryDirectory() as directory:
            base = Path(directory)
            target = base / "target"
            (target / "debug/build/out").mkdir(parents=True)
            generated = target / "debug/build/out/private.rs"
            generated.write_bytes(
                b"// exact generated compiler input\npub struct Example;\n"
            )
            generated.chmod(0o644)
            binary = target / "debug/build/helper"
            binary.write_bytes(b"\x7fELF" + bytes(range(256)) * 10)
            binary.chmod(0o755)
            rows = _inventory(target, maximum_files=20, maximum_bytes=1024**2)
            counter = CountOnlySink()
            _archive_stream(target, rows, counter, compressed_limit=1024**2)
            archive = base / "retained.tar.gz"
            _archive(target, rows, archive, compressed_limit=1024**2)
            raw = archive.read_bytes()
            self.assertEqual(counter.total, len(raw))
            self.assertEqual(
                counter.checksum.hexdigest(), hashlib.sha256(raw).hexdigest()
            )
            _verify_archive(archive, rows)
            self.assertEqual(
                {row["path"] for row in rows},
                {"debug/build/out/private.rs", "debug/build/helper"},
            )
            with self.assertRaisesRegex(ValueError, "ArchiveIdentity"):
                _verify_archive(archive, [{**row, "sha256": "0" * 64} for row in rows])
            with self.assertRaisesRegex(ValueError, "ArchiveMembership"):
                _verify_archive(archive, rows[:-1])

    def test_dry_bound_rejects_before_destination_growth_and_validates_limits(self):
        from backend_ir_retention_v2 import _archive_stream, _inventory

        with tempfile.TemporaryDirectory() as directory:
            target = Path(directory)
            (target / "source.rs").write_bytes(b"exact input")
            rows = _inventory(target, maximum_files=5, maximum_bytes=1024)
            counter = CountOnlySink()
            with self.assertRaisesRegex(ValueError, "ArchiveCompressedBound"):
                _archive_stream(target, rows, counter, compressed_limit=1)
            self.assertEqual(counter.total, 0)
            for invalid in (0, -1, True, None, 128 * 1024**2 + 1):
                with self.subTest(invalid=invalid), self.assertRaises(ValueError):
                    _archive_stream(
                        target, rows, CountOnlySink(), compressed_limit=invalid
                    )
