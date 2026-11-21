"""Extraction names may change; executable LLBC content may not."""

import copy
import json
import tempfile
from pathlib import Path
from unittest.mock import patch

import llbc_names_v2
import unittest

from llbc_names_v2 import normalize_local_impl_names, verify_name_only_normalization


def fixture():
    def row(index, local, rename=None):
        return {
            "def_id": index,
            "item_meta": {
                "is_local": local,
                "name": [{"Ident": ["test", 0]}, {"Impl": {"Trait": index}}],
                "attr_info": {"rename": rename, "attributes": []},
            },
            "impl_trait": {"id": 7, "generics": {"types": [index]}},
            "methods": [{"skip_binder": {"id": index + 10}}],
        }

    return {
        "charon_version": "test",
        "has_errors": False,
        "negative_zero": -0.0,
        "translated": {
            "trait_impls": [
                row(0, True),
                row(1, True),
                row(2, False),
                row(3, True, "GivenName"),
            ],
            "fun_decls": [
                {
                    "def_id": 10,
                    "body": {"Call": {"func": 11}},
                    "signature": {"input": ["str"]},
                }
            ],
            "type_decls": [{"name": "Error"}],
            "trait_decls": [{"id": 7}],
            "ordered_decls": [0, 1, 2, 3],
        },
    }


