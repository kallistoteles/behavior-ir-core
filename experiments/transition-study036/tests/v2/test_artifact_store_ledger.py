"""One ledger survives mixed evidence roots without authority or clock resets."""

import tempfile
from pathlib import Path
import unittest
from unittest.mock import patch
from artifact_io import RootRegistry
from artifact_store_v2 import ArtifactStore
from campaign import WorkLedger


class ArtifactStoreLedgerTests(unittest.TestCase):
    def test_explicit_caller_repository_is_retained_as_the_data_context(self):
        with tempfile.TemporaryDirectory() as folder:
            base = Path(folder)
            repository = base / "input-repository"
            work = base / "work"
            registry = RootRegistry({"repository": repository, "work": work})
            specification = registry.write(
                "repository",
                "specs/036-core-transition-feasibility/spec.md",
                b"explicitly synthetic caller specification",
            )
            ledger = WorkLedger(work, "w001", registry=registry)
            ledger.declare(
                "ENV",
                profile={"wall_seconds": 600, "reserve_seconds": 300},
                subject="synthetic",
                slots=["one"],
            )
            self.assertEqual(ledger.events[-1]["specification_ref"], specification)
            self.assertEqual(ledger.registry.roots["repository"], repository)
            self.assertFalse(ledger.feature_complete())

    def test_mixed_root_continuation_replays_exact_prefix_and_actual_new_refs(self):
        with tempfile.TemporaryDirectory() as folder:
            base = Path(folder)
            work = base / "work"
            future = base / "future"
            future.mkdir()
            legacy = WorkLedger(work, "w001")
            profile = {"wall_seconds": 600, "reserve_seconds": 300}
            first = legacy.declare(
                "ENV", profile=profile, subject="first", slots=["one"]
            )
            legacy.start(first, now_ns=100, boot_id="boot-one")
            legacy.close(
                first,
                now_ns=200,
                boot_id="boot-one",
                outcome="failed",
                reason="synthetic closed failure",
                closed_tree=True,
            )
            prefix = (work / "events.jsonl").read_bytes()
            registry = RootRegistry(
                {
                    "work": work,
                    "repository": legacy.repository,
                    "future_evidence": future,
                }
            )
            store = ArtifactStore(registry, "w001", future_root_id="future_evidence")
            continued = WorkLedger(
                work, "w001", registry=registry, artifact_store=store
            )
            changed_source = base / "synthetic-next-source.py"
            changed_source.write_bytes(
                b"# explicitly synthetic new controller source\n"
            )
            with patch("campaign.__file__", str(changed_source)):
                second = continued.successor(
                    first,
                    correction="new selected storage",
                    profile=profile,
                    subject="second",
                )
            declaration = store.write(
                "attempts/" + second + "/declaration.json",
                {
                    "record_id": second,
                    "stage": "ENV",
                    "source_subject_ref": {"sha256": "second"},
                    "slots": ["one"],
                },
            )
            continued.bind_declaration(second, declaration, registry=registry)
            continued.start(second, now_ns=10, boot_id="boot-two")
            continued.close(
                second,
                now_ns=60,
                boot_id="boot-two",
                outcome="succeeded",
                closed_tree=True,
            )
            self.assertTrue((work / "events.jsonl").read_bytes().startswith(prefix))
            reloaded = WorkLedger(work, "w001", registry=registry, artifact_store=store)
            self.assertEqual(reloaded.active_ns(), 150)
            self.assertEqual(reloaded.authority, "unverified")
            self.assertFalse(reloaded.feature_complete())
            self.assertEqual(len(reloaded.attempts), 2)
            self.assertTrue(
                any(
                    e["source_subject_ref"]["root_id"] == "future_evidence"
                    for e in reloaded.events
                )
            )
            self.assertEqual(reloaded.attempts[second]["declaration_ref"], declaration)
            with self.assertRaises(ValueError):
                WorkLedger(work, "w001")
            registry.verify(declaration).write_bytes(b"synthetic corruption")
            with self.assertRaises(ValueError):
                WorkLedger(work, "w001", registry=registry, artifact_store=store)

    def test_registry_cannot_rebind_the_legacy_ledger_path(self):
        with tempfile.TemporaryDirectory() as folder:
            base = Path(folder)
            work = base / "work"
            old = WorkLedger(work, "w001")
            wrong = RootRegistry({"work": base / "other", "repository": old.repository})
            with self.assertRaises(ValueError):
                WorkLedger(work, "w001", registry=wrong)
