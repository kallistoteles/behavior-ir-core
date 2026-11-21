import copy
import json
import tempfile
import unittest
from pathlib import Path

from environment import check_prepared_analysis_v2

E = Path(__file__).resolve().parents[2]


class AnalysisBindingTests(unittest.TestCase):
    def test_actual_closed_helper_and_tool_tuple_are_rechecked_without_native_authority(
        self,
    ):
        result = check_prepared_analysis_v2(E / "analysis-environment-binding-v2.json")
        self.assertEqual(result["helper_status"], "freshly_kernel_checked")
        self.assertEqual(result["native_general_correspondence"], "unestablished")
        self.assertFalse(result["feature_complete"])

    def test_wrong_tuple_fabricated_flags_missing_receipts_and_changed_refs_fail(self):
        original = json.loads((E / "analysis-environment-binding-v2.json").read_text())
        for mutation in ("tuple", "flag", "receipt", "bytes"):
            binding = copy.deepcopy(original)
            if mutation == "tuple":
                binding["runtime_tuple"]["analysis_lean"] = "4.30.0"
            elif mutation == "flag":
                binding["native_verified"] = True
            elif mutation == "receipt":
                binding["receipts"] = []
            else:
                binding["canary_copy_ref"]["sha256"] = "0" * 64
            with (
                self.subTest(mutation=mutation),
                tempfile.TemporaryDirectory() as folder,
            ):
                path = Path(folder) / "binding.json"
                path.write_text(json.dumps(binding))
                with self.assertRaises(ValueError):
                    check_prepared_analysis_v2(path)


if __name__ == "__main__":
    unittest.main()
