"""Resource outcomes must never acquire semantic acceptance authority."""
from pathlib import Path
import sys
import tempfile
import time
import unittest

from profile import ProfileError, metric, preflight, profile_digest, load_profile, run_child, timing_lock


class ProfileTests(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        self.root = Path(self.temp.name)
        self.profile = load_profile()

    def test_preflight_rejects_changed_frozen_settings(self):
        expected = profile_digest(self.profile)
        changed = dict(self.profile, address_space_limit_bytes=1)
        with self.assertRaises(ProfileError):
            preflight(changed, self.root, expected_digest=expected, cpus={0, 7}, free_bytes=4 * 1024**3)

    def test_preflight_checks_actual_cpu_and_disk_capacity(self):
        expected = profile_digest(self.profile)
        preflight(self.profile, self.root, expected_digest=expected, cpus={0, 7}, free_bytes=4 * 1024**3)
        for cpus, free in [({0}, 4 * 1024**3), ({0, 7}, 1)]:
            with self.subTest(cpus=cpus, free=free), self.assertRaises(ProfileError):
                preflight(self.profile, self.root, expected_digest=expected, cpus=cpus, free_bytes=free)

    def test_collectors_cannot_share_measurement_lock(self):
        with timing_lock(self.root / "timing.lock"):
            with self.assertRaises(ProfileError):
                with timing_lock(self.root / "timing.lock"):
                    pass

    def test_timeout_is_not_deny_or_invalid_witness(self):
        result = run_child([sys.executable, "-c", "import time; time.sleep(5)"], output_dir=self.root / "timeout", timeout_seconds=0.05, address_space_bytes=128 * 1024**2)
        self.assertEqual(result["outcome"], "ResourceExhausted")
        self.assertEqual(result["reason"], "wall-time")
        self.assertNotIn("semantic_outcome", result)

    def test_whole_chain_deadline_applies_before_launch(self):
        result = run_child([sys.executable, "-c", "raise Exception('must not launch')"], output_dir=self.root / "past", timeout_seconds=2, address_space_bytes=128 * 1024**2, deadline=time.monotonic() - 1)
        self.assertEqual(result["outcome"], "ResourceExhausted")
        self.assertEqual(result["reason"], "whole-chain-time")
        self.assertFalse(result["launched"])

    def test_child_limit_and_failure_are_retained(self):
        code = "import resource; print(resource.getrlimit(resource.RLIMIT_AS)[0]); raise SystemExit(3)"
        result = run_child([sys.executable, "-c", code], output_dir=self.root / "fail", timeout_seconds=2, address_space_bytes=128 * 1024**2)
        self.assertEqual(result["outcome"], "ToolFailure")
        self.assertEqual(result["exit_code"], 3)
        self.assertIn(str(128 * 1024**2), (self.root / "fail/stdout.txt").read_text())
        self.assertGreater(result["peak_rss_bytes"], 0)

    def test_unmeasured_is_null_not_zero(self):
        self.assertEqual(metric(None, "not instrumented"), {"value": None, "reason": "not instrumented"})
        self.assertEqual(metric(0), {"value": 0, "reason": None})
        for value, reason in [(None, None), (False, None), (float("nan"), None)]:
            with self.assertRaises(ProfileError):
                metric(value, reason)



class OrchestrationAffinityTests(unittest.TestCase):
    def test_controller_affinity_is_enforced_not_merely_declared(self):
        from unittest.mock import patch
        from profile import pin_orchestration
        p=load_profile()
        with patch('profile.os.sched_setaffinity') as set_affinity,patch('profile.os.sched_getaffinity',return_value={0}):
            pin_orchestration(p)
            set_affinity.assert_called_once_with(0,{0})
        with patch('profile.os.sched_setaffinity'),patch('profile.os.sched_getaffinity',return_value={0,7}):
            with self.assertRaises(ProfileError):pin_orchestration(p)

if __name__ == "__main__":
    unittest.main()
