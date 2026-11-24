"""Full-size wire replay; this fixture never constitutes a native attempt."""

import json
import tempfile
import unittest
from pathlib import Path

from artifact_io import RootRegistry, write_once
from native_accessor_source_canary_v2 import guard_owned_path, _unlinked_parents
from records import MANIFEST


class ReceiptWireCapacityTests(unittest.TestCase):
    def test_complete_long_receipt_retains_every_value_under_existing_bound(self):
        # Read an admissible closed receipt, then make an explicitly synthetic
        # capacity fixture. The oversized581 control is never parsed or edited.
        history = Path("/var/tmp/behavior-ir-core036-evidence-v2/w001")
        source = history / "attempts/a0565/child/receipt.json"
        guard_owned_path(source)
        _unlinked_parents(source)
        registry = RootRegistry({"history": history}, readonly=["history"])
        source_ref = registry.reference("history", "attempts/a0565/child/receipt.json")
        original = registry.read(source_ref, limit=MANIFEST)
        samples = original["tree_samples"]
        extended = [*samples, *samples[: (len(samples) + 9) // 10]]
        fixture = {
            **original,
            "format": "core036.receipt-wire-capacity-fixture.v2",
            "record_id": "synthetic-wire-capacity-only",
            "reason": "Synthetic serialization replay, never native/resource evidence",
            "tree_samples": extended,
        }
        legacy = (
            json.dumps(
                fixture, sort_keys=True, ensure_ascii=False, indent=2, allow_nan=False
            )
            + "\n"
        )
        self.assertGreater(len(legacy.encode()), MANIFEST)
        forecast = (
            json.dumps(
                fixture,
                sort_keys=True,
                ensure_ascii=False,
                separators=(",", ":"),
                allow_nan=False,
            )
            + "\n"
        )
        self.assertLessEqual(len(forecast.encode()), MANIFEST)
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            write_once(root / "receipt.json", fixture)
            outputs = RootRegistry({"repro": root})
            reference = outputs.reference("repro", "receipt.json")
            actual = outputs.read(reference, limit=MANIFEST)
            self.assertEqual(actual, fixture)
            self.assertEqual(len(actual["tree_samples"]), len(extended))
            self.assertEqual(
                json.dumps(
                    actual,
                    sort_keys=True,
                    ensure_ascii=False,
                    indent=2,
                    allow_nan=False,
                )
                + "\n",
                legacy,
            )
            print(
                "RECEIPT_WIRE_CAPACITY",
                json.dumps(
                    {
                        "legacy_wire_bytes": len(legacy.encode()),
                        "new_wire_bytes": reference["bytes"],
                        "existing_reader_bound": MANIFEST,
                        "samples": len(extended),
                        "all_values_and_types_preserved": True,
                        "native_evidence": False,
                    }
                ),
            )
