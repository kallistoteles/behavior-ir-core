"""Real Lean compilation/audit/kernel controls, including rejected proof holes."""
from pathlib import Path
import tempfile
import unittest
from unittest.mock import patch

from proofs import ProofError, check_modules


class ProofTests(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        self.root = Path(self.temp.name)
        self.source = self.root / "source"
        self.source.mkdir()
        self.audit = Path(__file__).resolve().parents[3] / "experiments/transition-study032/proofs/Audit.lean"

    def check(self, name, source, target, output="out"):
        (self.source / (name + ".lean")).write_text(source)
        return check_modules(self.source, {name: [target]}, self.root / output, audit_source=self.audit)

    def test_actual_theorem_checks_with_empty_axioms(self):
        result = self.check("Good", "namespace Good\ntheorem good (n : Nat) : n + 0 = n := by rfl\nend Good\n", "Good.good")
        self.assertEqual(result["outcome"], "Checked")
        self.assertEqual(result["theorems"][0]["axioms"], [])
        self.assertTrue(result["fresh_kernel_replay"])

    def test_hole_compiles_but_cannot_pass_axiom_audit(self):
        with self.assertRaisesRegex(ProofError, "axiom"):
            self.check("Hole", "namespace Hole\ntheorem bad : False := by sorry\nend Hole\n", "Hole.bad")

    def test_custom_axiom_transitively_rejected(self):
        with self.assertRaisesRegex(ProofError, "axiom"):
            self.check("Custom", "namespace Custom\naxiom premise : False\ntheorem middle : False := premise\ntheorem bad : False := middle\nend Custom\n", "Custom.bad")

    def test_native_computation_axioms_rejected(self):
        with self.assertRaisesRegex(ProofError, "axiom"):
            self.check("Native", "import Std.Tactic\nnamespace Native\ntheorem bad : (List.range 100).length = 100 := by native_decide\nend Native\n", "Native.bad")

    def test_missing_target_and_empty_inventory_rejected(self):
        with self.assertRaises(ProofError):
            self.check("Missing", "namespace Missing\ntheorem good : True := True.intro\nend Missing\n", "Missing.notThere")
        with self.assertRaises(ProofError):
            check_modules(self.source, {}, self.root / "empty", audit_source=self.audit)

    def test_replaced_source_cannot_reuse_old_compiled_acceptance(self):
        self.check("Stale", "namespace Stale\ntheorem good : True := True.intro\nend Stale\n", "Stale.good", output="before")
        with self.assertRaisesRegex(ProofError, "axiom"):
            self.check("Stale", "namespace Stale\naxiom bad : False\ntheorem good : False := bad\nend Stale\n", "Stale.good", output="after")

    def test_failed_fresh_kernel_is_not_checked(self):
        import proofs
        original = proofs._call
        def reject_kernel(argv, **kwargs):
            if Path(argv[0]).name == "leanchecker":
                raise ProofError("fresh kernel tool failed")
            return original(argv, **kwargs)
        with patch("proofs._call", reject_kernel), self.assertRaisesRegex(ProofError, "kernel"):
            self.check("Kernel", "namespace Kernel\ntheorem good : True := True.intro\nend Kernel\n", "Kernel.good")


if __name__ == "__main__":
    unittest.main()
