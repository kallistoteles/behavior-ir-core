"""The closed575 consumer compile needs a prospective bounded allocation."""

import copy
import json
from pathlib import Path
import unittest
from unittest.mock import patch


class QualityConsumerCapacityTests(unittest.TestCase):
    def test_actual_closed575_allocation_and_protected_input_controls(self):
        from bootstrap import validate_v2_profile
        from quality_consumer_capacity_v2 import planned_consumer_limits

        root = Path(__file__).resolve().parents[4]
        for prefix in ["quality", "native"]:
            profile = json.loads(
                (
                    root
                    / "specs/036-core-transition-feasibility/inputs/v2/profiles"
                    / (prefix + "-consumer-capacity-001.json")
                ).read_bytes()
            )
            self.assertIs(validate_v2_profile(profile), profile)
            bad = copy.deepcopy(profile)
            bad["limits"]["extended_child_seconds"] += 1
            with self.assertRaises(ValueError):
                validate_v2_profile(bad)
            bad = copy.deepcopy(profile)
            bad["inputs"][0] = dict(
                root_id="private", path="parameters.bin", bytes=0, sha256="0" * 64
            )
            with patch(
                "controller_v2.artifact_context_for",
                side_effect=AssertionError("protected reference reached IO"),
            ):
                with self.assertRaises(ValueError):
                    planned_consumer_limits(bad)

    def profiles(self, stage):
        root = Path(__file__).resolve().parents[4]
        name = (
            "native" if stage == "NATIVE" else "quality"
        ) + "-preparation-evidence-transfer-001"
        old = json.loads(
            (
                root
                / "specs/036-core-transition-feasibility/inputs/v2/profiles"
                / (name + ".json")
            ).read_bytes()
        )
        new = copy.deepcopy(old)
        new["limits"].update(
            cache_bytes=36 * 1024**3,
            evidence_bytes=10 * 1024**3,
            combined_bytes=52 * 1024**3,
        )
        return old, new

    def test_only_exact_fresh_storage_changes_preserve_all_stage_limits(self):
        from quality_consumer_capacity_v2 import consumer_limits

        for stage in ["Q", "NATIVE"]:
            old, new = self.profiles(stage)
            self.assertEqual(consumer_limits(old, new), new["limits"])
            for key in new["limits"]:
                bad = copy.deepcopy(new)
                bad["limits"][key] += 1
                with self.subTest(stage=stage, key=key), self.assertRaises(ValueError):
                    consumer_limits(old, bad)
            for key in [
                "stage",
                "work_id",
                "roots",
                "native_profile",
                "specification_ref",
            ]:
                bad = copy.deepcopy(new)
                bad[key] = "wrong"
                with self.subTest(key=key), self.assertRaises(ValueError):
                    consumer_limits(old, bad)
            new["limits"]["cpu_workers"] = True
            with self.assertRaises(ValueError):
                consumer_limits(old, new)

    def test_actual575_cache_stop_can_select_only_native574_target(self):
        from quality_warm_cache_v3 import wall_cache_target

        subject = dict(root_id="fixture", path="subject", bytes=1, sha256="a" * 64)
        old, _ = self.profiles("Q")
        cp = dict(
            attempt_id="a0575",
            stage_outcome="resource_stopped",
            outcome=dict(operational="closed"),
            source_validation_error=None,
            source_subject_ref=subject,
        )
        parent = dict(
            record_id="a0575",
            stage="Q",
            slots=["canonical-quality"],
            source_subject_ref=subject,
            profile=old,
        )
        rc = dict(
            exit_code=-9,
            stop_reason="CacheGrowthLimit",
            source_subject_ref=subject,
            tree_empty=True,
            group_empty=True,
            final_storage_inventory_error=None,
            final_resource_observation=dict(
                growth_apparent_unique_inode_bytes=dict(
                    cache=old["limits"]["cache_bytes"] + 115136,
                    temporary=4273260941,
                    artifacts=9715105239,
                    shared_store=0,
                )
            ),
        )
        job = dict(mode="gate", target="/owned/disposable/gate-a0574/target")
        self.assertEqual(
            wall_cache_target(cp, parent, rc, job, Path("/owned")), Path(job["target"])
        )
        for field, value in [
            ("target", "/owned/disposable/gate-a0569/target"),
            ("mode", "build-prepare"),
        ]:
            bad = copy.deepcopy(job)
            bad[field] = value
            with self.assertRaises(ValueError):
                wall_cache_target(cp, parent, rc, bad, Path("/owned"))
        rc["final_resource_observation"]["growth_apparent_unique_inode_bytes"][
            "cache"
        ] = old["limits"]["cache_bytes"]
        with self.assertRaises(ValueError):
            wall_cache_target(cp, parent, rc, job, Path("/owned"))

    def test_actual_closed575_context_retains_before_reuse_and_rejects_mutants(self):
        from controller_v2 import artifact_context_for
        from quality_warm_cache_v3 import prepare_warm_cache

        root = Path(__file__).resolve().parents[4]
        refs, _ = artifact_context_for("w001")
        config = json.loads(
            (
                root / "experiments/transition-study036/quality-inputs-v2.json"
            ).read_bytes()
        )
        config.pop("prepared_build", None)
        for field, root_id, name in [
            ("checkpoint", "future_evidence", "attempts/a0575/checkpoint.json"),
            ("before", "private", "quality/a0575/runtime/before.json"),
            ("job", "private", "quality/a0575/runtime-job.json"),
            ("receipt", "future_evidence", "attempts/a0575/child/receipt.json"),
            ("stdout", "private", "quality/a0575/stdout.txt"),
            ("stderr", "private", "quality/a0575/stderr.txt"),
            (
                "inventory",
                "private",
                "quality-cache-continuation/quality-consumer-cache-575-001/inventory.json",
            ),
        ]:
            config["warm_cache_" + field + "_ref"] = refs.reference(root_id, name)
        for field in ["result", "runtime", "preservation"]:
            config["warm_cache_" + field + "_ref"] = None
        profile = json.loads(
            (
                root
                / "specs/036-core-transition-feasibility/inputs/v2/profiles/quality-consumer-capacity-001.json"
            ).read_bytes()
        )
        decl = dict(
            stage="Q",
            slots=["canonical-quality"],
            profile=profile,
            predecessor=config["warm_cache_checkpoint_ref"],
        )
        core = (
            refs.roots["private"] / "sources/core-source-inline-export-003/core-reuse"
        )
        cli = refs.verify(refs.read(config["cli_result_ref"])["executable_ref"])
        out = refs.roots["private"] / "disposable/warm575-contract-control"

        def run(selected_decl, selected_core, selected_cli, selected_config):
            return prepare_warm_cache(
                refs=refs,
                checkpoint_ref=selected_config["warm_cache_checkpoint_ref"],
                declaration=selected_decl,
                core=selected_core,
                cli=selected_cli,
                out=out,
                config=selected_config,
            )

        with patch(
            "quality_warm_cache_v3.retain_cache", return_value={"observed_only": True}
        ) as retained:
            target, _, _ = run(decl, core, cli, config)
        self.assertEqual(target, refs.roots["private"] / "disposable/gate-a0574/target")
        retained.assert_called_once()
        self.assertLessEqual(retained.call_args.kwargs["budget"], 1200 * 1024**2)
        variants = [
            (
                decl,
                core.parent.parent / "core-source-inline-export-002/core-reuse",
                cli,
                config,
            ),
            (
                decl,
                core,
                root / "experiments/transition-study036/quality_v2.py",
                config,
            ),
        ]
        bad = copy.deepcopy(decl)
        bad["profile"]["limits"]["extended_child_seconds"] += 1
        variants.append((bad, core, cli, config))
        bad = copy.deepcopy(decl)
        bad["predecessor"] = None
        variants.append((bad, core, cli, config))
        bad = copy.deepcopy(config)
        bad["runtime_fixture_inputs"]["result_ref"]["sha256"] = "0" * 64
        variants.append((decl, core, cli, bad))
        bad = copy.deepcopy(config)
        bad["warm_cache_inventory_ref"] = refs.reference(
            "private", "quality/a0575/retained-cache/complete-inventory.json"
        )
        variants.append((decl, core, cli, bad))
        bad = copy.deepcopy(config)
        bad["warm_cache_result_ref"] = config["cli_result_ref"]
        variants.append((decl, core, cli, bad))
        for index, args in enumerate(variants):
            with (
                self.subTest(index=index),
                patch(
                    "quality_warm_cache_v3.retain_cache",
                    side_effect=AssertionError("invalid context reached mutation"),
                ),
            ):
                with self.assertRaises(ValueError):
                    run(*args)
