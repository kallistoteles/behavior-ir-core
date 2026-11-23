"""Synthetic lifecycle summary controls; no measurement authority."""

import copy
import unittest


class LifecycleCostsTests(unittest.TestCase):
    def fixture(self):
        rows = []
        for family in ("F-change", "F-unchanged", "F-invalidated"):
            for length in (1, 8, 32, 128):
                for role in ("R", "GV"):
                    for mode, replicates in (("timing", range(3)), ("diagnostic", [0])):
                        for replicate in replicates:
                            # Individually enclosing offsets; never sums of independent medians.
                            complete = (100 if role == "R" else 80) * length + replicate
                            identity = f"{family}-{length}-{role}-{mode}-{replicate}"
                            rows.append(
                                dict(
                                    family=family,
                                    length=length,
                                    role=role,
                                    mode=mode,
                                    replicate=replicate,
                                    subject="unit-source",
                                    endpoint="legacy-full-synchronized-memory",
                                    session_id=identity,
                                    fresh_ground_id=identity,
                                    completed_operations=length,
                                    invalidation_before=length // 2 + 1
                                    if family == "F-invalidated"
                                    else None,
                                    reacquisition_ns=7
                                    if family == "F-invalidated"
                                    else 0,
                                    offsets=dict(
                                        session_start=20,
                                        acquisition_end=30,
                                        last_output_end=20 + complete,
                                        audit_end=30 + complete,
                                        worker_start=0,
                                    ),
                                    cold_worker=True,
                                    original_equal=True,
                                    treatment_checked=True,
                                    partial=False,
                                    retained_bytes=dict(
                                        value=None,
                                        unit="bytes",
                                        scope="session-retained-owned",
                                        method="not-measured",
                                        reason_if_unavailable="unit fixture supplies no allocator observation",
                                    ),
                                )
                            )
        return rows

    def test_all_72_timings_24_diagnostics_use_direct_enclosing_totals(self):
        from lifecycle_costs import lifecycle_summary_v2

        result = lifecycle_summary_v2(self.fixture(), subject="unit-source")
        self.assertEqual(result["timing_count"], 72)
        self.assertEqual(result["diagnostic_count"], 24)
        cell = result["cells"]["F-change/L8"]["GV"]
        self.assertEqual(cell["session_ns"], dict(median=641, minimum=640, maximum=642))
        self.assertEqual(cell["session_with_audit_ns"]["median"], 651)
        self.assertEqual(cell["cold_first_session_ns"]["median"], 661)
        self.assertEqual(cell["cold_first_session_with_audit_ns"]["median"], 671)
        self.assertIsNone(cell["retained_bytes"]["median"])
        self.assertEqual(result["statistical_scope"], "descriptive_three_observations")
        self.assertEqual(
            lifecycle_summary_v2(list(reversed(self.fixture())), subject="unit-source"),
            result,
        )

    def test_missing_duplicate_stale_partial_wrong_endpoint_and_fabricated_ground_rejected(
        self,
    ):
        from lifecycle_costs import lifecycle_summary_v2

        rows = self.fixture()
        invalid = [rows[:-1], rows + [rows[0]]]
        for fields in [
            dict(subject="stale"),
            dict(endpoint="compact"),
            dict(length=True),
            dict(length=2),
            dict(role="B"),
            dict(mode="pilot"),
            dict(replicate=3),
            dict(completed_operations=0),
            dict(partial=True),
            dict(original_equal=False),
            dict(treatment_checked=False),
            dict(cold_worker=False),
            dict(extra="unknown"),
            dict(invalidation_before=1),
            dict(reacquisition_ns=-1),
        ]:
            changed = copy.deepcopy(rows)
            changed[0].update(fields)
            invalid.append(changed)
        reused = copy.deepcopy(rows)
        reused[1]["fresh_ground_id"] = reused[0]["fresh_ground_id"]
        invalid.append(reused)
        for changed in invalid:
            with self.subTest(row=changed[0]), self.assertRaises(ValueError):
                lifecycle_summary_v2(changed, subject="unit-source")

    def test_direct_offsets_cannot_drop_acquisition_audit_or_cold_worker_work(self):
        from lifecycle_costs import lifecycle_summary_v2

        for offsets in [
            dict(
                session_start=20,
                acquisition_end=19,
                last_output_end=120,
                audit_end=130,
                worker_start=0,
            ),
            dict(
                session_start=20,
                acquisition_end=30,
                last_output_end=29,
                audit_end=130,
                worker_start=0,
            ),
            dict(
                session_start=20,
                acquisition_end=30,
                last_output_end=120,
                audit_end=119,
                worker_start=0,
            ),
            dict(
                session_start=20,
                acquisition_end=30,
                last_output_end=120,
                audit_end=130,
                worker_start=21,
            ),
            dict(
                session_start=True,
                acquisition_end=30,
                last_output_end=120,
                audit_end=130,
                worker_start=0,
            ),
        ]:
            rows = self.fixture()
            rows[0]["offsets"] = offsets
            with self.subTest(offsets=offsets), self.assertRaises(ValueError):
                lifecycle_summary_v2(rows, subject="unit-source")

    def test_invalidation_position_and_actual_reacquisition_are_required_for_both_roles(
        self,
    ):
        from lifecycle_costs import lifecycle_summary_v2

        for length in (1, 8, 32, 128):
            for role in ("R", "GV"):
                for mutation in (dict(invalidation_before=0), dict(reacquisition_ns=0)):
                    rows = self.fixture()
                    row = next(
                        r
                        for r in rows
                        if r["family"] == "F-invalidated"
                        and r["length"] == length
                        and r["role"] == role
                    )
                    row.update(mutation)
                    with (
                        self.subTest(length=length, role=role, mutation=mutation),
                        self.assertRaises(ValueError),
                    ):
                        lifecycle_summary_v2(rows, subject="unit-source")

    def test_payback_is_only_reported_at_a_directly_observed_length(self):
        from lifecycle_costs import lifecycle_summary_v2

        rows = self.fixture()
        for row in rows:
            if row["role"] == "GV" and row["length"] == 1:
                row["offsets"]["last_output_end"] += 1000
                row["offsets"]["audit_end"] += 1000
        result = lifecycle_summary_v2(rows, subject="unit-source")
        payback = result["observed_payback"]["F-change"]
        self.assertEqual(payback["first_observed_length"], 8)
        self.assertEqual(payback["scope"], "tested_lengths_only")
        for row in rows:
            if row["role"] == "GV":
                row["offsets"]["last_output_end"] += 100000
                row["offsets"]["audit_end"] += 100000
        result = lifecycle_summary_v2(rows, subject="unit-source")
        self.assertIsNone(
            result["observed_payback"]["F-change"]["first_observed_length"]
        )
        self.assertEqual(
            result["observed_payback"]["F-change"]["status"], "not_observed"
        )

    def test_unavailable_bytes_need_a_reason_and_are_never_replaced_by_zero(self):
        from lifecycle_costs import lifecycle_summary_v2

        for changed in [
            dict(value=0, method="not-measured", reason_if_unavailable=None),
            dict(value=None, reason_if_unavailable=""),
            dict(value=True),
            dict(unit="objects"),
            dict(value=None, method="payload-size-proxy"),
        ]:
            rows = self.fixture()
            rows[0]["retained_bytes"].update(changed)
            with self.subTest(changed=changed), self.assertRaises(ValueError):
                lifecycle_summary_v2(rows, subject="unit-source")

    def test_paired_role_order_is_fixed_before_observations(self):
        from lifecycle_costs import lifecycle_role_order_v2

        for cell in range(12):
            self.assertEqual(lifecycle_role_order_v2(cell, 0), ("R", "GV"))
            self.assertEqual(lifecycle_role_order_v2(cell, 1), ("GV", "R"))
            self.assertEqual(
                lifecycle_role_order_v2(cell, 2),
                ("R", "GV") if cell % 2 == 0 else ("GV", "R"),
            )
        for cell, replicate in [(-1, 0), (12, 0), (True, 0), (0, True), (0, 3)]:
            with (
                self.subTest(cell=cell, replicate=replicate),
                self.assertRaises(ValueError),
            ):
                lifecycle_role_order_v2(cell, replicate)
