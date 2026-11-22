"""Executor provenance must not replace the unchanged compiled Rust subject."""

import copy
from pathlib import Path
import unittest


class NativeCompiledContextTests(unittest.TestCase):
    def test_actual482_v3_audit_and_binding_match_retained481_inputs(self):
        from controller_v2 import artifact_context_for
        from artifact_io import digest
        from native_compiled_context_v2 import (
            compiled_worker_layout,
            verified_build_hashes,
        )

        refs, _ = artifact_context_for("w001")
        result_path = refs.roots["private"] / "native-completion/a0482/result.json"
        native = refs.read(
            refs.reference("private", "native-completion/a0482/result.json")
        )
        compiled = refs.read(native["compiled_checkpoint_ref"])
        worker = compiled_worker_layout(refs.roots["private"], native, compiled)
        config = {
            "native_audit_ref": refs.reference(
                "private", "native-completion/a0482/closed481-source-audit-after.json"
            ),
            "native_unit_binding_ref": refs.reference(
                "private", "native-completion/a0482/worker-unit-binding.json"
            ),
        }
        self.assertEqual(
            verified_build_hashes(refs, native, result_path, worker, config),
            (digest(worker / "Cargo.toml"), digest(worker / "Cargo.lock")),
        )
        with self.assertRaises(ValueError):
            verified_build_hashes(
                refs,
                native,
                result_path,
                worker,
                {**config, "native_audit_ref": config["native_unit_binding_ref"]},
            )

    def fixture(self):
        subject = {
            "root_id": "future_evidence",
            "path": "subjects/r9504/manifest.json",
            "bytes": 1,
            "sha256": "a" * 64,
        }
        cp = {
            "attempt_id": "a0481",
            "source_subject_ref": subject,
            "source_validation_error": None,
        }
        native = {
            "format": "core036.native-unit-completion.v3",
            "compiled_source_subject_ref": subject,
            "completed_prior_tests": 77,
            "original_observations_compared": 12,
            "native_proof": "unestablished",
            "feature_complete": False,
        }
        return native, cp

    def test_v3_derives_worker_from_compiled_checkpoint_not_executor(self):
        from native_compiled_context_v2 import compiled_worker_layout

        native, cp = self.fixture()
        self.assertEqual(
            compiled_worker_layout(Path("/owned"), native, cp),
            Path("/owned/native-builds/a0481/worker"),
        )
        for key, value in [
            ("format", "unknown"),
            ("completed_prior_tests", 76),
            ("original_observations_compared", 0),
            ("feature_complete", True),
            ("native_proof", "proved"),
        ]:
            bad = copy.deepcopy(native)
            bad[key] = value
            with self.subTest(key=key), self.assertRaises(ValueError):
                compiled_worker_layout(Path("/owned"), bad, cp)
        bad = copy.deepcopy(cp)
        bad["source_subject_ref"]["sha256"] = "b" * 64
        with self.assertRaises(ValueError):
            compiled_worker_layout(Path("/owned"), native, bad)
        bad = copy.deepcopy(cp)
        bad["attempt_id"] = "../other"
        with self.assertRaises(ValueError):
            compiled_worker_layout(Path("/owned"), native, bad)

    def test_historical_v2_worker_path_remains_exact(self):
        from native_compiled_context_v2 import compiled_worker_layout

        native, cp = self.fixture()
        native["format"] = "core036.native-completion.v2"
        native["worker_path"] = "/owned/native-builds/a0481/worker"
        self.assertEqual(
            compiled_worker_layout(Path("/owned"), native, cp),
            Path(native["worker_path"]),
        )
        native["worker_path"] = "/owned/native-completion/a0482/worker"
        with self.assertRaises(ValueError):
            compiled_worker_layout(Path("/owned"), native, cp)
