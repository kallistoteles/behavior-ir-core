"""Exact executable retention must complete before any cache reclamation."""

import hashlib
from pathlib import Path
import tempfile
import unittest


class NativeCacheRetentionTests(unittest.TestCase):
    def test_closed_351_tool_selects_only_its_build_intermediates(self):
        from native_cache_retention_v2 import retention_target
        import copy
        import json

        repository = Path(__file__).resolve().parents[4]
        private = Path("/var/tmp/behavior-ir-core036-v2/w001")
        cp = json.loads(
            (
                repository
                / "specs/036-core-transition-feasibility/evidence/v2/w001/attempts/a0351/checkpoint.json"
            ).read_text()
        )
        path = private / "nonpos-translator/a0351/result.json"
        result = json.loads(path.read_text())
        target = (
            private / "disposable/frontend-translator-a0351/workspace/aeneas/src/_build"
        )
        self.assertEqual(retention_target(cp, result, path, private), target)
        for field, value in [
            ("project", str(private / "sources")),
            ("executable", str(target / "default/main.exe")),
            ("source_subject_ref", {}),
            ("new_translator_compiled", False),
            ("compiled_sources_match_declared_repair", False),
            ("commands", []),
        ]:
            bad = copy.deepcopy(result)
            bad[field] = value
            with self.subTest(field=field), self.assertRaises(ValueError):
                retention_target(cp, bad, path, private)
        bad = copy.deepcopy(result)
        bad["commands"][0]["exit_code"] = False
        with self.assertRaises(ValueError):
            retention_target(cp, bad, path, private)

    def test_closed_363_dictionary_tool_selects_only_owned_intermediates(self):
        from native_cache_retention_v2 import retention_target
        import copy
        import json

        repository = Path(__file__).resolve().parents[4]
        private = Path("/var/tmp/behavior-ir-core036-v2/w001")
        cp = json.loads(
            (
                repository
                / "specs/036-core-transition-feasibility/evidence/v2/w001/attempts/a0363/checkpoint.json"
            ).read_text()
        )
        path = private / "nonpos-translator/a0363/result.json"
        native = json.loads(path.read_text())
        target = (
            private / "disposable/frontend-translator-a0363/workspace/aeneas/src/_build"
        )
        self.assertEqual(retention_target(cp, native, path, private), target)
        for field, value in [
            ("project", str(private / "sources")),
            ("executable", str(target / "default/main.exe")),
            ("executable_sha256", "0" * 64),
            ("source_subject_ref", {}),
            ("compiled_sources_match_declared_repair", False),
            ("original_sources_unchanged", False),
            ("repaired_sources", {}),
            ("commands", []),
        ]:
            bad = copy.deepcopy(native)
            bad[field] = value
            with self.subTest(field=field), self.assertRaises(ValueError):
                retention_target(cp, bad, path, private)
        bad = copy.deepcopy(native)
        bad["commands"][0]["exit_code"] = False
        with self.assertRaises(ValueError):
            retention_target(cp, bad, path, private)

    def test_closed_372_metadata_tool_selects_only_its_owned_build(self):
        from native_cache_retention_v2 import retention_target
        import copy
        import json

        repository = Path(__file__).resolve().parents[4]
        private = Path("/var/tmp/behavior-ir-core036-v2/w001")
        cp = json.loads(
            (
                repository
                / "specs/036-core-transition-feasibility/evidence/v2/w001/attempts/a0372/checkpoint.json"
            ).read_text()
        )
        path = private / "nonpos-translator/a0372/result.json"
        native = json.loads(path.read_text())
        target = (
            private / "disposable/frontend-translator-a0372/workspace/aeneas/src/_build"
        )
        self.assertEqual(retention_target(cp, native, path, private), target)
        for field, value in [
            ("project", str(private / "sources")),
            ("executable", str(target / "default/main.exe")),
            ("executable_sha256", "0" * 64),
            ("source_subject_ref", {}),
            ("repaired_sources", {}),
            ("commands", []),
        ]:
            bad = copy.deepcopy(native)
            bad[field] = value
            with self.subTest(field=field), self.assertRaises(ValueError):
                retention_target(cp, bad, path, private)
        bad = copy.deepcopy(native)
        bad["commands"][0]["exit_code"] = False
        with self.assertRaises(ValueError):
            retention_target(cp, bad, path, private)

    def test_closed_383_unit_tool_selects_only_its_owned_build(self):
        from native_cache_retention_v2 import retention_target
        import copy
        import json

        repository = Path(__file__).resolve().parents[4]
        private = Path("/var/tmp/behavior-ir-core036-v2/w001")
        cp = json.loads(
            (
                repository
                / "specs/036-core-transition-feasibility/evidence/v2/w001/attempts/a0383/checkpoint.json"
            ).read_text()
        )
        path = private / "nonpos-translator/a0383/result.json"
        native = json.loads(path.read_text())
        target = (
            private / "disposable/frontend-translator-a0383/workspace/aeneas/src/_build"
        )
        self.assertEqual(retention_target(cp, native, path, private), target)
        for field, value in [
            ("project", str(private / "sources")),
            ("executable", str(target / "default/main.exe")),
            ("executable_sha256", "0" * 64),
            ("source_subject_ref", {}),
            ("repaired_sources", {}),
            ("commands", []),
        ]:
            bad = copy.deepcopy(native)
            bad[field] = value
            with self.subTest(field=field), self.assertRaises(ValueError):
                retention_target(cp, bad, path, private)
        bad = copy.deepcopy(native)
        bad["commands"][0]["exit_code"] = False
        with self.assertRaises(ValueError):
            retention_target(cp, bad, path, private)

    def test_closed_395_read_receiver_tool_selects_only_its_owned_build(self):
        from native_cache_retention_v2 import retention_target
        import copy
        import json

        repository = Path(__file__).resolve().parents[4]
        private = Path("/var/tmp/behavior-ir-core036-v2/w001")
        cp = json.loads(
            (
                repository
                / "specs/036-core-transition-feasibility/evidence/v2/w001/attempts/a0395/checkpoint.json"
            ).read_text()
        )
        path = private / "nonpos-translator/a0395/result.json"
        native = json.loads(path.read_text())
        target = (
            private / "disposable/frontend-translator-a0395/workspace/aeneas/src/_build"
        )
        self.assertEqual(retention_target(cp, native, path, private), target)
        for field, value in [
            ("project", str(private / "sources")),
            ("executable", str(target / "default/main.exe")),
            ("executable_sha256", "0" * 64),
            ("source_subject_ref", {}),
            ("repaired_sources", {}),
            ("commands", []),
        ]:
            bad = copy.deepcopy(native)
            bad[field] = value
            with self.subTest(field=field), self.assertRaises(ValueError):
                retention_target(cp, bad, path, private)
        bad = copy.deepcopy(native)
        bad["commands"][0]["exit_code"] = False
        with self.assertRaises(ValueError):
            retention_target(cp, bad, path, private)

    def test_closed_406_buffer_tool_selects_only_its_owned_build(self):
        from native_cache_retention_v2 import retention_target
        import copy
        import json

        repository = Path(__file__).resolve().parents[4]
        private = Path("/var/tmp/behavior-ir-core036-v2/w001")
        cp = json.loads(
            (
                repository
                / "specs/036-core-transition-feasibility/evidence/v2/w001/attempts/a0406/checkpoint.json"
            ).read_text()
        )
        path = private / "nonpos-translator/a0406/result.json"
        native = json.loads(path.read_text())
        target = (
            private / "disposable/frontend-translator-a0406/workspace/aeneas/src/_build"
        )
        self.assertEqual(retention_target(cp, native, path, private), target)
        for field, value in [
            ("project", str(private / "sources")),
            ("executable", str(target / "default/main.exe")),
            ("executable_sha256", "0" * 64),
            ("source_subject_ref", {}),
            ("repaired_sources", {}),
            ("commands", []),
        ]:
            bad = copy.deepcopy(native)
            bad[field] = value
            with self.subTest(field=field), self.assertRaises(ValueError):
                retention_target(cp, bad, path, private)
        bad = copy.deepcopy(native)
        bad["commands"][0]["exit_code"] = False
        with self.assertRaises(ValueError):
            retention_target(cp, bad, path, private)

    def test_closed_417_never_tool_selects_only_its_owned_build(self):
        from native_cache_retention_v2 import retention_target
        import copy
        import json

        repository = Path(__file__).resolve().parents[4]
        private = Path("/var/tmp/behavior-ir-core036-v2/w001")
        cp = json.loads(
            (
                repository
                / "specs/036-core-transition-feasibility/evidence/v2/w001/attempts/a0417/checkpoint.json"
            ).read_text()
        )
        path = private / "nonpos-translator/a0417/result.json"
        native = json.loads(path.read_text())
        target = (
            private / "disposable/frontend-translator-a0417/workspace/aeneas/src/_build"
        )
        self.assertEqual(retention_target(cp, native, path, private), target)
        for field, value in [
            ("project", str(private / "sources")),
            ("executable", str(target / "default/main.exe")),
            ("executable_sha256", "0" * 64),
            ("source_subject_ref", {}),
            ("repaired_sources", {}),
            ("commands", []),
        ]:
            bad = copy.deepcopy(native)
            bad[field] = value
            with self.subTest(field=field), self.assertRaises(ValueError):
                retention_target(cp, bad, path, private)
        bad = copy.deepcopy(native)
        bad["commands"][0]["exit_code"] = False
        with self.assertRaises(ValueError):
            retention_target(cp, bad, path, private)

    def test_closed_failed_135_selects_only_its_observed_analysis_target(self):
        from native_cache_retention_v2 import retention_target
        import copy
        import json

        repository = Path(__file__).resolve().parents[4]
        private = Path("/var/tmp/behavior-ir-core036-v2/w001")
        cp = json.loads(
            (
                repository
                / "specs/036-core-transition-feasibility/evidence/v2/w001/attempts/a0135/checkpoint.json"
            ).read_text()
        )
        path = private / "native-extraction/a0135/result.json"
        result = json.loads(path.read_text())
        self.assertEqual(
            retention_target(cp, result, path, private),
            private / "disposable/analysis-a0135/target",
        )
        for field, value in [
            ("source_subject_ref", {}),
            ("extraction_exit_code", 0),
            ("translation_exit_code", 0),
        ]:
            bad = copy.deepcopy(result)
            bad[field] = value
            with self.subTest(field=field), self.assertRaises(ValueError):
                retention_target(cp, bad, path, private)
        bad = copy.deepcopy(cp)
        bad["source_validation_error"] = "changed"
        with self.assertRaises(ValueError):
            retention_target(bad, result, path, private)

    def test_exact_archive_roundtrip_preserves_original(self):
        from native_cache_retention_v2 import archive_exact, verify_archive

        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            source, target = root / "executable", root / "retained.gz"
            raw = b"\x7fELF" + bytes(range(256)) * 32
            source.write_bytes(raw)
            result = archive_exact(source, target, compressed_limit=1024 * 1024)
            self.assertEqual(source.read_bytes(), raw)
            self.assertEqual(result["raw_sha256"], hashlib.sha256(raw).hexdigest())
            verify_archive(target, result["raw_bytes"], result["raw_sha256"])
            with self.assertRaises(FileExistsError):
                archive_exact(source, target, compressed_limit=1024 * 1024)

    def test_changed_identity_corrupt_archive_and_growth_refuse(self):
        from native_cache_retention_v2 import archive_exact, verify_archive

        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            source, target = root / "executable", root / "retained.gz"
            source.write_bytes(b"\x7fELF" + bytes(range(256)) * 32)
            result = archive_exact(source, target, compressed_limit=1024 * 1024)
            with self.assertRaises(ValueError):
                verify_archive(target, result["raw_bytes"], "0" * 64)
            target.write_bytes(b"corrupt")
            with self.assertRaises(ValueError):
                verify_archive(target, result["raw_bytes"], result["raw_sha256"])
            with self.assertRaises(ValueError):
                archive_exact(source, root / "too-small.gz", compressed_limit=1)
            self.assertTrue(source.exists())

    def test_retained_inventory_rejects_changed_and_unlisted_executable(self):
        from native_cache_retention_v2 import verify_retained_inventory

        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            cache, saved = root / "cache", root / "saved"
            cache.mkdir()
            saved.mkdir()
            original, archive = cache / "worker", saved / "worker.gz"
            original.write_bytes(b"\x7fELF" + b"original" * 64)
            original.chmod(0o700)
            from native_cache_retention_v2 import archive_exact
            from artifact_io import RootRegistry

            refs = RootRegistry({"saved": saved})
            archived = archive_exact(original, archive, compressed_limit=1024)
            rows = [
                {
                    **archived,
                    "original_cache_path": "worker",
                    "retained_ref": refs.reference("saved", "worker.gz"),
                    "encoding": "gzip",
                }
            ]
            verify_retained_inventory(cache, rows, refs)
            other = cache / "unlisted"
            other.write_bytes(b"\x7fELFadditional")
            other.chmod(0o700)
            with self.assertRaises(ValueError):
                verify_retained_inventory(cache, rows, refs)
            other.unlink()
            original.write_bytes(b"\x7fELFchanged")
            with self.assertRaises(ValueError):
                verify_retained_inventory(cache, rows, refs)

    def test_closed_completion_selects_only_its_owned_target_and_source(self):
        from native_cache_retention_v2 import retention_target
        import copy
        import json

        repository = Path(__file__).resolve().parents[4]
        private = Path("/var/tmp/behavior-ir-core036-v2/w001")
        cp = json.loads(
            (
                repository
                / "specs/036-core-transition-feasibility/evidence/v2/w001/attempts/a0303/checkpoint.json"
            ).read_text()
        )
        path = private / "native-completion/a0303/result.json"
        native = json.loads(path.read_text())
        self.assertEqual(
            retention_target(cp, native, path, private),
            private / "disposable/native-a0301/target",
        )
        for field, value in [
            ("target", str(private / "sources")),
            ("source_subject_ref", {}),
            ("cargo_exit_code", False),
        ]:
            bad = copy.deepcopy(native)
            bad[field] = value
            with self.subTest(field=field), self.assertRaises(ValueError):
                retention_target(cp, bad, path, private)

    def test_current_closed_full_build_selects_only_329_cache(self):
        from native_cache_retention_v2 import retention_target
        import copy
        import json

        repository = Path(__file__).resolve().parents[4]
        private = Path("/var/tmp/behavior-ir-core036-v2/w001")
        cp = json.loads(
            (
                repository
                / "specs/036-core-transition-feasibility/evidence/v2/w001/attempts/a0329/checkpoint.json"
            ).read_text()
        )
        path = private / "native-builds/a0329/result.json"
        native = json.loads(path.read_text())
        self.assertEqual(
            retention_target(cp, native, path, private),
            private / "disposable/native-a0329/target",
        )
        for field, value in [
            ("target", str(private / "sources")),
            ("source_subject_ref", {}),
            ("cargo_exit_code", False),
            ("format", "unrelated-build"),
            ("scoped_quality", {"workers-build": 1}),
        ]:
            bad = copy.deepcopy(native)
            bad[field] = value
            with self.subTest(field=field), self.assertRaises(ValueError):
                retention_target(cp, bad, path, private)
        bad = copy.deepcopy(native)
        bad["built_executables"]["B"]["source_subject_ref"] = {}
        with self.assertRaises(ValueError):
            retention_target(cp, bad, path, private)
        for field, value in [
            ("stage_outcome", "failed"),
            ("source_validation_error", "changed"),
        ]:
            bad = copy.deepcopy(cp)
            bad[field] = value
            with self.subTest(field=field), self.assertRaises(ValueError):
                retention_target(bad, native, path, private)
        with self.assertRaises(ValueError):
            retention_target(
                cp, native, private / "native-builds/a0303/result.json", private
            )
