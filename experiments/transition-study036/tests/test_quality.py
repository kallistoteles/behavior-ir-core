import unittest
from quality import evaluate, LABELS


class QualityTests(unittest.TestCase):
    def receipt(self):
        return {
            "exit_code": 0,
            "stop_reason": None,
            "tree_empty": True,
            "group_empty": True,
        }

    def test_whole_not_partial(self):
        self.assertFalse(evaluate(self.receipt(), "gates: cargo fmt\ngates: OK\n"))

    def test_stop_never_passes(self):
        self.assertFalse(
            evaluate({**self.receipt(), "stop_reason": "CacheGrowthLimit"}, "gates: OK")
        )

    def test_missing_close_never_passes(self):
        self.assertFalse(evaluate({**self.receipt(), "tree_empty": False}, "gates: OK"))

    def test_complete_success_and_each_removed_label(self):
        lines = ["gates: " + v for v in LABELS] + ["gates: OK"]
        self.assertTrue(evaluate(self.receipt(), "\n".join(lines)))
        for omitted in range(len(lines)):
            self.assertFalse(
                evaluate(
                    self.receipt(), "\n".join(lines[:omitted] + lines[omitted + 1 :])
                )
            )
