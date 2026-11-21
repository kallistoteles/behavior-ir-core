"""A closed resource stop retains its tests but cannot silently become a pass."""

import hashlib
import json
from pathlib import Path
import tempfile
import unittest


class NativeContinuationTests(unittest.TestCase):
    def test_cache_allocation_is_one_bounded_prospective_step(self):
        from cache_capacity_v2 import cache_capacity_step

        gib = 1024**3
        cache_capacity_step(20 * gib, 21 * gib)
        for old, new in [
            (20 * gib, 22 * gib),
            (21 * gib, 22 * gib),
            (True, 21 * gib),
            (20 * gib, float(21 * gib)),
        ]:
            with self.assertRaises(ValueError):
                cache_capacity_step(old, new)

    def test_passed_command_rejects_changed_logs_and_wrong_test_count(self):
        from native_completion_v2 import checked_command

        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            stdout = b"test result: ok. 9 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 1.00s\n"
            (root / "stdout.txt").write_bytes(stdout)
            (root / "stderr.txt").write_bytes(b"")
            result = dict(
                exit_code=0,
                argv=["cargo", "test"],
                stdout_sha256=hashlib.sha256(stdout).hexdigest(),
                stderr_sha256=hashlib.sha256(b"").hexdigest(),
            )
            (root / "result.json").write_text(json.dumps(result))
            checked_command(root, expected_tests=9)
            with self.assertRaises(ValueError):
                checked_command(root, expected_tests=8)
            (root / "stdout.txt").write_bytes(stdout + b"changed")
            with self.assertRaises(ValueError):
                checked_command(root, expected_tests=9)

    def test_real_prospective_profile_keeps_every_other_limit(self):
        from cache_capacity_v2 import cache_limits
        import copy

        root = Path(__file__).resolve().parents[4]
        base = root / "specs/036-core-transition-feasibility/inputs/v2/profiles"
        old = json.loads((base / "native-evidence-capacity-002.json").read_text())[
            "limits"
        ]
        profile = json.loads((base / "native-cache-capacity-001.json").read_text())
        self.assertEqual(cache_limits(old, profile["limits"]), profile["limits"])
        for field, value in [
            ("combined_bytes", 40 * 1024**3),
            ("cpu_workers", 2),
            ("sample_seconds", 2),
            ("cache_bytes", 22 * 1024**3),
        ]:
            bad = copy.deepcopy(profile["limits"])
            bad[field] = value
            with self.subTest(field=field), self.assertRaises(ValueError):
                cache_limits(old, bad)
