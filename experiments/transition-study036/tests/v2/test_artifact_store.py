"""Future-only artifact routing must preserve legacy identity and ownership."""

import tempfile
from pathlib import Path
import unittest
from artifact_io import RootRegistry


class ArtifactStoreTests(unittest.TestCase):
    def test_partial_duplicate_owner_is_never_a_silent_fallback(self):
        from artifact_store_v2 import ArtifactStore

        with tempfile.TemporaryDirectory() as folder:
            registry = self.fixture(Path(folder))
            registry.write("work", "subjects/r0001/manifest.json", {"old": 1})
            (registry.roots["future_evidence"] / "subjects/r0001/sources").mkdir(
                parents=True
            )
            store = ArtifactStore(registry, "w001", future_root_id="future_evidence")
            with self.assertRaisesRegex(ValueError, "Ambiguous"):
                store.subject_ref("r0001")

    def test_protected_names_reject_before_any_registered_path_access(self):
        from artifact_store_v2 import ArtifactStore
        from unittest.mock import patch

        with tempfile.TemporaryDirectory() as folder:
            registry = self.fixture(Path(folder))
            store = ArtifactStore(registry, "w001", future_root_id="future_evidence")
            with patch.object(
                registry, "path", side_effect=AssertionError("forbidden path access")
            ):
                for name in ("parameters.bin", "compression_prover_key.bin"):
                    with self.assertRaisesRegex(ValueError, "ProtectedArtifact"):
                        store.write("inputs/" + name, b"synthetic only")

    def fixture(self, base):
        repository = base / "repository"
        work = repository / "evidence/w001"
        future = base / "future/w001"
        private = base / "private/w001"
        for root in (repository, work, future, private):
            root.mkdir(parents=True, exist_ok=True)
        return RootRegistry(
            {
                "repository": repository,
                "work": work,
                "private": private,
                "future_evidence": future,
            }
        )

    def test_default_writes_only_legacy_artifacts_and_never_relocates_context(self):
        from artifact_store_v2 import ArtifactStore

        with tempfile.TemporaryDirectory() as folder:
            registry = self.fixture(Path(folder))
            store = ArtifactStore(registry, "w001")
            ref = store.write("subjects/r0001/manifest.json", {"actual": 1})
            self.assertEqual(ref["root_id"], "work")
            self.assertEqual(store.subject_ref("r0001"), ref)
            self.assertEqual(
                store.context_path, registry.roots["work"] / "context.json"
            )
            self.assertEqual(
                store.journal_path, registry.roots["work"] / "events.jsonl"
            )
            for path in ("context.json", "events.jsonl", "../escape"):
                with self.assertRaises(ValueError):
                    store.write(path, {"must_not_write": True})

    def test_future_subject_and_attempt_keep_legacy_refs_and_bytes(self):
        from artifact_store_v2 import ArtifactStore

        with tempfile.TemporaryDirectory() as folder:
            registry = self.fixture(Path(folder))
            old = registry.write("work", "subjects/r0001/manifest.json", {"old": 1})
            old_path = registry.verify(old)
            old_bytes = old_path.read_bytes()
            store = ArtifactStore(registry, "w001", future_root_id="future_evidence")
            self.assertEqual(store.subject_ref("r0001"), old)
            new = store.write("subjects/r0002/manifest.json", {"new": 2})
            self.assertEqual(new["root_id"], "future_evidence")
            self.assertEqual(store.subject_ref("r0002"), new)
            attempt = store.write("attempts/a0001/declaration.json", {"attempt": 1})
            self.assertEqual(store.attempt_ref("a0001"), attempt)
            self.assertEqual(old_path.read_bytes(), old_bytes)
            self.assertEqual(store.context_path.parent, registry.roots["work"])
            self.assertFalse((registry.roots["work"] / "subjects/r0002").exists())

    def test_duplicate_locations_and_cross_store_overwrite_are_rejected(self):
        from artifact_store_v2 import ArtifactStore

        with tempfile.TemporaryDirectory() as folder:
            registry = self.fixture(Path(folder))
            registry.write("work", "subjects/r0001/manifest.json", {"old": 1})
            store = ArtifactStore(registry, "w001", future_root_id="future_evidence")
            with self.assertRaises(FileExistsError):
                store.write("subjects/r0001/manifest.json", {"forged": 1})
            registry.write(
                "future_evidence", "subjects/r0001/manifest.json", {"duplicate": 1}
            )
            with self.assertRaisesRegex(ValueError, "Ambiguous"):
                store.subject_ref("r0001")

    def test_root_overlap_unknown_store_and_symlink_fail_closed(self):
        from artifact_store_v2 import ArtifactStore

        with tempfile.TemporaryDirectory() as folder:
            base = Path(folder)
            registry = self.fixture(base)
            for root_id in ("repository", "private", "not_registered"):
                with self.assertRaises(ValueError):
                    ArtifactStore(registry, "w001", future_root_id=root_id)
            overlapping = RootRegistry(
                {
                    "work": registry.roots["work"],
                    "future_evidence": registry.roots["work"] / "nested",
                }
            )
            with self.assertRaises(ValueError):
                ArtifactStore(overlapping, "w001", future_root_id="future_evidence")
            store = ArtifactStore(registry, "w001", future_root_id="future_evidence")
            (registry.roots["future_evidence"] / "subjects").symlink_to(
                registry.roots["work"]
            )
            with self.assertRaises(ValueError):
                store.write("subjects/r0002/manifest.json", {"must_not_write": True})

    def test_inputs_development_and_journal_sources_route_to_selected_store(self):
        from artifact_store_v2 import ArtifactStore

        with tempfile.TemporaryDirectory() as folder:
            registry = self.fixture(Path(folder))
            store = ArtifactStore(registry, "w001", future_root_id="future_evidence")
            for path in (
                "inputs/next.json",
                "development/probe/receipt.json",
                "journal-sources/pinned.json",
                "bootstrap-runs/probe/source-index.json",
            ):
                reference = store.write(path, {"path": path})
                self.assertEqual(reference["root_id"], "future_evidence")
                self.assertFalse((registry.roots["work"] / path).exists())
