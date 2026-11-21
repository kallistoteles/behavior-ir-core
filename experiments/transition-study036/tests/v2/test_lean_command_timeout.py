"""A timed-out proof command must retain a failed diagnostic, never a fake exit."""

import json
from pathlib import Path
import sys
import tempfile
import unittest


class LeanCommandTimeoutTests(unittest.TestCase):
    def run_command(self, source, seconds=5):
        from lean_command_v2 import run_logged_command

        with tempfile.TemporaryDirectory() as root:
            folder = Path(root) / "command"
            result = run_logged_command(
                folder,
                [sys.executable, "-u", "-c", source],
                cwd=root,
                env={},
                seconds=seconds,
            )
            return (
                result,
                (folder / "stdout.txt").read_text(),
                json.loads((folder / "result.json").read_text()),
            )

    def test_real_timeout_retains_partial_output_without_inventing_an_exit(self):
        row, output, saved = self.run_command(
            "import time; print('reached'); time.sleep(10)", seconds=0.2
        )
        self.assertTrue(row["timed_out"])
        self.assertIsNone(row["exit_code"])
        self.assertEqual(output, "reached\n")
        self.assertEqual(saved, row)

    def test_actual_success_keeps_its_exit_and_log_hash(self):
        row, output, saved = self.run_command("print('checked')")
        self.assertFalse(row["timed_out"])
        self.assertEqual(row["exit_code"], 0)
        self.assertEqual(output, "checked\n")
        self.assertEqual(saved, row)
        self.assertEqual(len(row["stdout_sha256"]), 64)

    def test_real_failure_is_distinct_from_timeout(self):
        row, output, saved = self.run_command("print('rejected'); raise SystemExit(7)")
        self.assertFalse(row["timed_out"])
        self.assertEqual(row["exit_code"], 7)
        self.assertEqual(output, "rejected\n")
        self.assertEqual(saved, row)
