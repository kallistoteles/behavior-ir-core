"""Actual closed worker reports, not synthetic memory/latency observations."""

import unittest
from pathlib import Path

from artifact_io import RootRegistry, digest
from artifact_registration_v2 import guard_reference
from native_accessor_source_canary_v2 import guard_owned_path, _unlinked_parents
from session_resources import session_resource_summary_v2

R = Path("/data/repos/behavior-ir-core-033")
P = Path("/var/tmp/behavior-ir-core036-v2/w001")
N = Path("/var/tmp/behavior-ir-core036-evidence-v2/w001")
NAME = "session-recovery-resources-development-002"


def guarded(path):
    path = guard_owned_path(path)
    _unlinked_parents(path)
    return path


class NativeSessionResourcesTests(unittest.TestCase):
    def test_all_actual_fixed_worker_sessions_have_valid_resource_boundaries(self):
        refs = RootRegistry({"private": P, "future_evidence": N, "repository": R})
        base = N / "bootstrap-runs" / NAME
        result = refs.read(
            refs.reference(
                "future_evidence", str(guarded(base / "result.json").relative_to(N))
            )
        )
        self.assertEqual(result["actual_exit"], 0)
        self.assertIsNone(result["stop_reason"])
        self.assertTrue(
            result["tree_empty"]
            and result["group_empty"]
            and result["all_source_bytes_equal_after"]
        )
        guard_reference(result["receipt_ref"])
        receipt = refs.read(result["receipt_ref"], limit=32 * 1024**2)
        self.assertIsNone(receipt["final_storage_inventory_error"])
        self.assertEqual(
            receipt["final_incremental_storage_bytes"],
            receipt["final_resource_observation"]["growth_apparent_unique_inode_bytes"],
        )
        output = P / "session-recovery-resources-development" / NAME
        component = refs.read(
            refs.reference(
                "private", str(guarded(output / "result.json").relative_to(P))
            )
        )
        self.assertEqual(sum(component["tests"].values()), 36)
        self.assertEqual(component["native_proof"], "unestablished")
        guard_reference(component["library_ref"])
        refs.verify(component["library_ref"])
        guard_reference(component["source_subject_ref"])
        source = refs.read(component["source_subject_ref"])
        helper = R / "experiments/transition-study036/session_resources.py"
        binding = [
            row["logical_ref"]
            for row in source["files"]
            if row["logical_ref"]["root_id"] == "repository"
            and row["logical_ref"]["path"] == str(helper.relative_to(R))
        ]
        self.assertEqual(len(binding), 1)
        self.assertEqual(binding[0]["sha256"], digest(guarded(helper)))
        allowed = {
            f"session-worker-{role}-{mode}": 2
            for role in ["R", "GV", "B"]
            for mode in ["timing", "diagnostic"]
        }
        allowed.update({f"recovery-worker-{role}": 1 for role in ["R", "GV"]})
        seen, sessions = set(), 0
        private = guarded(output / "worker/private")
        for fixture in private.iterdir():
            guard_owned_path(fixture)
            if not fixture.name.startswith("raw-oracle-"):
                continue
            guarded(fixture)
            for name, expected_cases in allowed.items():
                path = guarded(fixture / name / "summary.json")
                if not path.exists():
                    continue
                self.assertNotIn(name, seen)
                seen.add(name)
                summary = refs.read(refs.reference("private", str(path.relative_to(P))))
                self.assertEqual(len(summary["cases"]), expected_cases)
                for case in summary["cases"]:
                    self.assertFalse(case["private_authority_exported"])
                    checked = session_resource_summary_v2(case["session"])
                    self.assertGreater(checked["observed_rss_sample_count"], 0)
                    self.assertIsNone(checked["exact_retained_allocation_bytes"])
                    sessions += 1
        self.assertEqual(seen, set(allowed))
        self.assertEqual(sessions, 14)


if __name__ == "__main__":
    unittest.main()
