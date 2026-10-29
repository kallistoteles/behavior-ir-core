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


class RequirementTraceTests(unittest.TestCase):
    def test_every_requirement_has_independent_fail_closed_evidence(self):
        from assess import requirement_trace
        groups = ('contract', 'views_and_math', 'native', 'negative_controls', 'proof',
                  'lifecycle', 'protocol', 'costs', 'dispositions', 'compatibility')
        facts = dict.fromkeys(groups, True)
        rows = requirement_trace(facts)
        expected = {f'FR-{i:03d}' for i in range(1, 19)} | {f'SC-{i:03d}' for i in range(1, 7)}
        self.assertEqual({r['requirement'] for r in rows}, expected)
        self.assertEqual(len(rows), len(expected))
        self.assertTrue(all(r['satisfied'] for r in rows))
        for group in groups:
            missing = dict(facts)
            missing.pop(group)
            failed = [r for r in requirement_trace(missing) if not r['satisfied']]
            self.assertTrue(failed, group)
            self.assertTrue(all(r['evidence_group'] == group for r in failed))


class FormalBindingTests(unittest.TestCase):
    def test_checked_different_sources_or_theorems_cannot_support_the_campaign(self):
        import copy
        from assess import math_report_matches
        manifest = {'files': [{'role': 'source', 'origin': '/x/proofs/Model.lean', 'sha256': 'm'},
                              {'role': 'source', 'origin': '/x/proofs/Audit.lean', 'sha256': 'a'}]}
        targets = {'Model': ['Exact.claim']}
        report = {'outcome': 'Checked', 'fresh_kernel_replay': True,
                  'modules': {'Model': {'source_sha256': 'm'}}, 'audit_source_sha256': 'a',
                  'theorems': [{'target': 'Exact.claim', 'kind': 'theorem', 'axioms': ['propext']}]}
        self.assertTrue(math_report_matches(manifest, targets, report))
        mutations = [lambda r: r['modules']['Model'].update(source_sha256='other'),
                     lambda r: r.update(audit_source_sha256='other'),
                     lambda r: r['theorems'][0].update(target='True.trivial'),
                     lambda r: r['theorems'][0].update(axioms=['sorryAx']),
                     lambda r: r.update(fresh_kernel_replay=False),
                     lambda r: r['modules'].update(Other={'source_sha256': 'm'})]
        for mutate in mutations:
            changed = copy.deepcopy(report)
            mutate(changed)
            self.assertFalse(math_report_matches(manifest, targets, changed))
        self.assertFalse(math_report_matches(manifest, {}, report))


class VendorAuditTests(unittest.TestCase):
    def test_only_the_x86_asm_feature_patch_is_authorized(self):
        import hashlib, json, tempfile
        from pathlib import Path
        from assess import frozen_source_audit
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            feature = root / 'specs/study'
            feature.mkdir(parents=True)
            vendor = root / 'experiments/transition-study032/vendor'
            (vendor / 'nova').mkdir(parents=True)
            line = 'halo2curves = { version = "0.9.0", features = ["std", "bits", "derive_serde"] }'
            marker = "[target.'cfg(target_arch = \"x86_64\")'.dependencies]\n"
            portable = marker + line + "\n[target.'cfg(not(target_arch = \"x86_64\"))'.dependencies]\n" + line + '\n'
            upstream = portable.replace(marker + line, marker + line.replace('"derive_serde"]', '"derive_serde", "asm"]'), 1)
            (vendor / 'nova/Cargo.toml').write_text(portable)
            (vendor / 'nova/source.rs').write_text('unchanged source')
            (vendor / 'nova-portable.patch').write_text('reviewed patch')
            digest = lambda raw: hashlib.sha256(raw.encode()).hexdigest()
            origin = {'patch_sha256': digest('reviewed patch'), 'changed_files': ['Cargo.toml'],
                      'upstream_files_sha256': {'Cargo.toml': digest(upstream), 'source.rs': digest('unchanged source')}}
            (vendor / 'nova-upstream.json').write_text(json.dumps(origin))
            self.assertTrue(frozen_source_audit({'files': []}, feature)['passed'])
            (vendor / 'nova/source.rs').write_text('changed source')
            self.assertFalse(frozen_source_audit({'files': []}, feature)['passed'])
            (vendor / 'nova/source.rs').write_text('unchanged source')
            (vendor / 'nova/Cargo.toml').write_text(portable.replace('"derive_serde"]', '"derive_serde", "asm"]'))
            self.assertFalse(frozen_source_audit({'files': []}, feature)['passed'])

if __name__ == '__main__':
    unittest.main()
