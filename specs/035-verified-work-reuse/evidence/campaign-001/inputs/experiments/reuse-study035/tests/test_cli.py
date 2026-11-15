import copy, json, sys, tempfile, unittest
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from artifact_io import artifact_ref, write_once
from study import validate_built_worker, require_case, claim_slot, verify_frozen_sources


class CampaignCliTests(unittest.TestCase):
    def binding(self, root):
        write_once(root / "worker", b"actual test bytes, no semantic authority")
        write_once(
            root / "receipt.json",
            {
                "exit_code": 0,
                "stop_reason": None,
                "group_empty": True,
                "tree_empty": True,
                "source_context": "expected",
            },
        )
        return {
            "format": "core035.built-worker.v1",
            "target": "reuse035-reference",
            "source_context": "expected",
            "executable": artifact_ref(root, "worker", "retained-worker"),
            "receipt": artifact_ref(root, "receipt.json", "closed-build-receipt"),
        }

    def test_builtin_worker_dag_control_needs_no_future_prepared_manifest(self):
        with tempfile.TemporaryDirectory() as t:
            root = Path(t)
            b = self.binding(root)
            self.assertFalse((root / "prepared-manifest.json").exists())
            validate_built_worker(root, b, "expected")

    def test_failed_unclosed_changed_or_substituted_built_worker(self):
        for kind in ["exit", "unclosed", "context", "worker", "tool"]:
            with self.subTest(kind=kind), tempfile.TemporaryDirectory() as t:
                root = Path(t)
                b = self.binding(root)
                if kind in ["exit", "unclosed"]:
                    r = json.loads((root / "receipt.json").read_text())
                    r["exit_code"] = 1 if kind == "exit" else 0
                    r["tree_empty"] = kind != "unclosed"
                    (root / "receipt.json").write_text(json.dumps(r))
                    b["receipt"] = artifact_ref(
                        root, "receipt.json", "closed-build-receipt"
                    )
                if kind == "context":
                    b["source_context"] = "producer"
                if kind == "worker":
                    (root / "worker").write_bytes(b"changed bytes")
                if kind == "tool":
                    b["verifier_executable"] = "/producer/checker"
                with self.assertRaises(ValueError):
                    validate_built_worker(root, b, "expected")

    def test_cases_and_create_once_failed_slots(self):
        with self.assertRaises(ValueError):
            require_case("growth-D6")
        with self.assertRaises(ValueError):
            require_case("../bootstrap")
        with tempfile.TemporaryDirectory() as t:
            root = Path(t)
            slot = claim_slot(root, "bootstrap")
            slot.mkdir(exist_ok=True)
            write_once(slot / "failed.json", {"operational": "build_failed"})
            with self.assertRaises(FileExistsError):
                claim_slot(root, "bootstrap")
            self.assertTrue((slot / "failed.json").exists())

    def test_frozen_sources_are_actual_bytes(self):
        with tempfile.TemporaryDirectory() as t:
            root = Path(t)
            write_once(root / "source", b"fixed")
            ref = artifact_ref(root, "source", "frozen-input")
            verify_frozen_sources(root, [ref])
            (root / "source").write_bytes(b"changed")
            with self.assertRaises(ValueError):
                verify_frozen_sources(root, [ref])


if __name__ == "__main__":
    unittest.main()
