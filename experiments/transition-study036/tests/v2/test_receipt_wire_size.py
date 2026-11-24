"""The real recorder writer must fit the bounded reader without losing samples."""

import tempfile
import unittest
from pathlib import Path

from artifact_io import RootRegistry, write_once


class ReceiptWireSizeTests(unittest.TestCase):
    def test_nested_receipt_survives_its_declared_reader_budget(self):
        # A small version of the actual long-receipt failure, at the same
        # write_once -> reference -> bounded-read seam used by the recorder.
        receipt = {
            "format": "core036.receipt.v2",
            "work_id": "w001",
            "record_id": "bounded-receipt",
            "exit_code": 0,
            "stop_reason": None,
            "tree_samples": [
                {
                    "elapsed_ns": index * 250_000_000,
                    "tree_empty": False,
                    "stats": {
                        "rss_bytes": 2**64 - 1,
                        "labels": ["åäö", "same"],
                        "processes": [],
                    },
                }
                for index in range(9)
            ],
        }
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            output = root / "receipt.json"
            write_once(output, receipt)
            registry = RootRegistry({"repro": root})
            reference = registry.reference("repro", "receipt.json")
            actual = registry.read(reference, limit=2048)
            self.assertEqual(actual, receipt)
            self.assertEqual(len(actual["tree_samples"]), 9)

    def test_existing_byte_artifacts_are_not_reencoded(self):
        wire = b'{\n  "literal": " keep \\n spaces "\n}\n'
        with tempfile.TemporaryDirectory() as directory:
            output = Path(directory) / "already-encoded.json"
            write_once(output, wire)
            self.assertEqual(output.read_bytes(), wire)

    def test_create_once_and_nonfinite_rejection_remain_strict(self):
        with tempfile.TemporaryDirectory() as directory:
            output = Path(directory) / "receipt.json"
            write_once(output, {"value": 1})
            original = output.read_bytes()
            with self.assertRaises(FileExistsError):
                write_once(output, {"value": 2})
            self.assertEqual(output.read_bytes(), original)
            with self.assertRaises(ValueError):
                write_once(Path(directory) / "nonfinite.json", {"value": float("nan")})
