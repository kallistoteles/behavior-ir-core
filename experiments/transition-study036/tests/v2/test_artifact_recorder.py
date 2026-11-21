"""Prospective controls for future-store output and whole-work accounting.

Temporary path relocation bypasses the profile and tree lease's fixed path
checks only. Limits, inventories, lease locking and process supervision are real.
These tests are not recorded execution evidence until run by the controller.
"""

import json
import os
from pathlib import Path
import sys
import tempfile
import unittest
from unittest.mock import patch

from artifact_registration_v2 import select_artifact_store
from recorder import V2Runner
import test_artifact_registration as fixtures


class ArtifactRecorderTests(unittest.TestCase):
    def fixture(self, base):
        registry, future, _, selection = fixtures.ArtifactRegistrationTests().fixture(
            base
        )
        registry, store = select_artifact_store(
            registry, "w001", selection, expected_future_root=future
        )
        profile = json.loads(
            (Path(__file__).resolve().parents[2] / "profiles/v2/env.json").read_text()
        )
        cache = base / "cache"
        temporary = cache / "tmp"
        shared = base / "shared"
        for directory in (cache, temporary, shared):
            directory.mkdir(parents=True, exist_ok=True, mode=0o700)

        def fixture_private(root):
            root = Path(root)
            if (
                root != cache
                or root.is_symlink()
                or root.stat().st_uid != os.geteuid()
                or root.stat().st_mode & 0o077
            ):
                raise ValueError("FixturePrivateBoundary")
            return root

        self.enterContext(patch("resource_lease._private", fixture_private))
        profile["roots"] = {
            "cache": str(cache),
            "temporary": str(temporary),
            "artifacts": str(registry.roots["work"]),
            "shared_store": str(shared),
        }
        store.write("attempts/a0001/declaration.json", {"routing_fixture": True})
        return registry, store, profile

    def runner(self, profile, **kwargs):
        with patch("bootstrap.validate_v2_profile", lambda value: value):
            return V2Runner(profile, **kwargs)

    def test_observing_a_directory_does_not_authorize_writes(self):
        with tempfile.TemporaryDirectory() as directory:
            _, store, profile = self.fixture(Path(directory))
            future = store.registry.roots["future_evidence"]
            runner = self.runner(profile, control_paths=[future])
            with self.assertRaises(ValueError):
                runner._output(future / "attempts/a0001/child")

    def test_only_registered_attempt_output_is_admitted_and_monitored(self):
        with tempfile.TemporaryDirectory() as directory:
            _, store, profile = self.fixture(Path(directory))
            future = store.registry.roots["future_evidence"]
            with self.assertRaises(ValueError):
                self.runner(profile, artifact_store=store)
            runner = self.runner(profile, control_paths=[future], artifact_store=store)
            for invalid in (
                future / "arbitrary",
                future / "subjects/r0001/child",
                future / "attempts/a0002/child",
            ):
                with (
                    self.subTest(path=invalid),
                    self.assertRaises((ValueError, FileNotFoundError)),
                ):
                    runner._output(invalid)
            out = future / "attempts/a0001/child"
            receipt = runner.run(
                [sys.executable, "-c", "print('future-store-control')"],
                out,
                wall_seconds=5,
            )
            self.assertEqual(receipt["exit_code"], 0)
            self.assertIsNone(receipt["stop_reason"])
            self.assertTrue(receipt["tree_empty"] and receipt["group_empty"])
            self.assertIsNone(receipt["final_storage_inventory_error"])
            self.assertEqual(
                receipt["monitor_source_ref"]["root_id"], "future_evidence"
            )
            self.assertGreater(
                receipt["final_incremental_storage_bytes"]["artifacts"], 0
            )
            self.assertFalse((store.registry.roots["work"] / "attempts/a0001").exists())

    def test_old_and_future_evidence_are_counted_with_aliases_once(self):
        with tempfile.TemporaryDirectory() as directory:
            registry, store, profile = self.fixture(Path(directory))
            future = store.registry.roots["future_evidence"]
            old = registry.write("work", "old-large", b"a" * 10000)
            before = self.runner(profile)._growth("final")["artifacts"]
            os.link(registry.verify(old), future / "alias")
            runner = self.runner(profile, control_paths=[future, future / "alias"])
            with_alias = runner._growth("final")["artifacts"]
            (future / "new").write_bytes(b"b" * 20000)
            after = runner._growth("final")["artifacts"]
            self.assertGreater(with_alias, before)
            self.assertLess(with_alias - before, 10000)
            self.assertEqual(after - with_alias, 20000)

    def test_both_live_floors_and_fast_future_growth_remain_effective(self):
        gib = 1024**3
        cases = [
            ({"root": 7 * gib, "data": 9 * gib}, "RootFreeFloor"),
            ({"root": 30 * gib, "data": 3 * gib}, "DataFreeFloor"),
        ]
        for free, reason in cases:
            with (
                self.subTest(reason=reason),
                tempfile.TemporaryDirectory() as directory,
            ):
                _, store, profile = self.fixture(Path(directory))
                future = store.registry.roots["future_evidence"]
                runner = self.runner(
                    profile,
                    control_paths=[future],
                    artifact_store=store,
                    free_volumes=lambda: free,
                )
                receipt = runner.run(
                    [sys.executable, "-c", "raise SystemExit(77)"],
                    future / "attempts/a0001/child",
                    wall_seconds=5,
                )
                self.assertEqual(receipt["stop_reason"], reason)
                self.assertIsNone(receipt["exit_code"])

        with tempfile.TemporaryDirectory() as directory:
            _, store, profile = self.fixture(Path(directory))
            future = store.registry.roots["future_evidence"]
            runner = self.runner(
                profile,
                control_paths=[future],
                artifact_store=store,
                free_volumes=lambda: {"root": 30 * gib, "data": 6 * gib},
            )
            # A small real write crosses a deliberately lowered fixture cap.
            runner.limits["evidence_bytes"] = 256 * 1024
            receipt = runner.run(
                [
                    sys.executable,
                    "-c",
                    "from pathlib import Path; import sys; Path(sys.argv[1]).write_bytes(b'x'*524288)",
                    str(future / "fast-write"),
                ],
                future / "attempts/a0001/child",
                wall_seconds=5,
            )
            self.assertEqual(receipt["stop_reason"], "ArtifactGrowthLimit")
            self.assertTrue(receipt["tree_empty"] and receipt["group_empty"])
