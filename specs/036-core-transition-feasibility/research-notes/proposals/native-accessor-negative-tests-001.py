"""Prospective negative controls; not yet selected or executed."""
import copy
import hashlib
import unittest


class NativeAccessorNegativeTests(unittest.TestCase):
    def test_negative_selection_cannot_claim_native_or_feature_completion(self):
        from native_accessor_source_canary_v2 import validate_negative_config

        reference = dict(root_id="future_evidence", path="attempts/a0494/checkpoint.json",
                         bytes=10, sha256="a" * 64)
        selected = dict(format="core036.native-accessor-negative.v2",
                        positive_checkpoint_ref=reference,
                        positive_result_ref={**reference, "root_id": "private",
                                             "path": "ground-lean-probe/a0494/result.json"},
                        scope="owning_source_negative_only", native_proof="unestablished",
                        feature_complete=False)
        validate_negative_config(selected)
        for key, value in [("native_proof", "proved"), ("feature_complete", True),
                           ("scope", "relocated_accessor_positive_only"),
                           ("format", "core036.native-accessor-positive.v2"),
                           ("extra", True)]:
            with self.subTest(key=key), self.assertRaises(ValueError):
                validate_negative_config({**selected, key: value})

    def test_complete_owner_inventory_allows_exactly_the_real_method_change(self):
        from native_accessor_source_canary_v2 import (
            OWNER_METHOD, mutate_null_accessor, mutated_owner_inventory,
        )

        original = b"// prefix\n" + OWNER_METHOD + b"\n// suffix\n"
        mutant = mutate_null_accessor(original)
        inventory = [dict(path="Cargo.toml", bytes=5, sha256="c" * 64),
                     dict(path="src/value/mod.rs", bytes=len(original),
                          sha256=hashlib.sha256(original).hexdigest())]
        expected = copy.deepcopy(inventory)
        expected[1].update(bytes=len(mutant), sha256=hashlib.sha256(mutant).hexdigest())
        self.assertEqual(mutated_owner_inventory(inventory, original), expected)
        self.assertNotEqual(inventory, expected)
        for rows in [inventory[:1], inventory + [inventory[1]],
                     [{**x, "sha256": "f" * 64} for x in inventory]]:
            with self.subTest(rows=rows), self.assertRaises(ValueError):
                mutated_owner_inventory(rows, original)

    def test_isolated_rejection_uses_the_unchanged_null_declaration(self):
        from native_accessor_source_canary_v2 import isolated_null_source
        from pathlib import Path

        wrapper = (Path(__file__).parents[2] / "proofs/Correspondence036/Dependencies/NativeJsonBorrowWrapper.lean").read_bytes()
        result = isolated_null_source(wrapper)
        declaration = (b"theorem value_as_str_null :\n"
                       b"    transition_study036.serde_json.value.Value.impl.as_str .Null = ok none := rfl\n")
        self.assertIn(declaration, wrapper)
        self.assertIn(declaration, result)
        self.assertNotIn(b"public import NativeJsonBorrowWrapper", result)
        self.assertNotIn(b"value_as_str_bytes", result)
        for wrong in [wrapper.replace(declaration, b""), wrapper + declaration,
                      wrapper.replace(b".Null = ok none := rfl", b".Bool true = ok none := rfl")]:
            with self.subTest(wrong=wrong), self.assertRaises(ValueError):
                isolated_null_source(wrong)

    def test_mutant_roots_are_independently_fixed_to_the_actual_null_result(self):
        from native_accessor_source_canary_v2 import mutant_witness_roots

        rows = mutant_witness_roots()
        self.assertEqual(len(rows), 2)
        self.assertEqual({x["declaration"] for x in rows}, {
            "Correspondence036.NativeAccessorSourceCanary.mutant_null_is_some",
            "Correspondence036.NativeAccessorSourceCanary.mutant_null_not_none",
        })
        value = "transition_study036.serde_json.value.Value"
        self.assertEqual(rows[0]["expected_type"],
                         f'{value}.impl.as_str {value}.Null = Aeneas.Std.Result.ok (some (Aeneas.Std.toStr ""))')
        self.assertEqual(rows[1]["expected_type"],
                         f"{value}.impl.as_str {value}.Null ≠ Aeneas.Std.Result.ok none")

    def test_compile_failure_alone_is_not_a_semantic_rejection(self):
        from native_accessor_source_canary_v2 import validate_null_rejection

        row = dict(exit_code=1, timed_out=False)
        stdout = ("FixedNull.lean:8:75: error: Tactic `rfl` failed: The left-hand side\n"
                  "  transition_study036.serde_json.value.Value.impl.as_str transition_study036.serde_json.value.Value.Null\n"
                  "is not definitionally equal to the right-hand side\n  ok none\n")
        validate_null_rejection(row, stdout, "")
        for outcome, out, err in [
            ({**row, "exit_code": 0}, stdout, ""),
            ({**row, "exit_code": -9}, stdout, ""),
            ({**row, "timed_out": True}, stdout, ""),
            (row, "unknown module prefix CanonicalRowNames", ""),
            (row, stdout.replace(".Null", ".Bool true"), ""),
            (row, stdout.replace("ok none", 'ok (some (toStr ""))'), ""),
            (row, stdout + "FixedNull.lean:1:0: error: unknown identifier\n", ""),
            (row, stdout, "error: failed to load shared library"),
        ]:
            with self.subTest(out=out, err=err), self.assertRaises(ValueError):
                validate_null_rejection(outcome, out, err)
