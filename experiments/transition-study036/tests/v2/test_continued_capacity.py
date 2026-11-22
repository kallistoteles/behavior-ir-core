"""A fixed prospective completion budget preserves every historical allocation."""

import copy
import json
from pathlib import Path
import unittest
from unittest.mock import Mock, patch


class ContinuedCapacityTests(unittest.TestCase):
    def test_quality_allocation_schema_requires_the_new_explicit_kind(self):
        from bootstrap import validate_v2_profile

        _, new = self.profiles("Q")
        new["allocation"]["kind"] = "continued_completion_capacity"
        with (
            patch("bootstrap._v2_reference"),
            patch(
                "controller_v2.artifact_context_for",
                return_value=(Mock(), Mock(active_root_id="future_evidence")),
            ),
            patch(
                "continued_capacity_v2.planned_continued_limits",
                return_value=new["limits"],
            ),
        ):
            self.assertIs(validate_v2_profile(new), new)
            new["allocation"]["kind"] = "unreviewed_growth"
            with self.assertRaises(ValueError):
                validate_v2_profile(new)

    def profiles(self, stage="NATIVE"):
        root = Path(__file__).resolve().parents[4]
        old = json.loads(
            (
                root
                / "specs/036-core-transition-feasibility/inputs/v2/profiles/native-cache-evidence-rebalance-001.json"
            ).read_text()
        )
        new = copy.deepcopy(old)
        new["stage"] = stage
        new["limits"].update(
            cache_bytes=28 * 1024**3,
            temporary_bytes=5 * 1024**3,
            evidence_bytes=11 * 1024**3,
            combined_bytes=44 * 1024**3,
        )
        if stage == "Q":
            new["limits"].update(
                attempt_seconds=7200, lean_address_space_bytes=4 * 1024**3
            )
        return old, new

    def test_exact_native_and_quality_limits_are_explicit(self):
        from continued_capacity_v2 import continued_limits

        for stage in ["NATIVE", "Q"]:
            old, new = self.profiles(stage)
            self.assertEqual(continued_limits(old, new), new["limits"])
            self.assertEqual(old["limits"]["combined_bytes"], 36 * 1024**3)
            for field in new["limits"]:
                bad = copy.deepcopy(new)
                bad["limits"][field] += 1
                with (
                    self.subTest(stage=stage, field=field),
                    self.assertRaises(ValueError),
                ):
                    continued_limits(old, bad)
            for field in ["roots", "specification_ref", "native_profile", "work_id"]:
                bad = copy.deepcopy(new)
                bad[field] = "changed"
                with self.assertRaises(ValueError):
                    continued_limits(old, bad)

    def test_actual_capacity_and_both_volume_floors_are_reserved(self):
        from continued_capacity_v2 import continued_headroom

        _, new = self.profiles("Q")
        usage = dict(
            cache=24784202479,
            temporary=4272380762,
            artifacts=8656252149,
            shared_store=0,
        )
        free = dict(root=44658253824, data=4531412992)
        plan = continued_headroom(usage, new["limits"], free)
        self.assertGreater(plan["root_remaining_after_allocation"], 8 * 1024**3)
        self.assertGreater(plan["data_remaining_after_reserve"], 4 * 1024**3)
        for role in usage:
            bad = {**usage, role: 44 * 1024**3 + 1}
            with self.assertRaises(ValueError):
                continued_headroom(bad, new["limits"], free)
        for volume in ["root", "data"]:
            with self.assertRaises(ValueError):
                continued_headroom(usage, new["limits"], {**free, volume: 4 * 1024**3})

    def test_budgets_do_not_change_cpu_time_or_provenance_authority(self):
        from continued_capacity_v2 import continued_limits

        old, new = self.profiles("Q")
        self.assertEqual(new["limits"]["cpu_workers"], 1)
        self.assertEqual(new["limits"]["extended_child_seconds"], 3600)
        self.assertEqual(new["limits"]["closure_reserve_seconds"], 300)
        self.assertEqual(new["limits"]["lean_address_space_bytes"], 4 * 1024**3)
        new["limits"]["cache_bytes"] = True
        with self.assertRaises(ValueError):
            continued_limits(old, new)
