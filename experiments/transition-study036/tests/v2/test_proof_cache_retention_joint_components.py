"""Only closed proof compilation intermediates are additional reclaim targets."""

from pathlib import Path
import unittest


class JointComponentCacheRetentionTests(unittest.TestCase):
    def test_fixed_batch_excludes_extraction_and_retained_sources(self):
        from proof_cache_retention_joint_v2 import PARENTS
        from proof_cache_retention_v2 import _targets

        self.assertEqual(len(PARENTS), 23)
        for attempt in PARENTS:
            self.assertEqual(
                _targets(Path("/synthetic/private"), attempt, PARENTS),
                [Path("/synthetic/private/ground-lean-probe") / attempt / "compiled"],
            )
        for attempt in [
            "a0513",
            "a0514",
            "a0520",
            "a0523",
            "a0526",
            "a0114",
            "a0292",
            "a0353",
        ]:
            with self.assertRaises(ValueError):
                _targets(Path("/synthetic/private"), attempt, PARENTS)

    def test_archive_stays_out_of_nearly_full_temporary_root(self):
        from proof_cache_retention_joint_v2 import PARENTS
        from proof_cache_retention_v2 import archive_destination

        private = Path("/synthetic/private")
        out = private / "native-cache-retention/a0527"
        self.assertEqual(
            archive_destination(private, out, "a0527", PARENTS),
            out / "compiled-caches.tar.gz",
        )

    def test_full_component_metadata_rejects_protected_prefix_before_io(self):
        from proof_cache_retention_joint_v2 import run_retention

        class NeverRead:
            def read(self, _):
                raise AssertionError("read before protected guard")

        with self.assertRaisesRegex(ValueError, "ProtectedArtifact"):
            run_retention(
                NeverRead(),
                dict(path="synthetic/parameters.bin/no"),
                {},
                Path("/unused"),
            )
