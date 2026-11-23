"""Boundary snapshots are observations, never owned allocation or exact peaks."""

import copy
import unittest


def unavailable(scope):
    return dict(
        value=None,
        unit="bytes",
        scope=scope,
        method="not-measured",
        reason_if_unavailable="No exact owned-allocation hook",
    )


def report():
    observations = []
    for boundary, operation, at in [
        ("acquisition", None, 9),
        ("operation", 1, 15),
        ("operation", 2, 19),
        ("audit", None, 23),
        ("released", None, 29),
    ]:
        observations.append(
            dict(
                boundary=boundary,
                operation=operation,
                at_ns=at,
                process_rss=dict(
                    value=100 + at,
                    unit="bytes",
                    scope="worker-process-resident",
                    method="proc-self-status-snapshot",
                    reason_if_unavailable=None,
                ),
                retained_components={
                    name: unavailable(f"session-retained-{name}")
                    for name in ["state", "views", "history", "results"]
                },
            )
        )
    return dict(
        completed_operations=2,
        invalidation_before=None,
        offsets=dict(
            worker_start=0,
            session_start=5,
            acquisition_end=10,
            last_output_end=20,
            audit_end=30,
        ),
        resource_observations=observations,
    )


class SessionResourcesTests(unittest.TestCase):
    def summarize(self, value):
        from session_resources import session_resource_summary_v2

        return session_resource_summary_v2(value)

    def test_real_boundary_order_and_honest_observed_maximum(self):
        summary = self.summarize(report())
        self.assertEqual(summary["sample_count"], 5)
        self.assertEqual(summary["maximum_observed_process_rss_bytes"], 129)
        self.assertEqual(
            summary["scope"],
            "worker-process-resident boundary snapshots; not an exact peak or retained allocation",
        )
        self.assertIsNone(summary["exact_retained_allocation_bytes"])

    def test_missing_reordered_extra_or_outside_session_boundaries_fail(self):
        for mutation in [
            "missing",
            "reordered",
            "duplicate",
            "acquisition",
            "operation",
            "audit",
            "released",
            "wrong-index",
        ]:
            value = report()
            rows = value["resource_observations"]
            if mutation == "missing":
                rows.pop()
            elif mutation == "reordered":
                rows[0], rows[1] = rows[1], rows[0]
            elif mutation == "duplicate":
                rows.insert(2, copy.deepcopy(rows[1]))
            elif mutation == "acquisition":
                rows[0]["at_ns"] = 11
            elif mutation == "operation":
                rows[2]["at_ns"] = 21
            elif mutation == "audit":
                rows[3]["at_ns"] = 31
            elif mutation == "released":
                rows[4]["at_ns"] = 2
            elif mutation == "wrong-index":
                rows[2]["operation"] = 1
            with self.subTest(mutation=mutation), self.assertRaises(ValueError):
                self.summarize(value)

    def test_rss_values_units_methods_and_allocation_proxies_are_distinct(self):
        for change in [
            dict(value=True),
            dict(value=-1),
            dict(value=2**64),
            dict(unit="KiB"),
            dict(scope="session-retained-owned"),
            dict(method="allocated-bytes"),
            dict(method="serialized-payload-bytes"),
            dict(reason_if_unavailable="unexpected"),
        ]:
            value = report()
            value["resource_observations"][0]["process_rss"].update(change)
            with self.subTest(change=change), self.assertRaises(ValueError):
                self.summarize(value)
        value = report()
        value["resource_observations"][0]["retained_components"]["state"]["value"] = 109
        with self.assertRaises(ValueError):
            self.summarize(value)

    def test_unavailable_rss_is_explicit_and_cannot_become_zero(self):
        value = report()
        for row in value["resource_observations"]:
            row["process_rss"] = unavailable("worker-process-resident")
        summary = self.summarize(value)
        self.assertIsNone(summary["maximum_observed_process_rss_bytes"])
        self.assertTrue(summary["unavailable_reasons"])
        value["resource_observations"][0]["process_rss"]["reason_if_unavailable"] = ""
        with self.assertRaises(ValueError):
            self.summarize(value)

    def test_reacquisition_requires_the_frozen_midpoint_inside_the_session(self):
        value = report()
        value["invalidation_before"] = 2
        reacquired = copy.deepcopy(value["resource_observations"][0])
        reacquired.update(boundary="reacquired", operation=2, at_ns=16)
        value["resource_observations"].insert(2, reacquired)
        self.assertEqual(self.summarize(value)["sample_count"], 6)
        for change in [dict(operation=1), dict(at_ns=21), dict(at_ns=True)]:
            wrong = copy.deepcopy(value)
            wrong["resource_observations"][2].update(change)
            with self.subTest(change=change), self.assertRaises(ValueError):
                self.summarize(wrong)
        value["invalidation_before"] = None
        with self.assertRaises(ValueError):
            self.summarize(value)


if __name__ == "__main__":
    unittest.main()
