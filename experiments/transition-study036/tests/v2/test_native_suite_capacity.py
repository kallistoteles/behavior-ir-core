"""Prospective full-suite clock change preserves every other admitted bound."""

import copy
import json
from pathlib import Path
import unittest
from unittest.mock import patch


class NativeSuiteCapacityTests(unittest.TestCase):
    def profiles(self):
        root = Path(__file__).resolve().parents[4]
        path = (
            root
            / "specs/036-core-transition-feasibility/inputs/v2/profiles/native-core-instrumentation-rebalance-001.json"
        )
        old = json.loads(path.read_bytes())
        new = copy.deepcopy(old)
        new["limits"]["extended_child_seconds"] = 7200
        return old, new

    def test_only_full_suite_child_allowance_changes_inside_original_native_stage(self):
        from native_suite_capacity_v2 import suite_limits

        old, new = self.profiles()
        self.assertEqual(suite_limits(old, new), new["limits"])
        self.assertEqual(new["limits"]["attempt_seconds"], 14400)
        self.assertEqual(new["limits"]["combined_bytes"], 44 * 1024**3)
        for field in new["limits"]:
            bad = copy.deepcopy(new)
            bad["limits"][field] += 1
            with self.subTest(field=field), self.assertRaises(ValueError):
                suite_limits(old, bad)
        for field in [
            "stage",
            "work_id",
            "roots",
            "native_profile",
            "specification_ref",
        ]:
            bad = copy.deepcopy(new)
            bad[field] = "changed"
            with self.subTest(field=field), self.assertRaises(ValueError):
                suite_limits(old, bad)

    def test_extended_allowance_cannot_be_boolean_or_a_different_clock(self):
        from native_suite_capacity_v2 import suite_limits

        old, new = self.profiles()
        for value in [True, 7200.0, 3600, 10800, 14400]:
            bad = copy.deepcopy(new)
            bad["limits"]["extended_child_seconds"] = value
            with self.subTest(value=value), self.assertRaises(ValueError):
                suite_limits(old, bad)

    def test_only_native_suite_dispatch_uses_its_declared_extended_child_clock(self):
        from native_suite_capacity_v2 import native_suite_child_seconds

        _, profile = self.profiles()
        for slot in ["us1-native", "us1-worker", "native-codec-controls"]:
            self.assertEqual(
                native_suite_child_seconds([slot], profile),
                7200 if slot == "us1-native" else 3600,
            )
        profile["limits"]["extended_child_seconds"] = 3600
        self.assertEqual(native_suite_child_seconds(["us1-native"], profile), 3600)

    def test_new_allocation_kind_reaches_named_validator(self):
        from bootstrap import validate_v2_profile
        from unittest.mock import Mock

        _, profile = self.profiles()
        profile["allocation"]["kind"] = "native_suite_capacity"
        with (
            patch("bootstrap._v2_reference"),
            patch(
                "controller_v2.artifact_context_for",
                return_value=(Mock(), Mock(active_root_id="future_evidence")),
            ),
            patch(
                "native_suite_capacity_v2.planned_suite_limits",
                return_value=profile["limits"],
            ),
        ):
            self.assertIs(validate_v2_profile(profile), profile)
