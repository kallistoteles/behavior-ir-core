"""A source-support probe can add bodies, never silently broaden its policy."""

import unittest
from test_native_worker_cache_retention import (
    NativeWorkerCacheRetentionTests as NativeWorkerCacheRetentionTests,
)
from test_native_partial_cache_retention import (
    NativePartialCacheRetentionTests as NativePartialCacheRetentionTests,
)
from test_native_cache_evidence_rebalance import (
    NativeCacheEvidenceRebalanceTests as NativeCacheEvidenceRebalanceTests,
)
from test_native_analysis_cache_retention import (
    NativeAnalysisCacheRetentionTests as NativeAnalysisCacheRetentionTests,
)
from test_native_typed_seed_support import (
    NativeTypedSeedSupportTests as NativeTypedSeedSupportTests,
)
from test_native_joint_row_support import (
    NativeJointRowSupportTests as NativeJointRowSupportTests,
)


class ExtractionSupportTests(unittest.TestCase):
    def test_reused_cache_preserves_all_old_generated_sources_and_binaries_first(self):
        import tempfile
        from pathlib import Path
        from native_analysis_cache_v2 import retain_before_reuse
        from backend_ir_retention_v2 import _verify_archive
        from artifact_io import read

        with tempfile.TemporaryDirectory() as directory:
            base = Path(directory)
            target = base / "target"
            (target / "build/out").mkdir(parents=True)
            source = target / "build/out/generated.rs"
            source.write_bytes(b"// original generated compiler input\n")
            executable = target / "build/helper"
            executable.write_bytes(b"\x7fELF" + b"compiler-helper" * 50)
            executable.chmod(0o755)
            result = retain_before_reuse(target, base / "retained")
            rows = read(base / "retained/inventory.json")
            _verify_archive(base / "retained/all-files.tar.gz", rows)
            self.assertEqual(result["file_count"], 2)
            self.assertEqual(
                source.read_bytes(), b"// original generated compiler input\n"
            )
            self.assertTrue(executable.stat().st_mode & 0o111)
            source.write_bytes(b"new cache build")
            _verify_archive(base / "retained/all-files.tar.gz", rows)

    def test_joint_packet_selects_both_actual_rows_in_one_generated_context(self):
        from extract import extraction_roots, source_support_includes

        self.assertEqual(
            extraction_roots("seed-canonical"),
            [
                "crate::reference::state_fact_row",
                "crate::views::seed_row",
                "crate::views::_::into_study",
            ],
        )
        self.assertEqual(
            source_support_includes(
                {"source_support_includes": ["crate::reference::state_fact_row"]}
            ),
            ["crate::reference::state_fact_row"],
        )

    def cache_context(self):
        subject = {
            "root_id": "future_evidence",
            "path": "subjects/source/manifest.json",
        }
        native = {"root_id": "future_evidence", "path": "subjects/native/manifest.json"}
        checkpoint = dict(
            attempt_id="a0514",
            source_subject_ref=subject,
            stage_outcome="succeeded",
            source_validation_error=None,
            outcome={"operational": "closed"},
        )
        previous = dict(
            source_subject_ref=subject,
            native_source_subject_ref=native,
            extraction_exit_code=0,
            translation_exit_code=0,
            compiler_cache_reused=False,
            analysis_target="/synthetic/private/disposable/analysis-a0514/target",
        )
        receipt = dict(
            source_subject_ref=subject,
            exit_code=0,
            stop_reason=None,
            tree_empty=True,
            group_empty=True,
            final_storage_inventory_error=None,
        )
        return checkpoint, previous, receipt, native

    def test_only_exact_closed_514_cache_with_equal_native_source_is_admitted(self):
        from pathlib import Path
        from native_analysis_cache_v2 import admitted_cache

        checkpoint, previous, receipt, native = self.cache_context()
        self.assertEqual(
            admitted_cache(
                checkpoint, previous, receipt, native, Path("/synthetic/private")
            ),
            Path("/synthetic/private/disposable/analysis-a0514/target"),
        )
        for attempt in ("a0114", "a0292", "a0353", "a0513", "../a0514"):
            with self.subTest(attempt=attempt), self.assertRaises(ValueError):
                admitted_cache(
                    {**checkpoint, "attempt_id": attempt},
                    previous,
                    receipt,
                    native,
                    Path("/synthetic/private"),
                )

    def test_open_changed_failed_or_aliased_cache_context_is_rejected(self):
        from pathlib import Path
        from native_analysis_cache_v2 import admitted_cache

        mutations = [
            (0, "source_validation_error", "changed"),
            (0, "stage_outcome", "failed"),
            (1, "native_source_subject_ref", {}),
            (1, "translation_exit_code", 1),
            (1, "analysis_target", "/synthetic/private/disposable/analysis-a0514"),
            (2, "tree_empty", False),
            (2, "group_empty", False),
            (2, "exit_code", True),
            (2, "stop_reason", "stop"),
            (2, "source_subject_ref", {}),
            (2, "final_storage_inventory_error", "disagreement"),
        ]
        for position, key, value in mutations:
            context = list(self.cache_context())
            context[position][key] = value
            with self.subTest(key=key), self.assertRaises(ValueError):
                admitted_cache(*context, Path("/synthetic/private"))

    def test_typed_seed_packet_selects_actual_row_and_error_translation_roots(self):
        from extract import extraction_roots

        self.assertEqual(
            extraction_roots("typed-seed-row"),
            [
                "crate::views::seed_row",
                "crate::views::_::into_study",
            ],
        )
        self.assertEqual(
            extraction_roots("canonical-row"), ["crate::reference::state_fact_row"]
        )
        for scope in ("typed-seed", "*", True, None):
            with self.subTest(scope=scope), self.assertRaises(ValueError):
                extraction_roots(scope)

    def test_typed_seed_methods_require_unique_actual_translated_bodies(self):
        from extract import source_support_includes, required_source_body_inventory

        patterns = [
            "crate::views::seed_row",
            "crate::views::text",
            "crate::views::_::into_study",
        ]
        self.assertEqual(
            source_support_includes({"source_support_includes": patterns}), patterns
        )
        rows = [
            dict(
                def_id=i,
                item_meta={
                    "name": [
                        {"Ident": ["transition_study036", 0]},
                        {"Ident": ["views", 0]},
                        *([{"Impl": {"Ty": {}}}] if name == "into_study" else []),
                        {"Ident": [name, 0]},
                    ]
                },
                body_present=True,
                body_form="translated",
                body_sha256="a" * 64,
            )
            for i, name in enumerate(("seed_row", "text", "into_study"))
        ]
        self.assertEqual(
            [r["function_id"] for r in required_source_body_inventory(rows, patterns)],
            [0, 1, 2],
        )
        for invalid in (
            rows[:-1],
            rows + [rows[0]],
            [{**r, "body_present": False} for r in rows],
        ):
            with self.subTest(invalid=invalid), self.assertRaises(ValueError):
                required_source_body_inventory(invalid, patterns)
        for broad in ("crate::views", "crate::views::*", "crate::views::_"):
            with self.assertRaises(ValueError):
                source_support_includes({"source_support_includes": [broad]})

    def test_support_includes_are_explicit_and_do_not_change_the_default(self):
        from extract import source_support_includes

        self.assertEqual(source_support_includes({}), [])
        selected = ["serde_core::ser::impls", "core::io::write::Write::write_all"]
        self.assertEqual(
            source_support_includes({"source_support_includes": selected}), selected
        )

    def test_wrong_shape_duplicate_or_unreviewed_pattern_is_rejected(self):
        from extract import source_support_includes

        for value in (
            True,
            "serde_core",
            ["*"],
            ["crate"],
            ["serde_core"],
            ["serde_core::ser::impls"] * 2,
            [None],
        ):
            with self.subTest(value=value), self.assertRaises(ValueError):
                source_support_includes({"source_support_includes": value})
