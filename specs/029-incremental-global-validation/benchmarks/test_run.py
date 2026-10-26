"""Ensure failed or incompatible pilot processes remain failures in recorded evidence."""
import json
from pathlib import Path
import subprocess
import sys
import tempfile
import unittest


class PilotFailureTests(unittest.TestCase):
    def run_probe(self, code, timeout="10"):
        with tempfile.TemporaryDirectory(prefix="core029-runner-test-") as directory:
            root = Path(directory)
            probe = root / "probe"
            probe.write_text(f"#!{sys.executable}\n{code}\n")
            probe.chmod(0o755)
            output = root / "result.jsonl"
            process = subprocess.run(
                [sys.executable, str(Path(__file__).with_name("run.py")),
                 "--binary", str(probe), "--output", str(output), "--mode", "production-like",
                 "--strategy", "released-baseline", "--smoke", "--timeout", timeout],
                capture_output=True, text=True, check=False,
            )
            return process.returncode, [json.loads(line) for line in output.read_text().splitlines()]

    def test_nonzero_process_cannot_pass_with_valid_json(self):
        code, rows = self.run_probe('import sys; print(\'{"mode":"production-like"}\'); sys.exit(7)')
        self.assertEqual(code, 1)
        self.assertEqual(rows[0]["returncode"], 7)
        self.assertEqual(rows[0]["error"], "probe failed")
        self.assertIn("production-like", rows[0]["stdout"])

    def test_instrumented_result_cannot_be_recorded_as_production_timing(self):
        code, rows = self.run_probe('print(\'{"mode":"instrumented"}\')')
        self.assertEqual(code, 1)
        self.assertEqual(rows[0]["error"], "binary measurement mode mismatch")

    def test_invalid_output_is_retained_as_failure(self):
        code, rows = self.run_probe('print("not JSON")')
        self.assertEqual(code, 1)
        self.assertIn("error", rows[0])
        self.assertEqual(rows[0]["stdout"], "not JSON\n")

    def test_timeout_is_recorded_and_stops_pilot(self):
        code, rows = self.run_probe('import time; time.sleep(1)', timeout="0.01")
        self.assertEqual(code, 1)
        self.assertEqual(len(rows), 1)
        self.assertIn("timed out", rows[0]["error"])


if __name__ == "__main__":
    unittest.main()
