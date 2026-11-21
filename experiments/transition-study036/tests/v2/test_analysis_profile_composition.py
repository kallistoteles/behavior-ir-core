"""Reusing approved analysis memory must preserve every other parent limit."""

import copy
import json
from pathlib import Path
import unittest


class AnalysisProfileCompositionTests(unittest.TestCase):
    def profiles(self):
        root = Path(__file__).resolve().parents[4]
        path = (
            root
            / "specs/036-core-transition-feasibility/inputs/v2/profiles/native-cache-capacity-001.json"
        )
        previous = json.loads(path.read_text())
        candidate = copy.deepcopy(previous)
        candidate["limits"]["lean_address_space_bytes"] = 8 * 1024**3
        return previous, candidate

    def test_approved_cache_and_other_limits_survive_analysis_memory_composition(self):
        from analysis_profile_v2 import composed_analysis_limits

        previous, candidate = self.profiles()
        pristine = copy.deepcopy(previous)
        limits = composed_analysis_limits(previous, candidate)
        self.assertEqual(limits, candidate["limits"])
        self.assertEqual(limits["cache_bytes"], 21 * 1024**3)
        self.assertEqual(previous, pristine)

    def test_other_caps_context_or_an_already_extended_parent_are_rejected(self):
        from analysis_profile_v2 import composed_analysis_limits

        previous, candidate = self.profiles()
        for key in [
            "cache_bytes",
            "combined_bytes",
            "attempt_seconds",
            "observed_rss_stop_bytes",
        ]:
            changed = copy.deepcopy(candidate)
            changed["limits"][key] += 1
            with self.subTest(key=key), self.assertRaises(ValueError):
                composed_analysis_limits(previous, changed)
        for key, value in [("work_id", "w999"), ("stage", "Q"), ("roots", {})]:
            changed = {**candidate, key: value}
            with self.subTest(key=key), self.assertRaises(ValueError):
                composed_analysis_limits(previous, changed)
        with self.assertRaises(ValueError):
            composed_analysis_limits(candidate, candidate)
