import copy, sys, tempfile, unittest
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from validate import validate_assessment_shape, validate_closed_index
from artifact_io import write_once, seal


class IndependentValidationTests(unittest.TestCase):
    def negative(self):
        return {
            "format": "core035.assessment.v1",
            "candidate": "undetermined",
            "product_adoption": "unactivated",
            "requirements": {
                f"FR-{i:03}": {
                    "status": "not_evaluated",
                    "reason": "actual bootstrap stop",
                }
                for i in range(1, 22)
            },
            "success_criteria": {
                f"SC-{i:03}": {
                    "status": "not_evaluated",
                    "reason": "actual bootstrap stop",
                }
                for i in range(1, 9)
            },
            "controls": {
                f"C{i:02}": {"status": "not_run", "reason": "actual bootstrap stop"}
                for i in range(1, 21)
            },
            "proof_roots": {
                k: {"status": "not_run", "reason": "actual bootstrap stop"}
                for k in [
                    "finish_frame",
                    "view_update_exact",
                    "unaffected_result_stable",
                    "finish_exact",
                    "observation_reconstruct_exact",
                    "finish_preserves_safety",
                    "ground_advance",
                    "refusal_no_promotion",
                    "stale_no_promotion",
                    "uncertain_no_authority",
                    "semantic_work_bound",
                    "fallback_exact",
                ]
            },
            "cells": {
                f"growth-D{i}": {"status": "not_run", "reason": "actual bootstrap stop"}
                for i in range(1, 6)
            },
            "native_correspondence": "conditional",
            "semantic": "not_evaluated",
            "mathematical": "not_run",
            "cost": "not_measured",
        }

    def test_complete_negative_shape_is_not_positive_authority(self):
        validate_assessment_shape(self.negative())

    def test_missing_inventory_fake_native_claim_and_supplied_verifier(self):
        for kind in [
            "requirements",
            "success_criteria",
            "controls",
            "proof_roots",
            "cells",
            "verifier",
            "native",
            "direct_record",
            "producer",
        ]:
            a = self.negative()
            if kind in [
                "requirements",
                "success_criteria",
                "controls",
                "proof_roots",
                "cells",
            ]:
                a[kind].pop(next(iter(a[kind])))
            if kind == "verifier":
                a["proof_executable"] = "/producer/verifier"
            if kind == "native":
                a["native_correspondence"] = "proved_by_benchmark"
            if kind == "direct_record":
                a["derived_safety_as_original_direct_record"] = True
            if kind == "producer":
                a["trusted"] = True
            with self.subTest(kind=kind), self.assertRaises(ValueError):
                validate_assessment_shape(a)

    def test_extra_or_changed_archive_bytes_fail_independently(self):
        with tempfile.TemporaryDirectory() as t:
            root = Path(t)
            write_once(root / "actual", b"closed")
            index = seal(root, ["actual"])
            validate_closed_index(root, index)
            write_once(root / "late", b"extra")
            with self.assertRaises(ValueError):
                validate_closed_index(root, index)


if __name__ == "__main__":
    unittest.main()
