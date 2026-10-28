import unittest
import tempfile
from pathlib import Path
import prepare
import artifacts as a

class PreparationTests(unittest.TestCase):
    def test_inputs_are_actual_immutable_copies(self):
        with tempfile.TemporaryDirectory() as d:
            root=Path(d);source=root/'input';source.mkdir();(source/'x.rs').write_bytes(b'original')
            binary=root/'binary';binary.write_bytes(b'native')
            out=root/'archive';out.mkdir()
            files={'x.rs':a.digest(b'original')};binaries={'production-like':{'path':str(binary),'sha256':a.digest(b'native')}}
            prepare.archive_inputs(out,files,binaries,source)
            self.assertNotEqual(Path(binaries['production-like']['path']),binary)
            (source/'x.rs').write_bytes(b'changed');binary.write_bytes(b'changed')
            self.assertEqual((out/'source/x.rs').read_bytes(),b'original')
            self.assertEqual(Path(binaries['production-like']['path']).read_bytes(),b'native')

    def test_forged_source_digest_cannot_be_archived_as_verified(self):
        with tempfile.TemporaryDirectory() as d:
            root=Path(d);(root/'x.rs').write_bytes(b'actual');out=root/'out';out.mkdir()
            with self.assertRaises(a.InvalidArtifact):
                prepare.archive_inputs(out,{'x.rs':a.digest(b'wrong')},{},root)

    def test_compiled_fixture_is_an_explicit_source_input(self):
        files=prepare.source_inventory()
        for name in ['tests/fixtures/soundness/module.json','tests/fixtures/commands/modules/receipt.json']:
            self.assertTrue(name in files, 'missing explicit compiled fixture input: '+name)
            self.assertEqual(files[name],a.digest((prepare.ROOT/name).read_bytes()))

if __name__=='__main__': unittest.main()
