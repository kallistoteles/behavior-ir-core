"""Carry the admitted storage allocation into bounded preparation only."""

import copy
import json
from pathlib import Path
import unittest
from unittest.mock import patch


class NativePreparationCapacityTests(unittest.TestCase):
    def test_actual_closed_basis_and_protected_input_controls(self):
        from bootstrap import validate_v2_profile
        from native_preparation_capacity_v2 import planned_preparation_limits

        root = Path(__file__).resolve().parents[4]
        for name in ["native-preparation-capacity-001", "env-preparation-capacity-001"]:
            profile = json.loads(
                (
                    root
                    / "specs/036-core-transition-feasibility/inputs/v2/profiles"
                    / (name + ".json")
                ).read_bytes()
            )
            self.assertIs(validate_v2_profile(profile), profile)
            bad = copy.deepcopy(profile)
            bad["limits"]["attempt_seconds"] += 1
            with self.assertRaises(ValueError):
                validate_v2_profile(bad)
            bad = copy.deepcopy(profile)
            bad["inputs"][0] = {
                "root_id": "private",
                "path": "parameters.bin",
                "bytes": 0,
                "sha256": "0" * 64,
            }
            with patch(
                "controller_v2.artifact_context_for",
                side_effect=AssertionError("protected input reached IO"),
            ):
                with self.assertRaises(ValueError):
                    planned_preparation_limits(bad)

    def profiles(self, stage):
        root = Path(__file__).resolve().parents[4]
        old = json.loads(
            (
                root
                / "specs/036-core-transition-feasibility/inputs/v2/profiles/quality-combined-continuation-001.json"
            ).read_bytes()
        )
        new = copy.deepcopy(old)
        new["stage"] = stage
        if stage == "NATIVE":
            new["limits"].update(attempt_seconds=14400, extended_child_seconds=7200)
        return old, new

    def test_exact_storage_and_original_stage_clocks_only(self):
        from native_preparation_capacity_v2 import preparation_limits

        for stage in ["NATIVE", "ENV"]:
            old, new = self.profiles(stage)
            self.assertEqual(preparation_limits(old, new), new["limits"])
            for key in new["limits"]:
                bad = copy.deepcopy(new)
                bad["limits"][key] += 1
                with (
                    self.subTest(stage=stage, field=key),
                    self.assertRaises(ValueError),
                ):
                    preparation_limits(old, bad)

    def test_wrong_subject_stage_and_boolean_budget_fail(self):
        from native_preparation_capacity_v2 import preparation_limits

        old, new = self.profiles("NATIVE")
        for key in ["work_id", "roots", "native_profile", "specification_ref", "stage"]:
            bad = copy.deepcopy(new)
            bad[key] = "changed"
            with self.subTest(key=key), self.assertRaises(ValueError):
                preparation_limits(old, bad)
        new["limits"]["cpu_workers"] = True
        with self.assertRaises(ValueError):
            preparation_limits(old, new)

    def test_only_named_preparation_decision_dispatches(self):
        from continued_capacity_v2 import planned_continued_limits

        _, new = self.profiles("NATIVE")
        new["allocation"]["correction"]["path"] = (
            "specs/036-core-transition-feasibility/inputs/v2/native-preparation-capacity-001.json"
        )
        with patch(
            "native_preparation_capacity_v2.planned_preparation_limits",
            return_value=new["limits"],
        ) as selected:
            self.assertEqual(planned_continued_limits(new), new["limits"])
            selected.assert_called_once_with(new)
