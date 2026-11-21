"""A failed, substituted or incomplete diagnostic cannot authorize tool reuse."""

import copy
import unittest


class FrontendValidationTests(unittest.TestCase):
    def fixture(self):
        from frontend_source_support_v2 import FRONTEND_CODES

        subject = {"sha256": "a" * 64}
        cp = dict(
            stage_outcome="succeeded",
            source_validation_error=None,
            source_subject_ref=subject,
            outcome={"operational": "closed"},
        )
        patch = dict(sha256="b" * 64)
        result = dict(
            format="core036.frontend-diagnostic-result.v2",
            source_subject_ref=subject,
            passed=True,
            native_proof="unestablished",
            feature_complete=False,
            patch_ref=copy.deepcopy(patch),
            original_sources_unchanged=True,
            generated_bodies_unmodified=True,
            commands=[
                dict(label=n, exit_code=c, timed_out=False)
                for n, c in FRONTEND_CODES.items()
            ],
        )
        return cp, result, patch

    def test_matching_complete_diagnostic_can_authorize_only_source_support(self):
        from frontend_source_support_v2 import validate_diagnostic

        validate_diagnostic(*self.fixture())

    def test_failed_missing_kernel_timedout_and_changed_subject_are_rejected(self):
        from frontend_source_support_v2 import validate_diagnostic

        mutations = [
            lambda c, r, p: c.update(stage_outcome="failed"),
            lambda c, r, p: c.update(source_validation_error="changed"),
            lambda c, r, p: r["commands"].pop(),
            lambda c, r, p: r["commands"][0].update(timed_out=True),
            lambda c, r, p: r["commands"][2].update(exit_code=0),
            lambda c, r, p: r.update(source_subject_ref={}),
            lambda c, r, p: r.update(native_proof="proved"),
            lambda c, r, p: p.update(sha256="c" * 64),
        ]
        for mutation in mutations:
            values = copy.deepcopy(self.fixture())
            mutation(*values)
            with self.assertRaises(ValueError):
                validate_diagnostic(*values)

    def test_duplicate_or_boolean_exit_cannot_replace_expected_integer_results(self):
        from frontend_source_support_v2 import validate_diagnostic

        values = self.fixture()
        values[1]["commands"][0]["exit_code"] = False
        with self.assertRaises(ValueError):
            validate_diagnostic(*values)
        values = self.fixture()
        values[1]["commands"].append(values[1]["commands"][0])
        with self.assertRaises(ValueError):
            validate_diagnostic(*values)
