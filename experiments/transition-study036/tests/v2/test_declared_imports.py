"""Bound read-only compiler imports while keeping proof output fresh."""

import copy
import hashlib
import json
import os
from pathlib import Path
import tempfile
import unittest

from test_declared_proof import DeclaredProofTests  # noqa: F401
from test_kernel_export import KernelExportPolicyTests  # noqa: F401
from test_syntax_resume import SyntaxResumeTests  # noqa: F401
from test_native_iteration_binding import NativeIterationBindingTests  # noqa: F401
from test_native_std_source import NativeStdSourceTests  # noqa: F401


class NativeCollectionImportGuardsTests(unittest.TestCase):
    def test_control_interval_rechecks_even_when_command_fails(self):
        from native_collection_layout_probe_v2 import with_readonly_inputs

        for fails in (False, True):
            calls = []

            def operation():
                calls.append("command")
                if fails:
                    raise RuntimeError("expected command failure")
                return 7

            def recheck():
                calls.append("recheck")

            if fails:
                with self.assertRaises(RuntimeError):
                    with_readonly_inputs(operation, recheck)
            else:
                self.assertEqual(with_readonly_inputs(operation, recheck), 7)
            self.assertEqual(calls, ["recheck", "command", "recheck"])

    def test_frozen_producer_hash_not_live_copy_equality_is_authority(self):
        from native_collection_layout_probe_v2 import recheck_generated

        with tempfile.TemporaryDirectory() as directory:
            original = Path(directory) / "Types.lean"
            original.write_bytes(b"frozen producer")
            expected = {
                "Types.lean": (
                    original,
                    original.stat().st_size,
                    hashlib.sha256(original.read_bytes()).hexdigest(),
                )
            }
            recheck_generated(expected)
            original.write_bytes(b"changed producer")
            copy = Path(directory) / "copied-Types.lean"
            copy.write_bytes(original.read_bytes())
            self.assertEqual(copy.read_bytes(), original.read_bytes())
            with self.assertRaises(ValueError):
                recheck_generated(expected)

    def test_parent_coverage_and_frozen_subject_are_independent_of_reported_expectation(
        self,
    ):
        from native_collection_layout_probe_v2 import (
            NONPOS_MODULES,
            validate_collection_import_parent,
        )
        cp, result, _, _, prefix = SyntaxResumeTests().fixture()
        frozen = {
            "format": "core036.ground-lean-probe.v2",
            **{
                key: {"sha256": str(index) * 64}
                for index, key in enumerate(
                    (
                        "extraction_result_ref",
                        "nonpos_library_binding_ref",
                        "projection_support_ref",
                        "impl_support_ref",
                    ),
                    1,
                )
            },
        }
        result.update({key: value for key, value in frozen.items() if key != "format"})
        context = {
            "commands": [
                {
                    "module": name,
                    "exit_code": 1 if name == "QualifiedNamesWrong" else 0,
                    "expected_exit_code": 1 if name == "QualifiedNamesWrong" else 0,
                }
                for name in NONPOS_MODULES
            ],
        }
        validate_collection_import_parent(cp, result, frozen, context, prefix)
        for fault in ("empty", "duplicate", "self-expected", "open", "config"):
            with self.subTest(fault=fault):
                c, r, f, n = copy.deepcopy((cp, result, frozen, context))
                if fault == "empty":
                    n["commands"] = []
                elif fault == "duplicate":
                    n["commands"].append(n["commands"][0])
                elif fault == "self-expected":
                    n["commands"][0].update(exit_code=1, expected_exit_code=1)
                elif fault == "open":
                    c["outcome"]["operational"] = "open"
                else:
                    f["extraction_result_ref"] = {"sha256": "0" * 64}
                with self.assertRaises(ValueError):
                    validate_collection_import_parent(c, r, f, n, prefix)


