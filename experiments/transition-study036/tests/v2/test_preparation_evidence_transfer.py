"""Reserve actual receipt/closure space without increasing total allocation."""

import copy
import json
from pathlib import Path
import unittest
from unittest.mock import patch


class PreparationEvidenceTransferTests(unittest.TestCase):
    def test_actual_closed_basis_and_no_io_for_protected_input(self):
        from bootstrap import validate_v2_profile
        from preparation_evidence_transfer_v2 import planned_transfer_limits

        root = Path(__file__).resolve().parents[4]
        for stage in ["native", "quality"]:
            profile = json.loads(
                (
                    root
                    / "specs/036-core-transition-feasibility/inputs/v2/profiles"
                    / (stage + "-preparation-evidence-transfer-001.json")
                ).read_bytes()
            )
            self.assertIs(validate_v2_profile(profile), profile)
            bad = copy.deepcopy(profile)
            bad["limits"]["attempt_seconds"] += 1
            with self.assertRaises(ValueError):
                validate_v2_profile(bad)
            bad = copy.deepcopy(profile)
            bad["inputs"][0] = dict(
                root_id="private", path="parameters.bin", bytes=0, sha256="0" * 64
            )
            with patch(
                "controller_v2.artifact_context_for",
                side_effect=AssertionError("protected input reached IO"),
            ):
                with self.assertRaises(ValueError):
                    planned_transfer_limits(bad)

    def profiles(self, stage):
        root = Path(__file__).resolve().parents[4]
        name = (
            "native-preparation-capacity-001"
            if stage == "NATIVE"
            else "quality-combined-continuation-001"
        )
        old = json.loads(
            (
                root
                / "specs/036-core-transition-feasibility/inputs/v2/profiles"
                / (name + ".json")
            ).read_text()
        )
        new = copy.deepcopy(old)
        new["limits"]["evidence_bytes"] += 128 * 1024**2
        new["limits"]["new_shared_store_bytes"] -= 128 * 1024**2
        return old, new

    def test_only_exact_unused_category_transfer_changes(self):
        from preparation_evidence_transfer_v2 import transfer_limits

        for stage in ["NATIVE", "Q"]:
            old, new = self.profiles(stage)
            self.assertEqual(transfer_limits(old, new), new["limits"])
            self.assertEqual(
                old["limits"]["combined_bytes"], new["limits"]["combined_bytes"]
            )
            for key in new["limits"]:
                bad = copy.deepcopy(new)
                bad["limits"][key] += 1
                with (
                    self.subTest(stage=stage, field=key),
                    self.assertRaises(ValueError),
                ):
                    transfer_limits(old, bad)

    def test_other_subject_stage_and_boolean_limits_fail(self):
        from preparation_evidence_transfer_v2 import transfer_limits

        old, new = self.profiles("NATIVE")
        for key in ["work_id", "stage", "roots", "native_profile", "specification_ref"]:
            bad = copy.deepcopy(new)
            bad[key] = "different"
            with self.subTest(key=key), self.assertRaises(ValueError):
                transfer_limits(old, bad)
        new["limits"]["cpu_workers"] = True
        with self.assertRaises(ValueError):
            transfer_limits(old, new)

    def test_native_and_quality_transferred_profiles_still_have_identical_compile_limits(
        self,
    ):
        from native_preparation_capacity_v2 import preparation_limits
        from native_suite_capacity_v2 import native_suite_child_seconds

        _, native = self.profiles("NATIVE")
        _, quality = self.profiles("Q")
        self.assertEqual(preparation_limits(quality, native), native["limits"])
        native["allocation"]["correction"]["path"] = (
            "specs/036-core-transition-feasibility/inputs/v2/preparation-evidence-transfer-001.json"
        )
        self.assertEqual(
            native_suite_child_seconds(["quality-runtime-prepare"], native), 7200
        )

    def test_named_transfer_routes_to_its_fixed_validator(self):
        from continued_capacity_v2 import planned_continued_limits

        _, new = self.profiles("NATIVE")
        new["allocation"]["correction"]["path"] = (
            "specs/036-core-transition-feasibility/inputs/v2/preparation-evidence-transfer-001.json"
        )
        with patch(
            "preparation_evidence_transfer_v2.planned_transfer_limits",
            return_value=new["limits"],
        ) as selected:
            self.assertEqual(planned_continued_limits(new), new["limits"])
            selected.assert_called_once_with(new)
