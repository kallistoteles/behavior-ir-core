"""Real observer work must consume the poll budget; never weaken its deadline."""

import json
import sys
import time
import unittest
import uuid
from pathlib import Path
from unittest.mock import patch

import recorder
from recorder import V2Runner

R = Path(__file__).resolve().parents[4]
P = Path("/var/tmp/behavior-ir-core036-v2/w001")
PROFILE = (
    R
    / "specs/036-core-transition-feasibility/inputs/v2/profiles/native-evidence-capacity-002.json"
)


class SlowFirstSample(V2Runner):
    def __init__(self, delay):
        profile = json.loads(PROFILE.read_text())
        super().__init__(profile)
        self.delay = delay
        self.pause_done = False
        self.inspect_next_poll = False

    def _growth(self, phase):
        usage = super()._growth(phase)
        if phase == "sample" and not self.pause_done:
            self.pause_done = True
            time.sleep(self.delay)
            self.inspect_next_poll = True
        return usage


class RecorderCadenceTests(unittest.TestCase):
    def test_past_sample_deadline_does_not_add_another_poll_sleep(self):
        runner = SlowFirstSample(0.35)
        observed = []
        actual_select = recorder.select.select

        def watch(read, write, error, timeout):
            if runner.inspect_next_poll:
                observed.append(timeout)
                runner.inspect_next_poll = False
            return actual_select(read, write, error, timeout)

        with patch("recorder.select.select", side_effect=watch):
            result = runner.run(
                [sys.executable, "-c", "import time;time.sleep(1.2)"],
                P / "bootstrap/controls" / ("past-deadline-" + uuid.uuid4().hex),
                wall_seconds=5,
                incremental_storage=True,
            )
        self.assertEqual(result["exit_code"], 0)
        self.assertIsNone(result["stop_reason"])
        self.assertTrue(result["tree_empty"])
        self.assertTrue(observed, "must reach the actual post-observation wait")
        self.assertEqual(
            observed[0],
            0,
            "observation already exceeded the250ms sampling target; another100ms sleep is wrong",
        )

    def test_actual_over_one_second_observation_still_stops_and_closes(self):
        result = SlowFirstSample(1.1).run(
            [sys.executable, "-c", "import time;time.sleep(5)"],
            P / "bootstrap/controls" / ("true-cadence-miss-" + uuid.uuid4().hex),
            wall_seconds=5,
            incremental_storage=True,
        )
        self.assertEqual(result["stop_reason"], "ObservationCadenceMissed")
        self.assertTrue(result["tree_empty"])
        self.assertTrue(result["group_empty"])


class RecorderClosureTests(unittest.TestCase):
    def run_orphan(self, remains_live):
        profile = json.loads(PROFILE.read_text())
        code = (
            "import os,time\n"
            "if os.fork() == 0:\n"
            " os.setsid()\n"
            + (" time.sleep(10)\n" if remains_live else "")
            + " os._exit(0)\n"
            "time.sleep(0.4)\n"
            "os._exit(0)\n"
        )
        return V2Runner(profile).run(
            [sys.executable, "-c", code],
            P / "bootstrap/controls" / ("orphan-closure-" + uuid.uuid4().hex),
            wall_seconds=5,
            incremental_storage=True,
        )

    def test_exited_orphan_is_reaped_without_claiming_live_leftover(self):
        result = self.run_orphan(False)
        self.assertEqual(result["exit_code"], 0)
        self.assertIsNone(result["stop_reason"])
        self.assertFalse(result["leftovers_killed"])
        self.assertTrue(result["tree_empty"])
        self.assertTrue(result["group_empty"])

    def test_live_detached_orphan_is_still_stopped_and_closed(self):
        result = self.run_orphan(True)
        self.assertEqual(result["stop_reason"], "LeftoverDescendants")
        self.assertTrue(result["leftovers_killed"])
        self.assertTrue(result["tree_empty"])
        self.assertTrue(result["group_empty"])
