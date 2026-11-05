import hashlib
import json
from pathlib import Path
import sys
import subprocess
import tempfile
import unittest

sys.path.insert(0,str(Path(__file__).resolve().parents[1]))
import study_seal


class StudySealControls(unittest.TestCase):
    def setUp(self):
        self.temporary = tempfile.TemporaryDirectory()
        self.addCleanup(self.temporary.cleanup)
        self.root = Path(self.temporary.name)

    def manifest(self, entry):
        return {'format_version':'core033.retained-study-seal.v1','files':[entry]}

    def test_modified_retained_file_is_rejected(self):
        file = self.root/'data.bin'
        file.write_bytes(b'expected')
        entry = {'path':'data.bin','kind':'file','availability':'Git','bytes':8,
                 'sha256':hashlib.sha256(b'expected').hexdigest()}
        self.assertFalse(study_seal.verify(self.root,self.manifest(entry))['g1_pass'])
        file.write_bytes(b'modified')
        with self.assertRaisesRegex(ValueError,'retained artifact mismatch'):
            study_seal.verify(self.root,self.manifest(entry))

    def test_missing_original_is_checked_from_all_archive_bytes(self):
        archive = self.root/'archive'
        archive.mkdir()
        chunks = [b'first',b'second']
        entries = []
        for i,raw in enumerate(chunks):
            name = f'part-{i:06d}.bin'
            (archive/name).write_bytes(raw)
            entries.append({'name':name,'bytes':len(raw),'sha256':hashlib.sha256(raw).hexdigest()})
        whole = b''.join(chunks)
        sha = hashlib.sha256(whole).hexdigest()
        (archive/'manifest.json').write_text(json.dumps({'bytes':len(whole),'sha256':sha,'chunks':entries}))
        entry = {'path':'missing.bin','kind':'file','bytes':len(whole),'sha256':sha,
                 'availability':'RestorableExactFromGitChunks','archive':'archive'}
        result = study_seal.verify(self.root,self.manifest(entry))
        self.assertEqual(result['large_originals_verified_from_chunks'],1)
        self.assertFalse((self.root/'missing.bin').exists())
        (archive/'part-000001.bin').write_bytes(b'broken')
        with self.assertRaisesRegex(ValueError,'archive part mismatch'):
            study_seal.verify(self.root,self.manifest(entry))

    def test_empty_or_escaping_manifest_is_rejected(self):
        with self.assertRaisesRegex(ValueError,'nonempty supported'):
            study_seal.verify(self.root,{'format_version':'core033.retained-study-seal.v1','files':[]})
        with self.assertRaisesRegex(ValueError,'unsafe manifest path'):
            study_seal.safe_path(self.root,'../outside')

    def test_full_seal_publication_roundtrip_and_no_overwrite(self):
        subprocess.run(['git','init','--quiet',str(self.root)],check=True)
        base = self.root/'specs/033-core-proof-feasibility/evidence'
        originals = base/'scoped-chain/numeric-cost-preprocessed-export-001/artifacts'
        originals.mkdir(parents=True)
        for name in ['parameters.bin','compression_prover_key.bin']:
            raw = name.encode()
            (originals/name).write_bytes(raw)
            archive = base/'scoped-chain/numeric-cost-preprocessed-large-artifacts-001'/name
            archive.mkdir(parents=True)
            (archive/'part-000000.bin').write_bytes(raw)
            sha = hashlib.sha256(raw).hexdigest()
            (archive/'manifest.json').write_text(json.dumps({'bytes':len(raw),'sha256':sha,
                'chunks':[{'name':'part-000000.bin','bytes':len(raw),'sha256':sha}]}))
        output = base/'final/manifest.json'
        output.parent.mkdir()
        result = study_seal.seal(self.root,output,[],[])
        self.assertFalse(result['g1_pass'])
        frozen = output.read_bytes()
        manifest = json.loads(frozen)
        self.assertEqual(manifest['file_count'],6)
        for file in originals.iterdir():
            file.unlink()
        checked = study_seal.verify(self.root,manifest)
        self.assertEqual(checked['large_originals_verified_from_chunks'],2)
        # Restore local fixture originals so a second seal reaches publication.
        for name in ['parameters.bin','compression_prover_key.bin']:
            (originals/name).write_bytes(name.encode())
        with self.assertRaises(FileExistsError):
            study_seal.seal(self.root,output,[],[])
        self.assertEqual(output.read_bytes(),frozen)
        pending = output.with_suffix('.pending.tmp')
        pending.write_bytes(b'existing pending file')
        with self.assertRaises(FileExistsError):
            study_seal.seal(self.root,output,[],[])
        self.assertEqual(pending.read_bytes(),b'existing pending file')


if __name__ == '__main__':
    unittest.main()
