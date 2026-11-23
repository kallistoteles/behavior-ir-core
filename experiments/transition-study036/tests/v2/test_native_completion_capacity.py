"""A named future allocation preserves old observations and the combined cap."""

import copy
import json
from pathlib import Path
import unittest
from unittest.mock import patch
import tempfile
from unittest.mock import Mock


class NativeCompletionCapacityTests(unittest.TestCase):
    def historical_sources(self, root):
        from artifact_io import RootRegistry
        from controller_v2 import ref_for

        repository, archive = root / "repository", root / "archive"
        repository.mkdir()
        archive.mkdir()
        old = archive / "frozen.rs"
        old.write_bytes(b"the actual historical source")
        current = repository / "raw_oracle.rs"
        current.write_bytes(old.read_bytes())
        refs = RootRegistry({"repository": repository, "future_evidence": archive})
        logical, snapshot = ref_for(current, refs), ref_for(old, refs)
        subject = {
            "format": "core036.source.v2",
            "work_id": "w001",
            "record_id": "r9590",
            "outcome": {"operational": "completed"},
            "files": [{"logical_ref": logical, "snapshot_ref": snapshot}],
        }
        current.write_bytes(b"legitimate later implementation")
        return refs, logical, subject, current, old

    def test_historical_rebuild_source_uses_exact_frozen_bytes_after_current_edits(
        self,
    ):
        from rebuild_capacity_v2 import verify_historical_rebuild_sources

        with tempfile.TemporaryDirectory() as directory:
            refs, logical, subject, current, _ = self.historical_sources(
                Path(directory)
            )
            before = current.read_bytes()
            verify_historical_rebuild_sources(refs, [logical], subject)
            self.assertEqual(current.read_bytes(), before)
            self.assertNotEqual(refs.reference("repository", "raw_oracle.rs"), logical)

    def test_historical_rebuild_rejects_wrong_missing_duplicate_or_changed_snapshots(
        self,
    ):
        from rebuild_capacity_v2 import verify_historical_rebuild_sources

        with tempfile.TemporaryDirectory() as directory:
            refs, logical, subject, _, frozen = self.historical_sources(Path(directory))
            for changed in [
                {**subject, "files": []},
                {**subject, "files": subject["files"] * 2},
                {**subject, "outcome": {"operational": "in_progress"}},
                {
                    **subject,
                    "files": [
                        {
                            **subject["files"][0],
                            "logical_ref": {**logical, "sha256": "0" * 64},
                        }
                    ],
                },
            ]:
                with self.subTest(changed=changed), self.assertRaises(ValueError):
                    verify_historical_rebuild_sources(refs, [logical], changed)
            frozen.write_bytes(b"corrupt archived bytes")
            with self.assertRaises(ValueError):
                verify_historical_rebuild_sources(refs, [logical], subject)

    def test_historical_rebuild_rejects_protected_references_before_io(self):
        from rebuild_capacity_v2 import verify_historical_rebuild_sources

        with tempfile.TemporaryDirectory() as directory:
            refs, logical, subject, _, _ = self.historical_sources(Path(directory))
            subject["files"][0]["snapshot_ref"]["path"] = "parameters.bin"
            with patch.object(refs, "verify") as verify:
                with self.assertRaisesRegex(ValueError, "ProtectedArtifact"):
                    verify_historical_rebuild_sources(refs, [logical], subject)
                verify.assert_not_called()

    def session_profiles(self):
        root = Path(__file__).resolve().parents[4]
        directory = root / "specs/036-core-transition-feasibility/inputs/v2/profiles"
        old = json.loads(
            (directory / "native-cache-evidence-rebalance-001.json").read_bytes()
        )
        new = json.loads(
            (directory / "native-continued-capacity-001.json").read_bytes()
        )
        new["stage"] = "SESSIONS"
        new["limits"]["attempt_seconds"] = 21600
        new["limits"]["lean_address_space_bytes"] = 4 * 1024**3
        return old, new

    def test_sessions_use_frozen_session_clock_and_current_storage_without_other_increases(
        self,
    ):
        from continued_capacity_v2 import continued_limits

        old, new = self.session_profiles()
        self.assertEqual(continued_limits(old, new), new["limits"])
        for field in new["limits"]:
            changed = copy.deepcopy(new)
            changed["limits"][field] += 1
            with self.subTest(field=field), self.assertRaises(ValueError):
                continued_limits(old, changed)

    def test_session_capacity_does_not_silently_open_other_stages(self):
        from continued_capacity_v2 import continued_limits

        old, new = self.session_profiles()
        for stage in ["DIAG", "COMPACT", "REPRO", "FINAL", "ENV"]:
            with self.subTest(stage=stage), self.assertRaises(ValueError):
                continued_limits(old, {**new, "stage": stage})

    def test_diag_uses_original7200_stage_and900_child_with_current_storage(self):
        from continued_capacity_v2 import continued_limits

        old, new = self.session_profiles()
        new["stage"] = "DIAG"
        new["limits"].update(attempt_seconds=7200, extended_child_seconds=900)
        self.assertEqual(continued_limits(old, new), new["limits"])
        for field in new["limits"]:
            changed = copy.deepcopy(new)
            changed["limits"][field] += 1
            with self.subTest(field=field), self.assertRaises(ValueError):
                continued_limits(old, changed)

    def test_core_instrumentation_rebalances_two_gib_without_more_total_storage(self):
        from native_cache_evidence_rebalance_v2 import instrumentation_rebalance_limits

        root = Path(__file__).resolve().parents[4]
        old = json.loads(
            (
                root
                / "specs/036-core-transition-feasibility/inputs/v2/profiles/native-continued-capacity-001.json"
            ).read_bytes()
        )
        new = copy.deepcopy(old)
        new["limits"].update(cache_bytes=30 * 1024**3, evidence_bytes=9 * 1024**3)
        self.assertEqual(instrumentation_rebalance_limits(old, new), new["limits"])
        self.assertEqual(new["limits"]["combined_bytes"], 44 * 1024**3)
        for field in new["limits"]:
            changed = copy.deepcopy(new)
            changed["limits"][field] += 1
            with self.subTest(field=field), self.assertRaises(ValueError):
                instrumentation_rebalance_limits(old, changed)
        for field in [
            "roots",
            "native_profile",
            "specification_ref",
            "work_id",
            "stage",
        ]:
            changed = copy.deepcopy(new)
            changed[field] = "changed"
            with self.subTest(field=field), self.assertRaises(ValueError):
                instrumentation_rebalance_limits(old, changed)

    def test_core_rebalance_reserves_build_closure_and_both_live_volume_floors(self):
        from native_cache_evidence_rebalance_v2 import instrumentation_headroom

        gib = 1024**3
        usage = dict(
            cache=29968680185,
            temporary=4272844579,
            artifacts=9286426368,
            shared_store=0,
        )
        limits = dict(
            cache_bytes=30 * gib,
            temporary_bytes=5 * gib,
            evidence_bytes=9 * gib,
            combined_bytes=44 * gib,
            new_shared_store_bytes=8 * gib,
            root_stop_bytes=8 * gib,
            data_stop_bytes=4 * gib,
        )
        free = dict(root=41791811584, data=4524486656)
        plan = instrumentation_headroom(usage, limits, free)
        self.assertEqual(plan["planned_build_bytes"], 1200 * 1024**2)
        for bad_usage, bad_free in [
            ({**usage, "cache": 30 * gib}, free),
            ({**usage, "artifacts": 9 * gib}, free),
            (usage, {**free, "root": 8 * gib}),
            (usage, {**free, "data": 4 * gib}),
            ({**usage, "cache": True}, free),
        ]:
            with (
                self.subTest(usage=bad_usage, free=bad_free),
                self.assertRaises(ValueError),
            ):
                instrumentation_headroom(bad_usage, limits, bad_free)

    def test_named_core_rebalance_dispatches_without_inspecting_unrelated_profiles(
        self,
    ):
        import native_cache_evidence_rebalance_v2 as rebalance

        root = Path(__file__).resolve().parents[4]
        profile = json.loads(
            (
                root
                / "specs/036-core-transition-feasibility/inputs/v2/profiles/native-core-instrumentation-rebalance-001.json"
            ).read_bytes()
        )
        refs = Mock()
        refs.roots = {
            "future_evidence": Path("/var/tmp/behavior-ir-core036-evidence-v2/w001"),
            "repository": root,
            "private": Path("/var/tmp/behavior-ir-core036-v2/w001"),
        }
        refs.verify.return_value = Path(
            "/var/tmp/behavior-ir-core036-evidence-v2/w001/bootstrap-runs/native-spans-development-001/result.json"
        )
        with (
            patch(
                "controller_v2.artifact_context_for",
                return_value=(refs, Mock(active_root_id="future_evidence")),
            ) as context,
            patch.object(
                rebalance,
                "planned_instrumentation_rebalance",
                create=True,
                return_value=profile["limits"],
            ) as selected,
        ):
            self.assertEqual(
                rebalance.planned_rebalance_limits(profile), profile["limits"]
            )
            selected.assert_called_once_with(profile)
            context.assert_not_called()
        profile["allocation"]["correction"]["path"] = "parameters.bin"
        with patch("controller_v2.artifact_context_for") as context:
            with self.assertRaisesRegex(ValueError, "ProtectedArtifact"):
                rebalance.planned_rebalance_limits(profile)
            context.assert_not_called()

    def test_protected_input_is_rejected_before_any_profile_reference_io(self):
        from bootstrap import validate_v2_profile

        _, profile = self.profiles()
        profile["specification_ref"] = {
            "root_id": "repository",
            "path": "fixtures/parameters.bin",
            "bytes": 0,
            "sha256": "0" * 64,
        }
        with patch("bootstrap._v2_reference") as verify:
            with self.assertRaisesRegex(ValueError, "ProtectedArtifact"):
                validate_v2_profile(profile)
            verify.assert_not_called()

    def test_unregistered_root_never_gains_authority_from_a_profile(self):
        from bootstrap import validate_v2_profile

        _, profile = self.profiles()
        profile["allocation"]["kind"] = "native_completion_capacity"
        profile["inputs"] = [
            {
                "root_id": "candidate_supplied",
                "path": "checkpoint.json",
                "bytes": 0,
                "sha256": "0" * 64,
            }
        ]
        with (
            patch("bootstrap._v2_reference"),
            patch("controller_v2.artifact_context_for") as context,
        ):
            with self.assertRaisesRegex(ValueError, "V2ProfileInputRoot"):
                validate_v2_profile(profile)
            context.assert_not_called()

    def test_actual_completion_profile_is_bound_to_registered_successful479(self):
        from bootstrap import validate_v2_profile

        root = Path(__file__).resolve().parents[4]
        profile = json.loads(
            (
                root
                / "specs/036-core-transition-feasibility/inputs/v2/profiles/native-completion-capacity-001.json"
            ).read_text()
        )
        self.assertIs(validate_v2_profile(profile), profile)
        bad = copy.deepcopy(profile)
        bad["limits"]["combined_bytes"] += 1
        with self.assertRaises(ValueError):
            validate_v2_profile(bad)

    def profiles(self):
        root = Path(__file__).resolve().parents[4]
        old = json.loads(
            (
                root
                / "specs/036-core-transition-feasibility/inputs/v2/profiles/native-future-evidence-001.json"
            ).read_text()
        )
        new = copy.deepcopy(old)
        new["limits"]["cache_bytes"] = 24 * 1024**3
        return old, new

    def test_only_named_22_to_24_cache_step_and_no_other_changes(self):
        from native_completion_capacity_v2 import completion_limits

        old, new = self.profiles()
        self.assertEqual(completion_limits(old, new), new["limits"])
        for field in (
            "combined_bytes",
            "temporary_bytes",
            "evidence_bytes",
            "cpu_workers",
            "sample_seconds",
            "root_stop_bytes",
            "data_stop_bytes",
            "attempt_seconds",
        ):
            bad = copy.deepcopy(new)
            bad["limits"][field] += 1
            with self.subTest(field=field), self.assertRaises(ValueError):
                completion_limits(old, bad)
        for value in (True, float(24 * 1024**3), 23 * 1024**3, 25 * 1024**3):
            bad = copy.deepcopy(new)
            bad["limits"]["cache_bytes"] = value
            with self.subTest(value=value), self.assertRaises(ValueError):
                completion_limits(old, bad)

    def test_planned_two_gib_fits_whole_work_and_both_existing_floors(self):
        from native_completion_capacity_v2 import completion_headroom

        _, new = self.profiles()
        usage = {
            "cache": 23604082034,
            "temporary": 4272380762,
            "artifacts": 8125422690,
            "shared_store": 0,
        }
        free = {"root": 46496358400, "data": 4533862400}
        completion_headroom(usage, new["limits"], free)
        for actual, volumes in (
            ({**usage, "shared_store": 1024**3}, free),
            ({**usage, "temporary": 4 * 1024**3 + 1}, free),
            ({**usage, "cache": True}, free),
            (usage, {**free, "root": 9 * 1024**3}),
            (usage, {**free, "data": 4 * 1024**3}),
        ):
            with (
                self.subTest(actual=actual, volumes=volumes),
                self.assertRaises(ValueError),
            ):
                completion_headroom(actual, new["limits"], volumes)
