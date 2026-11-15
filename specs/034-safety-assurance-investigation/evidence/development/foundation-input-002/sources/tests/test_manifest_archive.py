import copy
import hashlib
import json
from pathlib import Path
import sqlite3
import sys
import tempfile
import unittest
sys.path.insert(0,str(Path(__file__).resolve().parents[1]))
import artifact_io as io

class ManifestArchive(unittest.TestCase):
    def test_create_once_and_bounded_read(self):
        with tempfile.TemporaryDirectory()as d:
            p=Path(d)/'x';io.write_once(p,b'1234')
            with self.assertRaises(FileExistsError):io.write_once(p,b'new')
            self.assertEqual(p.read_bytes(),b'1234')
            with self.assertRaises(ValueError):io.bounded_read(p,3)
    def test_paths_cannot_escape_or_follow_external_symlink(self):
        with tempfile.TemporaryDirectory()as d,tempfile.TemporaryDirectory()as elsewhere:
            root=Path(d);outside=Path(elsewhere)/'secret';outside.write_bytes(b'x')
            (root/'link').symlink_to(outside)
            for name in ['../x',str(outside),'link']:
                with self.assertRaises(ValueError):io.artifact_ref(root,name)
    def test_closed_archive_detects_change_and_unknown_flag(self):
        with tempfile.TemporaryDirectory()as d:
            root=Path(d);(root/'x').write_bytes(b'original')
            m=io.seal(root,['x']);io.verify_archive(root,m)
            forged=dict(m,verified=True)
            with self.assertRaises(ValueError):io.verify_archive(root,forged)
            (root/'x').write_bytes(b'changed')
            with self.assertRaises(ValueError):io.verify_archive(root,m)
    def test_delayed_sqlite_close_invalidates_open_archive(self):
        with tempfile.TemporaryDirectory()as d:
            root=Path(d);db=sqlite3.connect(root/'db')
            try:
                db.execute('pragma journal_mode=wal');db.execute('create table x(a)');db.execute('insert into x values(1)');db.commit()
                m=io.seal(root,['db'])
            finally:db.close()
            with self.assertRaises(ValueError):io.verify_archive(root,m)
    def test_manifest_no_future_digest_source_rewrite_or_supplied_code(self):
        with tempfile.TemporaryDirectory()as d:
            root=Path(d);(root/'code.rs').write_bytes(b'code')
            ref=io.artifact_ref(root,'code.rs')
            m={'format':'core034.input.v1','campaign_id':'unit','sources':[],'tools':{},'code':[ref],
               'profile':{'cases':[{'case_id':'unit'}]},'expected':{},'output_slots':['prepared-manifest.json'],
               'clock':{'started_ns':1,'boot_id':'unit'},'limits':{'campaign_seconds':7200}}
            io.validate_manifest(m,root=root)
            for key,value in [('self_sha256','a'*64),('execute','untrusted.py'),('format','core034.input.v9'),('output_slots',[{'path':'prepared-manifest.json','sha256':'a'*64}])]:
                bad=copy.deepcopy(m);bad[key]=value
                with self.subTest(key=key),self.assertRaises(ValueError):io.validate_manifest(bad,root=root)
            (root/'code.rs').write_bytes(b'changed')
            with self.assertRaises(ValueError):io.validate_manifest(m,root=root)

if __name__=='__main__':unittest.main()
