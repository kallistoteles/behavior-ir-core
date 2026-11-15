import json, os, subprocess, tempfile, unittest
from pathlib import Path


class ReferenceCli(unittest.TestCase):
    def test_upstream_original_reference_case_matches_exactly(self):
        binary = os.environ["CORE035_REFERENCE_BIN"]
        expected = json.loads(Path(os.environ["CORE035_ORACLE_CASE"]).read_text())
        with tempfile.TemporaryDirectory() as d:
            out = Path(d) / "actual.json"
            p = subprocess.run(
                [binary, "native-reference", "--case", "growth-D1", "--out", str(out)],
                capture_output=True,
                timeout=60,
            )
            self.assertEqual(p.returncode, 0, p.stderr.decode())
            actual = json.loads(out.read_text())
            self.assertEqual(actual, expected)
            self.assertEqual(
                actual["expected"]["post_state"]["children"]["c0000"]["phase"],
                "Terminal",
            )
            self.assertEqual(actual["drain_expected"]["after_history"]["position"], 10)

    def test_invalid_cell_and_malformed_prepared_have_exit_two(self):
        binary = os.environ["CORE035_REFERENCE_BIN"]
        with tempfile.TemporaryDirectory() as d:
            root = Path(d)
            bad = root / "bad.json"
            bad.write_text('{"format":"unknown"}')
            for args in [
                [
                    "native-reference",
                    "--case",
                    "growth-D6",
                    "--out",
                    str(root / "out.json"),
                ],
                [
                    "run-group",
                    "--prepared",
                    str(bad),
                    "--case",
                    "growth-D1",
                    "--out",
                    str(root / "out"),
                ],
            ]:
                p = subprocess.run([binary, *args], capture_output=True, timeout=10)
                self.assertEqual(p.returncode, 2, p.stderr.decode())

    def test_existing_group_output_is_invalid_state_before_program_work(self):
        binary = os.environ["CORE035_REFERENCE_BIN"]
        with tempfile.TemporaryDirectory() as d:
            p = subprocess.run(
                [
                    binary,
                    "run-group",
                    "--prepared",
                    os.environ["CORE035_GROUP_PREPARED"],
                    "--case",
                    "growth-D1",
                    "--out",
                    d,
                ],
                capture_output=True,
                timeout=10,
            )
            self.assertEqual(p.returncode, 2, p.stderr.decode())


if __name__ == "__main__":
    unittest.main()
