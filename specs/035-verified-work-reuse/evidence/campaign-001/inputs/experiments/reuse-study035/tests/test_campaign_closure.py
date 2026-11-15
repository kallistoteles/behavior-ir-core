import sys, tempfile, unittest
from pathlib import Path
from unittest.mock import patch

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
import campaign
import validate


class CampaignClosureTests(unittest.TestCase):
    def test_closed_target_cleanup_preserves_retained_binaries_source_and_evidence(
        self,
    ):
        with tempfile.TemporaryDirectory() as t:
            root = Path(t)
            e = root / "experiment"
            debug = e / "private/target/debug"
            debug.mkdir(parents=True)
            (debug / "temporary").write_bytes(b"owned cache")
            release = e / "retained"
            release.mkdir()
            (release / "worker").write_bytes(b"keep")
            with patch.object(campaign, "E", e):
                r = campaign.cleanup_quality_cache()
            self.assertFalse((e / "private/target").exists())
            self.assertGreater(r["removed_bytes"], 0)
            self.assertEqual((release / "worker").read_bytes(), b"keep")

    def test_cleanup_never_follows_a_symlink(self):
        with tempfile.TemporaryDirectory() as t:
            root = Path(t)
            e = root / "experiment"
            target = e / "private/target"
            target.parent.mkdir(parents=True)
            outside = root / "outside"
            outside.mkdir()
            (outside / "keep").write_text("keep")
            target.symlink_to(outside, target_is_directory=True)
            with patch.object(campaign, "E", e), self.assertRaises(ValueError):
                campaign.cleanup_quality_cache()
            self.assertTrue((outside / "keep").exists())

    def test_independent_replay_covers_all_five_frozen_cells(self):
        self.assertEqual(
            validate.fixed_replay_cases(), [f"growth-D{i}" for i in range(1, 6)]
        )


if __name__ == "__main__":
    unittest.main()
