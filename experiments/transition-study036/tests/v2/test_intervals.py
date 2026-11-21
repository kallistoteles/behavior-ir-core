"""Operation-local C11 controls; medians cannot substitute for raw intervals."""

import copy
import unittest

from intervals import reconcile_interval_tree_v2


class IntervalTreeV2Tests(unittest.TestCase):
    @staticmethod
    def span(identifier, parent, start, end, phase, scope="operation-1"):
        return dict(
            span_id=identifier,
            parent_id=parent,
            start_ns=start,
            end_ns=end,
            phase=phase,
            execution_scope=scope,
        )

    def fixture(self):
        return [
            self.span("whole", None, 0, 100, "complete"),
            self.span("evaluate", "whole", 10, 70, "semantic"),
            self.span("commit", "evaluate", 30, 50, "commit"),
            self.span("delivery", "whole", 75, 90, "output"),
        ]

    def check(self, spans, total=100):
        return reconcile_interval_tree_v2(
            spans, complete_ns=total, execution_scope="operation-1"
        )

    def test_nested_commit_is_not_counted_twice_and_remainder_is_explicit(self):
        result = self.check(self.fixture())
        self.assertEqual(
            result["per_phase_ns"], {"semantic": 40, "commit": 20, "output": 15}
        )
        self.assertEqual(result["classified_ns"], 75)
        self.assertEqual(result["remainder_ns"], 25)
        self.assertEqual(result["complete_ns"], 100)
        self.assertEqual(
            result["exclusive_ns"],
            {"whole": 25, "evaluate": 40, "commit": 20, "delivery": 15},
        )
        self.assertEqual(
            sum(result["per_phase_ns"].values()) + result["remainder_ns"], 100
        )
        self.assertEqual(self.check(list(reversed(self.fixture()))), result)

    def test_overlap_missing_parent_scope_and_clock_or_unit_substitution_rejected(self):
        base = self.fixture()
        mutations = []

        def change(index, **fields):
            other = copy.deepcopy(base)
            other[index].update(fields)
            mutations.append(other)

        change(3, start_ns=69)
        change(2, start_ns=9)
        change(2, end_ns=71)
        change(2, parent_id="absent")
        change(1, parent_id="commit")
        change(2, span_id="evaluate")
        change(2, execution_scope="other-operation")
        change(2, start_ns=-1)
        change(2, end_ns=29)
        change(0, end_ns=99)
        change(0, start_ns=1)
        change(2, start_ns=True)
        change(2, start_ns=30.0)
        change(2, end_ns=2**64)
        change(2, phase="estimated-by-subtracting-medians")
        change(2, duration_ms=20)
        change(2, wall_clock_start="2026-11-17T00:00:00Z")
        mutations.append(base + [self.span("second-root", None, 0, 100, "complete")])
        mutations.append([])
        for spans in mutations:
            with self.subTest(spans=spans), self.assertRaises(ValueError):
                self.check(spans)
        for total in [-1, True, 100.0, 2**64]:
            with self.subTest(total=total), self.assertRaises(ValueError):
                self.check(base, total)

    def test_adjacent_and_zero_length_children_are_allowed(self):
        spans = [
            self.span("whole", None, 0, 100, "complete"),
            self.span("a", "whole", 0, 50, "semantic"),
            self.span("b", "whole", 50, 100, "output"),
            self.span("z", "a", 50, 50, "commit"),
        ]
        result = self.check(spans)
        self.assertEqual(result["remainder_ns"], 0)
        self.assertEqual(result["classified_ns"], 100)
        self.assertEqual(
            result["per_phase_ns"], {"semantic": 50, "commit": 0, "output": 50}
        )

    def test_known_unclassified_work_is_preserved_as_nonnegative_remainder(self):
        spans = [
            self.span("whole", None, 0, 100, "complete"),
            self.span("unspecified", "whole", 10, 80, "unclassified"),
            self.span("child", "unspecified", 20, 40, "encoding"),
        ]
        result = self.check(spans)
        self.assertEqual(result["per_phase_ns"], {"encoding": 20})
        self.assertEqual(result["remainder_ns"], 80)
        self.assertEqual(result["complete_ns"], 100)
