"""A future store changes reservation location, never resets whole-work cost."""

import copy
import json
from pathlib import Path
import unittest


class ArtifactAllocationTests(unittest.TestCase):
    def test_actual_profile_preserves_source_bound_closed_observations(self):
        from bootstrap import validate_v2_profile

        root = Path(__file__).resolve().parents[4]
        profile = json.loads(
            (
                root
                / "specs/036-core-transition-feasibility/inputs/v2/profiles/native-future-evidence-001.json"
            ).read_text()
        )
        validate_v2_profile(profile)
        bad = copy.deepcopy(profile)
        bad["limits"]["combined_bytes"] += 1
        with self.assertRaises(ValueError):
            validate_v2_profile(bad)

    def profiles(self):
        root = Path(__file__).resolve().parents[4]
        old = json.loads(
            (
                root
                / "specs/036-core-transition-feasibility/inputs/v2/profiles/native-evidence-capacity-003.json"
            ).read_text()
        )
        new = copy.deepcopy(old)
        new["limits"]["evidence_bytes"] += 512 * 1024**2
        return old, new

    def test_only_the_named_evidence_increment_is_admitted(self):
        from future_artifact_allocation_v2 import future_capacity_limits

        old, new = self.profiles()
        self.assertEqual(future_capacity_limits(old, new), new["limits"])
        for field in (
            "cache_bytes",
            "temporary_bytes",
            "combined_bytes",
            "data_stop_bytes",
            "root_stop_bytes",
            "cpu_workers",
            "sample_seconds",
        ):
            bad = copy.deepcopy(new)
            bad["limits"][field] += 1
            with self.subTest(field=field), self.assertRaises(ValueError):
                future_capacity_limits(old, bad)
        for value in (
            True,
            float(new["limits"]["evidence_bytes"]),
            new["limits"]["evidence_bytes"] + 1,
        ):
            bad = copy.deepcopy(new)
            bad["limits"]["evidence_bytes"] = value
            with self.subTest(value=value), self.assertRaises(ValueError):
                future_capacity_limits(old, bad)

    def test_new_evidence_is_reserved_on_root_but_legacy_tail_on_data(self):
        from future_artifact_allocation_v2 import check_future_headroom

        _, new = self.profiles()
        gib = 1024**3
        usage = {
            "cache": 22 * gib - 32 * 1024**2,
            "temporary": 4 * gib - 64 * 1024**2,
            "artifacts": 7 * gib + 128 * 1024**2,
            "shared_store": 0,
        }
        free = {"root": 10 * gib, "data": 4 * gib + 32 * 1024**2}
        check_future_headroom(usage, new["limits"], free)
        cases = [
            ({**usage, "shared_store": 4 * gib}, free),
            ({**usage, "cache": new["limits"]["cache_bytes"] + 1}, free),
            ({**usage, "temporary": True}, free),
            (usage, {**free, "data": 4 * gib + 8 * 1024**2}),
            (usage, {**free, "root": 8 * gib + 1024**2}),
        ]
        for index, (actual, volumes) in enumerate(cases):
            with self.subTest(index=index), self.assertRaises(ValueError):
                check_future_headroom(actual, new["limits"], volumes)
