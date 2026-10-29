import unittest
from assess import assess_claims
class AssessTests(unittest.TestCase):
    def test_missing_or_failed_obligations_block_completion(self):
        good={'native_complete':True,'exactness':True,'proof_small_verified':True,'bridge_matched':True,'first_use_repetitions':3,'reuse_repetitions':3,'proof_integrity':True,'negative_controls':True,'compatibility':True,'recovery':True,'portable':True,'dossier':True}
        self.assertTrue(assess_claims(good)['complete'])
        for key in good:
            bad=dict(good);bad.pop(key);self.assertFalse(assess_claims(bad)['complete'])
        bad=dict(good,proof_small_verified=False);self.assertFalse(assess_claims(bad)['complete'])
        bad=dict(good,first_use_repetitions=2);self.assertFalse(assess_claims(bad)['complete'])
if __name__=='__main__':unittest.main()
