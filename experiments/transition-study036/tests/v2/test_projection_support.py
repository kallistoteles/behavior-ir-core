"""Only a closed, matching, kernel-checked diagnostic can supply search support."""

import copy
import unittest


class ProjectionSupportTests(unittest.TestCase):
    def fixture(self):
        source = {
            "root_id": "repository",
            "path": "support.lean",
            "bytes": 4,
            "sha256": "a" * 64,
        }
        subject = {
            "root_id": "work",
            "path": "subjects/current/manifest.json",
            "bytes": 1,
            "sha256": "b" * 64,
        }
        checkpoint = {
            "source_subject_ref": subject,
            "stage_outcome": "succeeded",
            "source_validation_error": None,
            "outcome": {"operational": "closed"},
        }
        codes = {
            "NativeOption": 0,
            "ForwardProjectionSupport": 0,
            "OptionContinuity": 0,
            "LogicBackward": 1,
            "LogicForward": 0,
            "Projection": 0,
            "WrongGoal": 1,
            "OpaqueValue": 1,
            "Audit": 0,
            "fresh-kernel": 0,
        }
        result = {
            "source_subject_ref": subject,
            "native_proof": "unestablished",
            "feature_complete": False,
            "commands": [{"module": k, "exit_code": v} for k, v in codes.items()],
            "selected_model_theorem_audit": [
                {"declaration": n, "type_repr": "checked actual type", "axioms": []}
                for n in [
                    "transition_study036.option_element_cont",
                    "transition_study036.projection_cont",
                    "logic_forward",
                ]
            ],
        }
        manifest = {
            "files": [
                {
                    "logical_ref": copy.deepcopy(source),
                    "snapshot_ref": {
                        **source,
                        "root_id": "work",
                        "path": "frozen/support",
                    },
                }
            ]
        }
        return checkpoint, result, source, manifest

    def test_complete_selected_diagnostic_is_support_only(self):
        from projection_support_v2 import validate_diagnostic_support

        values = self.fixture()
        self.assertTrue(validate_diagnostic_support(*values))
        self.assertEqual(values[1]["native_proof"], "unestablished")
        self.assertFalse(values[1]["feature_complete"])

    def test_kernel_wrong_goal_opaque_dependency_and_subject_are_required(self):
        from projection_support_v2 import validate_diagnostic_support

        changes = [
            lambda c, r, s, m: r["commands"].pop(),
            lambda c, r, s, m: r["commands"][-1].update(exit_code=1),
            lambda c, r, s, m: r["commands"][6].update(exit_code=0),
            lambda c, r, s, m: r["commands"][7].update(exit_code=0),
            lambda c, r, s, m: c.update(stage_outcome="failed"),
            lambda c, r, s, m: c.update(source_validation_error="changed"),
            lambda c, r, s, m: c["outcome"].update(operational="running"),
            lambda c, r, s, m: r.update(source_subject_ref={}),
            lambda c, r, s, m: r.update(native_proof="proved"),
            lambda c, r, s, m: r.update(feature_complete=True),
        ]
        for change in changes:
            values = copy.deepcopy(self.fixture())
            change(*values)
            with self.assertRaises(ValueError):
                validate_diagnostic_support(*values)

    def test_new_source_or_behavioral_axiom_cannot_inherit_old_validation(self):
        from projection_support_v2 import validate_diagnostic_support

        changes = [
            lambda c, r, s, m: s.update(sha256="c" * 64),
            lambda c, r, s, m: m["files"].clear(),
            lambda c, r, s, m: m["files"].append(copy.deepcopy(m["files"][0])),
            lambda c, r, s, m: r["selected_model_theorem_audit"][0]["axioms"].append(
                {"name": "desired_native_equivalence", "type_repr": "False"}
            ),
            lambda c, r, s, m: r["selected_model_theorem_audit"].pop(),
        ]
        for change in changes:
            values = copy.deepcopy(self.fixture())
            change(*values)
            with self.assertRaises(ValueError):
                validate_diagnostic_support(*values)
