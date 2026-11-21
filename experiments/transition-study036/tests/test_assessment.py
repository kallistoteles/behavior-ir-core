import unittest
from assessment import summarize, blocked_slots


class AssessmentTests(unittest.TestCase):
    def test_quality_cannot_mint_native_proof(self):
        x = summarize(
            {"canonical_met": True}, {"verified": True, "native_status": "proved"}
        )
        self.assertEqual(x["native_correspondence"], "unestablished")
        self.assertEqual(x["criteria"]["SC-001"]["status"], "unmet")
        self.assertEqual(x["criteria"]["SC-002"]["status"], "met")
        self.assertEqual(x["criteria"]["SC-003"]["status"], "blocked")

    def test_missing_and_stopped_are_not_passes(self):
        for q in [{}, {"canonical_met": False, "stop_reason": "CacheGrowthLimit"}]:
            x = summarize(q, {})
            self.assertEqual(x["criteria"]["SC-002"]["status"], "unmet")
            self.assertEqual(x["product_adoption"], "unactivated")

    def test_complete_coverage_no_vacuous_pass(self):
        x = summarize({}, {})
        self.assertEqual(set(x["requirements"]), {f"FR-{i:03}" for i in range(1, 22)})
        self.assertEqual(set(x["criteria"]), {f"SC-{i:03}" for i in range(1, 8)})
        self.assertTrue(all(v.get("reason") for v in x["requirements"].values()))

    def test_missing_optional_and_session_slots_stay_blocked(self):
        profile = {
            "diagnosis": [[2, 8], [64, 8], [256, 8], [2, 32], [2, 128]],
            "lifecycle": {
                "families": ["F-change", "F-unchanged", "F-invalidated"],
                "lengths": [1, 8, 32, 128],
            },
        }
        result = blocked_slots(profile)
        self.assertEqual(len(result["slots"]), 136)
        self.assertTrue(
            all(
                x["operational"] == "not_run"
                and x["acceptance"] == "blocked"
                and x["reason"]
                for x in result["slots"]
            )
        )
        for role in ["B", "C", "recovery"]:
            self.assertEqual(result[role]["status"], "blocked")
