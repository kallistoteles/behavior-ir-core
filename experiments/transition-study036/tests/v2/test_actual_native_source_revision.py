"""Actual source-only adoption and rejected real unclosed predecessor.

No native correspondence, whole quality or accepted timing is implied.
"""

import json
from pathlib import Path
import tempfile
import unittest


class ActualNativeSourceRevisionTests(unittest.TestCase):
    def paths(self):
        root = Path(__file__).resolve().parents[4]
        return root, root / "specs/036-core-transition-feasibility/inputs/v2"

    def test_real_closed_export_adopts_only_candidate_sources(self):
        from environment import check_prepared_native_v2
        from artifact_io import read

        root, inputs = self.paths()
        old = check_prepared_native_v2(
            root / "experiments/transition-study036/toolchain-v2.json"
        )
        selected = check_prepared_native_v2(
            inputs / "native-core-span-binding-001.json"
        )
        self.assertEqual(selected["tools"], old["tools"])
        self.assertEqual(
            selected["sources"]["core-original"], old["sources"]["core-original"]
        )
        entry = selected["sources"]["core-reuse"]
        self.assertEqual(
            entry["path"],
            "/var/tmp/behavior-ir-core036-v2/w001/sources/core-source-inline-export-002/core-reuse",
        )
        self.assertEqual(entry["files"], 1637)
        self.assertIs(entry["original"], False)
        manifest = read(Path(entry["path"]) / "subject-inventory-v2.json")
        self.assertTrue(
            manifest["patches"][-1]["path"].endswith(
                "/v2/core-phase-spans-inline.patch"
            )
        )

    def test_actual_storage_mismatch_cannot_adopt_the_predecessor(self):
        from environment import check_prepared_native_v2
        from controller_v2 import artifact_context_for, ref_for

        _, inputs = self.paths()
        registry, _ = artifact_context_for("w001")
        binding = json.loads(
            (inputs / "native-core-span-binding-001.json").read_bytes()
        )
        binding["source_revision_ref"] = ref_for(
            inputs / "native-source-revision-unclosed-control-001.json", registry
        )
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / "binding.json"
            path.write_text(json.dumps(binding))
            with self.assertRaisesRegex(
                ValueError, "NativeSourceRevisionNotClosedAndAccounted"
            ):
                check_prepared_native_v2(path)
