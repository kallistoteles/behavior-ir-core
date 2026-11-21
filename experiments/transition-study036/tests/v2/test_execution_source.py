import tempfile
import unittest
from pathlib import Path
from artifact_io import RootRegistry
from sources import resolve_execution_source_v2


class ExecutionSourceTests(unittest.TestCase):
    def test_old_runtime_reference_resolves_only_through_declared_snapshot(self):
        with tempfile.TemporaryDirectory() as d:
            registry = RootRegistry({"fixture": Path(d)})
            original = registry.write("fixture", "live.rs", b"original")
            saved = registry.write("fixture", "frozen.rs", b"original")
            manifest = registry.write("fixture", "inputs.json", {"inputs": []})
            subject = registry.write(
                "fixture",
                "subject.json",
                {
                    "format": "core036.source.v2",
                    "work_id": "w001",
                    "record_id": "subject",
                    "specification_ref": manifest,
                    "source_subject_ref": manifest,
                    "inputs": [saved],
                    "product_adoption": "unactivated",
                    "outcome": {"operational": "completed", "acceptance": "blocked"},
                    "reason": "fixture source binding, no proof",
                    "blocking_ref": manifest,
                    "files": [{"logical_ref": original, "snapshot_ref": saved}],
                },
            )
            declaration = {"source_subject_ref": subject}
            (Path(d) / "live.rs").write_bytes(b"revised")
            self.assertEqual(
                resolve_execution_source_v2(
                    original, declaration, registry=registry
                ).read_bytes(),
                b"original",
            )
            with self.assertRaises(ValueError):
                resolve_execution_source_v2(
                    {**original, "sha256": "0" * 64}, declaration, registry=registry
                )
            (Path(d) / "frozen.rs").write_bytes(b"changed")
            with self.assertRaises(ValueError):
                resolve_execution_source_v2(original, declaration, registry=registry)
