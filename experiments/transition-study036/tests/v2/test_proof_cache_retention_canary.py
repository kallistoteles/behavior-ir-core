"""Exact historical canary ownership and real lossless-retention controls."""

import copy
from pathlib import Path
import unittest


class CanaryRetentionTests(unittest.TestCase):
    def context(self, attempt="a0494"):
        from native_canary_cache_retention_v2 import PARENTS

        private = Path("/synthetic/private")
        case = private / "disposable/native-accessor-canary-a0492"
        owner = PARENTS[attempt]
        subject = {
            "root_id": "future_evidence",
            "path": "subjects/" + owner["revision"] + "/manifest.json",
        }
        checkpoint = dict(
            attempt_id=attempt,
            stage_outcome=owner["outcome"],
            source_subject_ref=subject,
            source_validation_error=None,
            outcome={"operational": "closed"},
        )
        receipt = dict(
            source_subject_ref=subject,
            exit_code=owner["exit_code"],
            stop_reason=None,
            tree_empty=True,
            group_empty=True,
            final_storage_inventory_error=None,
        )
        target = case / ("target-" + attempt)
        initial = dict(removed_metadata_files=[], new_empty_target=str(target))
        environment = {"CARGO_TARGET_DIR": str(target)}
        metadata = dict(
            target_directory=str(target), workspace_root=str(case / "worker")
        )
        return private, checkpoint, receipt, initial, environment, metadata

    def test_only_three_exact_closed_owned_contexts_are_admitted(self):
        from native_canary_cache_retention_v2 import PARENTS, canary_target

        self.assertEqual(set(PARENTS), {"a0494", "a0496", "a0497"})
        for attempt in PARENTS:
            context = self.context(attempt)
            self.assertEqual(
                canary_target(*context),
                context[0]
                / "disposable/native-accessor-canary-a0492"
                / ("target-" + attempt),
            )
        for attempt in ("a0114", "a0292", "a0353", "a0493", "../a0494"):
            context = list(self.context())
            context[1]["attempt_id"] = attempt
            with self.subTest(attempt=attempt), self.assertRaises(ValueError):
                canary_target(*context)

    def test_changed_source_open_receipt_alias_and_success_fabrication_reject(self):
        from native_canary_cache_retention_v2 import canary_target

        mutations = [
            (1, "source_validation_error", "changed"),
            (1, "stage_outcome", "failed"),
            (2, "tree_empty", False),
            (2, "group_empty", False),
            (2, "exit_code", True),
            (2, "stop_reason", "stopped"),
            (2, "final_storage_inventory_error", "disagreed"),
            (2, "source_subject_ref", {}),
            (
                3,
                "new_empty_target",
                "/synthetic/private/disposable/native-accessor-canary-a0492",
            ),
            (4, "CARGO_TARGET_DIR", "/synthetic/private/disposable/other/target"),
            (5, "workspace_root", "/synthetic/other"),
        ]
        for position, key, value in mutations:
            context = copy.deepcopy(self.context())
            context[position][key] = value
            with self.subTest(key=key), self.assertRaises(ValueError):
                canary_target(*context)
        context = list(self.context("a0497"))
        context[1]["stage_outcome"] = "succeeded"
        context[2]["exit_code"] = 0
        with self.assertRaises(ValueError):
            canary_target(*context)

    def test_protected_ancestor_rejects_before_reference_io(self):
        from native_canary_cache_retention_v2 import run_retention

        class NoRead:
            def read(self, reference):
                raise AssertionError("protected reference accessed")

        for name in ("parameters.bin", "compression_prover_key.bin"):
            with self.assertRaisesRegex(ValueError, "ProtectedArtifact"):
                run_retention(
                    NoRead(),
                    {"path": "synthetic/" + name + "/nested"},
                    {},
                    Path("/unused"),
                )

    def test_inventory_protected_ancestor_rejects_before_directory_io(self):
        from unittest.mock import patch
        from backend_ir_retention_v2 import _inventory
        from proof_cache_retention_v2 import strict_inventory

        for function in (_inventory, strict_inventory):
            for name in ("parameters.bin", "compression_prover_key.bin"):
                with patch.object(
                    Path, "rglob", side_effect=AssertionError("walked protected input")
                ):
                    with self.assertRaisesRegex(ValueError, "ProtectedArtifact"):
                        function(
                            Path("/synthetic") / name / "nested",
                            maximum_files=10,
                            maximum_bytes=1024,
                        )

    def test_discovered_protected_child_rejects_before_metadata_or_recursion(self):
        from types import SimpleNamespace
        from unittest.mock import MagicMock, patch
        from backend_ir_retention_v2 import guarded_inventory_paths

        for name in ("parameters.bin", "compression_prover_key.bin"):
            listing = MagicMock()
            listing.__enter__.return_value = [SimpleNamespace(name=name)]
            with patch(
                "backend_ir_retention_v2.os.scandir", return_value=listing
            ) as scan:
                with patch.object(
                    Path,
                    "is_dir",
                    side_effect=AssertionError("protected metadata read"),
                ):
                    with self.assertRaisesRegex(ValueError, "ProtectedArtifact"):
                        list(guarded_inventory_paths(Path("/synthetic")))
                scan.assert_called_once_with(Path("/synthetic"))
