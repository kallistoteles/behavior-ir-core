"""A candidate library is source-bound; it cannot choose native proof authority."""

import hashlib
import json
import tempfile
import unittest
from pathlib import Path

from artifact_io import RootRegistry
from nonpos_lean_probe_v2 import COMMIT, module_plan, verified_sources


class NonposLibraryTests(unittest.TestCase):
    def setUp(self):
        self.temporary = tempfile.TemporaryDirectory()
        self.addCleanup(self.temporary.cleanup)
        self.root = Path(self.temporary.name)
        self.registry = RootRegistry({"source": self.root})
        self.files = {
            "LICENSE.md": b"test fixture license\n",
            "backends/lean/Aeneas/NonPos/Base.lean": b"module\npublic import Lean\n",
            "backends/lean/Aeneas/NonPos/Top.lean": b"module\npublic import Aeneas.NonPos.Base\n",
        }
        rows = []
        for index, (path, raw) in enumerate(self.files.items()):
            reference = self.registry.write("source", str(index), raw)
            rows.append(
                {
                    "path": path,
                    "git_blob_sha": hashlib.sha1(
                        b"blob " + str(len(raw)).encode() + b"\0" + raw
                    ).hexdigest(),
                    "source_ref": reference,
                }
            )
        self.manifest = {
            "format": "core036.nonpos-library-source.v2",
            "repository": "AeneasVerif/aeneas",
            "commit": COMMIT,
            "files": rows,
        }

    def package(self, value=None):
        file = self.root / "manifest.json"
        file.write_text(json.dumps(self.manifest if value is None else value))
        return self.registry.reference("source", "manifest.json")

    def test_actual_bytes_blob_ids_and_internal_module_closure_are_bound(self):
        source = verified_sources(self.registry, self.package())
        self.assertEqual(source, self.files)
        self.assertEqual(
            module_plan(source, ["Aeneas.NonPos.Top"]),
            ["Aeneas.NonPos.Base", "Aeneas.NonPos.Top"],
        )
        self.assertEqual(
            module_plan(source, ["Aeneas.NonPos.Top"]),
            module_plan(dict(reversed(list(source.items()))), ["Aeneas.NonPos.Top"]),
        )

    def test_changed_file_cannot_pass_a_saved_reference(self):
        reference = self.package()
        (self.root / "1").write_bytes(b"changed source")
        with self.assertRaises(ValueError):
            verified_sources(self.registry, reference)

    def test_import_all_modifier_is_not_an_external_module(self):
        source = dict(self.files)
        source["backends/lean/Aeneas/NonPos/Base.lean"] = (
            b"module\nimport all Init.Internal.Order.Basic\n"
        )
        source["backends/lean/Aeneas/NonPos/Top.lean"] = (
            b"module\npublic import all Aeneas.NonPos.Base\n"
        )
        self.assertEqual(
            module_plan(source, ["Aeneas.NonPos.Top"]),
            ["Aeneas.NonPos.Base", "Aeneas.NonPos.Top"],
        )

    def test_wrong_commit_blob_claim_and_native_success_flags_are_rejected(self):
        for mutate in (
            lambda d: d.update({"commit": "0" * 40}),
            lambda d: d.update({"native_proof": "proved"}),
            lambda d: d["files"][0].update({"git_blob_sha": "0" * 40}),
        ):
            value = json.loads(json.dumps(self.manifest))
            mutate(value)
            with self.assertRaises(ValueError):
                verified_sources(self.registry, self.package(value))

    def test_escaping_duplicate_and_missing_license_sources_are_rejected(self):
        for mutate in (
            lambda d: d["files"][0].update({"path": "../outside"}),
            lambda d: d["files"].append(d["files"][0]),
            lambda d: d.update({"files": d["files"][1:]}),
        ):
            value = json.loads(json.dumps(self.manifest))
            mutate(value)
            with self.assertRaises(ValueError):
                verified_sources(self.registry, self.package(value))

    def test_declared_oversized_source_is_refused_before_reading_it(self):
        value = json.loads(json.dumps(self.manifest))
        value["files"][0]["source_ref"]["bytes"] = 2 * 1024**2 + 1
        with self.assertRaisesRegex(ValueError, "NonposSourceBound"):
            verified_sources(self.registry, self.package(value))

    def test_candidate_and_pinned_aeneas_share_one_module_root(self):
        from nonpos_lean_probe_v2 import prepare_library_overlay

        backend, compiled = self.root / "backend", self.root / "compiled"
        library = backend / ".lake/build/lib/lean"
        (library / "Aeneas").mkdir(parents=True)
        (library / "Aeneas/Base.olean").write_bytes(b"pinned compiled module")
        (library / "Aeneas.olean").write_bytes(b"pinned root module")
        dependency = backend / ".lake/packages/mathlib/.lake/build/lib/lean"
        dependency.mkdir(parents=True)
        (backend / "lake-manifest.json").write_text(
            json.dumps(
                {"packagesDir": ".lake/packages", "packages": [{"name": "mathlib"}]}
            )
        )
        compiled.mkdir()
        paths = prepare_library_overlay(backend, compiled)
        self.assertEqual(paths, [compiled, dependency])
        self.assertFalse((compiled / "Aeneas").is_symlink())
        self.assertEqual(
            (compiled / "Aeneas/Base.olean").read_bytes(), b"pinned compiled module"
        )
        (compiled / "Aeneas/NonPos").mkdir()
        (compiled / "Aeneas/NonPos/Basic.olean").write_bytes(b"candidate")
        self.assertFalse((library / "Aeneas/NonPos").exists())
        self.assertEqual(
            (compiled / "Aeneas.olean").read_bytes(), b"pinned root module"
        )

    def test_library_overlay_rejects_escaping_modules_and_dependencies(self):
        from nonpos_lean_probe_v2 import prepare_library_overlay

        for index, mode in enumerate(("module", "dependency")):
            backend = self.root / ("backend" + str(index))
            compiled = self.root / ("compiled" + str(index))
            library = backend / ".lake/build/lib/lean/Aeneas"
            library.mkdir(parents=True)
            compiled.mkdir()
            outside = self.root / "outside.olean"
            outside.write_bytes(b"outside")
            if mode == "module":
                (library / "Escape.olean").symlink_to(outside)
                message = "NonposLibraryEscape"
            else:
                (backend / "lake-manifest.json").write_text(
                    json.dumps(
                        {
                            "packagesDir": ".lake/packages",
                            "packages": [{"name": "../outside"}],
                        }
                    )
                )
                message = "NonposDependencyName"
            with self.assertRaisesRegex(ValueError, message):
                prepare_library_overlay(backend, compiled)
            self.assertEqual(outside.read_bytes(), b"outside")

    def test_optional_unbuilt_package_remains_a_search_path(self):
        from nonpos_lean_probe_v2 import prepare_library_overlay

        backend, compiled = self.root / "backend", self.root / "compiled"
        (backend / ".lake/build/lib/lean/Aeneas").mkdir(parents=True)
        (backend / "lake-manifest.json").write_text(
            json.dumps({"packagesDir": ".lake/packages", "packages": [{"name": "Cli"}]})
        )
        compiled.mkdir()
        path = backend / ".lake/packages/Cli/.lake/build/lib/lean"
        self.assertEqual(prepare_library_overlay(backend, compiled), [compiled, path])
        self.assertFalse(path.exists())

    def test_library_success_requires_actual_fresh_kernel_exit(self):
        from nonpos_lean_probe_v2 import AUDIT_ROOTS, candidate_passed

        order = ["Aeneas.NonPos.Top"]
        commands = [
            {"module": label, "exit_code": code}
            for label, code in [
                (order[0], 0),
                ("CandidateAudit", 0),
                ("CandidateWrongType", 1),
            ]
        ]
        audit = [
            {"root": name, "type_repr": "checked", "axioms": []} for name in AUDIT_ROOTS
        ]
        kernel = {"module": "CandidateAudit", "exit_code": 0}
        self.assertTrue(candidate_passed(commands, order, audit, True, kernel))
        for bad in (
            None,
            {"module": "CandidateAudit", "exit_code": 1},
            {"module": "Unrelated", "exit_code": 0},
        ):
            self.assertFalse(candidate_passed(commands, order, audit, True, bad))
        altered = [dict(x) for x in commands]
        altered[0]["exit_code"] = 1
        self.assertFalse(candidate_passed(altered, order, audit, True, kernel))
        self.assertFalse(candidate_passed(commands, order, audit, False, kernel))

    def test_missing_recursive_dependency_and_cycle_are_not_external_models(self):
        for source in (
            {
                "backends/lean/Aeneas/NonPos/Top.lean": self.files[
                    "backends/lean/Aeneas/NonPos/Top.lean"
                ]
            },
            {
                "backends/lean/Aeneas/NonPos/Top.lean": b"import Aeneas.NonPos.Base\n",
                "backends/lean/Aeneas/NonPos/Base.lean": b"import Aeneas.NonPos.Top\n",
            },
        ):
            with self.assertRaises(ValueError):
                module_plan(source, ["Aeneas.NonPos.Top"])
        with self.assertRaises(ValueError):
            module_plan(self.files, ["Aeneas.NonPos.Missing"])
