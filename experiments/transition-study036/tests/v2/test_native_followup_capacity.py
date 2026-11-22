"""A fixed128MiB future-evidence reserve preserves every other allocation."""

import copy
import json
from pathlib import Path
import unittest


class NativeFollowupCapacityTests(unittest.TestCase):
    def profiles(self):
        root = Path(__file__).resolve().parents[4]
        old = json.loads(
            (
                root
                / "specs/036-core-transition-feasibility/inputs/v2/profiles/native-completion-capacity-001.json"
            ).read_text()
        )
        new = copy.deepcopy(old)
        new["limits"]["evidence_bytes"] += 128 * 1024**2
        return old, new

    def test_only_fixed_future_evidence_step_is_admitted(self):
        from native_followup_capacity_v2 import followup_limits

        old, new = self.profiles()
        self.assertEqual(followup_limits(old, new), new["limits"])
        for field in [
            "cache_bytes",
            "temporary_bytes",
            "combined_bytes",
            "root_stop_bytes",
            "data_stop_bytes",
            "sample_seconds",
            "cpu_workers",
            "attempt_seconds",
        ]:
            wrong = copy.deepcopy(new)
            wrong["limits"][field] += 1
            with self.subTest(field=field), self.assertRaises(ValueError):
                followup_limits(old, wrong)
        for value in [
            True,
            float(new["limits"]["evidence_bytes"]),
            new["limits"]["evidence_bytes"] + 1,
        ]:
            wrong = copy.deepcopy(new)
            wrong["limits"]["evidence_bytes"] = value
            with self.subTest(value=value), self.assertRaises(ValueError):
                followup_limits(old, wrong)

    def test_whole_work_reserves_remaining_roles_and_both_volume_floors(self):
        from native_followup_capacity_v2 import followup_headroom

        _, profile = self.profiles()
        limits = profile["limits"]
        used = {
            "cache": 24692473887,
            "temporary": 4272380762,
            "artifacts": 8167344202,
            "shared_store": 0,
        }
        free = {"root": 45346033664, "data": 4525326336}
        followup_headroom(used, limits, free)
        for usage, volumes in [
            ({**used, "shared_store": 1024**3}, free),
            ({**used, "cache": True}, free),
            (used, {**free, "root": 8 * 1024**3}),
            (used, {**free, "data": 4 * 1024**3}),
        ]:
            with (
                self.subTest(usage=usage, volumes=volumes),
                self.assertRaises(ValueError),
            ):
                followup_headroom(usage, limits, volumes)