class DeclaredImportContextTests(unittest.TestCase):
    def context(self, root):
        compiled = root / "compiled"
        imports = root / "imports"
        backend = root / "backend"
        for path in (compiled, imports, backend):
            path.mkdir()
        (backend / "lake-manifest.json").write_text(
            json.dumps({"packagesDir": ".lake/packages", "packages": []})
        )
        data = b"source-bound fixture; not a real Lean proof or executable"
        (imports / "Aeneas.olean").write_bytes(data)
        context = {
            "format": "core036.declared-import-context.v2",
            "root": str(imports),
            "entries": [
                {
                    "path": "Aeneas.olean",
                    "bytes": len(data),
                    "sha256": hashlib.sha256(data).hexdigest(),
                }
            ],
        }
        env = {"LEAN_PATH": os.pathsep.join(map(str, [compiled, imports]))}
        return dict(
            compiled=compiled,
            sdk=root / "sdk",
            backend=backend,
            env=env,
            modules=["ProofRoot"],
            imported_context=context,
        )

    def engine(self, **values):
        from check_proofs import declared_environment_v2

        return declared_environment_v2(**values)

    def test_default_mode_remains_exact_lake_project_and_rejects_extra_roots(self):
        with tempfile.TemporaryDirectory() as directory:
            values = self.context(Path(directory))
            values["imported_context"] = None
            values["env"] = {"LEAN_PATH": str(values["compiled"])}
            prefix, recheck = self.engine(**values)
            self.assertEqual(
                prefix, [str(values["sdk"] / "bin/lake"), "--no-build", "env"]
            )
            recheck()
            values["env"]["LEAN_PATH"] += os.pathsep + str(Path(directory) / "imports")
            with self.assertRaises(ValueError):
                self.engine(**values)

    def test_exact_context_selects_only_direct_pinned_tools_and_detects_late_change(
        self,
    ):
        with tempfile.TemporaryDirectory() as directory:
            values = self.context(Path(directory))
            prefix, recheck = self.engine(**values)
            self.assertEqual(prefix, [])
            self.assertEqual(list(values["compiled"].iterdir()), [])
            (Path(directory) / "imports/Aeneas.olean").write_bytes(b"changed")
            with self.assertRaises(ValueError):
                recheck()

    def test_wrong_hash_extra_file_and_wrong_path_order_are_rejected(self):
        for fault in ("hash", "extra", "order"):
            with self.subTest(fault=fault), tempfile.TemporaryDirectory() as directory:
                values = self.context(Path(directory))
                if fault == "hash":
                    values["imported_context"]["entries"][0]["sha256"] = "0" * 64
                if fault == "extra":
                    (Path(directory) / "imports/unlisted.olean").write_bytes(b"unbound")
                if fault == "order":
                    values["env"]["LEAN_PATH"] = os.pathsep.join(
                        reversed(values["env"]["LEAN_PATH"].split(os.pathsep))
                    )
                with self.assertRaises(ValueError):
                    self.engine(**values)

    def test_cached_fresh_namespace_or_audit_is_rejected_even_with_matching_hash(self):
        for path in ("ProofRoot.olean", "Audit.olean", "Current/Old.olean"):
            with self.subTest(path=path), tempfile.TemporaryDirectory() as directory:
                values = self.context(Path(directory))
                values["modules"] = ["Current.New", "ProofRoot"]
                old = Path(directory) / "imports/Aeneas.olean"
                target = Path(directory) / "imports" / path
                target.parent.mkdir(parents=True, exist_ok=True)
                old.rename(target)
                values["imported_context"]["entries"][0]["path"] = path
                with self.assertRaises(ValueError):
                    self.engine(**values)

    def test_escape_symlink_unknown_fields_and_boolean_counts_are_rejected(self):
        for fault in ("escape", "symlink", "field", "boolean"):
            with self.subTest(fault=fault), tempfile.TemporaryDirectory() as directory:
                root = Path(directory)
                values = self.context(root)
                if fault == "escape":
                    values["imported_context"]["entries"][0]["path"] = "../Aeneas.olean"
                if fault == "symlink":
                    file = root / "imports/Aeneas.olean"
                    outside = root / "outside"
                    file.rename(outside)
                    file.symlink_to(outside)
                if fault == "field":
                    values["imported_context"]["runner"] = "/not/a/selected/tool"
                if fault == "boolean":
                    values["imported_context"]["entries"][0]["bytes"] = True
                with self.assertRaises(ValueError):
                    self.engine(**values)

    def test_context_metadata_is_not_mutable_verification_authority(self):
        with tempfile.TemporaryDirectory() as directory:
            values = self.context(Path(directory))
            _, recheck = self.engine(**values)
            original = copy.deepcopy(values["imported_context"])
            values["imported_context"]["entries"][0]["sha256"] = "0" * 64
            recheck()
            self.assertNotEqual(original, values["imported_context"])
