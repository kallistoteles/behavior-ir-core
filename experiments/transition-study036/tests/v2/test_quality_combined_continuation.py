"""Exact observed combined-budget stop; no inherited gate results."""

import copy
import json
from pathlib import Path
import unittest
from unittest.mock import patch

GIB = 1024**3


class QualityCombinedContinuationTests(unittest.TestCase):
    def test_actual_profile_and_closed570_stop_are_bound_without_a_quality_result(self):
        from bootstrap import validate_v2_profile
        from controller_v2 import artifact_context_for, ref_for
        from quality_warm_cache_v3 import wall_cache_target

        root = Path(__file__).resolve().parents[4]
        profile = json.loads(
            (
                root
                / "specs/036-core-transition-feasibility/inputs/v2/profiles/quality-combined-continuation-001.json"
            ).read_bytes()
        )
        self.assertIs(validate_v2_profile(profile), profile)
        refs, _ = artifact_context_for("w001")
        base = refs.roots["future_evidence"] / "attempts/a0570"
        cp = refs.read(ref_for(base / "checkpoint.json", refs))
        previous = refs.read(ref_for(base / "declaration.json", refs))
        receipt = refs.read(
            ref_for(base / "child/receipt.json", refs), limit=64 * 1024**2
        )
        job = refs.read(
            ref_for(refs.roots["private"] / "quality/a0570/runtime-job.json", refs)
        )
        self.assertEqual(
            wall_cache_target(cp, previous, receipt, job, refs.roots["private"]),
            refs.roots["private"] / "disposable/gate-a0569/target",
        )
        self.assertFalse((refs.roots["private"] / "quality/a0570/result.json").exists())
        bad = copy.deepcopy(profile)
        bad["limits"]["extended_child_seconds"] += 1
        with self.assertRaises(ValueError):
            validate_v2_profile(bad)
        bad = copy.deepcopy(profile)
        bad["inputs"][0] = {
            "root_id": "private",
            "path": "parameters.bin",
            "bytes": 0,
            "sha256": "0" * 64,
        }
        with self.assertRaises(ValueError):
            validate_v2_profile(bad)

    def profiles(self):
        root = Path(__file__).resolve().parents[4]
        old = json.loads(
            (
                root
                / "specs/036-core-transition-feasibility/inputs/v2/profiles/quality-cache-continuation-001.json"
            ).read_bytes()
        )
        new = copy.deepcopy(old)
        new["limits"].update(cache_bytes=34 * GIB, combined_bytes=48 * GIB)
        return old, new

    def test_only_prospective_cache_and_combined_limits_change(self):
        from current_quality_capacity_v2 import combined_continuation_limits

        old, new = self.profiles()
        self.assertEqual(combined_continuation_limits(old, new), new["limits"])
        for field in new["limits"]:
            bad = copy.deepcopy(new)
            bad["limits"][field] += 1
            with self.subTest(field=field), self.assertRaises(ValueError):
                combined_continuation_limits(old, bad)
        new["limits"]["cpu_workers"] = True
        with self.assertRaises(ValueError):
            combined_continuation_limits(old, new)

    def test_other_subjects_or_stages_do_not_gain_authority(self):
        from current_quality_capacity_v2 import combined_continuation_limits

        old, new = self.profiles()
        for field in [
            "stage",
            "work_id",
            "roots",
            "native_profile",
            "specification_ref",
        ]:
            bad = copy.deepcopy(new)
            bad[field] = "changed"
            with self.subTest(field=field), self.assertRaises(ValueError):
                combined_continuation_limits(old, bad)

    def test_only_actual_closed570_combined_stop_selects_the_inherited569_target(self):
        from quality_warm_cache_v3 import wall_cache_target

        root = Path("/var/tmp/behavior-ir-core036-v2/w001")
        source = {"sha256": "a" * 64}
        old, _ = self.profiles()
        cp = {
            "attempt_id": "a0570",
            "stage_outcome": "resource_stopped",
            "outcome": {"operational": "closed"},
            "source_validation_error": None,
            "source_subject_ref": source,
        }
        previous = {
            "record_id": "a0570",
            "stage": "Q",
            "slots": ["canonical-quality"],
            "source_subject_ref": source,
            "profile": old,
        }
        usage = {
            "cache": 33482493524,
            "temporary": 4273067100,
            "artifacts": 9497536678,
            "shared_store": 0,
        }
        receipt = {
            "exit_code": -9,
            "stop_reason": "CombinedGrowthLimit",
            "source_subject_ref": source,
            "tree_empty": True,
            "group_empty": True,
            "final_storage_inventory_error": None,
            "final_resource_observation": {"growth_apparent_unique_inode_bytes": usage},
        }
        job = {"mode": "gate", "target": str(root / "disposable/gate-a0569/target")}
        self.assertEqual(
            wall_cache_target(cp, previous, receipt, job, root), Path(job["target"])
        )
        for field, value in [
            ("exit_code", False),
            ("stop_reason", "CacheGrowthLimit"),
            ("tree_empty", False),
            ("source_subject_ref", {"sha256": "b" * 64}),
        ]:
            bad = {**receipt, field: value}
            with self.subTest(field=field), self.assertRaises(ValueError):
                wall_cache_target(cp, previous, bad, job, root)
        for replacement in [False, 30 * GIB, 32 * GIB + 1]:
            bad = copy.deepcopy(receipt)
            bad["final_resource_observation"]["growth_apparent_unique_inode_bytes"][
                "cache"
            ] = replacement
            with self.subTest(cache=replacement), self.assertRaises(ValueError):
                wall_cache_target(cp, previous, bad, job, root)

    def test_named_combined_profile_routes_to_its_observed_limits(self):
        from continued_capacity_v2 import planned_continued_limits

        _, new = self.profiles()
        new["allocation"]["correction"]["path"] = (
            "specs/036-core-transition-feasibility/inputs/v2/quality-combined-continuation-001.json"
        )
        with patch(
            "current_quality_capacity_v2.planned_cache_limits",
            return_value=new["limits"],
        ) as selected:
            self.assertEqual(planned_continued_limits(new), new["limits"])
            selected.assert_called_once_with(new)
