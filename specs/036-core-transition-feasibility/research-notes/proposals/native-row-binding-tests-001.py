"""Prospective source-binding tests for the next actual generated row proof.
Not selected/executed. No native/runtime admission follows from registration.
"""
import copy
import hashlib
import re
import unittest
from pathlib import Path


class NativeRowBindingTests(unittest.TestCase):
    expected = {
        "Str.Insts.CoreCmpPartialEqStr.eq",
        "Str.Insts.AllocBorrowToOwnedString.to_owned",
        "Str.Insts.Serde_jsonValueIndexIndex.index_into",
        "Shared0T.Insts.Serde_jsonValueIndexIndex.index_into",
        "serde_json.value.Value.Insts.CoreOpsIndexIndexIValue.index",
        "serde_json.value.Value.Insts.CoreCloneClone.clone",
        "serde_json.map.MapStringValue.impl.new",
        "serde_json.map.MapStringValue.impl.insert",
    }

    def fixture(self):
        from native_row_bindings_v2 import ROW_PRIMITIVES
        raw = Path('/var/tmp/behavior-ir-core036-v2/w001/disposable/native-accessor-canary-a0492/positive-a0494/generated/FunsExternal_Template.lean').read_text()
        rows = []
        for lean, specification in ROW_PRIMITIVES.items():
            matches = list(re.finditer(r'^/-- \[[\s\S]*?(?=\n\n|\Z)', raw, re.M))
            selected = [m.group() + ('\n\n' if raw[m.end():m.end()+2] == '\n\n' else '')
                        for m in matches if re.search(r'\baxiom\s+'+re.escape(lean)+r'(?=\s|:)', m.group())]
            self.assertEqual(len(selected), 1)
            block = selected[0].encode()
            rows.append(dict(lean=lean, rust=specification['rust'], block_bytes=len(block),
                             block_sha256=hashlib.sha256(block).hexdigest()))
        return raw, rows

    def test_exactly_the_eight_reachable_nodes_are_registered(self):
        from native_row_bindings_v2 import ROW_PRIMITIVES, bind_row_primitives
        self.assertEqual(set(ROW_PRIMITIVES), self.expected)
        raw, rows = self.fixture()
        remaining, definitions = bind_row_primitives(raw, rows)
        for lean in self.expected:
            self.assertIsNone(re.search(r'\baxiom\s+'+re.escape(lean)+r'(?=\s|:)', remaining))
            self.assertIn('def '+lean, definitions)
        self.assertIn('axiom Str.Insts.Serde_jsonValueIndexIndex.index_into_mut', remaining)
        self.assertIn('axiom Shared0T.Insts.Serde_jsonValueIndexIndex.index_or_insert', remaining)
        self.assertNotIn('Value.impl.as_str', definitions)
        self.assertNotRegex(definitions, r'^\s*(axiom|sorry)\b')

    def test_changed_source_signature_duplicates_and_unreviewed_nodes_reject(self):
        from native_row_bindings_v2 import bind_row_primitives
        raw, rows = self.fixture()
        for altered in [raw.replace('Str → Str → Result Bool', 'Str → Str → Result Unit'),
                        raw.replace('Source:', 'AlteredSource:'), raw + raw]:
            with self.subTest(altered=altered), self.assertRaises(ValueError):
                bind_row_primitives(altered, rows)
        for altered in [rows[:-1], rows + rows[:1],
                        [{**row, 'block_sha256': '0' * 64} for row in rows],
                        [{**row, 'lean': row['lean'] + '.other'} for row in rows],
                        [{**row, 'extra': True} for row in rows]]:
            with self.subTest(altered=altered), self.assertRaises(ValueError):
                bind_row_primitives(raw, altered)
