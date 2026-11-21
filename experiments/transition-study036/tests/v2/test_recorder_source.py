import json
import sys
import unittest
import uuid
from pathlib import Path
from artifact_io import RootRegistry
from recorder import V2Runner


class RecorderSourceTests(unittest.TestCase):
    def test_default_source_context_is_a_retained_copy(self):
        root = Path(__file__).resolve().parents[4]
        profile = json.loads(
            (root / "experiments/transition-study036/profiles/v2/env.json").read_text()
        )
        private = Path(profile["roots"]["cache"])
        out = private / "bootstrap/controls" / ("source-" + uuid.uuid4().hex)
        row = V2Runner(profile).run([sys.executable, "-c", "pass"], out, wall_seconds=5)
        self.assertEqual(row["exit_code"], 0)
        reference = row["source_subject_ref"]
        self.assertIn(reference["root_id"], ["private", "work"])
        registry = RootRegistry(
            {"private": private, "work": Path(profile["roots"]["artifacts"])}
        )
        self.assertEqual(
            registry.verify(reference).read_bytes(),
            (root / "experiments/transition-study036/recorder.py").read_bytes(),
        )
