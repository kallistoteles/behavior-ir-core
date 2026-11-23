"""Actual allocation admission and rejection of forged closed-run fields."""

import copy
import json
from pathlib import Path
import unittest
from unittest.mock import Mock, patch


class CoreInstrumentationAllocationTests(unittest.TestCase):
    def profile(self):
        root = Path(__file__).resolve().parents[4]
        return json.loads(
            (
                root
                / "specs/036-core-transition-feasibility/inputs/v2/profiles/native-core-instrumentation-rebalance-001.json"
            ).read_bytes()
        )

    def test_actual_prospective_profile_admits_with_unchanged_total(self):
        from bootstrap import validate_v2_profile

        profile = self.profile()
        self.assertIs(validate_v2_profile(profile), profile)
        self.assertEqual(profile["limits"]["combined_bytes"], 44 * 1024**3)

    def fixture(self):
        profile = self.profile()
        root = Path(__file__).resolve().parents[4]
        decision = json.loads(
            (
                root
                / "specs/036-core-transition-feasibility/inputs/v2/core-instrumentation-cache-rebalance-001.json"
            ).read_bytes()
        )
        previous = json.loads(
            (root / decision["previous_profile_ref"]["path"]).read_bytes()
        )
        result = dict(
            receipt_ref=decision["resource_receipt_ref"],
            actual_exit=0,
            stop_reason=None,
            all_source_bytes_equal_after=True,
            tree_empty=True,
            group_empty=True,
        )
        usage = dict(
            cache=29968680185,
            temporary=4272844579,
            artifacts=9286426368,
            shared_store=0,
        )
        receipt = dict(
            exit_code=0,
            stop_reason=None,
            tree_empty=True,
            group_empty=True,
            final_storage_inventory_error=None,
            growth_observer_scope="registered_actual_roots",
            free_volume_observer_scope="actual_registered_volumes",
            final_incremental_storage_bytes=usage,
            final_resource_observation=dict(
                growth_apparent_unique_inode_bytes=usage,
                free_volume_bytes=dict(root=41791811584, data=4524486656),
            ),
        )
        refs = Mock()
        refs.roots = dict(
            repository=root,
            private=Path("/fixture/private"),
            future_evidence=Path("/fixture/evidence"),
        )
        refs.verify.side_effect = lambda ref: refs.roots[ref["root_id"]] / ref["path"]
        records = {
            profile["allocation"]["correction"]["path"]: decision,
            decision["previous_profile_ref"]["path"]: previous,
            decision["resource_result_ref"]["path"]: result,
            decision["resource_receipt_ref"]["path"]: receipt,
        }
        refs.read.side_effect = lambda ref, **kwargs: records[ref["path"]]
        return profile, refs, result, receipt

    def test_forged_or_unclosed_resource_receipts_never_admit(self):
        from native_cache_evidence_rebalance_v2 import planned_instrumentation_rebalance

        variants = [
            ("result", "actual_exit", False),
            ("receipt", "exit_code", False),
            ("result", "stop_reason", "Limit"),
            ("result", "all_source_bytes_equal_after", False),
            ("receipt", "tree_empty", False),
            ("receipt", "final_storage_inventory_error", "lost"),
            ("receipt", "growth_observer_scope", "candidate_selected"),
            ("receipt", "free_volume_observer_scope", "candidate_selected"),
        ]
        for target, key, value in variants:
            profile, refs, result, receipt = self.fixture()
            (result if target == "result" else receipt)[key] = value
            with (
                self.subTest(target=target, key=key, value=value),
                patch(
                    "controller_v2.artifact_context_for",
                    return_value=(refs, Mock(active_root_id="future_evidence")),
                ),
                patch("bootstrap.validate_v2_profile"),
                self.assertRaises(ValueError),
            ):
                planned_instrumentation_rebalance(profile)

    def test_protected_bound_input_is_rejected_before_context_or_io(self):
        from native_cache_evidence_rebalance_v2 import planned_instrumentation_rebalance

        profile = copy.deepcopy(self.profile())
        profile["inputs"].append(
            dict(root_id="repository", path="parameters.bin", bytes=0, sha256="0" * 64)
        )
        with (
            patch("controller_v2.artifact_context_for") as context,
            self.assertRaisesRegex(ValueError, "ProtectedArtifact"),
        ):
            planned_instrumentation_rebalance(profile)
        context.assert_not_called()
