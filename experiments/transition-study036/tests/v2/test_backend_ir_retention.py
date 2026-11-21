"""Only the exact closed, current backend's generated IR may be archived."""

import copy
import json
from pathlib import Path
import unittest
import tempfile
import tarfile


class BackendIrRetentionTests(unittest.TestCase):
    def test_lossless_archive_keeps_generated_inputs_and_detects_corruption(self):
        from backend_ir_retention_v2 import (
            _archive,
            _inventory,
            _verify_archive,
            _check_inventory,
        )

        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            source = root / "ir"
            source.mkdir()
            (source / "Module.c").write_bytes(b"generated C\n" * 20)
            (source / "Module.c.o").write_bytes(bytes(range(256)) * 5)
            rows = _inventory(source, maximum_files=10, maximum_bytes=4096)
            saved = root / "ir.tar.gz"
            _archive(source, rows, saved)
            _verify_archive(saved, rows)
            _check_inventory(source, rows)
            altered = copy.deepcopy(rows)
            altered[0]["sha256"] = "0" * 64
            with self.assertRaises(ValueError):
                _verify_archive(saved, altered)
            saved.write_bytes(b"corrupt archive")
            with self.assertRaises((OSError, ValueError, tarfile.TarError)):
                _verify_archive(saved, rows)

    def test_generated_tree_links_protected_names_and_growth_are_rejected(self):
        from backend_ir_retention_v2 import _inventory

        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            source = root / "ir"
            source.mkdir()
            (source / "Module.c").write_bytes(b"source")
            with self.assertRaises(ValueError):
                _inventory(source, maximum_files=1, maximum_bytes=1)
            (source / "linked.c").symlink_to(source / "Module.c")
            with self.assertRaises(ValueError):
                _inventory(source, maximum_files=10, maximum_bytes=4096)
            (source / "linked.c").unlink()
            (source / "parameters.bin").write_bytes(
                b"test fixture; never a protected real file"
            )
            with self.assertRaises(ValueError):
                _inventory(source, maximum_files=10, maximum_bytes=4096)

    def test_exact_backend_cache_context_and_reject_changed_authority(self):
        from backend_ir_retention_v2 import retention_target

        repository = Path(__file__).resolve().parents[4]
        private = Path("/var/tmp/behavior-ir-core036-v2/w001")
        cp = json.loads(
            (
                repository
                / "specs/036-core-transition-feasibility/evidence/v2/w001/attempts/a0060/checkpoint.json"
            ).read_text()
        )
        path = private / "analysis-backend-cache/a0060/result.json"
        cache = json.loads(path.read_text())
        self.assertEqual(
            retention_target(cp, cache, path, private),
            private / "analysis-backend-build/a0058/lean/.lake/build/ir",
        )
        for key, value in (
            ("backend", str(private / "sources")),
            ("missing_requested_roots", ["Missing"]),
            ("source_subject_ref", {}),
            ("format", "wrong"),
        ):
            changed = copy.deepcopy(cache)
            changed[key] = value
            with self.subTest(key=key), self.assertRaises(ValueError):
                retention_target(cp, changed, path, private)
        for key, value in (
            ("attempt_id", "a0058"),
            ("stage_outcome", "failed"),
            ("source_validation_error", "changed"),
        ):
            changed = copy.deepcopy(cp)
            changed[key] = value
            with self.subTest(key=key), self.assertRaises(ValueError):
                retention_target(changed, cache, path, private)
        with self.assertRaises(ValueError):
            retention_target(cp, cache, private / "elsewhere.json", private)

    def test_closed_publisher_recheck_selects_only_old_generated_ir(self):
        from backend_ir_retention_v2 import retention_target

        repository = Path(__file__).resolve().parents[4]
        private = Path("/var/tmp/behavior-ir-core036-v2/w001")
        cp = json.loads(
            (
                repository
                / "specs/036-core-transition-feasibility/evidence/v2/w001/attempts/a0055/checkpoint.json"
            ).read_text()
        )
        path = private / "analysis-backend-recheck/a0055/result.json"
        cache = json.loads(path.read_text())
        self.assertEqual(
            retention_target(cp, cache, path, private),
            private / "analysis-backend/a0054/lean/.lake/build/ir",
        )
        for key, value in (
            ("backend", str(private / "sources")),
            ("format", "wrong"),
            ("source_subject_ref", {}),
            ("publisher_backend_inventory_sha256", "0" * 64),
        ):
            changed = copy.deepcopy(cache)
            changed[key] = value
            with self.subTest(key=key), self.assertRaises(ValueError):
                retention_target(cp, changed, path, private)
        for key, value in (
            ("attempt_id", "a0054"),
            ("stage_outcome", "resource_stopped"),
            ("source_validation_error", "changed"),
            ("outcome", {"operational": "declared"}),
        ):
            changed = copy.deepcopy(cp)
            changed[key] = value
            with self.subTest(key=key), self.assertRaises(ValueError):
                retention_target(changed, cache, path, private)
        with self.assertRaises(ValueError):
            retention_target(cp, cache, private / "elsewhere.json", private)
