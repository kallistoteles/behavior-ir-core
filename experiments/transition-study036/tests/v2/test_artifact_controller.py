"""The actual work loader inherits the same selected storage and log history."""

import tempfile
from pathlib import Path
import unittest
import sys
import time
import hashlib
from types import SimpleNamespace
from unittest.mock import patch
import controller_v2 as controller
import test_artifact_registration as fixtures


class ArtifactControllerTests(unittest.TestCase):
    def test_declaration_uses_the_selected_store_without_rebasing_old_work(self):
        # Routing-only integration; resource admission has its own real tests.
        with tempfile.TemporaryDirectory() as folder:
            base = Path(folder)
            registry, future, selected, reference = (
                fixtures.ArtifactRegistrationTests().fixture(base, full_context=True)
            )
            repository = registry.roots["repository"]
            work = registry.roots["work"]
            executor = repository / "executor"
            executor.mkdir()
            source = registry.write(
                "repository", "executor/control.py", b"# synthetic executor\n"
            )
            with patch.multiple(
                controller,
                ROOT=repository,
                F=repository / "feature",
                E=executor,
                PRIVATE_BASE=base / "private",
                FUTURE_EVIDENCE_BASE=future.parent,
                ARTIFACT_STORE_INPUT=registry.verify(reference),
                create=True,
            ):
                _, current, ledger = controller.load_work(work / "context.json")
                inputs = ledger.artifact_store.write(
                    "inputs/freeze.json", {"files": [source]}
                )
                controller.freeze(
                    SimpleNamespace(
                        work=str(work / "context.json"),
                        revision="r0001",
                        inputs=str(current.verify(inputs)),
                    )
                )
                profile = ledger.artifact_store.write(
                    "inputs/profile.json",
                    {
                        "work_id": "w001",
                        "stage": "ENV",
                        "limits": {
                            "attempt_seconds": 600,
                            "closure_reserve_seconds": 300,
                        },
                    },
                )
                slots = ledger.artifact_store.write(
                    "inputs/slots.json", {"slots": ["environment-native"]}
                )
                args = SimpleNamespace(
                    work=str(work / "context.json"),
                    revision="r0001",
                    stage="ENV",
                    profile=str(current.verify(profile)),
                    slots=str(current.verify(slots)),
                    out=str(future / "attempts/a0001"),
                )
                with patch.object(
                    controller, "validate_v2_profile", lambda value: value
                ):
                    self.assertEqual(controller.declare(args), 0)
                self.assertTrue((future / "attempts/a0001/declaration.json").is_file())
                self.assertFalse((work / "attempts/a0001").exists())
                _, _, reloaded = controller.load_work(work / "context.json")
                self.assertEqual(
                    reloaded.attempts["a0001"]["declaration_ref"]["root_id"],
                    "future_evidence",
                )
                self.assertFalse(reloaded.feature_complete())
                registry.write(
                    "repository",
                    "executor/toolchain.json",
                    {
                        "tools": {
                            "python": {
                                "path": sys.executable,
                                "sha256": hashlib.sha256(
                                    Path(sys.executable).read_bytes()
                                ).hexdigest(),
                            }
                        }
                    },
                )
                observed = []

                class RoutingRunner:
                    def __init__(self, profile, **kwargs):
                        self.started = kwargs["started_ns"]

                    def run(self, argv, out, **kwargs):
                        observed.append(out)
                        receipt = {
                            "exit_code": 1,
                            "stop_reason": None,
                            "tree_empty": True,
                            "group_empty": True,
                            "start_monotonic_ns": self.started,
                            "wall_ns": time.monotonic_ns() - self.started,
                        }
                        current.write(
                            "future_evidence",
                            "attempts/a0001/child/receipt.json",
                            receipt,
                        )
                        return receipt

                # This stub tests routing, ledger closure and seals only;
                # it supplies no resource or semantic acceptance evidence.
                with (
                    patch.object(
                        controller, "validate_v2_profile", lambda value: value
                    ),
                    patch("recorder.V2Runner", RoutingRunner),
                ):
                    self.assertEqual(
                        controller.run_attempt(
                            SimpleNamespace(
                                work=args.work,
                                attempt=str(future / "attempts/a0001/declaration.json"),
                            )
                        ),
                        1,
                    )
                self.assertEqual(observed, [future / "attempts/a0001/child"])
                self.assertTrue((future / "attempts/a0001/checkpoint.json").is_file())
                _, _, closed = controller.load_work(work / "context.json")
                self.assertEqual(closed.attempts["a0001"]["state"], "closed")
                self.assertEqual(closed.attempts["a0001"]["outcome"], "failed")
                self.assertFalse(closed.feature_complete())
                (executor / "control.py").write_bytes(
                    b"# corrected synthetic executor\n"
                )
                corrected = registry.reference("repository", "executor/control.py")
                next_inputs = ledger.artifact_store.write(
                    "inputs/freeze-next.json", {"files": [corrected]}
                )
                controller.freeze(
                    SimpleNamespace(
                        work=args.work,
                        revision="r0002",
                        inputs=str(current.verify(next_inputs)),
                    )
                )
                correction = ledger.artifact_store.write(
                    "inputs/correction.json",
                    {
                        "reason": "synthetic routing-only failed child correction",
                        "revision": "r0002",
                        "changes": [corrected],
                        "cause_refs": [
                            current.reference(
                                "future_evidence", "attempts/a0001/checkpoint.json"
                            )
                        ],
                    },
                )
                with patch.object(
                    controller, "validate_v2_profile", lambda value: value
                ):
                    self.assertEqual(
                        controller.resume(
                            SimpleNamespace(
                                work=args.work,
                                checkpoint=str(
                                    future / "attempts/a0001/checkpoint.json"
                                ),
                                correction=str(current.verify(correction)),
                                profile=args.profile,
                                out=str(future / "attempts/a0002"),
                            )
                        ),
                        0,
                    )
                _, _, resumed = controller.load_work(work / "context.json")
                self.assertEqual(resumed.attempts["a0002"]["state"], "declared")
                self.assertEqual(
                    resumed.attempts["a0002"]["declaration_ref"]["root_id"],
                    "future_evidence",
                )
                self.assertFalse((work / "attempts/a0002").exists())

    def test_freeze_routes_new_manifest_and_snapshots_to_the_selected_store(self):
        with tempfile.TemporaryDirectory() as folder:
            base = Path(folder)
            registry, future, selected, reference = (
                fixtures.ArtifactRegistrationTests().fixture(base, full_context=True)
            )
            repository = registry.roots["repository"]
            work = registry.roots["work"]
            source = registry.write("repository", "input.rs", b"synthetic source bytes")
            with patch.multiple(
                controller,
                ROOT=repository,
                F=repository / "feature",
                PRIVATE_BASE=base / "private",
                FUTURE_EVIDENCE_BASE=future.parent,
                ARTIFACT_STORE_INPUT=registry.verify(reference),
                create=True,
            ):
                ctx, current, ledger = controller.load_work(work / "context.json")
                inputs = ledger.artifact_store.write(
                    "inputs/freeze.json", {"files": [source]}
                )
                args = SimpleNamespace(
                    work=str(work / "context.json"),
                    revision="r0001",
                    inputs=str(current.verify(inputs)),
                )
                self.assertEqual(controller.freeze(args), 0)
                manifest_path = future / "subjects/r0001/manifest.json"
                self.assertTrue(manifest_path.is_file())
                self.assertFalse((work / "subjects/r0001").exists())
                frozen = controller._subject(ctx, current, "r0001")
                self.assertEqual(frozen["root_id"], "future_evidence")
                record = current.read(frozen)
                snapshot = record["files"][0]["snapshot_ref"]
                self.assertEqual(snapshot["root_id"], "future_evidence")
                self.assertEqual(
                    current.verify(snapshot).read_bytes(), b"synthetic source bytes"
                )

    def test_loader_uses_registered_store_and_never_resets_legacy_journal(self):
        with tempfile.TemporaryDirectory() as folder:
            base = Path(folder)
            registry, future, selected, reference = (
                fixtures.ArtifactRegistrationTests().fixture(base, full_context=True)
            )
            repository = registry.roots["repository"]
            work = registry.roots["work"]
            context_path = work / "context.json"
            before = context_path.read_bytes()
            with patch.multiple(
                controller,
                ROOT=repository,
                F=repository / "feature",
                PRIVATE_BASE=base / "private",
                FUTURE_EVIDENCE_BASE=future.parent,
                ARTIFACT_STORE_INPUT=registry.verify(reference),
                create=True,
            ):
                ctx, current, ledger = controller.load_work(context_path)
                self.assertEqual(current.roots["future_evidence"], future)
                self.assertEqual(
                    ledger.artifact_store.active_root_id, "future_evidence"
                )
                self.assertTrue((work / "events.jsonl").is_file())
                self.assertTrue((future / "journal-sources").is_dir())
                self.assertEqual(context_path.read_bytes(), before)
                self.assertFalse((future / "context.json").exists())
                import ground_lean_probe_v2 as child

                declaration = {
                    "work_id": "w001",
                    "profile": {"roots": {"cache": str(base / "private/w001")}},
                }
                with patch.object(child, "R", repository):
                    inherited = child.registered_refs(declaration)
                    self.assertEqual(inherited.roots["future_evidence"], future)
                    self.assertEqual(inherited.roots["work"], work)
                    bad = {
                        **declaration,
                        "profile": {"roots": {"cache": str(base / "wrong")}},
                    }
                    with self.assertRaises(ValueError):
                        child.registered_refs(bad)
                self.assertEqual(len(ledger.imported_receipts), 1)
                self.assertIn(reference, ledger.events[-1]["inputs"])
                prefix = (work / "events.jsonl").read_bytes()
                _, _, replayed = controller.load_work(context_path)
                self.assertEqual((work / "events.jsonl").read_bytes(), prefix)
                self.assertEqual(len(replayed.imported_receipts), 1)
                self.assertFalse(replayed.feature_complete())
                receipt = registry.read(selected["registration_receipt_ref"])
                for name, value in (
                    ("receipt.json", {**receipt, "start_monotonic_ns": 2}),
                    ("stdout.txt", b"synthetic registered root\n"),
                    ("stderr.txt", b""),
                ):
                    ledger.artifact_store.write(
                        "development/future-test/" + name, value
                    )
                _, _, imported = controller.load_work(context_path)
                self.assertEqual(len(imported.imported_receipts), 2)
                self.assertEqual(
                    imported.events[-1]["inputs"][0]["root_id"], "future_evidence"
                )
                prefix = (work / "events.jsonl").read_bytes()
                controller.load_work(context_path)
                self.assertEqual((work / "events.jsonl").read_bytes(), prefix)
                registry.verify(reference).unlink()
                with self.assertRaises(ValueError):
                    controller.load_work(context_path)
