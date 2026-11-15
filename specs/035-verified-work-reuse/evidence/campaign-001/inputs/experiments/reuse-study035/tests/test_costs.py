import copy, sys, unittest
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from costs import summarize_group, discriminate


class CostTests(unittest.TestCase):
    def rows(self):
        return [
            {
                "mode": "timing",
                "sample_id": str(i),
                "treatment": "R",
                "parent": "same",
                "operational": "completed",
                "semantic": "equal",
                "complete_ns": x,
                "semantic_ns": x // 2,
                "reestablish_ns": 10,
                "cycle_ns": x * 3,
                "required_output_complete": True,
                "phases": [
                    {"start_ns": 0, "end_ns": x // 2},
                    {"start_ns": x // 2, "end_ns": x},
                ],
            }
            for i, x in enumerate([300, 100, 200])
        ]

    def test_actual_triplet_control_is_diagnostic_median_and_range_not_percentiles(
        self,
    ):
        r = summarize_group(self.rows())
        self.assertEqual(r["median_ns"], 200)
        self.assertEqual(r["range_ns"], [100, 300])
        self.assertEqual(r["cycle_median_ns"], 600)
        self.assertNotIn("p50_ns", r)
        self.assertNotIn("p95_ns", r)

    def test_mixed_incomplete_unknown_shifted_or_overlapping_endpoints(self):
        for kind in [
            "parent",
            "mode",
            "treatment",
            "missing",
            "short",
            "output",
            "overlap",
            "cycle",
        ]:
            rows = self.rows()
            if kind in ["parent", "mode", "treatment"]:
                rows[0][kind] = "different"
            if kind == "missing":
                rows[0]["complete_ns"] = None
            if kind == "short":
                rows.pop()
            if kind == "output":
                rows[0]["required_output_complete"] = False
            if kind == "overlap":
                rows[0]["phases"][1]["start_ns"] = 0
            if kind == "cycle":
                rows[0]["cycle_ns"] = None
            with self.subTest(kind=kind), self.assertRaises(ValueError):
                summarize_group(rows)

    def test_exclusive_accounting_cannot_exceed_direct_endpoint(self):
        rows = self.rows()
        rows[0]["initial_discard_ns"] = 1
        rows[0]["primary_phases"] = {"accounted_ns": 301}
        with self.assertRaises(ValueError):
            summarize_group(rows)

    def test_derived_semantic_phase_cannot_disagree_with_raw_exclusive_buckets(self):
        rows = self.rows()
        for r in rows:
            r["format"] = "core035.observation.v1"
            exclusive = {
                k: 0
                for k in [
                    "reestablish_ns",
                    "frame_ns",
                    "native_semantic_ns",
                    "property_ns",
                    "affected_maintenance_ns",
                    "outer_mandatory_maintenance_ns",
                    "canonical_output_identity_ns",
                    "commit_other_ns",
                    "reconstruction_ns",
                ]
            }
            exclusive["native_semantic_ns"] = r["semantic_ns"]
            exclusive["canonical_output_identity_ns"] = (
                r["complete_ns"] - r["semantic_ns"]
            )
            r.update(
                initial_discard_ns=0,
                drain_discard_ns=0,
                execution_ns=r["complete_ns"],
                drain_execution_ns=r["complete_ns"],
                drain_ns=r["complete_ns"],
                reestablish_ns=0,
            )
            r["primary_phases"] = {
                "invalid_intervals": 0,
                "exclusive": exclusive,
                "accounted_ns": r["complete_ns"],
                "semantic_ns": r["semantic_ns"],
                "reestablish_ns": 0,
            }
            r["drain_phases"] = copy.deepcopy(r["primary_phases"])
        self.assertEqual(summarize_group(rows)["median_ns"], 200)
        rows[0]["semantic_ns"] -= 1
        with self.assertRaises(ValueError):
            summarize_group(rows)

    def test_frozen_absolute_relative_and_complete_discriminators(self):
        r = {
            "semantic_median_ns": 200_000_000,
            "median_ns": 400_000_000,
            "cycle_median_ns": 800_000_000,
            "reestablish_median_ns": 20_000_000,
        }
        c = {
            "semantic_median_ns": 60_000_000,
            "median_ns": 350_000_000,
            "cycle_median_ns": 900_000_000,
            "reestablish_median_ns": 15_000_000,
        }
        d = discriminate(r, c)
        self.assertFalse(d["strong_local"])
        self.assertFalse(d["complete_material"])
        self.assertFalse(d["integration_no_regression"])
        self.assertFalse(d["ground_phase_2x"])


if __name__ == "__main__":
    unittest.main()
