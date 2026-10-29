"""Acceptance controls precede early freezer/runner implementation."""
import json
from pathlib import Path
import tempfile
import unittest

from early_campaign import freeze, verify_manifest, CampaignError

class EarlyCampaignTests(unittest.TestCase):
    def test_freeze_binds_sources_and_rejects_rewriting_or_mutating_inputs(self):
        with tempfile.TemporaryDirectory() as tmp:
            root=Path(tmp); binary=root/'program'; binary.write_bytes(b'fixture')
            case=root/'case.json'; case.write_text('{}')
            manifest=root/'frozen.json'
            freeze(manifest, binary=binary, cases=[case], sources=[binary], mode='first-use', parameters_from=None)
            verify_manifest(manifest)
            with self.assertRaises(CampaignError):
                freeze(manifest,binary=binary,cases=[case],sources=[binary],mode='first-use',parameters_from=None)
            # Original work may continue; the archived experiment stays fixed.
            binary.write_bytes(b'changed')
            verify_manifest(manifest)
            data=json.loads(manifest.read_text())
            (manifest.parent/data['binary']).write_bytes(b'changed')
            with self.assertRaises(CampaignError):verify_manifest(manifest)
    def test_first_use_cannot_smuggle_cached_parameters_and_reuse_needs_provenance(self):
        with tempfile.TemporaryDirectory() as tmp:
            root=Path(tmp); binary=root/'p';binary.write_bytes(b'x');case=root/'c';case.write_text('{}')
            with self.assertRaises(CampaignError):freeze(root/'m',binary=binary,cases=[case],sources=[binary],mode='first-use',parameters_from=root/'cached')
            with self.assertRaises(CampaignError):freeze(root/'m',binary=binary,cases=[case],sources=[binary],mode='reuse',parameters_from=None)
    def test_unknown_or_omitted_manifest_fields_do_not_pass(self):
        with tempfile.TemporaryDirectory() as tmp:
            path=Path(tmp)/'m';path.write_text('{"format":"core032.early-manifest.v1"}')
            with self.assertRaises(CampaignError):verify_manifest(path)

if __name__=='__main__':unittest.main()

class EarlyCLIWiringTests(unittest.TestCase):
    def test_missing_manifest_does_not_become_successful_verification(self):
        from study import main
        with tempfile.TemporaryDirectory() as tmp:
            root=Path(tmp)
            self.assertEqual(main(['verify','--manifest',str(root/'absent.json'),'--proof',str(root/'absent.bin'),'--output',str(root/'out')]),2)
    def test_first_use_rejects_hidden_parameter_input_through_real_cli(self):
        from study import main
        with tempfile.TemporaryDirectory() as tmp:
            root=Path(tmp);binary=root/'tool';binary.write_bytes(b'test');case=root/'case';case.write_text('{}')
            rc=main(['prepare','--scope','proof-smoke','--parameter-mode','first-use','--binary',str(binary),'--case',str(case),'--manifest',str(root/'manifest'),'--parameters-from',str(root/'cache')])
            self.assertEqual(rc,2);self.assertFalse((root/'manifest').exists())
