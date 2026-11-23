"""Only the actual closed569 cache stop may use the conserved successor scope."""

import copy
import json
from pathlib import Path
import unittest
from unittest.mock import patch

GIB = 1024**3


class QualityCacheContinuationTests(unittest.TestCase):
    def test_actual_profile_and_closed569_stop_pass_without_importing_a_gate_result(
        self,
    ):
        from bootstrap import validate_v2_profile
        from controller_v2 import artifact_context_for, ref_for
        from quality_warm_cache_v3 import wall_cache_target

        root = Path(__file__).resolve().parents[4]
        profile = json.loads(
            (
                root
                / "specs/036-core-transition-feasibility/inputs/v2/profiles/quality-cache-continuation-001.json"
            ).read_bytes()
        )
        self.assertIs(validate_v2_profile(profile), profile)
        refs, _ = artifact_context_for("w001")
        base = refs.roots["future_evidence"] / "attempts/a0569"
        cp = refs.read(ref_for(base / "checkpoint.json", refs))
        previous = refs.read(ref_for(base / "declaration.json", refs))
        receipt = refs.read(
            ref_for(base / "child/receipt.json", refs), limit=64 * 1024**2
        )
        job = refs.read(
            ref_for(refs.roots["private"] / "quality/a0569/runtime-job.json", refs)
        )
        self.assertEqual(
            wall_cache_target(cp, previous, receipt, job, refs.roots["private"]),
            refs.roots["private"] / "disposable/gate-a0569/target",
        )
        self.assertFalse((refs.roots["private"] / "quality/a0569/result.json").exists())
        bad = copy.deepcopy(profile)
        bad["limits"]["combined_bytes"] += 1
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
                / "specs/036-core-transition-feasibility/inputs/v2/profiles/current-q-capacity-001.json"
            ).read_bytes()
        )
        new = copy.deepcopy(old)
        new["limits"].update(cache_bytes=32 * GIB, new_shared_store_bytes=6 * GIB)
        return old, new

    def test_only_cache_and_unused_shared_quota_change_inside_the_same_total(self):
        from current_quality_capacity_v2 import cache_continuation_limits

        old, new = self.profiles()
        self.assertEqual(cache_continuation_limits(old, new), new["limits"])
        self.assertEqual(new["limits"]["combined_bytes"], 44 * GIB)
        self.assertEqual(new["limits"]["attempt_seconds"], 7200)
        for field in new["limits"]:
            bad = copy.deepcopy(new)
            bad["limits"][field] += 1
            with self.subTest(field=field), self.assertRaises(ValueError):
                cache_continuation_limits(old, bad)
        new["limits"]["cpu_workers"] = True
        with self.assertRaises(ValueError):
            cache_continuation_limits(old, new)

    def test_new_capacity_does_not_authorize_other_stages_or_subjects(self):
        from current_quality_capacity_v2 import cache_continuation_limits

        old, new = self.profiles()
        for field in [
            "stage",
            "roots",
            "work_id",
            "native_profile",
            "specification_ref",
        ]:
            bad = copy.deepcopy(new)
            bad[field] = "changed"
            with self.subTest(field=field), self.assertRaises(ValueError):
                cache_continuation_limits(old, bad)

    def test_only_the_actual_observed_closed_cache_stop_selects569_target(self):
        from quality_warm_cache_v3 import wall_cache_target

        root = Path("/var/tmp/behavior-ir-core036-v2/w001")
        source = {"sha256": "a" * 64}
        cp = {
            "attempt_id": "a0569",
            "stage_outcome": "resource_stopped",
            "outcome": {"operational": "closed"},
            "source_validation_error": None,
            "source_subject_ref": source,
        }
        old, _ = self.profiles()
        previous = {
            "record_id": "a0569",
            "stage": "Q",
            "slots": ["canonical-quality"],
            "source_subject_ref": source,
            "profile": old,
        }
        receipt = {
            "exit_code": -9,
            "stop_reason": "CacheGrowthLimit",
            "source_subject_ref": source,
            "tree_empty": True,
            "group_empty": True,
            "final_storage_inventory_error": None,
            "final_resource_observation": {
                "growth_apparent_unique_inode_bytes": {"cache": 30 * GIB + 6 * 1024**2}
            },
        }
        job = {"mode": "gate", "target": str(root / "disposable/gate-a0569/target")}
        self.assertEqual(
            wall_cache_target(cp, previous, receipt, job, root), Path(job["target"])
        )
        for field, value in [
            ("exit_code", False),
            ("stop_reason", "WallLimit"),
            ("tree_empty", False),
            ("source_subject_ref", {"sha256": "b" * 64}),
        ]:
            bad = {**receipt, field: value}
            with self.subTest(field=field), self.assertRaises(ValueError):
                wall_cache_target(cp, previous, bad, job, root)
        bad = copy.deepcopy(receipt)
        bad["final_resource_observation"]["growth_apparent_unique_inode_bytes"][
            "cache"
        ] = 30 * GIB
        with self.assertRaises(ValueError):
            wall_cache_target(cp, previous, bad, job, root)

    def test_named_profile_dispatch_cannot_take_the_old_continuation_path(self):
        from continued_capacity_v2 import planned_continued_limits

        _, new = self.profiles()
        new["allocation"]["correction"]["path"] = (
            "specs/036-core-transition-feasibility/inputs/v2/quality-cache-continuation-001.json"
        )
        with patch(
            "current_quality_capacity_v2.planned_cache_limits",
            return_value=new["limits"],
        ) as selected:
            self.assertEqual(planned_continued_limits(new), new["limits"])
            selected.assert_called_once_with(new)
