"""Inference support must be an exact source-bound elaborator correction."""

from pathlib import Path
import copy
import unittest

UPSTREAM = Path(
    "/var/tmp/behavior-ir-core036-v2/w001/analysis-backend-build/a0058/lean/Aeneas/Tactic/Elab/TraitDefault/Init.lean"
)


class ImplUniverseSupportTests(unittest.TestCase):
    def test_actual_source_moves_generalization_after_field_inference(self):
        from impl_universe_support_v2 import support_source, support_patch

        raw = UPSTREAM.read_bytes()
        support = support_source(raw)
        self.assertLess(
            support.index(b"elabTermEnsuringType"),
            support.index(b"Term.levelMVarToParam"),
        )
        self.assertLess(
            support.index(b"resolveStructFields"),
            support.index(b"Term.levelMVarToParam"),
        )
        self.assertEqual(support.count(b"Term.levelMVarToParam"), 1)
        self.assertIn(b"exprContainsFVar processedVal", support)
        self.assertIn(b"(priority := high)", support)
        self.assertTrue(support_patch(raw))

    def test_source_drift_or_added_behavior_cannot_reuse_the_binding(self):
        from impl_universe_support_v2 import (
            support_source,
            support_patch,
            validate_support_bytes,
        )

        raw = UPSTREAM.read_bytes()
        support = support_source(raw)
        patch = support_patch(raw)
        validate_support_bytes(raw, support, patch)
        with self.assertRaises(ValueError):
            support_source(raw + b"\n")
        with self.assertRaises(ValueError):
            validate_support_bytes(raw, support + b"\naxiom bypass : False\n", patch)
        with self.assertRaises(ValueError):
            validate_support_bytes(raw, support, patch + b"altered")

    def test_only_the_matching_completed_real_baseline_can_enable_a_candidate(self):
        from impl_universe_support_v2 import validate_baseline

        subject = {"root_id": "work", "path": "subject", "bytes": 1, "sha256": "a" * 64}
        cp = {
            "source_subject_ref": subject,
            "stage_outcome": "succeeded",
            "source_validation_error": None,
            "outcome": {"operational": "closed"},
        }
        result = {
            "format": "core036.impl-universe-diagnostic-result.v2",
            "source_subject_ref": subject,
            "native_proof": "unestablished",
            "feature_complete": False,
            "observed_baseline_universe_failure": True,
            "commands": [
                {"module": n, "exit_code": c}
                for n, c in {
                    "ImplPositive": 0,
                    "ImplInferred": 1,
                    "ImplHigherWrong": 1,
                    "ImplCycle": 1,
                }.items()
            ],
        }
        validate_baseline(cp, result)
        for mutation in [
            lambda c, r: c.update(stage_outcome="failed"),
            lambda c, r: c.update(source_validation_error="changed"),
            lambda c, r: r["commands"][1].update(exit_code=0),
            lambda c, r: r["commands"].pop(),
            lambda c, r: r.update(source_subject_ref={}),
            lambda c, r: r.update(native_proof="proved"),
            lambda c, r: r.update(feature_complete=True),
        ]:
            c, r = copy.deepcopy((cp, result))
            mutation(c, r)
            with self.assertRaises(ValueError):
                validate_baseline(c, r)


class ValidatedImplSupportTests(unittest.TestCase):
    def fixture(self):
        subject = {"root_id": "work", "path": "subject", "bytes": 1, "sha256": "a" * 64}
        support = {
            "root_id": "repository",
            "path": "Support.lean",
            "bytes": 1,
            "sha256": "b" * 64,
        }
        cp = {
            "source_subject_ref": subject,
            "stage_outcome": "succeeded",
            "source_validation_error": None,
            "outcome": {"operational": "closed"},
        }
        codes = {
            "ImplDefInferenceSupport": 0,
            "ImplPositive": 0,
            "ImplInferred": 0,
            "ImplHigherWrong": 1,
            "ImplCycle": 1,
            "ImplUniverseLaws": 0,
            "ImplUniverseAudit": 0,
            "fresh-kernel": 0,
        }
        roots = [
            "transition_study036.ImplUniverseControl.good_matches",
            "transition_study036.ImplUniverseControl.inferred_write",
            "transition_study036.ImplUniverseControl.polymorphic_write",
        ]
        result = {
            "format": "core036.impl-universe-diagnostic-result.v2",
            "source_subject_ref": subject,
            "native_proof": "unestablished",
            "feature_complete": False,
            "observed_baseline_universe_failure": False,
            "fresh_kernel": "passed",
            "commands": [{"module": n, "exit_code": c} for n, c in codes.items()],
            "selected_model_theorem_audit": [
                {"declaration": n, "type_repr": "checked statement", "axioms": []}
                for n in roots
            ],
        }
        manifest = {
            "files": [
                {
                    "logical_ref": copy.deepcopy(support),
                    "snapshot_ref": {**support, "root_id": "work"},
                }
            ]
        }
        return cp, result, support, manifest

    def test_passed_candidate_is_still_conditional_support_only(self):
        from impl_universe_support_v2 import validate_candidate

        values = self.fixture()
        validate_candidate(*values)
        self.assertEqual(values[1]["native_proof"], "unestablished")

    def test_omitted_kernel_changed_source_or_positive_negative_control_refuses(self):
        from impl_universe_support_v2 import validate_candidate

        mutations = [
            lambda c, r, s, m: r["commands"].pop(),
            lambda c, r, s, m: r["commands"][3].update(exit_code=0),
            lambda c, r, s, m: r.update(fresh_kernel="not_run"),
            lambda c, r, s, m: c.update(source_validation_error="changed"),
            lambda c, r, s, m: s.update(sha256="c" * 64),
            lambda c, r, s, m: r.update(native_proof="proved"),
        ]
        for mutation in mutations:
            values = copy.deepcopy(self.fixture())
            mutation(*values)
            with self.assertRaises(ValueError):
                validate_candidate(*values)

    def test_unproved_behavior_cannot_become_model_or_native_authority(self):
        from impl_universe_support_v2 import validate_candidate

        values = self.fixture()
        values[1]["selected_model_theorem_audit"][0]["axioms"] = [
            {
                "name": "core.io.error.Error",
                "type_repr": "Sort1",
                "classification": "unproved_external_type_parameter",
            }
        ]
        validate_candidate(*values)
        for axiom in [
            {
                "name": "wanted_equality",
                "type_repr": "False",
                "classification": "unproved_external_type_parameter",
            },
            {
                "name": "core.io.error.Error",
                "type_repr": "",
                "classification": "unproved_external_type_parameter",
            },
            {
                "name": "core.io.error.Error",
                "type_repr": "False",
                "classification": "behavioral",
            },
        ]:
            bad = copy.deepcopy(values)
            bad[1]["selected_model_theorem_audit"][0]["axioms"] = [axiom]
            with self.assertRaises(ValueError):
                validate_candidate(*bad)
