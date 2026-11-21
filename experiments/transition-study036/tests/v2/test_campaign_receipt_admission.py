"""A real pre-spawn resource refusal still has recorded controller cost."""

import tempfile
from pathlib import Path
import unittest

from artifact_io import RootRegistry
from campaign import WorkLedger


class ReceiptAdmissionTests(unittest.TestCase):
    def test_reviewed_bootstrap_pre_spawn_stop_is_retained_too(self):
        with tempfile.TemporaryDirectory() as directory:
            work = Path(directory) / "work"
            work.mkdir()
            refs = RootRegistry({"work": work})
            reference = refs.write(
                "work",
                "bootstrap-refusal.json",
                {
                    **self.receipt(),
                    "format": "core035.bounded.v1",
                    "stop_reason": "CombinedGrowthLimit",
                },
            )
            ledger = WorkLedger(work, "w001")
            ledger.import_receipt(
                reference, registry=refs, scope="reviewed bootstrap refusal fixture"
            )
            self.assertIn(reference["sha256"], ledger.imported_receipts)
            self.assertFalse(ledger.feature_complete())

    def receipt(self):
        return {
            "format": "core036.resource.v2",
            "group_empty": True,
            "tree_empty": True,
            "group_id": None,
            "exit_code": None,
            "stop_reason": "ArtifactGrowthLimit",
            "tree_samples": [],
            "direct_waited": None,
            "leftovers_killed": False,
            "start_monotonic_ns": 10,
            "wall_ns": 20,
            "boot_id": "test",
        }

    def test_unstarted_resource_refusal_is_accounted_without_fake_group(self):
        with tempfile.TemporaryDirectory() as directory:
            work = Path(directory) / "work"
            work.mkdir()
            refs = RootRegistry({"work": work})
            reference = refs.write("work", "refusal.json", self.receipt())
            ledger = WorkLedger(work, "w001")
            ledger.import_receipt(
                reference, registry=refs, scope="synthetic pre-spawn controller refusal"
            )
            self.assertIn(reference["sha256"], ledger.imported_receipts)
            self.assertFalse(ledger.feature_complete())

    def test_missing_group_cannot_masquerade_as_success_or_running_child(self):
        changes = [
            {"stop_reason": None},
            {"exit_code": 0},
            {"tree_samples": [{}]},
            {"direct_waited": {}},
            {"tree_empty": False},
            {"group_id": False},
            {"group_id": 0},
            {"group_id": -1},
        ]
        for index, change in enumerate(changes):
            with self.subTest(index=index), tempfile.TemporaryDirectory() as directory:
                work = Path(directory) / "work"
                work.mkdir()
                refs = RootRegistry({"work": work})
                reference = refs.write("work", "bad.json", {**self.receipt(), **change})
                ledger = WorkLedger(work, "w001")
                with self.assertRaises(ValueError):
                    ledger.import_receipt(
                        reference, registry=refs, scope="invalid fixture"
                    )
