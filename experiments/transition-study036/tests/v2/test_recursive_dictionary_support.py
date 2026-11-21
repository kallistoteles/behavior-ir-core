"""Closed toy proof evidence can authorize only its exact source mechanism."""

import copy
import unittest


class RecursiveDictionarySupportTests(unittest.TestCase):
    def fixture(self):
        from recursive_dictionary_source_v2 import CODES, ROOTS

        subject = {"sha256": "a" * 64}
        cp = dict(
            stage_outcome="succeeded",
            source_validation_error=None,
            source_subject_ref=subject,
            outcome={"operational": "closed"},
        )
        result = dict(
            format="core036.recursive-dictionary-control-result.v2",
            source_subject_ref=subject,
            all_control_outcomes_matched=True,
            fresh_kernel="passed",
            native_proof="unestablished",
            feature_complete=False,
            generated_type_and_function_bodies_unmodified=True,
            commands=[
                dict(
                    module="WorkerEntrypointsNames." + name,
                    exit_code=code,
                    expected_exit_code=code,
                    timed_out=False,
                )
                for name, code in CODES.items()
            ],
            selected_model_theorem_audit=[
                dict(
                    declaration=name,
                    type_repr="expected",
                    axioms=[dict(name="propext", type_repr="actual")],
                )
                for name in ROOTS
            ],
        )
        return cp, result

    def test_complete_model_is_accepted_only_as_a_model(self):
        from recursive_dictionary_source_v2 import validate_mechanism

        validate_mechanism(*self.fixture())

    def test_failure_subject_kernel_native_claim_and_omissions_are_rejected(self):
        from recursive_dictionary_source_v2 import validate_mechanism

        changes = [
            lambda c, r: c.update(stage_outcome="failed"),
            lambda c, r: c.update(source_validation_error="changed"),
            lambda c, r: r.update(source_subject_ref={}),
            lambda c, r: r.update(fresh_kernel="not_established"),
            lambda c, r: r.update(native_proof="proved"),
            lambda c, r: r.update(feature_complete=True),
            lambda c, r: r["commands"].pop(),
            lambda c, r: r["commands"][0].update(exit_code=False),
            lambda c, r: r["commands"][0].update(timed_out=True),
            lambda c, r: r["selected_model_theorem_audit"].pop(),
            lambda c, r: r["selected_model_theorem_audit"][0]["axioms"].append(
                dict(name="sorryAx", type_repr="forbidden")
            ),
        ]
        for change in changes:
            values = copy.deepcopy(self.fixture())
            change(*values)
            with self.assertRaises(ValueError):
                validate_mechanism(*values)

    def test_duplicate_kernel_or_changed_expected_exit_is_rejected(self):
        from recursive_dictionary_source_v2 import validate_mechanism

        values = self.fixture()
        values[1]["commands"][-1] = values[1]["commands"][0]
        with self.assertRaises(ValueError):
            validate_mechanism(*values)
        values = self.fixture()
        values[1]["commands"][1]["expected_exit_code"] = 0
        with self.assertRaises(ValueError):
            validate_mechanism(*values)


class RecursiveDictionaryParseAdmissionTests(unittest.TestCase):
    def fixture(self):
        import hashlib

        subject = {"sha256": "a" * 64}
        changes = {"Translate.ml": b"actual proposed source"}
        cp = dict(
            stage_outcome="succeeded",
            source_validation_error=None,
            source_subject_ref=subject,
            outcome={"operational": "closed"},
        )
        result = dict(
            format="core036.dictionary-source-parse-result.v2",
            source_subject_ref=subject,
            source_syntax_checked=True,
            original_sources_unchanged=True,
            source_typecheck="not_run",
            translator_build="not_run",
            native_proof="unestablished",
            feature_complete=False,
            prospective_sources={
                "Translate.ml": dict(
                    bytes=22, sha256=hashlib.sha256(changes["Translate.ml"]).hexdigest()
                )
            },
            commands=[dict(label="Translate.ml", exit_code=0, timed_out=False)],
        )
        # Derive the actual source size; the admission compares all content bytes.
        result["prospective_sources"]["Translate.ml"]["bytes"] = len(
            changes["Translate.ml"]
        )
        return cp, result, changes

    def test_actual_parse_is_a_separate_syntax_only_prerequisite(self):
        from recursive_dictionary_source_v2 import validate_source_parse

        validate_source_parse(*self.fixture())

    def test_failed_substituted_or_promoted_parse_never_authorizes_build(self):
        from recursive_dictionary_source_v2 import validate_source_parse

        mutations = [
            lambda c, r, s: r.update(source_syntax_checked=False),
            lambda c, r, s: c.update(stage_outcome="failed"),
            lambda c, r, s: r["commands"][0].update(exit_code=False),
            lambda c, r, s: r["commands"].clear(),
            lambda c, r, s: s.update({"Translate.ml": b"changed"}),
            lambda c, r, s: r.update(source_typecheck="passed"),
            lambda c, r, s: r.update(native_proof="proved"),
        ]
        for mutate in mutations:
            args = self.fixture()
            mutate(*args)
            with self.assertRaises(ValueError):
                validate_source_parse(*args)
