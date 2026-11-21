import subprocess
import sys
import unittest
import uuid
from pathlib import Path
from artifact_io import RootRegistry
from owned_cleanup import OwnedCleanup

PRIVATE = Path("/var/tmp/behavior-ir-core036-v2/w001")


class CleanupV2Tests(unittest.TestCase):
    def setup_case(self):
        base = PRIVATE / "disposable" / ("cleanup-" + uuid.uuid4().hex)
        base.mkdir(parents=True)
        target = base / "target"
        target.mkdir()
        (target / "binary").write_bytes(b"actual-binary")
        retained = PRIVATE / "retained" / base.name
        retained.mkdir(parents=True)
        roots = RootRegistry({"retained": retained})
        ref = roots.write("retained", "binary", b"actual-binary")
        cleaner = OwnedCleanup(PRIVATE)
        return base, target, roots, ref, cleaner

    def test_closed_registration_can_be_reused_only_for_same_exact_subject(self):
        base, target, roots, ref, cleaner = self.setup_case()
        first = cleaner.register(target, retained_refs=[ref], registry=roots)
        self.assertEqual(
            first,
            OwnedCleanup(PRIVATE).register(target, retained_refs=[ref], registry=roots),
        )
        roots.roots["retained"].joinpath("binary").write_bytes(b"changed")
        with self.assertRaises(ValueError):
            OwnedCleanup(PRIVATE).register(target, retained_refs=[ref], registry=roots)

    def test_retained_first_then_actual_closed_cleanup(self):
        base, target, roots, ref, cleaner = self.setup_case()
        cleaner.register(target, retained_refs=[ref], registry=roots)
        result = cleaner.dispose(target, paced=True)
        self.assertFalse(target.exists())
        self.assertGreaterEqual(result["wall_ns"], 0)
        self.assertEqual(result["retained_bytes_verified"], 13)

    def test_missing_retention_root_escape_and_symlink_refused(self):
        base, target, roots, ref, cleaner = self.setup_case()
        for path in [
            PRIVATE,
            Path(
                "/data/repos/behavior-ir-core-033/experiments/transition-study036/private"
            ),
            base / "../escape",
        ]:
            with self.assertRaises(ValueError):
                cleaner.register(path, retained_refs=[ref], registry=roots)
        with self.assertRaises(ValueError):
            cleaner.register(target, retained_refs=[], registry=roots)
        (base / "alias").symlink_to(target, target_is_directory=True)
        with self.assertRaises(ValueError):
            cleaner.register(base / "alias", retained_refs=[ref], registry=roots)
        cleaner.register(target, retained_refs=[ref], registry=roots)
        roots.roots["retained"].joinpath("binary").write_bytes(b"changed")
        with self.assertRaises(ValueError):
            cleaner.dispose(target)
        self.assertTrue(target.exists())

    def test_real_live_cwd_refused_until_child_closes(self):
        base, target, roots, ref, cleaner = self.setup_case()
        cleaner.register(target, retained_refs=[ref], registry=roots)
        # This light test child stays in the supervised test process tree.
        child = subprocess.Popen(
            [sys.executable, "-c", "import time;time.sleep(10)"], cwd=target
        )
        try:
            with self.assertRaises(ValueError):
                cleaner.dispose(target)
            self.assertTrue(target.exists())
        finally:
            child.terminate()
            child.wait(timeout=2)
        cleaner.dispose(target)
        self.assertFalse(target.exists())
