"""Second capacity allocation must retain actual observations and every limit."""

import copy
import json
import unittest
from pathlib import Path

from bootstrap import validate_v2_profile


class SecondCapacityTests(unittest.TestCase):
    def test_actual_closed_native_and_analysis_profile_chains(self):
        root = Path(__file__).resolve().parents[4]
        for name in ["native", "native-ground-analysis"]:
            path = root / (
                "specs/036-core-transition-feasibility/inputs/v2/profiles/"
                + name
                + "-evidence-capacity-002.json"
            )
            profile = json.loads(path.read_text())
            validate_v2_profile(profile)
            bad = copy.deepcopy(profile)
            bad["allocation"]["predecessor"] = None
            with self.subTest(name=name), self.assertRaises(ValueError):
                validate_v2_profile(bad)

    def test_only_declared_steps_and_exact_integer_units(self):
        from capacity_profile_v2 import validate_capacity_step_v2

        gib = 1024**3
        validate_capacity_step_v2(4 * gib, 6 * gib)
        validate_capacity_step_v2(6 * gib, 7 * gib)
        for pair in [
            (4 * gib, 7 * gib),
            (6 * gib, 8 * gib),
            (7 * gib, 8 * gib),
            (True, 7 * gib),
            (6 * gib, float(7 * gib)),
        ]:
            with self.subTest(pair=pair), self.assertRaises(ValueError):
                validate_capacity_step_v2(*pair)

    def test_second_profile_cannot_relax_memory_or_live_volume_floor(self):
        root = Path(__file__).resolve().parents[4]
        for name, field, value in [
            ("native", "data_stop_bytes", 3 * 1024**3),
            ("native-ground-analysis", "lean_address_space_bytes", 16 * 1024**3),
        ]:
            path = root / (
                "specs/036-core-transition-feasibility/inputs/v2/profiles/"
                + name
                + "-evidence-capacity-002.json"
            )
            profile = json.loads(path.read_text())
            profile["limits"][field] = value
            with self.subTest(name=name, field=field), self.assertRaises(ValueError):
                validate_v2_profile(profile)
