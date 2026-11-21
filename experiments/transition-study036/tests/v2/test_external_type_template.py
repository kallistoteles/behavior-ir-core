"""Keep no-JSON-map components distinct from malformed JSON-map templates."""

import hashlib
import json
import unittest
from pathlib import Path

from ground_lean_probe_v2 import complete_external_types_v2
from native_lean_check_v2 import MAP_AXIOM, MAP_MODEL


class ExternalTypeTemplateTests(unittest.TestCase):
    def actual_template(self, attempt):
        root = Path("/var/tmp/behavior-ir-core036-v2/w001/native-extraction") / attempt
        result = json.loads((root / "result.json").read_text())
        row = next(
            item
            for item in result["generated"]
            if item["path"] == "generated/TypesExternal_Template.lean"
        )
        raw = (root / row["path"]).read_bytes()
        self.assertEqual(len(raw), row["bytes"])
        self.assertEqual(hashlib.sha256(raw).hexdigest(), row["sha256"])
        return raw.decode()

    def test_real_protocol_map_and_real_interval_absence_are_distinct(self):
        protocol = self.actual_template("a0237")
        intervals = self.actual_template("a0250")
        self.assertEqual(protocol.count(MAP_AXIOM), 1)
        self.assertNotIn("serde_json.map.Map", intervals)
        completed = complete_external_types_v2(protocol, "Protocol")
        self.assertIn(MAP_MODEL, completed)
        self.assertNotIn(MAP_AXIOM, completed)
        completed = complete_external_types_v2(intervals, "Intervals")
        self.assertNotIn("serde_json.map.Map", completed)
        self.assertIn("public import Intervals.RuntimeNames\n", completed)
        self.assertIn("public meta import Intervals.ArrayLiteralProofs\n", completed)

    def test_malformed_duplicate_import_and_prefix_are_rejected(self):
        protocol = self.actual_template("a0237")
        bad_templates = [
            protocol.replace(MAP_AXIOM, MAP_AXIOM + "\n" + MAP_AXIOM),
            protocol.replace(MAP_AXIOM, MAP_AXIOM.replace(": Type", ": Prop")),
            protocol.replace("public import Aeneas\n", ""),
            protocol.replace("public import Aeneas\n", "public import Aeneas\n" * 2),
        ]
        for template in bad_templates:
            with self.subTest(template=template[:80]), self.assertRaises(ValueError):
                complete_external_types_v2(template, "Protocol")
        for prefix in ["../bad", "Intervals\naxiom forged : False", ""]:
            with self.subTest(prefix=prefix), self.assertRaises(ValueError):
                complete_external_types_v2(protocol, prefix)
