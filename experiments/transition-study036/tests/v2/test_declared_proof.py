"""Expected types belong to the executor; JSON reports cannot certify proofs."""

import unittest


class DeclaredProofTests(unittest.TestCase):
    def roots(self):
        return [
            {
                "id": "helper.identity",
                "declaration": "core036_identity_correct",
                "expected_type": "(value : Aeneas.Std.U64) → core036_identity.identity value = Aeneas.Std.Result.ok value",
            }
        ]

    def test_shared_audit_checks_theorem_kind_type_and_transitive_axiom_types(self):
        from check_proofs import theorem_audit_source_v2

        source = theorem_audit_source_v2("ProofRoot", self.roots())
        for required in [
            ".thmInfo",
            "isDefEq",
            "collectAxioms",
            "Wrong expected theorem type",
            "Unexpected transitive axiom",
            "type_repr",
            "CORE036_PROOF_AUDIT",
            "propext",
            "Classical.choice",
            "Quot.sound",
            "Wrong foundation axiom type",
        ]:
            self.assertIn(required, source)

    def test_empty_duplicate_or_injectable_root_metadata_is_rejected(self):
        from check_proofs import theorem_audit_source_v2

        bad = [
            [],
            self.roots() * 2,
            [{**self.roots()[0], "id": "B10", "expected_type": ""}],
            [{**self.roots()[0], "declaration": "root\naxiom bypass : False"}],
            [{**self.roots()[0], "status": "proved_for_declared_subject"}],
        ]
        for roots in bad:
            with self.subTest(roots=roots), self.assertRaises(ValueError):
                theorem_audit_source_v2("ProofRoot", roots)
        with self.assertRaises(ValueError):
            theorem_audit_source_v2("ProofRoot\nimport Evil", self.roots())

    def test_audit_rows_must_cover_exact_expected_roots_and_have_types(self):
        from check_proofs import validate_theorem_audit_v2

        expected = self.roots()
        row = {
            "id": "helper.identity",
            "declaration": "core036_identity_correct",
            "type_repr": "actual Lean Expr",
            "axioms": [],
        }
        validate_theorem_audit_v2([row], expected)
        for rows in [
            [],
            [row, row],
            [{**row, "id": "B10"}],
            [{**row, "declaration": "helper_as_native"}],
            [{**row, "type_repr": ""}],
            [{**row, "axioms": [{"name": "nativeEquality", "type_repr": "False"}]}],
            [{**row, "axioms": [{"name": "propext", "type_repr": ""}]}],
        ]:
            with self.subTest(rows=rows), self.assertRaises(ValueError):
                validate_theorem_audit_v2(rows, expected)

    def test_all_six_statuses_are_syntax_only_and_not_proof_authority(self):
        from check_proofs import validate_obligation_statuses_v2, native_verified

        statuses = [
            "unestablished",
            "in_progress",
            "proved_for_declared_subject",
            "checked_conformance_only",
            "explicit_external_premise",
            "refuted",
        ]
        for status in statuses:
            rows = [{"id": f"B{i:02}", "status": status} for i in range(1, 11)]
            validate_obligation_statuses_v2(rows)
            self.assertFalse(native_verified({"obligations": rows, "verified": True}))
        for rows in [
            [],
            [{"id": "B01", "status": "proved"}],
            [{"id": f"B{i:02}", "status": "proved"} for i in range(1, 11)],
            [{"id": f"B{i:02}", "status": "unestablished"} for i in range(1, 10)]
            + ["B10"],
        ]:
            with self.subTest(rows=rows), self.assertRaises(ValueError):
                validate_obligation_statuses_v2(rows)
