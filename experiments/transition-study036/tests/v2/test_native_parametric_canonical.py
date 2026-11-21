"""Type-only source transformation must preserve every original operation."""

import hashlib
from pathlib import Path
import unittest

FIXTURE = Path(__file__).parent / "fixtures/parametric-error"


class ParametricCanonicalTests(unittest.TestCase):
    def test_audit_driver_imports_full_transitive_proof_bodies(self):
        from native_parametric_canonical_v2 import audit_driver

        self.assertEqual(
            audit_driver(),
            b"import NativeParametricConservation\n"
            b"import NativeParametricCanonicalSource\n#core036_parametric_audit\n",
        )

    def test_kernel_control_must_fail_only_at_the_audit_command(self):
        from native_parametric_canonical_v2 import valid_rejection

        source = "module\n\n#core036_parametric_audit\n"
        filename = "/synthetic/Control.lean"
        kernel = (
            filename + ":3:0: error: Core036ParametricConservation: "
            "function-kernel-certificate (kernel) type mismatch\n"
        )
        self.assertTrue(valid_rejection(kernel, source, filename))
        self.assertFalse(
            valid_rejection(kernel.replace(":3:0:", ":2:0:"), source, filename)
        )
        self.assertFalse(valid_rejection(kernel, source, "/synthetic/Other.lean"))
        self.assertFalse(
            valid_rejection(
                filename + ":1:0: error: type mismatch\n" + kernel, source, filename
            )
        )
        self.assertFalse(
            valid_rejection(
                kernel.replace(
                    "function-kernel-certificate",
                    "original-expansion-kernel-certificate",
                ),
                source,
                filename,
            )
        )

    def test_error_constructors_bind_both_carriers_before_try_match(self):
        from native_parametric_canonical_v2 import parameterize_row

        row = parameterize_row((FIXTURE / "state_fact_row.lean").read_text())
        self.assertEqual(
            row.count("error.ParametricStudyError.Prerequisite (J := J) (I := I)"),
            2,
        )

    def test_protected_refs_and_wrong_subject_cannot_read_models(self):
        from native_parametric_canonical_v2 import prepare, FUNS_SHA, TYPES_SHA

        class NoRead:
            def read(self, reference):
                raise AssertionError("protected reference read")

        for name in ("parameters.bin", "compression_prover_key.bin"):
            with self.assertRaisesRegex(ValueError, "ProtectedArtifact"):
                prepare(
                    NoRead(), {"path": "synthetic/" + name}, Path("/synthetic"), {}, {}
                )

        class Selection:
            def read(self, reference):
                return {
                    "format": "core036.native-parametric-canonical.v2",
                    "scope": "universal_carrier_derivative_not_native_admission",
                    "funs_sha256": FUNS_SHA,
                    "types_sha256": TYPES_SHA,
                    "proof_ref": {"path": "synthetic/proof.lean"},
                    "conservation_ref": {"path": "synthetic/audit.lean"},
                    "native_proof": "unestablished",
                    "feature_complete": False,
                }

            def verify(self, reference):
                raise AssertionError("wrong original subject reached model IO")

        with self.assertRaisesRegex(ValueError, "ParametricCanonicalSelection"):
            prepare(
                Selection(),
                {"path": "synthetic/selector"},
                Path("/synthetic"),
                {},
                {"source_sha256": "0" * 64},
            )

    def test_actual_typed_conservation_fault_sources_are_distinct(self):
        from native_parametric_canonical_v2 import (
            parameterize_error,
            parameterize_row,
            assemble,
            controls,
        )

        old_type = (FIXTURE / "StudyError.lean").read_text()
        old_row = (FIXTURE / "state_fact_row.lean").read_text()
        raw = assemble(parameterize_error(old_type), parameterize_row(old_row))
        cases = controls(raw)
        self.assertEqual(len(cases), 5)
        self.assertEqual(len({label for label, _, _ in cases}), 5)
        for label, mutated, diagnostic in cases:
            with self.subTest(label=label):
                self.assertNotEqual(mutated.encode(), raw)
                self.assertEqual(diagnostic, "parametric-conservation")
                self.assertIn("#core036_parametric_audit", mutated)
                self.assertIn("import NativeParametricConservation", mutated)
                self.assertFalse(mutated.startswith("module\n"))

    def test_five_payload_constructors_and_original_operations_are_retained(self):
        from native_parametric_canonical_v2 import (
            parameterize_error,
            parameterize_row,
            assemble,
            validate_generated,
        )

        old_type = (FIXTURE / "StudyError.lean").read_text()
        old_row = (FIXTURE / "state_fact_row.lean").read_text()
        new_type = parameterize_error(old_type)
        new_row = parameterize_row(old_row)
        raw = assemble(new_type, new_row)
        validate_generated(old_type, old_row, raw)
        self.assertEqual(new_type.count("| "), 5)
        self.assertIn("| Json : J →", new_type)
        self.assertIn("| Io : I →", new_type)
        self.assertIn("{J I : Type}", new_row)
        self.assertIn('toStr "SeedIdentity"', new_row)
        self.assertIn('toStr "UnexpectedEntity"', new_row)
        self.assertNotIn("error.StudyError", new_row)
        self.assertIn('toStr "phase"', new_row)
        self.assertIn('toStr "owner"', new_row)

    def test_actual_first_error_body_payload_and_extra_premise_mutants_reject(self):
        from native_parametric_canonical_v2 import (
            parameterize_error,
            parameterize_row,
            assemble,
            validate_generated,
        )

        old_type = (FIXTURE / "StudyError.lean").read_text()
        old_row = (FIXTURE / "state_fact_row.lean").read_text()
        raw = assemble(parameterize_error(old_type), parameterize_row(old_row))
        mutations = [
            (b'toStr "SeedIdentity"', b'toStr "WrongFirstError"'),
            (b"| Json : J", b"| Json : I"),
            (b"| Io : I", b"| Io : J"),
            (b"{J I : Type}", b"{J I : Type} (assumeResult : False)"),
            (
                b"CoreOpsTry_traitFromResidualResult.from_residual",
                b"CoreOpsTry_traitFromResidualResult.wrong",
            ),
            (
                b"public import NativeProjectionLaws",
                b"public import NativeProjectionLaws\naxiom desiredEquivalence : False",
            ),
        ]
        for before, after in mutations:
            with self.subTest(before=before):
                self.assertIn(before, raw)
                with self.assertRaises(ValueError):
                    validate_generated(old_type, old_row, raw.replace(before, after, 1))

    def test_universal_expected_roots_do_not_assume_output_equality(self):
        from native_parametric_canonical_v2 import roots

        rows = roots()
        self.assertEqual(len(rows), 2)
        for row in rows:
            value = row["expected_type"]
            self.assertTrue(value.startswith("∀ (J I : Type)"))
            self.assertIn("parametric_state_fact_row (J := J) (I := I)", value)
            self.assertNotIn("Correspondence036.NativeParametricCanonicalChild", value)
            self.assertNotIn("serde_json.error.Error", value)
            self.assertNotIn("core.io.error.Error", value)
            self.assertIn("idRead", value)
            self.assertIn("idBound", value)
            self.assertNotIn("assumeResult", value)

    def test_wrong_original_producer_hash_cannot_generate_source(self):
        from native_parametric_canonical_v2 import generate

        with self.assertRaisesRegex(ValueError, "ParametricOriginalTypes"):
            generate(b"wrong-original-type", b"wrong-original-function")

    def test_fixtures_are_exact_original_source_slices(self):
        expected = {
            "StudyError.lean": "ecbf3aec6f84e9856c0238d9464f91374915408371e72c17399654b919de9a0f",
            "state_fact_row.lean": "b0b9a6e7de84ad5059df018e4ff634ac797609e1ec9cd64ef98e3dbdcfca81ab",
        }
        for name, checksum in expected.items():
            self.assertEqual(
                hashlib.sha256((FIXTURE / name).read_bytes()).hexdigest(), checksum
            )
