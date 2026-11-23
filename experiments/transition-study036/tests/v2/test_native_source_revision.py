"""Source-only revision adapter controls; fixture success is not a native gate.

The real complete Git-index/source mutation control runs separately through
bootstrap-core-source-export. Here the existing source verifier is delegated.
"""

import copy
import json
from pathlib import Path
import tempfile
import unittest
from unittest.mock import patch


class NativeSourceRevisionTests(unittest.TestCase):
    def test_native_entrypoint_checks_original_context_then_dispatches_source_revision(
        self,
    ):
        from environment import check_prepared_native_v2

        root = Path(__file__).resolve().parents[4]
        binding = json.loads(
            (root / "experiments/transition-study036/toolchain-v2.json").read_bytes()
        )
        binding["source_revision_ref"] = dict(
            root_id="repository",
            path="unit-source-revision.json",
            bytes=0,
            sha256="0" * 64,
        )
        selected = {"fixture_scope": "adapter dispatch only, no source or native gate"}
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / "binding.json"
            path.write_text(json.dumps(binding))
            with patch(
                "native_source_revision_v2.apply_source_revision", return_value=selected
            ) as revision:
                self.assertIs(check_prepared_native_v2(path), selected)
            args, kwargs = revision.call_args
            self.assertEqual(args[0], binding)
            self.assertEqual(kwargs, {"work_id": "w001"})
            self.assertIn("core-original", args[1]["sources"])

    def write(self, registry, root, name, value):
        path = registry.roots[root] / name
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_bytes(
            value if isinstance(value, bytes) else json.dumps(value).encode()
        )
        return registry.reference(root, name)

    def fixture(self, directory, *, run_change=None, receipt_change=None):
        from artifact_io import RootRegistry
        import sources

        root = Path(directory)
        roots = {
            name: root / name for name in ["repository", "private", "future_evidence"]
        }
        for path in roots.values():
            path.mkdir()
        registry = RootRegistry(roots)
        name = "core-source-inline-export-001"
        destination = roots["private"] / "sources" / name / "core-reuse"
        cargo = self.write(
            registry,
            "private",
            f"sources/{name}/core-reuse/Cargo.toml",
            b"[workspace]\n",
        )
        row = {key: value for key, value in cargo.items() if key != "root_id"}
        row["path"] = "Cargo.toml"
        manifest = dict(
            files=[row],
            indexed_files=["Cargo.toml"],
            required_files=["Cargo.toml"],
            tools=[],
            original=False,
            patches=sources.reviewed_patches(),
        )
        manifest_ref = self.write(
            registry,
            "private",
            f"sources/{name}/core-reuse/subject-inventory-v2.json",
            manifest,
        )
        export = dict(
            format="core035.source-export.v1",
            repository=str(roots["repository"]),
            revision=sources.CORE_REV,
            files=manifest["files"],
            patches=manifest["patches"],
            product_adoption="unactivated",
        )
        export_ref = self.write(
            registry, "private", f"sources/{name}/core-reuse/source-export.json", export
        )
        source_ref = self.write(registry, "repository", "controller.py", b"x = 0\n")
        snapshot_ref = self.write(
            registry, "future_evidence", f"bootstrap-runs/{name}/sources/0", b"x = 0\n"
        )
        index_ref = self.write(
            registry,
            "future_evidence",
            f"bootstrap-runs/{name}/source-index.json",
            dict(
                format="core036.native-source-export-source.v2",
                files=[dict(logical_ref=source_ref, snapshot_ref=snapshot_ref)],
            ),
        )
        old_ref = self.write(registry, "repository", "old-readiness.json", {})
        inner = dict(
            format="core036.native-source-export.v2",
            work_id="w001",
            record_id=name,
            source_subject_ref=index_ref,
            original_readiness_ref=old_ref,
            source_path=str(destination),
            manifest_ref=manifest_ref,
            source_export_ref=export_ref,
            source_revision=sources.CORE_REV,
            files=1,
            patches=manifest["patches"],
            original=False,
            actual_mutant_rejection="actual source bytes rejected",
            mutant_path=str(roots["private"] / "disposable" / name / "source-mutant"),
            scope="source only",
            native_proof="unestablished",
            feature_complete=False,
            product_adoption="unactivated",
        )
        result_ref = self.write(
            registry, "private", f"source-exports/{name}/result.json", inner
        )
        usage = dict(cache=1, temporary=0, artifacts=1, shared_store=0)
        receipt = dict(
            format="core036.resource.v2",
            work_id="w001",
            stage="NATIVE",
            exit_code=0,
            stop_reason=None,
            tree_empty=True,
            group_empty=True,
            final_storage_inventory_error=None,
            final_incremental_storage_bytes=usage,
            final_resource_observation=dict(growth_apparent_unique_inode_bytes=usage),
            growth_observer_scope="registered_actual_roots",
            free_volume_observer_scope="actual_registered_volumes",
        )
        receipt.update(receipt_change or {})
        receipt_ref = self.write(
            registry, "private", f"bootstrap/{name}/receipt.json", receipt
        )
        run = dict(
            receipt_ref=receipt_ref,
            actual_exit=0,
            stop_reason=None,
            tree_empty=True,
            group_empty=True,
            all_source_bytes_equal_after=True,
            scientific_acceptance=False,
            feature_complete=False,
        )
        run.update(run_change or {})
        run_ref = self.write(
            registry, "future_evidence", f"bootstrap-runs/{name}/result.json", run
        )
        self.write(
            registry,
            "future_evidence",
            f"bootstrap-runs/{name}/declaration.json",
            dict(
                work_id="w001",
                record_id=name,
                stage="NATIVE",
                source_subject_ref=index_ref,
            ),
        )
        decision = dict(
            format="core036.native-source-revision.v2",
            work_id="w001",
            record_id=name,
            original_readiness_ref=old_ref,
            export_result_ref=result_ref,
            run_result_ref=run_ref,
            scope="candidate_source_only;tools_and_original_inherited",
        )
        decision_ref = self.write(
            registry, "repository", "source-revision.json", decision
        )
        binding = dict(readiness_ref=old_ref, source_revision_ref=decision_ref)
        prepared = dict(
            tools={},
            sources={
                "core-original": dict(
                    path=str(roots["private"] / "old-original"),
                    files=1,
                    manifest_sha256="0" * 64,
                    original=True,
                ),
                "core-reuse": dict(
                    path=str(roots["private"] / "old-candidate"),
                    files=1,
                    manifest_sha256="1" * 64,
                    original=False,
                ),
            },
        )
        return registry, binding, prepared, destination, manifest_ref

    def test_checked_source_revision_replaces_only_candidate_without_mutating_old_context(
        self,
    ):
        from native_source_revision_v2 import apply_source_revision

        with tempfile.TemporaryDirectory() as directory:
            registry, binding, prepared, destination, manifest_ref = self.fixture(
                directory
            )
            before = copy.deepcopy(prepared)
            with (
                patch(
                    "controller_v2.artifact_context_for", return_value=(registry, None)
                ),
                patch("sources.verify_subject_v2") as verify,
            ):
                result = apply_source_revision(binding, prepared, work_id="w001")
            self.assertEqual(prepared, before)
            self.assertEqual(result["tools"], prepared["tools"])
            self.assertEqual(
                result["sources"]["core-original"], prepared["sources"]["core-original"]
            )
            self.assertEqual(
                result["sources"]["core-reuse"],
                dict(
                    path=str(destination),
                    files=1,
                    manifest_sha256=manifest_ref["sha256"],
                    original=False,
                ),
            )
            verify.assert_called_once()

    def test_false_exit_and_unclosed_or_unaccounted_runs_never_admit(self):
        from native_source_revision_v2 import apply_source_revision

        for change, target in [
            ({"actual_exit": False}, "run"),
            ({"all_source_bytes_equal_after": False}, "run"),
            ({"tree_empty": False}, "run"),
            ({"scientific_acceptance": True}, "run"),
            ({"exit_code": False}, "receipt"),
            ({"final_storage_inventory_error": "lost"}, "receipt"),
            ({"growth_observer_scope": "supplied"}, "receipt"),
        ]:
            with (
                self.subTest(change=change, target=target),
                tempfile.TemporaryDirectory() as directory,
            ):
                registry, binding, prepared, _, _ = self.fixture(
                    directory, **{target + "_change": change}
                )
                with (
                    patch(
                        "controller_v2.artifact_context_for",
                        return_value=(registry, None),
                    ),
                    patch("sources.verify_subject_v2"),
                    self.assertRaises(ValueError),
                ):
                    apply_source_revision(binding, prepared, work_id="w001")

    def test_actual_source_verification_rejection_cannot_be_replaced_by_receipt_flags(
        self,
    ):
        from native_source_revision_v2 import apply_source_revision

        with tempfile.TemporaryDirectory() as directory:
            registry, binding, prepared, _, _ = self.fixture(directory)
            with (
                patch(
                    "controller_v2.artifact_context_for", return_value=(registry, None)
                ),
                patch(
                    "sources.verify_subject_v2",
                    side_effect=ValueError("ActualSourceBytesChanged"),
                ),
                self.assertRaisesRegex(ValueError, "ActualSourceBytesChanged"),
            ):
                apply_source_revision(binding, prepared, work_id="w001")

    def test_protected_revision_ref_is_rejected_before_context_or_io(self):
        from native_source_revision_v2 import apply_source_revision

        binding = dict(
            source_revision_ref=dict(
                root_id="repository", path="parameters.bin", bytes=0, sha256="0" * 64
            )
        )
        with (
            patch("controller_v2.artifact_context_for") as context,
            self.assertRaisesRegex(ValueError, "ProtectedArtifact"),
        ):
            apply_source_revision(binding, {}, work_id="w001")
        context.assert_not_called()
