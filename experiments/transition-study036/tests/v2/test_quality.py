"""Log syntax and actual source/argv/CLI binding are separate requirements."""

import unittest
from pathlib import Path
from quality import parse_full_gate_log_v2, check_gate_binding_canary_v2


class QualityV2Tests(unittest.TestCase):
    def test_whole_unchanged_script_labels_terminal_and_order(self):
        root = Path(__file__).resolve().parents[4]
        script = root / "experiments/transition-study036/private/core/scripts/gates.sh"
        if not script.exists():
            script = Path(
                "/var/tmp/behavior-ir-core036-v2/w001/sources/a0003/core-reuse/scripts/gates.sh"
            )
        import re

        labels = re.findall(r'^gate "([^"]+)"', script.read_text(), re.M)
        self.assertEqual(len(labels), 13)
        valid = (
            "\n".join(["gates: " + label for label in labels] + ["gates: OK"]) + "\n"
        )
        parsed = parse_full_gate_log_v2(valid, expected_labels=labels)
        self.assertTrue(parsed["complete_log"])
        for text in [
            valid.replace("gates: OK", ""),
            valid.replace("gates: cargo test\n", ""),
            valid.replace("gates: clippy", "gates: FAILED clippy"),
            valid.replace("gates: cargo fmt", "gates: clippy", 1),
        ]:
            with self.subTest(text=text[:50]), self.assertRaises(ValueError):
                parse_full_gate_log_v2(text, expected_labels=labels)

    def test_actual_placeholder_partial_and_wrong_source_controls(self):
        result = check_gate_binding_canary_v2()
        self.assertEqual(
            set(result["actual_rejected_controls"]),
            {
                "wrong_script",
                "placeholder_cli",
                "empty_index",
                "partial_run",
                "wrong_target",
                "unclosed_descendant",
            },
        )
        self.assertFalse(result["full_canonical_gate_established"])


class WarmGateCacheV2Tests(unittest.TestCase):
    def test_actual_closed_cache_binding_and_wrong_subject_rejections(self):
        from artifact_io import RootRegistry, digest, read
        from environment import check_prepared_native_v2
        from quality import validate_warm_gate_cache_v2

        root = Path(__file__).resolve().parents[4]
        private = Path("/var/tmp/behavior-ir-core036-v2/w001")
        work = root / "specs/036-core-transition-feasibility/evidence/v2/w001"
        refs = RootRegistry(
            {"repository": root, "private": private, "work": work},
            readonly=["repository", "private", "work"],
        )
        prepared = check_prepared_native_v2(
            root / "experiments/transition-study036/toolchain-v2.json"
        )
        core = Path(prepared["sources"]["core-reuse"]["path"])
        cli = refs.verify(
            read(private / "core-cli-builds/a0102/result.json")["executable_ref"]
        )
        kwargs = dict(
            registry=refs,
            checkpoint_ref=refs.reference("work", "attempts/a0116/checkpoint.json"),
            result_ref=refs.reference("private", "quality/a0116/result.json"),
            private_root=private,
            work_root=work,
            expected_source_inventory_sha256=digest(core / "subject-inventory-v2.json"),
            expected_script_sha256=digest(core / "scripts/gates.sh"),
            expected_cli_sha256=digest(cli),
        )
        expected_target = private / "disposable/gate-a0116/target"
        self.assertEqual(validate_warm_gate_cache_v2(**kwargs), expected_target)
        latest = {
            **kwargs,
            "checkpoint_ref": refs.reference("work", "attempts/a0122/checkpoint.json"),
            "result_ref": refs.reference("private", "quality/a0122/result.json"),
        }
        self.assertEqual(validate_warm_gate_cache_v2(**latest), expected_target)
        stopped = {
            **kwargs,
            "checkpoint_ref": refs.reference("work", "attempts/a0142/checkpoint.json"),
            "result_ref": refs.reference("private", "quality/a0136/result.json"),
        }
        self.assertEqual(validate_warm_gate_cache_v2(**stopped), expected_target)
        controller_stopped = {
            **stopped,
            "checkpoint_ref": refs.reference("work", "attempts/a0162/checkpoint.json"),
        }
        self.assertEqual(
            validate_warm_gate_cache_v2(**controller_stopped), expected_target
        )
        for mutation in [
            dict(result_ref=refs.reference("private", "quality/a0122/result.json")),
            dict(
                checkpoint_ref=refs.reference("work", "attempts/a0150/checkpoint.json")
            ),
            dict(expected_cli_sha256="0" * 64),
        ]:
            with self.subTest(stopped_mutation=mutation), self.assertRaises(ValueError):
                validate_warm_gate_cache_v2(**{**stopped, **mutation})
        for mutation in [
            dict(expected_source_inventory_sha256="0" * 64),
            dict(expected_script_sha256="0" * 64),
            dict(expected_cli_sha256="0" * 64),
            dict(
                checkpoint_ref=refs.reference("work", "attempts/a0117/checkpoint.json")
            ),
            dict(checkpoint_ref={**kwargs["checkpoint_ref"], "sha256": "0" * 64}),
        ]:
            with self.subTest(mutation=mutation), self.assertRaises(ValueError):
                validate_warm_gate_cache_v2(**{**kwargs, **mutation})


class GateRuntimeFixtureV2Tests(unittest.TestCase):
    def test_actual_runtime_fixture_closure_and_missing_or_substituted_input(self):
        import copy
        from artifact_io import RootRegistry, read
        from environment import check_prepared_native_v2
        from quality import validate_gate_runtime_inputs_v2

        root = Path(__file__).resolve().parents[4]
        private = Path("/var/tmp/behavior-ir-core036-v2/w001")
        work = root / "specs/036-core-transition-feasibility/evidence/v2/w001"
        refs = RootRegistry(
            {"repository": root, "private": private, "work": work},
            readonly=["repository", "private", "work"],
        )
        prepared = check_prepared_native_v2(
            root / "experiments/transition-study036/toolchain-v2.json"
        )
        expected = read(
            root / "experiments/transition-study036/gate-runtime-inputs-v2.json"
        )
        kwargs = dict(registry=refs, prepared=prepared, expected_spec=expected)
        with self.assertRaises(ValueError):
            validate_gate_runtime_inputs_v2(None, **kwargs)
        binding = read(
            root / "experiments/transition-study036/quality-inputs-v2.json"
        ).get("runtime_fixture_inputs")
        self.assertIsNotNone(
            binding,
            "Actual bounded original fixture acquisition must precede positive acceptance",
        )
        actual = validate_gate_runtime_inputs_v2(binding, **kwargs)
        self.assertEqual(len(actual["files"]), 2 * len(expected["files"]))
        wrong = copy.deepcopy(expected)
        wrong["files"][0]["sha256"] = "0" * 64
        with self.assertRaises(ValueError):
            validate_gate_runtime_inputs_v2(
                binding, **{**kwargs, "expected_spec": wrong}
            )
        wrong = copy.deepcopy(binding)
        wrong["result_ref"]["sha256"] = "0" * 64
        with self.assertRaises(ValueError):
            validate_gate_runtime_inputs_v2(wrong, **kwargs)
        wrong = copy.deepcopy(binding)
        wrong["checkpoint_ref"] = refs.reference(
            "work", "attempts/a0119/checkpoint.json"
        )
        with self.assertRaises(ValueError):
            validate_gate_runtime_inputs_v2(wrong, **kwargs)
