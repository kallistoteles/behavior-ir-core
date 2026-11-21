"""A separate rebuild allocation cannot alter any previous cap or clock."""

import copy
import unittest


class RebuildCapacityTests(unittest.TestCase):
    def parent(self):
        return dict(
            work_id="w001",
            roots={"cache": "same"},
            stage="NATIVE",
            specification_ref={"same": True},
            native_profile={"rust": "1.98.1"},
            limits=dict(
                cache_bytes=21 * 1024**3,
                combined_bytes=36 * 1024**3,
                temporary_bytes=4 * 1024**3,
                cpu_workers=1,
                attempt_seconds=14400,
            ),
        )

    def test_only_the_declared_21_to_22_cache_step_is_accepted(self):
        from rebuild_capacity_v2 import rebuild_limits

        old = self.parent()
        new = copy.deepcopy(old)
        new["limits"]["cache_bytes"] = 22 * 1024**3
        self.assertEqual(rebuild_limits(old, new), new["limits"])
        self.assertEqual(old, self.parent())
        for field, value in [
            ("cache_bytes", 23 * 1024**3),
            ("temporary_bytes", 5 * 1024**3),
            ("cpu_workers", 2),
            ("attempt_seconds", 28800),
            ("combined_bytes", 40 * 1024**3),
        ]:
            bad = copy.deepcopy(new)
            bad["limits"][field] = value
            with self.subTest(field=field), self.assertRaises(ValueError):
                rebuild_limits(old, bad)
        bad = copy.deepcopy(new)
        bad["roots"] = {"cache": "other"}
        with self.assertRaises(ValueError):
            rebuild_limits(old, bad)

    def test_planned_work_and_closure_must_fit_cache_combined_and_volume(self):
        from rebuild_capacity_v2 import rebuild_headroom

        usage = dict(
            cache=22014515743,
            temporary=3702630733,
            artifacts=6351489610,
            shared_store=0,
        )
        rebuild_headroom(
            usage, 22 * 1024**3, 36 * 1024**3, 1200 * 1024**2, 40 * 1024**3, 8 * 1024**3
        )
        for changes in [
            {"new_cache": 21 * 1024**3},
            {"planned": 2 * 1024**3},
            {"combined": sum(usage.values())},
            {"free": 8 * 1024**3},
        ]:
            args = dict(
                usage=usage,
                new_cache=22 * 1024**3,
                combined=36 * 1024**3,
                planned=1200 * 1024**2,
                free=40 * 1024**3,
                floor=8 * 1024**3,
            )
            args.update(changes)
            with self.subTest(changes=changes), self.assertRaises(ValueError):
                rebuild_headroom(**args)
