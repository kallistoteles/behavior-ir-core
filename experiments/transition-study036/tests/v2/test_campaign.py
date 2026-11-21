import tempfile
import unittest
from pathlib import Path
from campaign import WorkLedger
from gates import runnable, gate_valid, checked_gate


class CampaignV2Tests(unittest.TestCase):
    def test_calendar_gap_never_subtracts_distinct_boot_clocks(self):
        with tempfile.TemporaryDirectory() as d:
            ledger = WorkLedger(Path(d), "w001")
            profile = {"wall_seconds": 600, "reserve_seconds": 300}
            a = ledger.declare("ENV", profile=profile, subject="old", slots=["one"])
            ledger.start(a, now_ns=1000, boot_id="first")
            ledger.close(
                a,
                now_ns=1100,
                boot_id="first",
                outcome="failed",
                reason="fixture failure",
                closed_tree=True,
            )
            b = ledger.successor(
                a, correction="changed source", profile=profile, subject="new"
            )
            ledger.start(b, now_ns=2, boot_id="second")
            ledger.close(
                b, now_ns=52, boot_id="second", outcome="succeeded", closed_tree=True
            )
            gaps = ledger.calendar_gaps()
            self.assertEqual(ledger.active_ns(), 150)
            self.assertEqual(len(gaps), 1)
            self.assertEqual(gaps[0]["from_boot_id"], "first")
            self.assertEqual(gaps[0]["to_boot_id"], "second")
            self.assertEqual(
                gaps[0]["scope"], "UTC calendar observation only; never active compute"
            )

    def test_preflight_rejection_is_not_a_fake_zero_duration_run(self):
        with tempfile.TemporaryDirectory() as d:
            ledger = WorkLedger(Path(d), "w001")
            a = ledger.declare(
                "ENV",
                profile={"wall_seconds": 600, "reserve_seconds": 300},
                subject="old",
                slots=["one"],
            )
            ledger.close_unstarted(
                a,
                reason="Actual preflight rejected before child launch",
                observed_ns=100,
                boot_id="b",
            )
            item = ledger.attempts[a]
            self.assertEqual(item["state"], "closed")
            self.assertIsNone(item["duration_ns"])
            self.assertEqual(ledger.unknown_duration_attempts(), [a])
            b = ledger.successor(
                a,
                correction="fixed alias check",
                profile={"wall_seconds": 600, "reserve_seconds": 300},
                subject="new",
            )
            self.assertNotEqual(a, b)

    def test_blind_retry_concurrent_start_and_persisted_authority(self):
        with tempfile.TemporaryDirectory() as d:
            ledger = WorkLedger(Path(d), "w001")
            profile = {"wall_seconds": 600, "reserve_seconds": 300}
            a = ledger.declare("ENV", profile=profile, subject="s1", slots=["one"])
            b = ledger.declare("Q", profile=profile, subject="s1", slots=["two"])
            ledger.start(a, now_ns=100, boot_id="b1")
            with self.assertRaises(ValueError):
                ledger.start(b, now_ns=110, boot_id="b1")
            ledger.close(
                a,
                now_ns=200,
                boot_id="b1",
                outcome="failed",
                reason="bad compiler",
                closed_tree=True,
            )
            with self.assertRaises(ValueError):
                ledger.successor(a, correction="retry unchanged", profile=profile)
            self.assertEqual(WorkLedger(Path(d), "w001").authority, "unverified")

    def test_append_only_successor_and_boot_boundaries(self):
        with tempfile.TemporaryDirectory() as d:
            ledger = WorkLedger(Path(d), "w001")
            a = ledger.declare(
                "ENV",
                profile={"wall_seconds": 600, "reserve_seconds": 300},
                subject="s1",
                slots=["one"],
            )
            ledger.start(a, now_ns=100, boot_id="b1")
            ledger.close(
                a,
                now_ns=200,
                boot_id="b1",
                outcome="resource_stopped",
                reason="work did not fit",
                closed_tree=True,
            )
            with self.assertRaises(ValueError):
                ledger.successor(
                    a,
                    correction="",
                    profile={"wall_seconds": 600, "reserve_seconds": 300},
                )
            b = ledger.successor(
                a,
                correction="use measured larger allocation",
                profile={"wall_seconds": 900, "reserve_seconds": 300},
            )
            ledger.start(b, now_ns=5, boot_id="b2")
            ledger.close(
                b, now_ns=55, boot_id="b2", outcome="succeeded", closed_tree=True
            )
            self.assertEqual(ledger.active_ns(), 150)
            self.assertFalse(ledger.feature_complete())
            reloaded = WorkLedger(Path(d), "w001")
            self.assertEqual(reloaded.active_ns(), 150)
            with self.assertRaises(ValueError):
                reloaded.start(a, now_ns=300, boot_id="b1")

    def test_source_gates_not_report_flags_or_global_deadline(self):
        self.assertTrue(runnable("Q", {"native_ready": True}))
        self.assertTrue(
            runnable("NATIVE", {"native_ready": True, "analysis_ready": True})
        )
        self.assertFalse(
            runnable("DIAG", {"native_ready": True, "proof": False, "quality": True})
        )
        self.assertTrue(runnable("ENGINEERING", {}))
        self.assertFalse(gate_valid({"subject": "old", "status": "met"}, "new"))
        self.assertFalse(
            gate_valid({"subject": "new", "status": "met", "verified": True}, "new")
        )

    def test_actual_positive_gate_and_rejected_check(self):
        good = checked_gate("s1", kind="unit", check=lambda: True)
        bad = checked_gate("s1", kind="unit", check=lambda: False)
        self.assertTrue(gate_valid(good, "s1"))
        self.assertFalse(gate_valid(good, "other"))
        self.assertFalse(gate_valid(bad, "s1"))

    def test_wrong_boot_and_unclosed_attempt_cannot_advance(self):
        with tempfile.TemporaryDirectory() as d:
            ledger = WorkLedger(Path(d), "w001")
            a = ledger.declare(
                "ENV",
                profile={"wall_seconds": 600, "reserve_seconds": 300},
                subject="s1",
                slots=["one"],
            )
            ledger.start(a, now_ns=100, boot_id="b1")
            for now, boot, closed in [
                (99, "b1", True),
                (200, "other", True),
                (200, "b1", False),
            ]:
                with (
                    self.subTest(now=now, boot=boot, closed=closed),
                    self.assertRaises(ValueError),
                ):
                    ledger.close(
                        a,
                        now_ns=now,
                        boot_id=boot,
                        outcome="succeeded",
                        closed_tree=closed,
                    )
            with self.assertRaises(ValueError):
                ledger.successor(
                    a,
                    correction="unclosed parent",
                    profile={"wall_seconds": 900, "reserve_seconds": 300},
                )

    def test_event_stream_tampering_is_detected(self):
        with tempfile.TemporaryDirectory() as d:
            ledger = WorkLedger(Path(d), "w001")
            ledger.declare(
                "ENV",
                profile={"wall_seconds": 600, "reserve_seconds": 300},
                subject="s1",
                slots=["one"],
            )
            path = Path(d) / "events.jsonl"
            text = path.read_text()
            path.write_text(text.replace("s1", "s2"))
            with self.assertRaises(ValueError):
                WorkLedger(Path(d), "w001")
