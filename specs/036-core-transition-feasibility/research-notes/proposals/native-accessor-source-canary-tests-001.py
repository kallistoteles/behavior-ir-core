"""Prospective true owning-source canary tests; not executed/admitted."""
import unittest

OWNER_METHOD = b"""    pub fn as_str(&self) -> Option<&str> {
        match self {
            Value::String(s) => Some(s),
            _ => None,
        }
    }"""

class OwningAccessorCanaryTests(unittest.TestCase):
    def test_only_the_actual_null_arm_changes_and_string_branch_survives(self):
        from native_accessor_source_canary_v2 import mutate_null_accessor
        source = b"// retained owner prefix\n" + OWNER_METHOD + b"\n// retained suffix\n"
        changed = mutate_null_accessor(source)
        expected = source.replace(
            b"            _ => None,",
            b'            Value::Null => Some(""), _ => None,',
            1,
        )
        self.assertEqual(changed, expected)
        self.assertEqual(changed.count(b"Value::String(s) => Some(s),"), 1)
        self.assertEqual(changed.count(b"\n"), source.count(b"\n"))
        self.assertNotEqual(changed, source)

    def test_unknown_duplicate_or_already_changed_owner_is_not_a_canary(self):
        from native_accessor_source_canary_v2 import mutate_null_accessor
        for source in [
            b"", OWNER_METHOD+OWNER_METHOD,
            OWNER_METHOD.replace(b"Some(s)", b"None"),
            OWNER_METHOD.replace(b"_ => None,", b'Value::Null => Some(""), _ => None,'),
            OWNER_METHOD.decode(),
        ]:
            with self.subTest(source=source), self.assertRaises(ValueError):
                mutate_null_accessor(source)

    def test_real_baseline_selectors_are_preserved_except_owned_paths(self):
        from native_accessor_source_canary_v2 import replay_extract_argv
        from pathlib import Path
        baseline = [
            "/tool/charon", "cargo", "--preset", "aeneas", "--sysroot", "default",
            "--start-from", "crate::reference::state_fact_row",
            "--opaque", "crate::serialization", "--include", "serde_json::value::_::as_str",
            "--dest-file", "/private/native-extraction/a0486/canonical_row.llbc", "--",
            "--locked", "--offline", "--manifest-path",
            "/private/native-extraction/a0486/worker/Cargo.toml", "--lib", "--features", "worker",
        ]
        old = Path("/private/native-extraction/a0486")
        case = Path("/private/disposable/native-accessor-canary-a9999")
        actual = replay_extract_argv(baseline, old, case, "positive")
        expected = list(baseline)
        expected[expected.index("--manifest-path")+1] = str(case/"worker/Cargo.toml")
        expected[expected.index("--dest-file")+1] = str(case/"positive/canonical_row.llbc")
        self.assertEqual(actual, expected)
        for wrong in [
            [x if x != "crate::reference::state_fact_row" else "crate::other" for x in baseline],
            baseline+["--include", "serde_json"],
            [x for x in baseline if x != "--offline"],
            baseline+["--manifest-path", "/other/Cargo.toml"],
        ]:
            with self.subTest(wrong=wrong), self.assertRaises(ValueError):
                replay_extract_argv(wrong, old, case, "positive")