class LlbcNamesTests(unittest.TestCase):
    def test_only_fresh_local_impl_metadata_changes_and_original_is_untouched(self):
        original = fixture()
        saved = copy.deepcopy(original)
        normalized, receipt = normalize_local_impl_names(original)
        self.assertEqual(original, saved)
        self.assertEqual(len(receipt["changes"]), 2)
        for index in (0, 1):
            self.assertEqual(
                normalized["translated"]["trait_impls"][index]["item_meta"][
                    "attr_info"
                ]["rename"],
                f"Core036LocalTraitImpl{index}",
            )
        verify_name_only_normalization(original, normalized, receipt)
        normalized["translated"]["trait_impls"][0]["item_meta"]["attr_info"][
            "rename"
        ] = None
        normalized["translated"]["trait_impls"][1]["item_meta"]["attr_info"][
            "rename"
        ] = None
        self.assertEqual(original, normalized)

    def test_bodies_signatures_call_ids_and_opacity_cannot_change(self):
        original = fixture()
        normalized, receipt = normalize_local_impl_names(original)
        mutations = [
            lambda d: d["translated"]["fun_decls"][0]["body"].update(
                {"Call": {"func": 12}}
            ),
            lambda d: d["translated"]["fun_decls"][0]["signature"].update(
                {"input": ["u64"]}
            ),
            lambda d: d["translated"]["trait_impls"][0].update({"methods": []}),
            lambda d: d["translated"]["trait_impls"][0]["item_meta"].update(
                {"opacity": "Opaque"}
            ),
            lambda d: d.update({"has_errors": True}),
            lambda d: d.update({"negative_zero": 0.0}),
            lambda d: d["translated"]["trait_impls"][1].update({"def_id": True}),
            lambda d: d["translated"]["trait_impls"][1].update({"def_id": 1.0}),
        ]
        for mutate in mutations:
            with self.subTest(mutation=mutate):
                changed = copy.deepcopy(normalized)
                mutate(changed)
                with self.assertRaises(ValueError):
                    verify_name_only_normalization(original, changed, receipt)

    def test_receipt_and_external_or_existing_renames_cannot_be_substituted(self):
        original = fixture()
        normalized, receipt = normalize_local_impl_names(original)
        for index in (0, 2, 3):
            changed = copy.deepcopy(normalized)
            changed["translated"]["trait_impls"][index]["item_meta"]["attr_info"][
                "rename"
            ] = "Other"
            with self.assertRaises(ValueError):
                verify_name_only_normalization(original, changed, receipt)
        altered = copy.deepcopy(receipt)
        altered["changes"] = altered["changes"][:-1]
        with self.assertRaises(ValueError):
            verify_name_only_normalization(original, normalized, altered)

    def test_null_declarations_survive_and_repeated_normalization_is_stable(self):
        original = fixture()
        original["translated"]["trait_impls"].insert(1, None)
        normalized, receipt = normalize_local_impl_names(original)
        verify_name_only_normalization(original, normalized, receipt)
        again, next_receipt = normalize_local_impl_names(normalized)
        self.assertEqual(again, normalized)
        self.assertEqual(next_receipt["changes"], [])

    def test_verifier_does_not_copy_or_materialize_the_whole_graph(self):
        original = fixture()
        normalized, receipt = normalize_local_impl_names(original)
        with (
            patch.object(llbc_names_v2.copy, "deepcopy", side_effect=MemoryError),
            patch.object(llbc_names_v2.json, "dumps", side_effect=MemoryError),
        ):
            verify_name_only_normalization(original, normalized, receipt)

    def test_streaming_writer_enforces_exact_limit_and_create_once(self):
        original = fixture()
        normalized, receipt = normalize_local_impl_names(original)
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / "names.llbc"
            result = llbc_names_v2.write_normalized_llbc(
                path, original, normalized, receipt, max_bytes=1024**2
            )
            self.assertEqual(json.loads(path.read_bytes()), normalized)
            self.assertEqual(result["bytes"], path.stat().st_size)
            exact = Path(directory) / "exact.llbc"
            llbc_names_v2.write_normalized_llbc(
                exact, original, normalized, receipt, max_bytes=result["bytes"]
            )
            self.assertEqual(exact.read_bytes(), path.read_bytes())
            import hashlib

            self.assertEqual(
                result["sha256"], hashlib.sha256(path.read_bytes()).hexdigest()
            )
            with self.assertRaises(FileExistsError):
                llbc_names_v2.write_normalized_llbc(
                    path, original, normalized, receipt, max_bytes=1024**2
                )
            with self.assertRaisesRegex(ValueError, "ByteLimit"):
                llbc_names_v2.write_normalized_llbc(
                    Path(directory) / "short.llbc",
                    original,
                    normalized,
                    receipt,
                    max_bytes=result["bytes"] - 1,
                )
            changed = copy.deepcopy(normalized)
            changed["translated"]["fun_decls"][0]["body"] = None
            refused = Path(directory) / "refused.llbc"
            with self.assertRaises(ValueError):
                llbc_names_v2.write_normalized_llbc(
                    refused, original, changed, receipt, max_bytes=1024**2
                )
            self.assertFalse(refused.exists())

    def test_executable_ir_key_order_is_preserved_but_receipt_order_is_irrelevant(self):
        original = fixture()
        normalized, receipt = normalize_local_impl_names(original)
        reordered = dict(reversed(list(normalized.items())))
        with self.assertRaises(ValueError):
            verify_name_only_normalization(original, reordered, receipt)
        verify_name_only_normalization(
            original, normalized, dict(reversed(list(receipt.items())))
        )

    def test_generated_module_filename_is_a_legal_lean_import_identifier(self):
        import re

        for scope in (
            "worker-entrypoints",
            "entrypoints-core-invocation",
            "ground",
            "intervals",
        ):
            for normalized in (False, True):
                name = llbc_names_v2.lean_ir_filename(scope, normalized=normalized)
                self.assertTrue(name.endswith(".llbc"))
                self.assertIsNotNone(re.fullmatch(r"[a-z][a-z0-9_]*", name[:-5]))
        self.assertEqual(llbc_names_v2.lean_ir_filename("ground"), "ground.llbc")
        self.assertEqual(
            llbc_names_v2.lean_ir_filename("worker-entrypoints", normalized=True),
            "worker_entrypoints_names.llbc",
        )
        for bad in ("", "../ground", "ground/escape", "-ground", "x.y", "å", 1, True):
            with self.assertRaises(ValueError):
                llbc_names_v2.lean_ir_filename(bad)
        with self.assertRaises(ValueError):
            llbc_names_v2.lean_ir_filename("ground", normalized=1)

    def test_bad_ids_metadata_and_explicit_name_collisions_fail_closed(self):
        for value in (-1, True, "0", 1):
            original = fixture()
            original["translated"]["trait_impls"][0]["def_id"] = value
            with self.assertRaises(ValueError):
                normalize_local_impl_names(original)
        for mutate in [
            lambda rows: rows[0]["item_meta"].update({"is_local": 1}),
            lambda rows: rows[0]["item_meta"]["attr_info"].pop("rename"),
            lambda rows: rows[3]["item_meta"]["attr_info"].update(
                {"rename": "Core036LocalTraitImpl0"}
            ),
        ]:
            original = fixture()
            mutate(original["translated"]["trait_impls"])
            with self.assertRaises(ValueError):
                normalize_local_impl_names(original)
