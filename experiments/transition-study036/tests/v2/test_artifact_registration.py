"""Future storage selection is operator input, never report authority."""

import hashlib
import tempfile
from pathlib import Path
import unittest
from artifact_io import RootRegistry


class ArtifactRegistrationTests(unittest.TestCase):
    def test_boolean_exit_or_missing_stop_field_cannot_be_closed_creation(self):
        from artifact_registration_v2 import select_artifact_store

        with tempfile.TemporaryDirectory() as folder:
            registry, future, selected, _ = self.fixture(Path(folder))
            original = registry.read(selected["registration_receipt_ref"])
            no_stop = {
                key: value for key, value in original.items() if key != "stop_reason"
            }
            for index, receipt in enumerate(
                ({**original, "exit_code": False}, no_stop)
            ):
                with self.subTest(index=index):
                    directory = f"development/bad-{index}"
                    reference = registry.write(
                        "work", directory + "/receipt.json", receipt
                    )
                    registry.write(
                        "work",
                        directory + "/stdout.txt",
                        b"synthetic registered root\n",
                    )
                    registry.write("work", directory + "/stderr.txt", b"")
                    candidate = registry.write(
                        "repository",
                        f"invalid-receipt-{index}.json",
                        {**selected, "registration_receipt_ref": reference},
                    )
                    with self.assertRaises(ValueError):
                        select_artifact_store(
                            registry, "w001", candidate, expected_future_root=future
                        )

    def test_nonobject_context_rejects_as_invalid_input(self):
        from artifact_registration_v2 import select_artifact_store

        with tempfile.TemporaryDirectory() as folder:
            registry, future, selected, _ = self.fixture(Path(folder))
            registry.verify(selected["context_ref"]).write_bytes(b"[]\n")
            changed = registry.reference("work", "context.json")
            candidate = registry.write(
                "repository",
                "invalid-context.json",
                {**selected, "context_ref": changed},
            )
            with self.assertRaises(ValueError):
                select_artifact_store(
                    registry, "w001", candidate, expected_future_root=future
                )

    def fixture(self, base, *, full_context=False):
        repository = base / "repository"
        work = repository / "feature/evidence/v2/w001"
        future = base / "future/w001"
        for root in (repository, work, future):
            root.mkdir(parents=True, exist_ok=True)
        registry = RootRegistry({"repository": repository, "work": work}, readonly=())
        spec = registry.write(
            "repository",
            "specs/036-core-transition-feasibility/spec.md",
            b"synthetic specification",
        )
        context_body = {"work_id": "w001", "specification_ref": spec}
        if full_context:
            source = registry.write("work", "source.json", {"synthetic": True})
            context_body.update(
                format="core036.work.v2",
                record_id="w001",
                source_subject_ref=source,
                inputs=[spec],
                product_adoption="unactivated",
                outcome={"operational": "declared", "acceptance": "blocked"},
                reason="synthetic storage-only fixture",
                blocking_ref=spec,
                initial_authority="unverified",
                feature_complete=False,
                primary_slots=[],
            )
        context = registry.write("work", "context.json", context_body)
        output = b"synthetic registered root\n"
        receipt = registry.write(
            "work",
            "development/register/receipt.json",
            {
                "format": "core035.bounded.v1",
                "exit_code": 0,
                "stop_reason": None,
                "tree_empty": True,
                "group_empty": True,
                "group_id": 123,
                "start_monotonic_ns": 1,
                "wall_ns": 1,
                "boot_id": "synthetic",
                "stdout_sha256": hashlib.sha256(output).hexdigest(),
                "stderr_sha256": hashlib.sha256(b"").hexdigest(),
            },
        )
        registry.write("work", "development/register/stdout.txt", output)
        registry.write("work", "development/register/stderr.txt", b"")
        full = RootRegistry({**registry.roots, "future_evidence": future})
        manifest = full.write(
            "future_evidence",
            "registration.json",
            {
                "format": "core036.artifact-root.v2",
                "work_id": "w001",
                "root_id": "future_evidence",
                "context_ref": context,
                "specification_ref": spec,
            },
        )
        selected = {
            "format": "core036.artifact-store-selection.v2",
            "work_id": "w001",
            "root_id": "future_evidence",
            "path": str(future),
            "context_ref": context,
            "specification_ref": spec,
            "root_manifest_ref": manifest,
            "registration_receipt_ref": receipt,
            "scope": "future_artifacts_only",
        }
        selection = registry.write("repository", "selection.json", selected)
        return registry, future, selected, selection

    def test_selected_root_preserves_context_and_binds_closed_registration(self):
        from artifact_registration_v2 import select_artifact_store

        with tempfile.TemporaryDirectory() as folder:
            registry, future, selected, reference = self.fixture(Path(folder))
            augmented, store = select_artifact_store(
                registry, "w001", reference, expected_future_root=future
            )
            self.assertEqual(augmented.roots["work"], registry.roots["work"])
            self.assertEqual(store.active_root_id, "future_evidence")
            self.assertEqual(augmented.roots["future_evidence"], future)
            self.assertIn(reference, store.configuration_refs)
            self.assertIn(
                selected["registration_receipt_ref"], store.configuration_refs
            )

    def test_wrong_work_report_flags_root_and_unclosed_registration_reject(self):
        from artifact_registration_v2 import select_artifact_store

        with tempfile.TemporaryDirectory() as folder:
            registry, future, selected, _ = self.fixture(Path(folder))
            for index, mutation in enumerate(
                (
                    {"work_id": "w002"},
                    {"native_proof": True},
                    {"root_id": "work"},
                    {"path": str(future.parent / "wrong")},
                )
            ):
                candidate = registry.write(
                    "repository", f"wrong{index}.json", {**selected, **mutation}
                )
                with self.assertRaises(ValueError):
                    select_artifact_store(
                        registry, "w001", candidate, expected_future_root=future
                    )
            bad = registry.write(
                "work", "development/bad/receipt.json", {"tree_empty": False}
            )
            candidate = registry.write(
                "repository",
                "unclosed.json",
                {**selected, "registration_receipt_ref": bad},
            )
            with self.assertRaises(ValueError):
                select_artifact_store(
                    registry, "w001", candidate, expected_future_root=future
                )

    def test_symlink_ancestor_and_actual_manifest_tamper_reject(self):
        from artifact_registration_v2 import select_artifact_store

        with tempfile.TemporaryDirectory() as folder:
            base = Path(folder)
            registry, future, selected, reference = self.fixture(base)
            alias = base / "alias"
            alias.symlink_to(future.parent, target_is_directory=True)
            candidate = registry.write(
                "repository", "alias.json", {**selected, "path": str(alias / "w001")}
            )
            with self.assertRaises(ValueError):
                select_artifact_store(
                    registry, "w001", candidate, expected_future_root=alias / "w001"
                )
            (future / "registration.json").write_bytes(b"synthetic manifest corruption")
            with self.assertRaises(ValueError):
                select_artifact_store(
                    registry, "w001", reference, expected_future_root=future
                )

    def test_protected_selector_rejects_without_io(self):
        from artifact_registration_v2 import select_artifact_store

        class NoRead:
            def read(self, reference):
                raise AssertionError("protected read")

        for name in ("parameters.bin", "compression_prover_key.bin"):
            with self.assertRaisesRegex(ValueError, "ProtectedArtifact"):
                select_artifact_store(
                    NoRead(),
                    "w001",
                    {"path": "synthetic/" + name},
                    expected_future_root=Path("/synthetic/future/w001"),
                )
