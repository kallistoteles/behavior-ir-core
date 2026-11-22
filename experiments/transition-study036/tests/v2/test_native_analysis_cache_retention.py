"""Reject disposal outside the exact closed current analysis cache owner."""

from pathlib import Path
import unittest


class NativeAnalysisCacheRetentionTests(unittest.TestCase):
    def context(self):
        subject = {
            "root_id": "future_evidence",
            "path": "subjects/native/manifest.json",
        }
        cp = dict(
            attempt_id="a0520",
            source_subject_ref=subject,
            stage_outcome="succeeded",
            source_validation_error=None,
            outcome={"operational": "closed"},
        )
        receipt = dict(
            source_subject_ref=subject,
            exit_code=0,
            stop_reason=None,
            tree_empty=True,
            group_empty=True,
            final_storage_inventory_error=None,
        )
        result = dict(
            source_subject_ref=subject,
            compiler_cache_reused=True,
            analysis_target="/synthetic/private/disposable/analysis-a0514/target",
            extraction_exit_code=0,
            translation_exit_code=0,
        )
        return cp, receipt, result

    def test_exact_closed_joint_extraction_owns_current_cache(self):
        from native_analysis_cache_retention_v2 import disposal_target

        self.assertEqual(
            disposal_target(*self.context(), Path("/synthetic/private")),
            Path("/synthetic/private/disposable/analysis-a0514/target"),
        )

    def test_wrong_owner_open_failed_and_changed_target_are_rejected(self):
        from native_analysis_cache_retention_v2 import disposal_target

        cp, receipt, result = self.context()
        for patch in [
            dict(attempt_id="a0114"),
            dict(stage_outcome="failed"),
            dict(source_validation_error="changed"),
            dict(outcome={"operational": "running"}),
        ]:
            with self.assertRaises(ValueError):
                disposal_target(
                    {**cp, **patch}, receipt, result, Path("/synthetic/private")
                )
        for patch in [
            dict(exit_code=1),
            dict(tree_empty=False),
            dict(stop_reason="limit"),
            dict(final_storage_inventory_error="mismatch"),
        ]:
            with self.assertRaises(ValueError):
                disposal_target(
                    cp, {**receipt, **patch}, result, Path("/synthetic/private")
                )
        for patch in [
            dict(analysis_target="/synthetic/private/disposable/analysis-a0114/target"),
            dict(compiler_cache_reused=False),
            dict(translation_exit_code=1),
        ]:
            with self.assertRaises(ValueError):
                disposal_target(
                    cp, receipt, {**result, **patch}, Path("/synthetic/private")
                )

    def test_protected_ancestor_is_rejected_before_target_access(self):
        from native_analysis_cache_retention_v2 import disposal_target

        with self.assertRaisesRegex(ValueError, "ProtectedArtifact"):
            disposal_target(
                *self.context(), Path("/synthetic/parameters.bin/never-read")
            )
