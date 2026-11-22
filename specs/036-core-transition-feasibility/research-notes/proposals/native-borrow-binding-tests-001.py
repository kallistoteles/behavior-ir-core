"""Prospective source-bound multiline primitive binding controls."""
import hashlib
import unittest

RUST = "alloc::string::{core::ops::deref::Deref<alloc::string::String, str>}::deref"
LEAN = "alloc.string.String.Insts.CoreOpsDerefDerefStr.deref"
BLOCK = ("/-- [native dereference] -/\n"
         "@[rust_fun\n  \"" + RUST + "\"]\n"
         "axiom " + LEAN + "\n  : String → Result Str\n\n")
TAIL = '/-- [unresolved] -/\n@[rust_fun "other"] axiom unresolved : String → Result String\n\n'

class NativeBorrowBindingTests(unittest.TestCase):
    def binding(self):
        return dict(rust=RUST, lean=LEAN, block_bytes=len(BLOCK.encode()),
                    block_sha256=hashlib.sha256(BLOCK.encode()).hexdigest())

    def test_multiline_binding_preserves_every_unselected_byte(self):
        from native_borrow_bindings_v2 import bind_borrow_primitives
        external = "module\npublic import Aeneas\n\n" + BLOCK + TAIL
        remaining, definitions = bind_borrow_primitives(external, [self.binding()])
        self.assertEqual(remaining, "module\npublic import Aeneas\n\n" + TAIL)
        self.assertIn("def " + LEAN + " : String → Result Str :=", definitions)
        self.assertIn("Correspondence036.NativeStringBorrow.borrowResult", definitions)
        self.assertNotIn("axiom", definitions)

    def test_unknown_signature_hash_duplicate_or_extra_node_rejects(self):
        from native_borrow_bindings_v2 import bind_borrow_primitives
        external = "module\n\n" + BLOCK + TAIL
        cases = [
            (external, [{**self.binding(), "block_sha256": "0"*64}]),
            (external, [{**self.binding(), "lean": "unresolved"}]),
            (external, [self.binding(), self.binding()]),
            (external+BLOCK, [self.binding()]),
            (external.replace("String → Result Str", "String → Result String"),
             [self.binding()]),
            (external.replace("  : String", "  : Bool"), [self.binding()]),
            (external.replace("axiom "+LEAN, "def "+LEAN), [self.binding()]),
            ("module\n\n"+TAIL, [self.binding()]),
        ]
        for source, bindings in cases:
            with self.subTest(source=source, bindings=bindings), self.assertRaises(ValueError):
                bind_borrow_primitives(source, bindings)
