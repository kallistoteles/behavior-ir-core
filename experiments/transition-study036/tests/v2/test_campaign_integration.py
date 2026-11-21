"""Supervisor controls; pure fixtures never stand for native theorem closure."""

import json
import tempfile
import subprocess
import sys
import unittest
from pathlib import Path
from campaign import WorkLedger
from controller_v2 import validate_slot_selection, execute_status, cli_exit
from gates import checked_gate, gate_valid


class SupervisorV2Tests(unittest.TestCase):
    def test_actual_cli_status_duplicate_init_and_recorded_wall_control(self):
        from artifact_io import RootRegistry

        root = Path(__file__).resolve().parents[4]
        feature = root / "specs/036-core-transition-feasibility"
        work = feature / "evidence/v2/w001"
        tool = root / "experiments/transition-study036/study.py"
        result = subprocess.run(
            [sys.executable, str(tool), "status", "--work", str(work / "context.json")],
            capture_output=True,
            check=False,
        )
        self.assertEqual(result.returncode, 0, result.stderr.decode())
        self.assertFalse(json.loads(result.stdout)["feature_complete"])
        result = subprocess.run(
            [
                sys.executable,
                str(tool),
                "init",
                "--spec",
                str(feature / "spec.md"),
                "--profile",
                str(root / "experiments/transition-study036/profiles/v2/work.json"),
                "--previous-index",
                str(feature / "evidence/campaign-001/closed-artifacts.json"),
                "--bootstrap",
                str(feature / "inputs/v2/bootstrap-input.json"),
                "--out",
                str(work),
            ],
            capture_output=True,
            check=False,
        )
        self.assertEqual(result.returncode, 2)
        actual = []
        for path in (work / "attempts").glob("*/declaration.json"):
            value = json.loads(path.read_text())
            if (
                value["slots"] == ["controller-wall-control"]
                and (path.parent / "closed-artifacts.json").exists()
            ):
                actual.append(path.parent)
        self.assertEqual(
            len(actual), 1, "actual declared wall-control receipt remains pending"
        )
        case = actual[0]
        RootRegistry({"attempt": case}).verify_closed("attempt")
        receipt = json.loads((case / "child/receipt.json").read_text())
        self.assertEqual(receipt["stop_reason"], "WallLimit")
        self.assertEqual(receipt["exit_code"], -9)
        self.assertTrue(receipt["tree_empty"])
        self.assertTrue(receipt["group_empty"])
        self.assertEqual(receipt["wall_limit_ns"], 150_000_000)
        self.assertEqual(
            json.loads((case / "checkpoint.json").read_text())["stage_outcome"],
            "resource_stopped",
        )

    def test_actual_closed_successor_keeps_failed_time_and_pending_feature(self):
        with tempfile.TemporaryDirectory() as d:
            ledger = WorkLedger(Path(d), "w001")
            a = ledger.declare(
                "ENV",
                profile={"wall_seconds": 600, "reserve_seconds": 300},
                subject="bad-source",
                slots=["native-smoke"],
            )
            ledger.start(a, now_ns=100, boot_id="b")
            ledger.close(
                a,
                now_ns=200,
                boot_id="b",
                outcome="failed",
                reason="actual failed smoke",
                closed_tree=True,
            )
            b = ledger.successor(
                a,
                correction="fixed source binding",
                subject="corrected-source",
                profile={"wall_seconds": 600, "reserve_seconds": 300},
            )
            ledger.start(b, now_ns=300, boot_id="b")
            ledger.close(
                b, now_ns=350, boot_id="b", outcome="succeeded", closed_tree=True
            )
            status = execute_status(ledger)
            self.assertFalse(status["feature_complete"])
            self.assertEqual(status["actual_closed_attempt_ns"], 150)
            self.assertEqual(status["attempts"][a]["outcome"], "failed")
            self.assertEqual(status["initial_authority"], "unverified")
            self.assertIn("ENGINEERING", status["runnable"])

    def test_slot_inventory_unknown_flags_and_bounded_exit_classes(self):
        self.assertEqual(
            validate_slot_selection({"slots": ["one"]}, known=["one", "two"]), ["one"]
        )
        for value in [
            {"slots": ["unknown"]},
            {"slots": ["one", "one"]},
            {"slots": ["one"], "verified": True},
            {"slots": []},
        ]:
            with self.subTest(value=value), self.assertRaises(ValueError):
                validate_slot_selection(value, known=["one"])
        self.assertEqual(cli_exit(None), 0)
        self.assertEqual(cli_exit(AssertionError("actual assertion")), 1)
        self.assertEqual(cli_exit(ValueError("invalid schema")), 2)
        self.assertEqual(cli_exit(NotImplementedError("pending stage")), 3)

    def test_dependencies_and_wrong_kind_cannot_be_promoted(self):
        gate = checked_gate(
            "source",
            kind="unit",
            check=lambda: True,
            dependencies=("original", "endpoint"),
        )
        self.assertTrue(
            gate_valid(gate, "source", current_dependencies=("original", "endpoint"))
        )
        self.assertFalse(
            gate_valid(gate, "source", current_dependencies=("changed", "endpoint"))
        )
        self.assertFalse(gate_valid(gate, "source", kind="native_proof"))
        with self.assertRaises(ValueError):
            checked_gate("source", kind="native_proof", check=lambda: True)
