import copy
import sys
import unittest
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from campaign import validate_groups, campaign_lock


class GroupControls(unittest.TestCase):
    def valid(self):
        bindings = [
            {"treatment": r, "sha256": str(i) * 64}
            for i, r in enumerate(["R", "G", "V", "GV"], 1)
        ]
        groups = {}
        for role in ["R", "G", "V", "GV"]:

            def counts(i):
                return {
                    "fresh_prepared_invocations": i if role in ["V", "GV"] else 0,
                    "selected_full_snapshot_passes": i if role in ["R", "V"] else 0,
                    "semantic_unrelated_rows": 0,
                    "old_prefix_decision_visits": 0,
                }

            rows = [
                {"sample_id": "t" + str(i), "mode": "timing"} for i in range(1, 4)
            ] + [
                {
                    "sample_id": "w1",
                    "mode": "work",
                    "work_primary": counts(1),
                    "work_cycle": counts(2),
                }
            ]
            groups[role] = {
                "treatment": role,
                "backend": "Store<Capture>",
                "operational": "completed",
                "semantic": "equal",
                "observations": rows,
            }
        return bindings, groups

    def test_fixed_actual_group_positive_control(self):
        validate_groups(*self.valid())

    def test_labels_counters_slots_or_modes_do_not_mint_activation(self):
        for k in [
            "identity",
            "entry",
            "ground",
            "view",
            "prefix",
            "rows",
            "mode",
            "slot",
        ]:
            b, g = self.valid()
            if k == "identity":
                b[0]["sha256"] = b[1]["sha256"]
            if k == "entry":
                g["GV"] = g["G"]
            if k == "ground":
                g["G"]["observations"][3]["work_cycle"][
                    "selected_full_snapshot_passes"
                ] = 2
            if k == "view":
                g["GV"]["observations"][3]["work_primary"][
                    "fresh_prepared_invocations"
                ] = 0
            if k == "prefix":
                g["GV"]["observations"][3]["work_cycle"][
                    "old_prefix_decision_visits"
                ] = 1
            if k == "rows":
                g["GV"]["observations"][3]["work_cycle"]["semantic_unrelated_rows"] = 1
            if k == "mode":
                g["GV"]["observations"][0]["mode"] = "work"
            if k == "slot":
                g["GV"]["observations"][1]["sample_id"] = "t1"
            with self.subTest(kind=k), self.assertRaises(ValueError):
                validate_groups(b, g)

    def test_only_one_campaign_writer(self):
        with campaign_lock("unit-test-lock"):
            with self.assertRaises(FileExistsError):
                with campaign_lock("unit-test-lock"):
                    pass


if __name__ == "__main__":
    unittest.main()
