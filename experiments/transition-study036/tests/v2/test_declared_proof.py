"""Expected types belong to the executor; JSON reports cannot certify proofs."""

import unittest


class DeclaredProofTests(unittest.TestCase):
    def test_literal_replay_program_compiles_with_the_pinned_lean(self):
        import os
        from pathlib import Path
        import subprocess
        import tempfile
        from artifact_io import digest
        from controller_v2 import artifact_context_for
        from kernel_literal_replay_v2 import SOURCE

        refs, _ = artifact_context_for("w001")
        config = refs.read(refs.reference("repository", "experiments/transition-study036/analysis-canary-inputs-v2.json"))
        runtime = refs.read(config["lean_ref"])
        sdk = Path(runtime["sdk"])
        executable = next(row for row in runtime["patched_binaries"] if row["path"] == str(sdk / "bin/lean"))
        native = refs.read(refs.reference("repository", "experiments/transition-study036/native-environment-inputs-v2.json"))
        cc = native["tools"]["cc"]
        self.assertEqual(digest(cc["path"]), cc["sha256"])
        self.assertEqual(digest(sdk / "bin/lean"), executable["sha256"])
        with tempfile.TemporaryDirectory() as directory:
            project = Path(directory) / "project"
            project.mkdir()
            source = project / "KernelLiteralReplay.lean"
            source.write_text(SOURCE)
            env = {**os.environ, **runtime["environment"], "LEAN_PATH": directory}
            checked = subprocess.run(
                [str(sdk / "bin/lean"), "-j1", "-M4096", "-R", str(project), str(source)],
                cwd=directory, env=env, capture_output=True, text=True,
                timeout=45, check=False,
            )
            self.assertEqual(checked.returncode, 0, checked.stdout + checked.stderr)
        self.assertEqual(digest(sdk / "bin/lean"), executable["sha256"])
        self.assertEqual(digest(cc["path"]), cc["sha256"])

    def test_wrong_proof_control_preserves_theorem_type_and_other_bytes(self):
        import json
        from kernel_literal_replay_v2 import wrong_root_proof

        raw = b'{"meta":{}}\n{"thm":{"name":9,"type":3,"value":4}}\n{"ie":5,"natVal":0}\n'
        roots = [{"declaration": "target"}]
        policy = {"root_line_indices": {"target": 1}}
        changed = wrong_root_proof(raw, policy, roots).splitlines()
        self.assertEqual(changed[0], raw.splitlines()[0])
        self.assertEqual(changed[2], raw.splitlines()[2])
        theorem = json.loads(changed[1])["thm"]
        self.assertEqual(theorem["name"], 9)
        self.assertEqual(theorem["type"], 3)
        self.assertEqual(theorem["value"], 3)

    def test_wrong_proof_control_refuses_an_already_changed_subject(self):
        from kernel_literal_replay_v2 import wrong_root_proof

        with self.assertRaisesRegex(ValueError, "LiteralReplayWrongProofSubject"):
            wrong_root_proof(
                b'{"thm":{"name":9,"type":3,"value":3}}\n',
                {"root_line_indices": {"target": 0}},
                [{"declaration": "target"}],
            )

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
