import copy
import json
import unittest
from pathlib import Path

from bootstrap import validate_v2_profile


class OriginalSafetyProfileTests(unittest.TestCase):
    def test_analysis_lean_extension_keeps_scope_and_other_limits(self):
        root = Path(__file__).resolve().parents[4]
        profile = json.loads(
            (
                root
                / "specs/036-core-transition-feasibility/inputs/v2/profiles/env-analysis-lean-001.json"
            ).read_text()
        )
        validate_v2_profile(profile)
        for change in ("wrong_runtime_scope", "missing_correction", "rss_limit"):
            bad = copy.deepcopy(profile)
            if change == "wrong_runtime_scope":
                bad["allocation"]["kind"] = "original_safety_compatibility"
            elif change == "missing_correction":
                bad["allocation"]["correction"] = None
            else:
                bad["limits"]["observed_rss_stop_bytes"] *= 2
            with self.subTest(change=change), self.assertRaises(ValueError):
                validate_v2_profile(bad)

    def test_scoped_compatibility_requires_real_predecessor_and_correction(self):
        root = Path(__file__).resolve().parents[4]
        path = (
            root
            / "specs/036-core-transition-feasibility/inputs/v2/profiles/env-original-safety-001.json"
        )
        profile = json.loads(path.read_text())
        validate_v2_profile(profile)
        for key in ("predecessor", "correction"):
            bad = copy.deepcopy(profile)
            bad["allocation"][key] = None
            with self.subTest(key=key), self.assertRaises(ValueError):
                validate_v2_profile(bad)
        bad = copy.deepcopy(profile)
        bad["limits"]["observed_rss_stop_bytes"] *= 2
        with self.assertRaises(ValueError):
            validate_v2_profile(bad)
        bad = json.loads(
            (root / "experiments/transition-study036/profiles/v2/env.json").read_text()
        )
        bad["limits"]["lean_address_space_bytes"] = 8 * 1024**3
        with self.assertRaises(ValueError):
            validate_v2_profile(bad)


class EvidenceCapacityTests(unittest.TestCase):
    def test_real_prospective_capacity_extension_and_unchanged_limits(self):
        root = Path(__file__).resolve().parents[4]
        for stage in ["env", "diag", "native"]:
            path = (
                root
                / f"specs/036-core-transition-feasibility/inputs/v2/profiles/{stage}-evidence-capacity-001.json"
            )
            profile = json.loads(path.read_text())
            validate_v2_profile(profile)
            for field, wrong in [
                ("evidence_bytes", 8 * 1024**3),
                ("combined_bytes", 40 * 1024**3),
                ("sample_seconds", 2),
                ("observed_rss_stop_bytes", 16 * 1024**3),
            ]:
                bad = copy.deepcopy(profile)
                bad["limits"][field] = wrong
                with (
                    self.subTest(stage=stage, field=field),
                    self.assertRaises(ValueError),
                ):
                    validate_v2_profile(bad)
            for field in ["predecessor", "correction"]:
                bad = copy.deepcopy(profile)
                bad["allocation"][field] = None
                with (
                    self.subTest(stage=stage, field=field),
                    self.assertRaises(ValueError),
                ):
                    validate_v2_profile(bad)

    def test_capacity_admission_preserves_stop_floor_and_rejects_bogus_units(self):
        from capacity_profile_v2 import check_capacity_headroom_v2

        gib = 1024**3
        check_capacity_headroom_v2(8 * gib, 4 * gib, 6 * gib, 4 * gib)
        for values in [
            (5 * gib, 4 * gib, 6 * gib, 4 * gib),
            (8 * gib, 7 * gib, 6 * gib, 4 * gib),
            (8 * gib, True, 6 * gib, 4 * gib),
            (8 * gib, 4 * gib, float(6 * gib), 4 * gib),
            (8 * gib, -1, 6 * gib, 4 * gib),
            (2**64, 4 * gib, 6 * gib, 4 * gib),
        ]:
            with self.subTest(values=values), self.assertRaises(ValueError):
                check_capacity_headroom_v2(*values)
