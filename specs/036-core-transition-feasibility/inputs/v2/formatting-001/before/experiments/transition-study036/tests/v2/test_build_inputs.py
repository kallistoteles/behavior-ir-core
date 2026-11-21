import tempfile
import unittest
from pathlib import Path
from native_build import validate_embedded_inputs

class BuildInputTests(unittest.TestCase):
    def test_actual_embed_requires_retained_expected_files(self):
        with tempfile.TemporaryDirectory() as d:
            p=Path(d);(p/'src').mkdir();(p/'expected').mkdir()
            (p/'src/lib.rs').write_text('const X: &str = include_str!("../expected/input.json");')
            with self.assertRaises(ValueError):validate_embedded_inputs(p)
            (p/'expected/input.json').write_bytes(b'{}')
            refs=validate_embedded_inputs(p)
            self.assertEqual([r['path'] for r in refs],['expected/input.json'])
            (p/'src/lib.rs').write_text('const X: &str = include_str!("../../escape");')
            with self.assertRaises(ValueError):validate_embedded_inputs(p)
