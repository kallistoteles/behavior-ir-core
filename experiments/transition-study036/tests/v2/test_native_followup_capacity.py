"""A fixed128MiB future-evidence reserve preserves every other allocation."""

import copy
import json
from pathlib import Path
import unittest


class NativeFollowupCapacityTests(unittest.TestCase):
    def test_accessor_profile_binds_the_actual_closed_metadata_overflow(self):
        from bootstrap import validate_v2_profile

        root = Path(__file__).resolve().parents[4]
        profile = json.loads((root / "specs/036-core-transition-feasibility/inputs/v2/profiles/native-accessor-evidence-003.json").read_text())
        validate_v2_profile(profile)
        for field in ["combined_bytes", "cache_bytes", "temporary_bytes", "root_stop_bytes", "data_stop_bytes"]:
            wrong = copy.deepcopy(profile)
            wrong["limits"][field] += 1
            with self.subTest(field=field), self.assertRaises(ValueError):
                validate_v2_profile(wrong)

    def test_accessor_recheck_can_use_exactly_the_remaining_quarter_gib(self):
        from native_accessor_evidence_capacity_v2 import accessor_evidence_limits
        from native_followup_capacity_v2 import followup_headroom

        root = Path(__file__).resolve().parents[4]
        previous = json.loads((root / "specs/036-core-transition-feasibility/inputs/v2/profiles/native-followup-evidence-002.json").read_text())
        candidate = copy.deepcopy(previous)
        candidate["limits"]["evidence_bytes"] = 8 * 1024**3
        limits = accessor_evidence_limits(previous, candidate)
        self.assertEqual(limits["combined_bytes"], 36 * 1024**3)
        self.assertEqual(limits["cache_bytes"] + limits["temporary_bytes"] + limits["evidence_bytes"], limits["combined_bytes"])
        receipt = json.loads(Path("/var/tmp/behavior-ir-core036-evidence-v2/w001/development/native-accessor-rfl-recheck-freeze-498-001/receipt.json").read_text())
        actual = receipt["final_resource_observation"]
        followup_headroom(actual["growth_apparent_unique_inode_bytes"], limits, actual["free_volume_bytes"])
        for field in candidate["limits"]:
            wrong = copy.deepcopy(candidate)
            wrong["limits"][field] += 1
            with self.subTest(field=field), self.assertRaises(ValueError):
                accessor_evidence_limits(previous, wrong)
        for value in [True, float(8 * 1024**3)]:
            wrong = copy.deepcopy(candidate)
            wrong["limits"]["evidence_bytes"] = value
            with self.subTest(value=value), self.assertRaises(ValueError):
                accessor_evidence_limits(previous, wrong)

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
