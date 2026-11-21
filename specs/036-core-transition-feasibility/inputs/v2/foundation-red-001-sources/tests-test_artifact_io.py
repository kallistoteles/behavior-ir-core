import hashlib
import tempfile
import unittest
from pathlib import Path
from artifact_io import RootRegistry

class ArtifactsV2Tests(unittest.TestCase):
    def test_verified_create_once_and_mutation(self):
        with tempfile.TemporaryDirectory() as d:
            roots=RootRegistry({'case':Path(d)})
            roots.write('case','a/data.json',{'n':1})
            ref=roots.reference('case','a/data.json');self.assertEqual(ref['root_id'],'case')
            self.assertEqual(roots.read(ref),{'n':1})
            with self.assertRaises(FileExistsError):roots.write('case','a/data.json',b'new')
            (Path(d)/'a/data.json').write_bytes(b'changed')
            with self.assertRaises(ValueError):roots.verify(ref)
    def test_paths_roots_and_symlinks(self):
        with tempfile.TemporaryDirectory() as d,tempfile.TemporaryDirectory() as other:
            p=Path(d);roots=RootRegistry({'case':p});(p/'link').symlink_to(other,target_is_directory=True)
            for name in ['../escape','/absolute','a/../x','a//b','link/x','bad\\name']:
                with self.subTest(name=name),self.assertRaises(ValueError):roots.write('case',name,b'x')
            with self.assertRaises(ValueError):roots.write('candidate-chosen','x',b'x')
    def test_closed_index_not_future_hash(self):
        with tempfile.TemporaryDirectory() as d:
            roots=RootRegistry({'case':Path(d)});roots.write('case','x',b'x')
            index=roots.seal('case');self.assertEqual(len(index['files']),1)
            self.assertNotIn('closed-artifacts.json',[x['path'] for x in index['files']])
            roots.verify_closed('case')
            (Path(d)/'extra').write_bytes(b'bad')
            with self.assertRaises(ValueError):roots.verify_closed('case')
            with self.assertRaises(FileExistsError):roots.seal('case')
