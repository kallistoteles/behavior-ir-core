"""A named future allocation preserves old observations and the combined cap."""

import copy
import json
from pathlib import Path
import unittest
from unittest.mock import patch


class NativeCompletionCapacityTests(unittest.TestCase):
    def test_protected_input_is_rejected_before_any_profile_reference_io(self):
        from bootstrap import validate_v2_profile

        _, profile = self.profiles()
        profile["specification_ref"] = {
            "root_id": "repository",
            "path": "fixtures/parameters.bin",
            "bytes": 0,
            "sha256": "0" * 64,
        }
        with patch("bootstrap._v2_reference") as verify:
            with self.assertRaisesRegex(ValueError, "ProtectedArtifact"):
                validate_v2_profile(profile)
            verify.assert_not_called()

    def test_unregistered_root_never_gains_authority_from_a_profile(self):
        from bootstrap import validate_v2_profile

        _, profile = self.profiles()
        profile["allocation"]["kind"] = "native_completion_capacity"
        profile["inputs"] = [
            {
                "root_id": "candidate_supplied",
                "path": "checkpoint.json",
                "bytes": 0,
                "sha256": "0" * 64,
            }
        ]
        with (
            patch("bootstrap._v2_reference"),
            patch("controller_v2.artifact_context_for") as context,
        ):
            with self.assertRaisesRegex(ValueError, "V2ProfileInputRoot"):
                validate_v2_profile(profile)
            context.assert_not_called()

    def test_actual_completion_profile_is_bound_to_registered_successful479(self):
        from bootstrap import validate_v2_profile

        root = Path(__file__).resolve().parents[4]
        profile = json.loads(
            (
                root
                / "specs/036-core-transition-feasibility/inputs/v2/profiles/native-completion-capacity-001.json"
            ).read_text()
        )
        self.assertIs(validate_v2_profile(profile), profile)
        bad = copy.deepcopy(profile)
        bad["limits"]["combined_bytes"] += 1
        with self.assertRaises(ValueError):
            validate_v2_profile(bad)

    def profiles(self):
        root = Path(__file__).resolve().parents[4]
        old = json.loads(
            (
                root
                / "specs/036-core-transition-feasibility/inputs/v2/profiles/native-future-evidence-001.json"
            ).read_text()
        )
        new = copy.deepcopy(old)
        new["limits"]["cache_bytes"] = 24 * 1024**3
        return old, new

    def test_only_named_22_to_24_cache_step_and_no_other_changes(self):
        from native_completion_capacity_v2 import completion_limits

        old, new = self.profiles()
        self.assertEqual(completion_limits(old, new), new["limits"])
        for field in (
            "combined_bytes",
            "temporary_bytes",
            "evidence_bytes",
            "cpu_workers",
            "sample_seconds",
            "root_stop_bytes",
            "data_stop_bytes",
            "attempt_seconds",
        ):
            bad = copy.deepcopy(new)
            bad["limits"][field] += 1
            with self.subTest(field=field), self.assertRaises(ValueError):
                completion_limits(old, bad)
        for value in (True, float(24 * 1024**3), 23 * 1024**3, 25 * 1024**3):
            bad = copy.deepcopy(new)
            bad["limits"]["cache_bytes"] = value
            with self.subTest(value=value), self.assertRaises(ValueError):
                completion_limits(old, bad)

    def test_planned_two_gib_fits_whole_work_and_both_existing_floors(self):
        from native_completion_capacity_v2 import completion_headroom

        _, new = self.profiles()
        usage = {
            "cache": 23604082034,
            "temporary": 4272380762,
            "artifacts": 8125422690,
            "shared_store": 0,
        }
        free = {"root": 46496358400, "data": 4533862400}
        completion_headroom(usage, new["limits"], free)
        for actual, volumes in (
            ({**usage, "shared_store": 1024**3}, free),
            ({**usage, "temporary": 4 * 1024**3 + 1}, free),
            ({**usage, "cache": True}, free),
            (usage, {**free, "root": 9 * 1024**3}),
            (usage, {**free, "data": 4 * 1024**3}),
        ):
            with (
                self.subTest(actual=actual, volumes=volumes),
                self.assertRaises(ValueError),
            ):
                completion_headroom(actual, new["limits"], volumes)
