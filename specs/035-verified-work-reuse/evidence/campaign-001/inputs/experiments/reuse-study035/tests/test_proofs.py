import copy, sys, unittest
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from check_proofs import validate_proof_result


class ProofAuditTests(unittest.TestCase):
    def fixture(self):
        t = {
            "source_context_digest": "source",
            "toolchain_digest": "pinned",
            "roots": [
                {
                    "name": "Reuse035.finish_exact",
                    "type_digest": "independent-expected-type",
                }
            ],
        }
        r = {
            "operational": "completed",
            "fresh_replay": True,
            "source_context_digest": "source",
            "toolchain_digest": "pinned",
            "roots": [
                {
                    "name": "Reuse035.finish_exact",
                    "type_digest": "independent-expected-type",
                    "axioms": ["propext"],
                    "kernel_checked": True,
                }
            ],
        }
        return r, t

    def test_complete_metadata_shape_is_not_itself_authority(self):
        validate_proof_result(*self.fixture())

    def test_missing_weakened_duplicate_and_unchecked_root(self):
        for kind in [
            "missing",
            "type",
            "duplicate",
            "kernel",
            "replay",
            "source",
            "tool",
            "resource",
            "substitution",
        ]:
            r, t = self.fixture()
            if kind == "missing":
                r["roots"] = []
            if kind == "type":
                r["roots"][0]["type_digest"] = "weaker"
            if kind == "duplicate":
                r["roots"] *= 2
            if kind == "kernel":
                r["roots"][0]["kernel_checked"] = False
            if kind == "replay":
                r["fresh_replay"] = False
            if kind == "source":
                r["source_context_digest"] = "other"
            if kind == "tool":
                r["toolchain_digest"] = "producerTool"
            if kind == "resource":
                r["operational"] = "resource_stopped"
            if kind == "substitution":
                r["executable"] = "/producer/proof-checker"
            with self.subTest(kind=kind), self.assertRaises(ValueError):
                validate_proof_result(r, t)

    def test_holes_custom_and_native_shortcuts_are_not_proof(self):
        for ax in ["sorryAx", "custom", "Lean.ofReduceBool"]:
            r, t = self.fixture()
            r["roots"][0]["axioms"] = [ax]
            with self.assertRaises(ValueError):
                validate_proof_result(r, t)


if __name__ == "__main__":
    unittest.main()
