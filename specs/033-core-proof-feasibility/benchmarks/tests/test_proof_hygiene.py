"""Real Lean proof integrity controls; checking this is not checking Core semantics."""
import importlib.util
from pathlib import Path
import tempfile
import unittest
from unittest.mock import patch

ROOT = Path(__file__).resolve().parents[4]
PROOFS = ROOT / "experiments/transition-study033/proofs"
SPEC = importlib.util.spec_from_file_location("core033_check_targets", PROOFS / "check_targets.py")
driver = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(driver)


class ProofHygieneTests(unittest.TestCase):
    def setUp(self):
        temporary = tempfile.TemporaryDirectory(prefix="core033-proof-control-")
        self.addCleanup(temporary.cleanup)
        self.root = Path(temporary.name)
        self.source = self.root / "source"
        self.source.mkdir()

    def check(self, name, body, target, output="out"):
        (self.source / (name + ".lean")).write_text(body)
        return driver.check_modules(
            self.source, {name: [target]}, self.root / output,
            audit_source=PROOFS / "Audit.lean",
        )

    def test_genuine_theorem_is_audited_and_replayed(self):
        result = self.check("Good", "namespace Good\ntheorem add_zero (n : Nat) : n + 0 = n := by rfl\nend Good\n", "Good.add_zero")
        self.assertEqual(result["outcome"], "Checked")
        self.assertTrue(result["fresh_kernel_replay"])
        self.assertEqual(result["theorems"][0]["axioms"], [])
        self.assertFalse(result["g1_pass"])

    def test_sorry_and_transitive_custom_axioms_fail(self):
        for name, body, target in [
            ("Hole", "namespace Hole\ntheorem bad : False := by sorry\nend Hole\n", "Hole.bad"),
            ("Custom", "namespace Custom\naxiom premise : False\ntheorem middle : False := premise\ntheorem bad : False := middle\nend Custom\n", "Custom.bad"),
        ]:
            with self.subTest(name=name), self.assertRaisesRegex(driver.ProofError, "axiom"):
                self.check(name, body, target, output=name)

    def test_native_evaluation_is_not_kernel_only_authority(self):
        with self.assertRaisesRegex(driver.ProofError, "axiom"):
            self.check("Native", "import Std.Tactic\nnamespace Native\ntheorem bad : (List.range 100).length = 100 := by native_decide\nend Native\n", "Native.bad")

    def test_missing_and_empty_targets_fail(self):
        with self.assertRaises(driver.ProofError):
            self.check("Missing", "theorem good : True := True.intro\n", "Missing.absent")
        with self.assertRaises(driver.ProofError):
            driver.check_modules(self.source, {}, self.root / "empty", audit_source=PROOFS / "Audit.lean")

    def test_changed_source_cannot_reuse_a_good_olean(self):
        self.check("Stale", "namespace Stale\ntheorem good : True := True.intro\nend Stale\n", "Stale.good", "before")
        with self.assertRaisesRegex(driver.ProofError, "axiom"):
            self.check("Stale", "namespace Stale\naxiom falsehood : False\ntheorem good : False := falsehood\nend Stale\n", "Stale.good", "after")

    def test_failed_fresh_replay_is_not_a_checked_proof(self):
        original = driver._call
        def reject_replay(argv, **kwargs):
            if Path(argv[0]).name == "leanchecker":
                raise driver.ProofError("fresh kernel replay failed")
            return original(argv, **kwargs)
        with patch.object(driver, "_call", reject_replay), self.assertRaisesRegex(driver.ProofError, "kernel"):
            self.check("Kernel", "theorem good : True := True.intro\n", "good")

    def test_staging_without_fresh_replay_never_reports_checked(self):
        (self.source / "Stage.lean").write_text("theorem stage : True := True.intro\n")
        result = driver.check_modules(self.source, {"Stage": ["stage"]}, self.root / "stage",
                                      audit_source=PROOFS / "Audit.lean", fresh_replay=False)
        self.assertEqual(result["outcome"], "AxiomAuditedPendingFresh")
        self.assertFalse(result["fresh_kernel_replay"])
        self.assertFalse(result["g1_pass"])
        self.assertFalse((self.root / "stage/fresh-kernel.command.json").exists())


if __name__ == "__main__":
    unittest.main()
