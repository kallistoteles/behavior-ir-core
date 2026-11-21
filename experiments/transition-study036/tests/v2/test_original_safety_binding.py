import copy
import json
import tempfile
import unittest
from pathlib import Path

from environment import check_original_safety_v2


class OriginalSafetyBindingTests(unittest.TestCase):
    def test_real_closed_runtime_is_bound_and_changed_refs_are_rejected(self):
        root = Path(__file__).resolve().parents[4]
        binding = (
            root / "experiments/transition-study036/original-safety-binding-v2.json"
        )
        result = check_original_safety_v2(binding)
        self.assertEqual(result["issues"], [])
        original = json.loads(binding.read_text())
        for field in (
            "runtime_ref",
            "realization_ref",
            "receipt_ref",
            "realization_receipt_ref",
            "profile_ref",
        ):
            with self.subTest(field=field), tempfile.TemporaryDirectory() as d:
                bad = copy.deepcopy(original)
                bad[field]["sha256"] = "0" * 64
                path = Path(d) / "binding.json"
                path.write_text(json.dumps(bad))
                with self.assertRaises(ValueError):
                    check_original_safety_v2(path)
