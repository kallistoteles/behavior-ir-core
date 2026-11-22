"""Unselected prospective tests: no execution or passing result claimed."""
import unittest


class NativeCanonicalRowContextTests(unittest.TestCase):
    def test_canonical_roots_match_independent_full_result_error_frame_contract(self):
        from native_canonical_row_context_v2 import canonical_row_roots
        from check_proofs import _validate_roots

        expected = [{'id': 'canonical_row.exact', 'declaration': 'Correspondence036.NativeCanonicalRow.state_fact_row_exact', 'expected_type': '∀ (row : transition_study036.behavior_store.documents.SeedEntity) (parents children : Correspondence036.NativeCanonicalRow.Map), Correspondence036.NativeCanonicalRow.InputDomain row parents children → transition_study036.reference.state_fact_row row parents children = Aeneas.Std.Result.ok (Correspondence036.NativeCanonicalRow.rowSpec row parents children)'}, {'id': 'canonical_row.seed_identity_first', 'declaration': 'Correspondence036.NativeCanonicalRow.seed_identity_first', 'expected_type': '∀ (row : transition_study036.behavior_store.documents.SeedEntity) (parents children : Correspondence036.NativeCanonicalRow.Map), Correspondence036.NativeCanonicalRow.InputDomain row parents children → Correspondence036.NativeCanonicalRow.textId row = none → transition_study036.reference.state_fact_row row parents children = Aeneas.Std.Result.ok (.Err (.Prerequisite (Aeneas.Std.toStr "SeedIdentity")), parents, children)'}, {'id': 'canonical_row.other_keys', 'declaration': 'Correspondence036.NativeCanonicalRow.other_keys', 'expected_type': '∀ (row : transition_study036.behavior_store.documents.SeedEntity) (parents children : Correspondence036.NativeCanonicalRow.Map) (id query : String), Correspondence036.NativeCanonicalRow.InputDomain row parents children → Correspondence036.NativeCanonicalRow.textId row = some id → query ≠ id → (do let (_, parents1, children1) ← transition_study036.reference.state_fact_row row parents children; Aeneas.Std.Result.ok (Correspondence036.NativeCanonicalRow.lookup parents1 query, Correspondence036.NativeCanonicalRow.lookup children1 query)) = Aeneas.Std.Result.ok (Correspondence036.NativeCanonicalRow.lookup parents query, Correspondence036.NativeCanonicalRow.lookup children query)'}]
        actual = canonical_row_roots()
        self.assertEqual(actual, expected)
        _validate_roots(actual)

    def test_canonical_source_packet_cannot_choose_expected_result_or_verifier(self):
        from native_canonical_row_context_v2 import validate_canonical_sources

        reference = dict(root_id="repository", path="source.lean", bytes=1, sha256="a" * 64)
        packet = dict(format="core036.native-canonical-row-sources.v2",
                      specification_source_ref=reference,
                      bridges_source_ref=reference, exact_source_ref=reference)
        validate_canonical_sources(packet)
        for key in ("specification_source_ref", "bridges_source_ref", "exact_source_ref"):
            with self.subTest(key=key), self.assertRaises(ValueError):
                validate_canonical_sources({k: v for k, v in packet.items() if k != key})
        for key, value in (("expected_roots", []), ("native_proof", "proved"),
                           ("feature_complete", True), ("verifier", "/candidate")):
            with self.subTest(key=key), self.assertRaises(ValueError):
                validate_canonical_sources({**packet, key: value})
