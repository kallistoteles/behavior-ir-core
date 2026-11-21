"""Reuse only successful source-matched imports from a closed failed probe."""

import copy
import unittest


class SyntaxResumeTests(unittest.TestCase):
    def fixture(self):
        from syntax_resume_v2 import PRE_MODULES

        subject = {"sha256": "a" * 64}
        config = {"extraction_result_ref": {"sha256": "b" * 64}}
        cp = dict(
            stage_outcome="failed",
            source_validation_error=None,
            source_subject_ref=subject,
            outcome={"operational": "closed"},
        )
        result = dict(
            format="core036.ground-lean-probe-result.v2",
            source_subject_ref=subject,
            native_proof="unestablished",
            feature_complete=False,
            generated_module_prefix="Native",
            generated_type_and_function_bodies_unmodified=True,
            commands=[
                dict(module="Native." + name, exit_code=0) for name in PRE_MODULES
            ]
            + [dict(module="Native.NativeSyntaxControl", exit_code=1)],
        )
        return cp, result, config, copy.deepcopy(config), "Native"

    def test_successful_imports_do_not_turn_the_failed_parent_into_native_proof(self):
        from syntax_resume_v2 import validate_parent

        validate_parent(*self.fixture())
        self.assertEqual(self.fixture()[0]["stage_outcome"], "failed")

    def test_failed_import_changed_context_boolean_exit_or_native_claim_rejects(self):
        from syntax_resume_v2 import validate_parent

        mutations = [
            lambda c, r, x, f, p: r["commands"][0].update(exit_code=1),
            lambda c, r, x, f, p: r["commands"][0].update(exit_code=False),
            lambda c, r, x, f, p: c.update(source_validation_error="changed"),
            lambda c, r, x, f, p: r.update(native_proof="proved"),
            lambda c, r, x, f, p: x.update(other_context=True),
        ]
        for mutate in mutations:
            values = self.fixture()
            mutate(*values)
            with self.assertRaises(ValueError):
                validate_parent(*values)

    def test_missing_or_duplicated_module_cannot_supply_import_coverage(self):
        from syntax_resume_v2 import validate_parent

        values = self.fixture()
        values[1]["commands"].pop(0)
        with self.assertRaises(ValueError):
            validate_parent(*values)
        values = self.fixture()
        values[1]["commands"].append(values[1]["commands"][0])
        with self.assertRaises(ValueError):
            validate_parent(*values)
