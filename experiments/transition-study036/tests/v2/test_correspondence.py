"""Real proof pipeline acceptance/rejection controls; no fabricated proof flags."""

import tempfile
import unittest
from pathlib import Path
from check_proofs import validate_axiom_inventory_v2, check_fresh_helper_canary_v2


class CorrespondenceV2Tests(unittest.TestCase):
    def test_exact_axiom_types_and_domain_equivalence_are_not_implicit(self):
        allowed = {"propext": "propositional extensionality"}
        validate_axiom_inventory_v2(
            [{"name": "propext", "type": "propositional extensionality"}],
            allowed=allowed,
        )
        for rows in [
            [{"name": "propext", "type": "native output equals original output"}],
            [
                {
                    "name": "nativeProjectionEqualsModel",
                    "type": "forall state, projection_correct state",
                }
            ],
            [
                {
                    "name": "encoderFidelity",
                    "type": "forall observation, native_encode observation = model_encode observation",
                }
            ],
        ]:
            with self.subTest(rows=rows), self.assertRaises(ValueError):
                validate_axiom_inventory_v2(rows, allowed=allowed)

    def test_actual_extract_type_axiom_kernel_canary_and_real_mutations(self):
        # The source is an actual tiny Rust input to the pinned extraction tool.
        # No manually written/generated-model lookalike is accepted as a probe.
        with tempfile.TemporaryDirectory() as d:
            root = Path(d)
            source = root / "lib.rs"
            source.write_text(
                "#![forbid(unsafe_code)]\npub fn identity(value:u64)->u64 { value }\n"
            )
            result = check_fresh_helper_canary_v2(
                source=source, out=root / "actual-canary"
            )
            self.assertEqual(result["helper_status"], "freshly_kernel_checked")
            self.assertEqual(
                set(result["actual_mutation_rejections"]),
                {
                    "source",
                    "cfg",
                    "generated_body",
                    "expected_type",
                    "equivalence_axiom",
                },
            )
            self.assertEqual(result["feature_native_status"], "unestablished")
            self.assertFalse(result["feature_complete"])
