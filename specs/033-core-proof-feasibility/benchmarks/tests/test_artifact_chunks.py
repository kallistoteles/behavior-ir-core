"""Artifact corruption must fail before publishing a restored object."""
import hashlib
from pathlib import Path
import sys
import tempfile
import unittest

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
import artifact_chunks


class ArtifactChunksTests(unittest.TestCase):
    def test_full_roundtrip_including_empty_file(self):
        for data in [b'', bytes(range(256))*3]:
            with self.subTest(bytes=len(data)), tempfile.TemporaryDirectory() as tmp:
                root = Path(tmp)
                source = root/'actual.bin'
                source.write_bytes(data)
                artifact_chunks.pack(source, hashlib.sha256(data).hexdigest(), root/'archive', 31)
                restored = artifact_chunks.restore(root/'archive', root/'restored')
                self.assertEqual(restored.read_bytes(), source.read_bytes())

    def test_changed_chunk_is_not_published(self):
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp)
            source = root/'actual.bin'
            source.write_bytes(b'complete artifact bytes')
            artifact_chunks.pack(source, hashlib.sha256(source.read_bytes()).hexdigest(), root/'archive', 4)
            (root/'archive/part-000001.bin').write_bytes(b'fake')
            with self.assertRaisesRegex(ValueError, 'chunk hash differs'):
                artifact_chunks.restore(root/'archive', root/'restored')
            self.assertFalse((root/'restored/actual.bin').exists())

    def test_existing_destination_is_untouched(self):
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp)
            source = root/'actual.bin'
            source.write_bytes(b'original')
            artifact_chunks.pack(source, hashlib.sha256(source.read_bytes()).hexdigest(), root/'archive', 4)
            (root/'restored').mkdir()
            protected = root/'restored/actual.bin'
            protected.write_bytes(b'existing')
            with self.assertRaises(FileExistsError):
                artifact_chunks.restore(root/'archive', root/'restored')
            self.assertEqual(protected.read_bytes(), b'existing')


if __name__ == '__main__':
    unittest.main()
