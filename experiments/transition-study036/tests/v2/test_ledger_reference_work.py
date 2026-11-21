"""Bound repeated reference work without weakening ledger tamper rejection."""

from collections import Counter
import hashlib
import importlib.util
import campaign
import json
from pathlib import Path
import tempfile
import unittest
from unittest.mock import patch

from artifact_io import RootRegistry
from campaign import WorkLedger
from test_campaign import CampaignV2Tests  # noqa: F401
from test_artifact_io import ArtifactsV2Tests  # noqa: F401
from test_records import RecordsV2Tests  # noqa: F401


def reference_key(reference):
    return tuple(reference[key] for key in ("root_id", "path", "bytes", "sha256"))


def fixture(root):
    ledger = WorkLedger(root, "w001")
    for index in range(3):
        attempt = ledger.declare(
            "ENV",
            profile={"wall_seconds": 600, "reserve_seconds": 300},
            subject="subject",
            slots=["probe"],
        )
        ledger.start(attempt, now_ns=100 * index, boot_id="boot")
        ledger.close(
            attempt,
            now_ns=100 * index + 50,
            boot_id="boot",
            outcome="succeeded",
            closed_tree=True,
        )
    return ledger


class LedgerReferenceWorkTests(unittest.TestCase):
    def test_reference_work_depends_on_distinct_refs_and_replays_same_state(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            ledger = fixture(root)
            expected = {
                reference_key(ref)
                for event in ledger.events
                for ref in [
                    event["specification_ref"],
                    event["source_subject_ref"],
                    *event["inputs"],
                ]
            }
            calls = Counter()
            original = RootRegistry.verify

            def observe(registry, reference):
                calls[reference_key(reference)] += 1
                return original(registry, reference)

            with patch.object(RootRegistry, "verify", observe):
                replay = WorkLedger(root, "w001")
            self.assertEqual(ledger.events, replay.events)
            self.assertEqual(ledger.attempts, replay.attempts)
            self.assertEqual(ledger.active_ns(), replay.active_ns())
            self.assertEqual(set(calls), expected)
            self.assertTrue(all(count <= 2 for count in calls.values()), calls)
            self.assertEqual(replay.authority, "unverified")

    def test_source_changed_after_first_verification_is_still_rejected(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            ledger = fixture(root)
            selected = ledger.events[0]["source_subject_ref"]
            self.assertEqual(selected["root_id"], "work")
            target = root / selected["path"]
            self.assertTrue(target.resolve().is_relative_to(root.resolve()))
            original = RootRegistry.verify
            mutated = False

            def mutate_after_read(registry, reference):
                nonlocal mutated
                result = original(registry, reference)
                if reference == selected and not mutated:
                    target.write_bytes(
                        target.read_bytes() + b"\n# actual late source corruption\n"
                    )
                    mutated = True
                return result

            with patch.object(RootRegistry, "verify", mutate_after_read):
                with self.assertRaisesRegex(ValueError, "V2ArtifactBytes"):
                    WorkLedger(root, "w001")
            self.assertTrue(mutated)

    def test_real_source_mutants_are_caught_by_the_tamper_controls(self):
        source_path = Path(campaign.__file__)
        source = source_path.read_text()
        mutations = [
            (
                "missing_final_check",
                "        for reference in verified_refs.values():\n            self.registry.verify(reference)\n",
                "",
                "test_source_changed_after_first_verification_is_still_rejected",
            ),
            (
                "incomplete_reference_key",
                '("root_id", "path", "bytes", "sha256")',
                '("root_id", "path")',
                "test_equal_path_different_expected_digest_is_not_a_cache_hit",
            ),
        ]
        for label, before, after, control in mutations:
            with self.subTest(mutant=label), tempfile.TemporaryDirectory() as directory:
                self.assertEqual(source.count(before), 1)
                repository = Path(directory) / "repository"
                target = repository / "experiments/transition-study036/campaign.py"
                target.parent.mkdir(parents=True)
                target.write_text(source.replace(before, after))
                spec_target = (
                    repository / "specs/036-core-transition-feasibility/spec.md"
                )
                spec_target.parent.mkdir(parents=True)
                spec_target.write_bytes(
                    (
                        source_path.parents[2]
                        / "specs/036-core-transition-feasibility/spec.md"
                    ).read_bytes()
                )
                module_spec = importlib.util.spec_from_file_location(
                    "ledger_mutant_" + label, target
                )
                module = importlib.util.module_from_spec(module_spec)
                module_spec.loader.exec_module(module)
                with patch(__name__ + ".WorkLedger", module.WorkLedger):
                    with self.assertRaisesRegex(
                        AssertionError, "ValueError not raised"
                    ):
                        getattr(self, control)()

    def test_equal_path_different_expected_digest_is_not_a_cache_hit(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            ledger = fixture(root)
            events = json.loads(json.dumps(ledger.events))
            events[1]["source_subject_ref"]["sha256"] = "0" * 64
            previous = "0" * 64
            lines = []
            for event in events:
                event["previous_sha256"] = previous
                unsigned = {
                    key: value for key, value in event.items() if key != "sha256"
                }
                event["sha256"] = hashlib.sha256(
                    WorkLedger._canonical(unsigned)
                ).hexdigest()
                previous = event["sha256"]
                lines.append(WorkLedger._canonical(event) + b"\n")
            (root / "events.jsonl").write_bytes(b"".join(lines))
            with self.assertRaisesRegex(ValueError, "V2ArtifactBytes"):
                WorkLedger(root, "w001")
