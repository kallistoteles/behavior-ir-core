"""Exact-byte component conservation and bounded lexical guard fixtures."""
import hashlib
import unittest


def fixture(names):
    header = b"module\npublic import Aeneas\n@[expose] public section\nnamespace transition_study036\n"
    rows = [b"/-- Source fixture. -/\ndef " + name.encode() + b" : Nat := 0\n\n" for name in names]
    return header + b"".join(rows) + b"/-- Excluded following boundary. -/\ndef excluded : Nat := 1\n\nend transition_study036\n"


class NativeProjectionComponentTests(unittest.TestCase):
    def test_exact_selected_bytes_names_and_header_are_conserved(self):
        from native_projection_component_v2 import component, NAMES, NAMESPACE
        source = fixture(NAMES)
        result = component(source, hashlib.sha256(source).hexdigest())
        self.assertEqual([row["name"] for row in result["declarations"]], list(NAMES))
        self.assertEqual(result["header_bytes"], source.index(NAMESPACE)+len(NAMESPACE))
        for row in result["declarations"]:
            original = source[row["start"]:row["end"]]
            self.assertIn(original, result["component"])
            self.assertEqual(hashlib.sha256(original).hexdigest(), row["sha256"])
            self.assertEqual(len(original),row["bytes"])
        self.assertNotIn(b"def excluded", result["component"])
        self.assertEqual(hashlib.sha256(result["component"]).hexdigest(), result["component_sha256"])

    def test_source_hash_name_missing_and_duplicate_reject(self):
        from native_projection_component_v2 import component, NAMES
        source = fixture(NAMES)
        with self.assertRaisesRegex(ValueError, "NativeProjectionComponentSource"):
            component(source, "0"*64)
        for names in (NAMES[:-1], NAMES + (NAMES[0],)):
            raw = fixture(names)
            with self.assertRaisesRegex(ValueError,"NativeProjectionComponentDeclaration"):
                component(raw, hashlib.sha256(raw).hexdigest())

    def test_extra_declaration_and_command_cannot_hide_in_selected_span(self):
        from native_projection_component_v2 import component, NAMES
        source = fixture(NAMES)
        needle = b"def " + NAMES[-1].encode() + b" : Nat := 0\n"
        for payload, error in [(b"def injected : Nat := 4\n", "NativeProjectionComponentLexicalInventory"), (b"run_cmd pure ()\n", "NativeProjectionComponentUnexpectedCommand")]:
            raw = source.replace(needle,needle+payload)
            with self.assertRaisesRegex(ValueError,error):
                component(raw,hashlib.sha256(raw).hexdigest())

    def test_namespace_rejects_incomplete_or_nested_component(self):
        from native_projection_component_v2 import component, NAMES
        source = fixture(NAMES)
        for raw in (source.removesuffix(b"end transition_study036\n"), source.replace(b"def "+NAMES[0].encode(), b"namespace injected\ndef "+NAMES[0].encode())):
            with self.assertRaisesRegex(ValueError,"NativeProjectionComponentNamespace|NativeProjectionComponentUnexpectedCommand"):
                component(raw,hashlib.sha256(raw).hexdigest())
