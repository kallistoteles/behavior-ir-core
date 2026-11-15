import copy, json, sys, unittest
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from mechanisms import validate_activation

E = Path(__file__).resolve().parents[1]
D = (
    E.parents[1]
    / "specs/035-verified-work-reuse/evidence/development/treatment-workers-001"
)


class MechanismTests(unittest.TestCase):
    def actual(self):
        return json.loads((D / "workers.json").read_text())["workers"], {
            r: json.loads((D / (r + "-product/summary.json")).read_text())
            for r in ["R", "G", "V", "GV"]
        }

    def test_real_four_worker_control(self):
        validate_activation(*self.actual())

    def test_equal_actual_bytes_do_not_become_four_mechanisms(self):
        b, s = self.actual()
        b[3]["sha256"] = b[0]["sha256"]
        with self.assertRaises(ValueError):
            validate_activation(b, s)

    def test_distinct_bytes_but_relabelled_real_reference_route_is_rejected(self):
        b, s = self.actual()
        s["GV"] = copy.deepcopy(s["G"])
        s["GV"]["treatment"] = "GV"
        with self.assertRaises(ValueError):
            validate_activation(b, s)

    def test_disabled_or_incomplete_prepared_route_does_not_pass_by_label(self):
        b, s = self.actual()
        s["V"]["samples"][0]["diagnostics"]["fresh_prepared_invocations"] = 0
        with self.assertRaises(ValueError):
            validate_activation(b, s)


if __name__ == "__main__":
    unittest.main()
