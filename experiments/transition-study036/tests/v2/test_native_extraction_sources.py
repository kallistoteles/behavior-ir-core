"""The actual retained-source packaging seam must include every Rust module."""

import hashlib
from pathlib import Path
import tempfile
import unittest

from artifact_io import RootRegistry
from native_extraction_sources_v2 import selected_native_sources


class NativeExtractionSourcesTests(unittest.TestCase):
    def test_incomplete_frozen_compile_subject_is_rejected_before_extraction(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            worker = root / "worker"
            frozen = root / "frozen"
            registry = RootRegistry({"capture": root})
            rows, inventory = [], []
            for name, raw in {
                "src/lib.rs": b"mod views; mod session;\n",
                "src/views.rs": b"pub struct Views;\n",
                "src/session.rs": b"pub fn run() {}\n",
            }.items():
                source = worker / name
                source.parent.mkdir(parents=True, exist_ok=True)
                source.write_bytes(raw)
                snapshot = frozen / name
                snapshot.parent.mkdir(parents=True, exist_ok=True)
                snapshot.write_bytes(raw)
                sha = hashlib.sha256(raw).hexdigest()
                rows.append(
                    {
                        "logical_ref": {
                            "root_id": "repository",
                            "path": "experiments/transition-study036/" + name,
                            "bytes": len(raw),
                            "sha256": sha,
                        },
                        "snapshot_ref": registry.reference("capture", "frozen/" + name),
                    }
                )
                inventory.append({"path": name, "bytes": len(raw), "sha256": sha})
            compiled = {"files": rows[:2]}
            with self.assertRaisesRegex(
                ValueError, "UnfrozenWorkerSource:src/session.rs"
            ):
                selected_native_sources(registry, compiled, worker)

    def test_complete_subject_accepts_exact_rust_and_fixture_sources(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            worker = root / "worker"
            registry = RootRegistry({"capture": root})
            rows = []
            for name, raw in {
                "src/views.rs": b"pub struct Views;",
                "src/session.rs": b"pub fn run() {}",
                "expected/input.json": b"{}",
            }.items():
                path = worker / name
                path.parent.mkdir(parents=True, exist_ok=True)
                path.write_bytes(raw)
                snapshot = root / "snapshot" / name
                snapshot.parent.mkdir(parents=True, exist_ok=True)
                snapshot.write_bytes(raw)
                rows.append(
                    {
                        "logical_ref": {
                            "root_id": "repository",
                            "path": "experiments/transition-study036/" + name,
                            "bytes": len(raw),
                            "sha256": hashlib.sha256(raw).hexdigest(),
                        },
                        "snapshot_ref": registry.reference(
                            "capture", "snapshot/" + name
                        ),
                    }
                )
            subject = {"files": rows}
            selected = selected_native_sources(registry, subject, worker)
            self.assertEqual(
                [name for name, _, _ in selected],
                sorted(["src/views.rs", "src/session.rs", "expected/input.json"]),
            )
            (worker / "src/session.rs").write_bytes(b"pub fn changed() {}")
            with self.assertRaisesRegex(ValueError, "NativeWorkerFrozenSourceChanged"):
                selected_native_sources(registry, subject, worker)
            (worker / "src/session.rs").write_bytes(b"pub fn run() {}")
            (root / "snapshot/src/session.rs").write_bytes(b"different snapshot")
            with self.assertRaises(ValueError):
                selected_native_sources(registry, subject, worker)

    def test_build_source_census_includes_original_oracle_modules(self):
        from native_extraction_sources_v2 import require_frozen_worker_sources

        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            source = root / "oracle/src/main.rs"
            source.parent.mkdir(parents=True)
            source.write_bytes(b"fn main() {}")
            registry = RootRegistry({"capture": root})
            with self.assertRaisesRegex(
                ValueError, "UnfrozenWorkerSource:oracle/src/main.rs"
            ):
                require_frozen_worker_sources(
                    registry, {"files": []}, root, roots=("oracle/src",)
                )

    def test_actual_581_omitted_session_module_is_rejected(self):
        from controller_v2 import artifact_context_for

        registry, _ = artifact_context_for("w001")
        subject = registry.read(
            registry.reference("future_evidence", "subjects/r9605/manifest.json"),
            limit=32 * 1024**2,
        )
        worker = registry.roots["private"] / "native-builds/a0581/worker"
        with self.assertRaisesRegex(ValueError, "UnfrozenWorkerSource:src/session.rs"):
            selected_native_sources(registry, subject, worker)
