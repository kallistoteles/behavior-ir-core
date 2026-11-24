"""A closed build can provide cache data, never an inherited quality pass."""

import copy
from pathlib import Path
import unittest


class QualityPreparedBuildTests(unittest.TestCase):
    def inputs(self):
        subject = {
            "root_id": "fixture",
            "path": "source",
            "bytes": 1,
            "sha256": "a" * 64,
        }
        cp = {
            "attempt_id": "a1000",
            "stage_outcome": "succeeded",
            "outcome": {"operational": "closed"},
            "source_validation_error": None,
            "source_subject_ref": subject,
        }
        parent = {
            "record_id": "a1000",
            "work_id": "w001",
            "stage": "NATIVE",
            "slots": ["quality-runtime-prepare"],
            "source_subject_ref": subject,
        }
        usage = {"cache": 10, "temporary": 1, "artifacts": 2, "shared_store": 0}
        receipt = {
            "format": "core036.resource.v2",
            "work_id": "w001",
            "stage": "NATIVE",
            "source_subject_ref": subject,
            "exit_code": 0,
            "stop_reason": None,
            "controller_error": None,
            "tree_empty": True,
            "group_empty": True,
            "final_storage_inventory_error": None,
            "final_incremental_storage_bytes": usage,
            "final_resource_observation": {"growth_apparent_unique_inode_bytes": usage},
        }
        result = {
            "format": "core036.canonical-result.v2",
            "source_subject_ref": subject,
            "exit_code": 0,
            "whole_gate_terminal_ok": False,
            "runtime_preparation_only": True,
            "target_started_empty": True,
            "compiler_cache_reused": False,
            "target": "/owned/disposable/gate-a1000/target",
            "prepared_cache_inventory_ref": {
                "root_id": "fixture",
                "path": "inventory",
                "bytes": 1,
                "sha256": "b" * 64,
            },
            "evaluated_runtime_result": {
                "mode": "build-prepare",
                "gate_exit": None,
                "preparation_exit": 0,
                "capture_pair_equal": True,
            },
        }
        return cp, parent, receipt, result

    def test_closed_preparation_selects_only_its_own_cache(self):
        from quality_prepared_build_v2 import prepared_cache_target

        values = self.inputs()
        self.assertEqual(
            prepared_cache_target(*values, Path("/owned")),
            Path("/owned/disposable/gate-a1000/target"),
        )

    def test_inherited_pass_failed_or_unclosed_sources_are_rejected(self):
        from quality_prepared_build_v2 import prepared_cache_target

        cp, parent, receipt, result = self.inputs()
        for group, field, value in [
            (0, "stage_outcome", "failed"),
            (0, "source_validation_error", "changed"),
            (1, "stage", "Q"),
            (1, "slots", ["canonical-quality"]),
            (2, "exit_code", False),
            (2, "stop_reason", "WallLimit"),
            (2, "tree_empty", False),
            (2, "final_storage_inventory_error", "mismatch"),
            (3, "whole_gate_terminal_ok", True),
            (3, "runtime_preparation_only", False),
            (3, "target_started_empty", False),
            (3, "target", "/unrelated/target"),
            (3, "prepared_cache_inventory_ref", None),
        ]:
            values = copy.deepcopy([cp, parent, receipt, result])
            values[group][field] = value
            with self.subTest(field=field), self.assertRaises(ValueError):
                prepared_cache_target(*values, Path("/owned"))
        for field, value in [
            ("mode", "prepare"),
            ("gate_exit", 0),
            ("preparation_exit", False),
            ("capture_pair_equal", False),
        ]:
            values = copy.deepcopy([cp, parent, receipt, result])
            values[3]["evaluated_runtime_result"][field] = value
            with self.subTest(field=field), self.assertRaises(ValueError):
                prepared_cache_target(*values, Path("/owned"))

    def test_wrong_subject_owner_and_storage_agreement_fail(self):
        from quality_prepared_build_v2 import prepared_cache_target

        for group in [1, 2, 3]:
            values = copy.deepcopy(self.inputs())
            values[group]["source_subject_ref"]["sha256"] = "c" * 64
            # Break sharing deliberately; the entire tuple initially shares source metadata.
            values = list(self.inputs())
            values[group] = copy.deepcopy(values[group])
            values[group]["source_subject_ref"]["sha256"] = "c" * 64
            with self.assertRaises(ValueError):
                prepared_cache_target(*values, Path("/owned"))
        values = list(self.inputs())
        values[2] = copy.deepcopy(values[2])
        values[2]["final_incremental_storage_bytes"] = {"cache": 99}
        with self.assertRaises(ValueError):
            prepared_cache_target(*values, Path("/owned"))

    def test_protected_inventory_is_rejected_before_io(self):
        from quality_prepared_build_v2 import prepared_cache_target

        values = list(self.inputs())
        values[3]["prepared_cache_inventory_ref"]["path"] = "parameters.bin/leaf"
        with self.assertRaises(ValueError):
            prepared_cache_target(*values, Path("/owned"))

    def test_actual_closed_preparation_context_and_fast_rejections(self):
        import json
        from unittest.mock import patch
        from controller_v2 import artifact_context_for
        from quality_prepared_build_v2 import prepare_compiled_cache

        root = Path(__file__).resolve().parents[4]
        experiment = root / "experiments/transition-study036"
        refs, _ = artifact_context_for("w001")
        config = json.loads((experiment / "quality-inputs-v2.json").read_bytes())
        config["prepared_build"] = {
            "checkpoint_ref": refs.reference(
                "future_evidence", "attempts/a0574/checkpoint.json"
            ),
            "result_ref": refs.reference(
                "private", "quality-runtime-prepare/a0574/result.json"
            ),
        }
        profile = json.loads(
            (
                root
                / "specs/036-core-transition-feasibility/inputs/v2/profiles/quality-preparation-evidence-transfer-001.json"
            ).read_bytes()
        )
        declaration = dict(stage="Q", slots=["canonical-quality"], profile=profile)
        core = (
            refs.roots["private"] / "sources/core-source-inline-export-003/core-reuse"
        )
        cli = refs.verify(refs.read(config["cli_result_ref"])["executable_ref"])
        # This control validates all actual source/capture/command/cache bytes.
        # Retention and the final binding write are observed without modifying
        # the closed producer. The real Q execution must retain before use.
        with patch(
            "quality_warm_cache_v3.retain_cache", return_value={"test_only": True}
        ) as retain:
            with patch("quality_prepared_build_v2.write_once") as written:
                target, _, preserved = prepare_compiled_cache(
                    refs=refs,
                    declaration=declaration,
                    core=core,
                    cli=cli,
                    out=refs.roots["private"]
                    / "disposable/prepared-build-contract-control",
                    config=config,
                )
        self.assertEqual(target, refs.roots["private"] / "disposable/gate-a0574/target")
        self.assertEqual(preserved, {"test_only": True})
        retain.assert_called_once()
        written.assert_called_once()
        self.assertIs(written.call_args.args[1]["whole_gate_must_run"], True)
        self.assertIs(written.call_args.args[1]["reused_results"], False)

        variants = []
        bad = copy.deepcopy(declaration)
        bad["profile"]["limits"]["attempt_seconds"] += 1
        variants.append((bad, core, cli, config))
        variants.append(
            (
                declaration,
                core.parent.parent / "core-source-inline-export-002/core-reuse",
                cli,
                config,
            )
        )
        variants.append((declaration, core, experiment / "quality_v2.py", config))
        bad = copy.deepcopy(config)
        bad["runtime_fixture_inputs"]["result_ref"]["sha256"] = "0" * 64
        variants.append((declaration, core, cli, bad))
        bad = copy.deepcopy(config)
        bad["cli_checkpoint_ref"] = refs.reference(
            "future_evidence", "attempts/a0568/checkpoint.json"
        )
        variants.append((declaration, core, cli, bad))
        for number, (decl, selected_core, selected_cli, selected_config) in enumerate(
            variants
        ):
            with (
                self.subTest(number=number),
                patch(
                    "quality_warm_cache_v3.retain_cache",
                    side_effect=AssertionError("invalid context reached mutation"),
                ),
            ):
                with self.assertRaises(ValueError):
                    prepare_compiled_cache(
                        refs=refs,
                        declaration=decl,
                        core=selected_core,
                        cli=selected_cli,
                        out=refs.roots["private"]
                        / "disposable/prepared-build-contract-control",
                        config=selected_config,
                    )
