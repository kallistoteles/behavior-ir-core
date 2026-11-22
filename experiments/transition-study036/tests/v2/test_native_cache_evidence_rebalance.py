"""A prospective role transfer never increases the whole-work budget."""

import copy
import json
from pathlib import Path
import unittest
from unittest.mock import Mock, patch


class NativeCacheEvidenceRebalanceTests(unittest.TestCase):
    def test_allocation_schema_accepts_the_bound_rebalance_kind(self):
        from bootstrap import validate_v2_profile

        _, candidate = self.profiles()
        candidate["allocation"]["kind"] = "native_cache_evidence_rebalance"
        registry, store = Mock(), Mock(active_root_id="future_evidence")
        with (
            patch("bootstrap._v2_reference"),
            patch("controller_v2.artifact_context_for", return_value=(registry, store)),
            patch(
                "native_cache_evidence_rebalance_v2.planned_rebalance_limits",
                return_value=candidate["limits"],
            ),
        ):
            self.assertIs(validate_v2_profile(candidate), candidate)

    def profiles(self):
        root = Path(__file__).resolve().parents[4]
        old = json.loads(
            (
                root
                / "specs/036-core-transition-feasibility/inputs/v2/profiles/native-accessor-evidence-003.json"
            ).read_text()
        )
        new = copy.deepcopy(old)
        new["limits"]["cache_bytes"] -= 128 * 1024**2
        new["limits"]["evidence_bytes"] += 128 * 1024**2
        return old, new

    def test_only_exact_conserved_transfer_is_allowed(self):
        from native_cache_evidence_rebalance_v2 import rebalance_limits

        old, new = self.profiles()
        self.assertEqual(rebalance_limits(old, new), new["limits"])
        self.assertEqual(
            new["limits"]["combined_bytes"], old["limits"]["combined_bytes"]
        )
        for field in old["limits"]:
            bad = copy.deepcopy(new)
            bad["limits"][field] += 1
            with self.subTest(field=field), self.assertRaises(ValueError):
                rebalance_limits(old, bad)
        for field in [
            "roots",
            "native_profile",
            "specification_ref",
            "work_id",
            "stage",
        ]:
            bad = copy.deepcopy(new)
            bad[field] = "changed"
            with self.subTest(field=field), self.assertRaises(ValueError):
                rebalance_limits(old, bad)

    def test_boolean_and_other_transfer_sizes_are_rejected(self):
        from native_cache_evidence_rebalance_v2 import rebalance_limits

        old, new = self.profiles()
        for step in [0, 64 * 1024**2, 256 * 1024**2, True]:
            bad = copy.deepcopy(new)
            bad["limits"]["cache_bytes"] = old["limits"]["cache_bytes"] - step
            bad["limits"]["evidence_bytes"] = old["limits"]["evidence_bytes"] + step
            with self.assertRaises(ValueError):
                rebalance_limits(old, bad)
