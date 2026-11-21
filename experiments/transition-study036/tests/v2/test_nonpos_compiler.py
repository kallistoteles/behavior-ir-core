"""A real compiler build must keep the solved packages and source identities."""

import copy
import hashlib
import io
import json
from pathlib import Path
import tempfile
import unittest


class NonposCompilerTests(unittest.TestCase):
    def test_actual_solver_solution_is_exact_and_not_an_install_receipt(self):
        from nonpos_compiler_v2 import compiler_solution

        plan = json.loads(
            Path(
                "/var/tmp/behavior-ir-core036-v2/w001/nonpos-opam-plan/a0283/compiler-plan.json"
            ).read_text()
        )
        self.assertEqual(len(compiler_solution(plan)), 11)
        for mutate in (
            lambda x: x["solution"].append(
                {"install": {"name": "unplanned", "version": "1"}}
            ),
            lambda x: x["solution"][0]["install"].update(version="wrong"),
            lambda x: x["solution"].append(copy.deepcopy(x["solution"][0])),
            lambda x: x.update(switch="caller-switch"),
            lambda x: x.update(**{"opam-version": "floating"}),
        ):
            changed = copy.deepcopy(plan)
            mutate(changed)
            with self.assertRaises(ValueError):
                compiler_solution(changed)

    def test_archive_and_text_sources_require_supported_format_and_sha256(self):
        from nonpos_compiler_v2 import source_specs

        checksum = "1" * 64
        raw = (
            'url { src: "https://example.org/compiler.tar.gz" checksum: "sha256='
            + checksum
            + '" }\n'
        )
        self.assertEqual(source_specs(raw)[0]["kind"], "tar.gz")
        self.assertEqual(source_specs(raw)[0]["sha256"], checksum)
        for changed in (
            raw.replace(".tar.gz", ".zip"),
            raw.replace("sha256=", "md5="),
            raw + "url { invalid nested { source } }\n",
            raw.replace("src:", 'src: "https://unbound.example/a" mirror:'),
        ):
            with self.assertRaises(ValueError):
                source_specs(changed)
        text = (
            'extra-source "config.ml.in" { src: "https://example.org/config.ml.in" checksum: "sha256='
            + checksum
            + '" }\n'
        )
        self.assertEqual(source_specs(text)[0]["kind"], "text")
        self.assertEqual(source_specs('opam-version: "2.0"\n'), [])

    def test_download_bytes_are_bounded_and_checked_before_publication(self):
        from nonpos_compiler_v2 import download_source

        raw = b"checked source text\n"
        spec = dict(
            name="config.ml.in",
            url="https://example.org/config.ml.in",
            sha256=hashlib.sha256(raw).hexdigest(),
            kind="text",
            max_bytes=128,
        )
        with tempfile.TemporaryDirectory() as directory:
            target = Path(directory) / "source"
            row = download_source(spec, target, opener=lambda *a, **kw: io.BytesIO(raw))
            self.assertEqual(target.read_bytes(), raw)
            self.assertEqual(row["sha256"], spec["sha256"])
            with self.assertRaises(ValueError):
                download_source(
                    {**spec, "sha256": "0" * 64},
                    target.with_name("bad"),
                    opener=lambda *a, **kw: io.BytesIO(raw),
                )
            with self.assertRaises(ValueError):
                download_source(
                    {**spec, "max_bytes": 1},
                    target.with_name("oversize"),
                    opener=lambda *a, **kw: io.BytesIO(raw),
                )
            self.assertFalse(target.with_name("bad").exists())
            self.assertFalse(target.with_name("oversize").exists())
