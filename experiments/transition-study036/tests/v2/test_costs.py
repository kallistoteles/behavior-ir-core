"""Frozen complete-operation matrix and raw-derived decisions, test scope only."""

import copy
import unittest

from costs import operation_summary_v2, select_legacy_v2, operation_role_order_v2


class OperationCostsTests(unittest.TestCase):
    def fixture(self):
        rows = []
        for cell in ["D1", "D2", "D3", "D4", "D5"]:
            for role, base in [("R", 100), ("GV", 80), ("B", 60)]:
                for mode, replicates in [("timing", range(3)), ("diagnostic", [0])]:
                    for replicate in replicates:
                        primary = base + replicate
                        rows.append(
                            dict(
                                cell=cell,
                                role=role,
                                mode=mode,
                                replicate=replicate,
                                subject="test-subject",
                                endpoint="legacy-full-synchronized-memory",
                                primary_ns=primary,
                                continuation_ns=primary + 3,
                                cycle_ns=2 * primary + 8,
                                original_equal=True,
                                treatment_checked=True,
                            )
                        )
        return rows

    def test_all_45_timings_15_diagnostics_medians_ranges_and_direct_cycles(self):
        result = operation_summary_v2(self.fixture(), subject="test-subject")
        self.assertEqual(result["timing_count"], 45)
        self.assertEqual(result["diagnostic_count"], 15)
        row = result["cells"]["D3"]["GV"]
        self.assertEqual(row["primary_ns"], dict(median=81, minimum=80, maximum=82))
        self.assertEqual(row["continuation_ns"]["median"], 84)
        self.assertEqual(row["cycle_ns"]["median"], 170)
        self.assertEqual(row["primary_ratio_to_R"], 81 / 101)
        self.assertEqual(row["range_relation_to_R"], "strictly_lower")
        self.assertEqual(select_legacy_v2(result), "B")
        self.assertEqual(
            operation_summary_v2(
                list(reversed(self.fixture())), subject="test-subject"
            ),
            result,
        )

    def test_missing_duplicate_wrong_subject_mode_endpoint_and_flags_rejected(self):
        base = self.fixture()
        mutations = [base[:-1], base + [base[0]]]
        for fields in [
            dict(subject="stale"),
            dict(role="C"),
            dict(mode="supplied"),
            dict(endpoint="compact"),
            dict(primary_ns=-1),
            dict(primary_ns=True),
            dict(cycle_ns=1),
            dict(original_equal=False),
            dict(treatment_checked=False),
            dict(primary_ms=1),
            dict(replicate=3),
        ]:
            rows = copy.deepcopy(base)
            rows[0].update(fields)
            mutations.append(rows)
        for rows in mutations:
            with self.subTest(rows=rows[:1]), self.assertRaises(ValueError):
                operation_summary_v2(rows, subject="test-subject")

    def test_exact_tie_selects_GV_and_overlapping_ranges_stay_inconclusive(self):
        rows = self.fixture()
        for row in rows:
            if row["role"] == "B":
                row.update(
                    primary_ns=80 + row["replicate"],
                    continuation_ns=83 + row["replicate"],
                    cycle_ns=168 + 2 * row["replicate"],
                )
            if row["role"] == "R":
                row.update(
                    primary_ns=81 + row["replicate"],
                    continuation_ns=84 + row["replicate"],
                    cycle_ns=170 + 2 * row["replicate"],
                )
        result = operation_summary_v2(rows, subject="test-subject")
        self.assertEqual(select_legacy_v2(result), "GV")
        self.assertEqual(
            result["cells"]["D3"]["GV"]["range_relation_to_R"], "overlap_inconclusive"
        )

    def test_predeclared_role_order_rotates_without_selecting_a_fastest_run(self):
        self.assertEqual(operation_role_order_v2(0), ("R", "GV", "B"))
        self.assertEqual(operation_role_order_v2(1), ("GV", "B", "R"))
        self.assertEqual(operation_role_order_v2(2), ("B", "R", "GV"))
        for invalid in [-1, 3, True, 0.0]:
            with self.subTest(invalid=invalid), self.assertRaises(ValueError):
                operation_role_order_v2(invalid)
