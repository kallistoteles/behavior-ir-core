import unittest
import tempfile
import json
import hashlib
from pathlib import Path
from validate import verify_index, verify_clock, validate_claims, verify_receipts


class ValidationTests(unittest.TestCase):
    def test_changed_bytes_and_escape(self):
        with tempfile.TemporaryDirectory() as d:
            p = Path(d)
            (p / "x").write_bytes(b"x")
            ref = {"path": "x", "bytes": 1, "sha256": hashlib.sha256(b"x").hexdigest()}
            verify_index(p, {"format": "core036.closed.v1", "files": [ref]})
            (p / "x").write_bytes(b"y")
            with self.assertRaises(ValueError):
                verify_index(p, {"format": "core036.closed.v1", "files": [ref]})
            ref["path"] = "../escape"
            with self.assertRaises(ValueError):
                verify_index(p, {"format": "core036.closed.v1", "files": [ref]})

    def test_context_clock_not_report_selected(self):
        c = {"started_ns": 100, "boot_id": "b"}
        verify_clock(c, c)
        with self.assertRaises(ValueError):
            verify_clock(c, {"started_ns": 101, "boot_id": "b"})

    def test_refuses_forged_native_or_reproduction(self):
        for v in [{"native_correspondence": "proved"}, {"full_reproduction": True}]:
            with self.assertRaises(ValueError):
                validate_claims(v)

    def test_unindexed_and_symlink_rejected(self):
        with tempfile.TemporaryDirectory() as d:
            root = Path(d)
            (root / "x").write_bytes(b"x")
            ref = {"path": "x", "bytes": 1, "sha256": hashlib.sha256(b"x").hexdigest()}
            index = {"format": "core036.closed.v1", "files": [ref]}
            (root / "extra").write_bytes(b"x")
            with self.assertRaises(ValueError):
                verify_index(root, index)
            (root / "extra").unlink()
            (root / "extra").symlink_to(root / "x")
            with self.assertRaises(ValueError):
                verify_index(root, index)

    def test_live_writer_wrong_stream_and_budget_rejected(self):
        with tempfile.TemporaryDirectory() as d:
            root = Path(d)
            clock = {"started_ns": 100, "boot_id": "b"}
            for stream in ["stdout", "stderr"]:
                (root / (stream + ".txt")).write_bytes(b"")
            value = {
                "format": "core036.bounded.v1",
                "tree_empty": True,
                "group_empty": True,
                "boot_id": "b",
                "start_monotonic_ns": 101,
                "wall_ns": 1,
                "exit_code": 0,
                "stop_reason": None,
                "stdout_sha256": hashlib.sha256(b"").hexdigest(),
                "stderr_sha256": hashlib.sha256(b"").hexdigest(),
            }

            def write(v):
                (root / "receipt.json").write_text(json.dumps(v))

            write(value)
            self.assertEqual(len(verify_receipts(root, clock)), 1)
            for changed in [
                {"tree_empty": False},
                {"stdout_sha256": "0" * 64},
                {"start_monotonic_ns": 99},
                {"wall_ns": 21601 * 10**9},
            ]:
                write({**value, **changed})
                with self.assertRaises(ValueError):
                    verify_receipts(root, clock)
