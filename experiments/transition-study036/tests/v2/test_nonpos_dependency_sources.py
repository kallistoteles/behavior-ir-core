"""Every dependency source needs a strong digest and a real supported format."""

import bz2
import hashlib
import io
from pathlib import Path
import tarfile
import tempfile
import unittest


class NonposDependencySourceTests(unittest.TestCase):
    def test_sha512_only_and_text_sources_are_supported(self):
        from nonpos_dependency_sources_v2 import dependency_source_specs

        raw = (
            'url { src: "https://example.org/source.tbz" checksum: "sha512='
            + "1" * 128
            + '" }\n'
        )
        source = dependency_source_specs(raw)[0]
        self.assertEqual(source["kind"], "tbz")
        self.assertEqual(source["hashes"], {"sha512": "1" * 128})
        text = (
            'extra-source "test.c" { src: "https://example.org/test.c.4" checksum: "sha256='
            + "2" * 64
            + '" }\n'
        )
        self.assertEqual(dependency_source_specs(text)[0]["kind"], "text")

    def test_weak_ambiguous_or_unsupported_sources_are_rejected(self):
        from nonpos_dependency_sources_v2 import dependency_source_specs

        for raw in (
            'url { src: "https://example.org/a.tbz" checksum: "md5=' + "1" * 32 + '" }',
            'url { src: "https://example.org/a.zip" checksum: "sha256='
            + "1" * 64
            + '" }',
            'url { src: "https://example.org/a.tbz" mirrors: "https://unbound.org/b" checksum: "sha256='
            + "1" * 64
            + '" }',
            'url { src: "https://example.org/a.tbz" checksum: "sha512='
            + "1" * 64
            + '" }',
        ):
            with self.assertRaises(ValueError):
                dependency_source_specs(raw)

    def test_real_bzip2_tar_is_checked_before_publication(self):
        from nonpos_dependency_sources_v2 import checked_download

        buf = io.BytesIO()
        with tarfile.open(fileobj=buf, mode="w") as archive:
            entry = tarfile.TarInfo("source/example.ml")
            entry.size = 3
            archive.addfile(entry, io.BytesIO(b"let"))
        payload = bz2.compress(buf.getvalue())
        asset = dict(
            name="source.tbz",
            url="https://example.org/source.tbz",
            hashes={"sha512": hashlib.sha512(payload).hexdigest()},
            kind="tbz",
            max_bytes=64 * 1024**2,
        )
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            row = checked_download(
                asset, root / "good", opener=lambda *a, **k: io.BytesIO(payload)
            )
            self.assertEqual(row["bytes"], len(payload))
            self.assertEqual((root / "good").read_bytes(), payload)
            with self.assertRaises(ValueError):
                checked_download(
                    asset, root / "bad", opener=lambda *a, **k: io.BytesIO(payload[:-2])
                )
            self.assertFalse((root / "bad").exists())
