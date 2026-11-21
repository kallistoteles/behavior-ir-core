import tempfile
import unittest
from pathlib import Path
from artifact_io import RootRegistry
from gates import checked_source_gate, gate_valid, blocked_claim

class SourceGateTests(unittest.TestCase):
    def test_positive_source_claim_has_explicit_scope_and_no_proof_authority(self):
        with tempfile.TemporaryDirectory() as d:
            registry=RootRegistry({'fixture':Path(d),'alias':Path(d)})
            source=registry.write('fixture','source.rs',b'fn fixture() {}')
            spec=registry.write('fixture','spec.md',b'source-byte-identity fixture')
            record={'format':'core036.source.v2','work_id':'w001','record_id':'fixture',
                'specification_ref':spec,'source_subject_ref':source,'inputs':[source],
                'outcome':{'operational':'completed','acceptance':'blocked'},'reason':'no semantic proof',
                'blocking_ref':spec,'product_adoption':'unactivated',
                'files':[{'logical_ref':source,'snapshot_ref':source}]}
            reference=registry.write('fixture','subject.json',record)
            alias=registry.reference('alias','subject.json')
            gate=checked_source_gate(reference,alias,registry=registry,
                dependencies=('compiler','cfg'),backend='memory',endpoint='control-transport')
            self.assertEqual(gate.status,'met')
            self.assertTrue(gate_valid(gate,reference['sha256'],kind='source',current_dependencies=('compiler','cfg'),backend='memory',endpoint='control-transport'))
            self.assertFalse(gate_valid(gate,reference['sha256'],kind='native_proof',current_dependencies=('compiler','cfg'),backend='memory',endpoint='control-transport'))
            self.assertFalse(gate_valid(gate,reference['sha256']))
            self.assertFalse(gate_valid(gate,reference['sha256'],kind='source',current_dependencies=('compiler','cfg'),backend='durable',endpoint='control-transport'))
            (Path(d)/'source.rs').write_bytes(b'changed')
            bad=checked_source_gate(reference,alias,registry=registry,dependencies=('compiler','cfg'),backend='memory',endpoint='control-transport')
            self.assertEqual(bad.status,'unmet');self.assertFalse(gate_valid(bad,reference['sha256']))
            blocked=blocked_claim(reference['sha256'],kind='proof',reason='Native theorem is not built',
                blocking_ref=spec,registry=registry,dependencies=('compiler','cfg'),backend='memory',endpoint='control-transport')
            self.assertEqual(blocked.status,'blocked')
            self.assertFalse(gate_valid(blocked,reference['sha256'],kind='proof',current_dependencies=('compiler','cfg'),backend='memory',endpoint='control-transport'))
