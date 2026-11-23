"""Requested JSON source support must really contain both native bodies."""

import copy
import hashlib
import json
import re
import unittest
from pathlib import Path

from extract import required_source_body_inventory, source_support_includes

VALUE = "{impl serde_core::ser::Serialize for serde_json::value::Value}::serialize"
NUMBER = "{impl serde_core::ser::Serialize for serde_json::number::Number}::serialize"


class JsonSourceSupportTests(unittest.TestCase):
    def test_string_deref_requires_the_observed_native_wrapper(self):
        from extract import source_support_includes, required_source_body_inventory

        pattern = "alloc::string::_::deref"
        self.assertEqual(
            source_support_includes({"source_support_includes": [pattern]}), [pattern]
        )
        row = {
            "def_id": 29,
            "item_meta": {
                "name": [
                    {"Ident": ["alloc", 0]},
                    {"Ident": ["string", 0]},
                    {"Impl": {"Trait": 7}},
                    {"Ident": ["deref", 0]},
                ]
            },
            "body_form": "translated",
            "body_present": True,
            "body_sha256": "c" * 64,
        }
        self.assertEqual(
            required_source_body_inventory([row], [pattern])[0]["function_id"], 29
        )
        for rows in [
            [],
            [row, row],
            [{**row, "body_form": "opaque", "body_present": False}],
        ]:
            with self.subTest(rows=rows), self.assertRaises(ValueError):
                required_source_body_inventory(rows, [pattern])
        for broad in ["alloc::string", "alloc::string::_", "alloc::_::deref"]:
            with self.assertRaises(ValueError):
                source_support_includes({"source_support_includes": [broad]})

    def test_pinned_frontend_inherent_impl_glob_is_narrow_and_body_checked(self):
        from extract import source_support_includes, required_source_body_inventory

        pattern = "serde_json::value::_::as_str"
        self.assertEqual(
            source_support_includes({"source_support_includes": [pattern]}), [pattern]
        )
        row = {
            "def_id": 22,
            "item_meta": {
                "name": [
                    {"Ident": ["serde_json", 0]},
                    {"Ident": ["value", 0]},
                    {"Impl": {"Ty": {}}},
                    {"Ident": ["as_str", 0]},
                ]
            },
            "body_form": "translated",
            "body_present": True,
            "body_sha256": "b" * 64,
        }
        self.assertEqual(
            required_source_body_inventory([row], [pattern])[0]["function_id"], 22
        )
        for broad in [
            "serde_json::value::_",
            "serde_json::_::as_str",
            "serde_json::value::*",
        ]:
            with self.assertRaises(ValueError):
                source_support_includes({"source_support_includes": [broad]})

    def test_value_as_str_needs_its_actual_translated_body(self):
        from extract import source_support_includes, required_source_body_inventory

        pattern = "serde_json::value::{serde_json::value::Value}::as_str"
        self.assertEqual(
            source_support_includes({"source_support_includes": [pattern]}), [pattern]
        )
        row = {
            "def_id": 88,
            "item_meta": {
                "name": [
                    {"Ident": ["serde_json", 0]},
                    {"Ident": ["value", 0]},
                    {"Impl": {"Inherent": 1}},
                    {"Ident": ["as_str", 0]},
                ]
            },
            "body_form": "translated",
            "body_present": True,
            "body_sha256": "b" * 64,
        }
        self.assertEqual(
            required_source_body_inventory([row], [pattern])[0]["function_id"], 88
        )
        for rows in [
            [],
            [row, row],
            [{**row, "body_form": "opaque", "body_present": False}],
        ]:
            with self.subTest(rows=rows), self.assertRaises(ValueError):
                required_source_body_inventory(rows, [pattern])

    def rows(self):
        return [
            {
                "def_id": index,
                "item_meta": {
                    "name": [{"Ident": [part, 0]} for part in prefix]
                    + [{"Impl": {"Trait": index}}, {"Ident": ["serialize", 0]}]
                },
                "body_form": "translated",
                "body_present": True,
                "body_sha256": "a" * 64,
            }
            for index, prefix in enumerate(
                [("serde_json", "value", "ser"), ("serde_json", "number")]
            )
        ]

    def test_exact_patterns_are_reviewed_without_broadening_module_policy(self):
        from extract import source_support_includes

        self.assertEqual(
            source_support_includes({"source_support_includes": [VALUE, NUMBER]}),
            [VALUE, NUMBER],
        )
        self.assertEqual(source_support_includes({}), [])
        for broad in [
            "serde_json",
            "serde_json::value",
            "serde_json::number",
            "{impl serde_core::ser::Serialize for _}::serialize",
        ]:
            with self.assertRaises(ValueError):
                source_support_includes({"source_support_includes": [broad]})

    def test_requested_bodies_are_observed_not_inferred_from_include_flags(self):
        from extract import required_source_body_inventory

        result = required_source_body_inventory(self.rows(), [VALUE, NUMBER])
        self.assertEqual({row["function_id"] for row in result}, {0, 1})
        self.assertTrue(all(row["body_sha256"] == "a" * 64 for row in result))
        self.assertTrue(all(row["status"] == "unestablished" for row in result))
        self.assertEqual(required_source_body_inventory([], []), [])

    def test_missing_opaque_wrong_or_duplicate_body_cannot_pass(self):
        from extract import required_source_body_inventory

        cases = []
        rows = self.rows()
        rows.pop()
        cases.append(rows)
        rows = self.rows()
        rows[0].update(body_form="opaque", body_present=False, body_sha256=None)
        cases.append(rows)
        rows = self.rows()
        rows[0]["item_meta"]["name"][-1] = {"Ident": ["deserialize", 0]}
        cases.append(rows)
        rows = self.rows()
        rows.append(copy.deepcopy(rows[0]))
        cases.append(rows)
        rows = self.rows()
        rows[0]["body_sha256"] = None
        cases.append(rows)
        for rows in cases:
            with self.assertRaises(ValueError):
                required_source_body_inventory(rows, [VALUE, NUMBER])


class NumberTypeSupportTests(unittest.TestCase):
    def test_exact_number_payload_type_is_reviewed_and_must_be_transparent(self):
        from extract import source_support_includes, required_source_type_inventory

        pattern = "serde_json::number::N"
        self.assertEqual(
            source_support_includes({"source_support_includes": [pattern]}), [pattern]
        )
        row = {
            "def_id": 56,
            "item_meta": {
                "name": [{"Ident": [x, 0]} for x in ["serde_json", "number", "N"]]
            },
            "kind": {
                "Enum": [
                    {"name": "PosInt", "fields": [{"ty": "U64"}]},
                    {"name": "NegInt", "fields": [{"ty": "I64"}]},
                    {"name": "Float", "fields": [{"ty": "F64"}]},
                ]
            },
        }
        result = required_source_type_inventory([row], [pattern])
        self.assertEqual(result[0]["type_id"], 56)
        self.assertEqual(result[0]["status"], "unestablished")
        self.assertEqual(len(result[0]["kind_sha256"]), 64)
        for rows in [
            [],
            [row, row],
            [{**row, "kind": "Opaque"}],
            [{**row, "kind": {"Struct": []}}],
            [{**row, "kind": {"Enum": row["kind"]["Enum"][:2]}}],
            [
                {
                    **row,
                    "kind": {
                        "Enum": [{**v, "fields": []} for v in row["kind"]["Enum"]]
                    },
                }
            ],
        ]:
            with self.subTest(rows=rows), self.assertRaises(ValueError):
                required_source_type_inventory(rows, [pattern])
        for broad in ["serde_json::number", "serde_json::_::N"]:
            with self.assertRaises(ValueError):
                source_support_includes({"source_support_includes": [broad]})

    def rows(self):
        return [
            {
                "def_id": 55,
                "item_meta": {
                    "name": [
                        {"Ident": [x, 0]} for x in ["serde_json", "number", "Number"]
                    ],
                    "opacity": "Foreign",
                },
                "kind": {"Struct": [{"name": "n", "ty": {"Adt": 232}}]},
            }
        ]

    def test_exact_number_type_selector_is_reviewed(self):
        from extract import source_support_includes

        self.assertEqual(
            source_support_includes(
                {"source_support_includes": ["serde_json::number::Number"]}
            ),
            ["serde_json::number::Number"],
        )

    def test_actual_struct_kind_matters_even_with_foreign_metadata(self):
        from extract import required_source_type_inventory

        result = required_source_type_inventory(
            self.rows(), ["serde_json::number::Number"]
        )
        self.assertEqual(len(result), 1)
        self.assertEqual(result[0]["type_id"], 55)
        self.assertEqual(result[0]["status"], "unestablished")
        self.assertEqual(len(result[0]["kind_sha256"]), 64)
        self.assertEqual(required_source_type_inventory([], []), [])

    def test_opaque_absent_alias_or_ambiguous_number_cannot_pass(self):
        from extract import required_source_type_inventory

        for rows in [
            [],
            self.rows() * 2,
            [{**self.rows()[0], "kind": "Opaque"}],
            [{**self.rows()[0], "kind": {"Alias": {"Adt": 232}}}],
        ]:
            with self.assertRaises(ValueError):
                required_source_type_inventory(rows, ["serde_json::number::Number"])


RUST = "alloc::string::{core::ops::deref::Deref<alloc::string::String, str>}::deref"
LEAN = "alloc.string.String.Insts.CoreOpsDerefDerefStr.deref"
BLOCK = (
    "/-- [native dereference] -/\n"
    '@[rust_fun\n  "' + RUST + '"]\n'
    "axiom " + LEAN + "\n  : String → Result Str\n\n"
)
TAIL = '/-- [unresolved] -/\n@[rust_fun "other"] axiom unresolved : String → Result String\n\n'


class NativeBorrowPacketTests(unittest.TestCase):
    def test_shared_project_factory_preserves_actual_generated_bodies(self):
        from pathlib import Path
        import json
        from native_json_borrow_probe_v2 import project_files

        private = Path("/var/tmp/behavior-ir-core036-v2/w001")
        repository = Path(__file__).resolve().parents[4]
        source_dir = (
            repository
            / "experiments/transition-study036/proofs/Correspondence036/Dependencies"
        )
        generated = {
            name: (private / "native-extraction/a0486/generated" / name).read_bytes()
            for name in [
                "Types.lean",
                "Funs.lean",
                "TypesExternal_Template.lean",
                "FunsExternal_Template.lean",
            ]
        }
        selection = json.loads(
            Path(
                "/var/tmp/behavior-ir-core036-evidence-v2/w001/inputs/native-json-borrow-005.json"
            ).read_text()
        )
        files = project_files(
            generated,
            (source_dir / "NativeStringBorrow.lean").read_bytes(),
            (source_dir / "NativeJsonBorrowWrapper.lean").read_bytes(),
            (source_dir / "RuntimeNames.lean").read_bytes(),
            selection["bindings"],
        )
        self.assertEqual(files["CanonicalRowNames.Funs"], generated["Funs.lean"])
        self.assertEqual(files["CanonicalRowNames.Types"], generated["Types.lean"])
        for name, raw in files.items():
            checked = (
                private
                / "ground-lean-probe/a0491/project"
                / (name.replace(".", "/") + ".lean")
            )
            self.assertEqual(raw, checked.read_bytes(), name)
        self.assertIn("NativeJsonBorrowWrapper", files)
        self.assertNotIn(
            b"axiom alloc.string.String.Insts.CoreOpsDerefDerefStr.deref",
            files["CanonicalRowNames.FunsExternal"],
        )
        with self.assertRaises(ValueError):
            project_files(
                {**generated, "Unexpected.lean": b"axiom bad : False"},
                b"",
                b"",
                b"",
                selection["bindings"],
            )

    def test_expected_byte_roots_anchor_actual_carriers_independently(self):
        from native_json_borrow_probe_v2 import roots

        rows = {row["id"]: row for row in roots()}
        required = {
            "borrow.rust_byte_bits": ".toBitVec",
            "borrow.lean_byte_bits": "UInt8",
            "borrow.owned_bytes_exact": "value.toByteArray.data.toList",
            "borrow.borrowed_bytes_exact": "value.val.map",
        }
        self.assertTrue(required.keys() <= rows.keys())
        for name, direct_carrier in required.items():
            self.assertIn(direct_carrier, rows[name]["expected_type"])
        self.assertNotIn(
            "toLeanByte", rows["borrow.borrowed_bytes_exact"]["expected_type"]
        )

    def test_actual_types_template_gets_explicit_full_bit_float_carriers(self):
        from pathlib import Path
        from native_json_borrow_probe_v2 import complete_borrow_types

        source = Path(
            "/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0486"
            "/generated/TypesExternal_Template.lean"
        ).read_text()
        actual = complete_borrow_types(source)
        self.assertIn("public import RuntimeNames", actual)
        self.assertNotIn("axiom serde_json.map.Map", actual)
        self.assertIn("K → V → serde_json.map.Map K V", actual)
        for bad in [
            source.replace("public import Aeneas", "public import Unexpected"),
            source + "\naxiom serde_json.number.Number : Type\n",
            source + "\naxiom serde_json.number.N : Type\n",
            source + "\naxiom Aeneas.Std.F64 : Type\n",
        ]:
            with self.subTest(bad=bad), self.assertRaises(ValueError):
                complete_borrow_types(bad)

    def test_leaf_scope_does_not_assert_native_or_runtime_completion(self):
        from native_json_borrow_probe_v2 import validate_packet_scope

        packet = dict(
            format="core036.native-json-borrow-packet.v2",
            scope="source_bound_accessor_leaf_only",
            native_proof="unestablished",
            feature_complete=False,
            runtime_totality_established=False,
        )
        self.assertIsNone(validate_packet_scope(packet))
        for changed in [
            {"scope": "complete_core"},
            {"native_proof": "proved_for_declared_subject"},
            {"feature_complete": True},
            {"runtime_totality_established": True},
            {"feature_complete": 0},
            {"unexpected": True},
        ]:
            with self.subTest(changed=changed), self.assertRaises(ValueError):
                validate_packet_scope({**packet, **changed})


class NativeBorrowBindingTests(unittest.TestCase):
    def test_actual486_multiline_template_with_pinned_blocks(self):
        from pathlib import Path
        from native_borrow_bindings_v2 import bind_borrow_primitives

        source = Path(
            "/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0486"
            "/generated/FunsExternal_Template.lean"
        ).read_text()
        self.assertEqual(
            hashlib.sha256(source.encode()).hexdigest(),
            "c8425661d252ca5a367035d398e1c8eac30aa3fce8cf01b1765fdcdb91671345",
        )
        bindings = [
            dict(
                rust="alloc::string::{alloc::string::String}::as_str",
                lean="alloc.string.String.impl.as_str",
                block_bytes=342,
                block_sha256="959509a76d9e38362451a555cefbbabe88b21dbd762b202e78672df80ae6d313",
            ),
            dict(
                rust=RUST,
                lean=LEAN,
                block_bytes=462,
                block_sha256="17a8fb170d8d79117ea0e3f224ba29f1dac3650ee4552d7d4a84207b8783d308",
            ),
        ]
        remaining, definitions = bind_borrow_primitives(source, bindings)
        self.assertEqual(len(source.encode()) - len(remaining.encode()), 804)
        self.assertEqual(definitions.count("borrowResult"), 2)
        self.assertIn("axiom Str.Insts.CoreCmpPartialEqStr.eq", remaining)
        self.assertIn(
            "axiom serde_json.value.Value.Insts.CoreCloneClone.clone", remaining
        )
        self.assertEqual(source.count("axiom ") - remaining.count("axiom "), 2)

    def binding(self):
        return dict(
            rust=RUST,
            lean=LEAN,
            block_bytes=len(BLOCK.encode()),
            block_sha256=hashlib.sha256(BLOCK.encode()).hexdigest(),
        )

    def test_multiline_binding_preserves_every_unselected_byte(self):
        from native_borrow_bindings_v2 import bind_borrow_primitives

        external = "module\npublic import Aeneas\n\n" + BLOCK + TAIL
        remaining, definitions = bind_borrow_primitives(external, [self.binding()])
        self.assertEqual(remaining, "module\npublic import Aeneas\n\n" + TAIL)
        self.assertIn("def " + LEAN + " : String → Result Str :=", definitions)
        self.assertIn("Correspondence036.NativeStringBorrow.borrowResult", definitions)
        self.assertNotIn("axiom", definitions)

    def test_unknown_signature_hash_duplicate_or_extra_node_rejects(self):
        from native_borrow_bindings_v2 import bind_borrow_primitives

        external = "module\n\n" + BLOCK + TAIL
        cases = [
            (external, [{**self.binding(), "block_sha256": "0" * 64}]),
            (external, [{**self.binding(), "lean": "unresolved"}]),
            (external, [self.binding(), self.binding()]),
            (external + BLOCK, [self.binding()]),
            (
                external.replace("String → Result Str", "String → Result String"),
                [self.binding()],
            ),
            (external.replace("  : String", "  : Bool"), [self.binding()]),
            (external.replace("axiom " + LEAN, "def " + LEAN), [self.binding()]),
            ("module\n\n" + TAIL, [self.binding()]),
        ]
        for source, bindings in cases:
            with (
                self.subTest(source=source, bindings=bindings),
                self.assertRaises(ValueError),
            ):
                bind_borrow_primitives(source, bindings)


OWNER_METHOD = b"""    pub fn as_str(&self) -> Option<&str> {
        match self {
            Value::String(s) => Some(s),
            _ => None,
        }
    }"""


class OwningAccessorCanaryTests(unittest.TestCase):
    def test_relocated_positive_scope_does_not_claim_source_rejection(self):
        from native_accessor_source_canary_v2 import validate_positive_config

        reference = dict(root_id="private", path="input.json", bytes=2, sha256="a" * 64)
        config = dict(
            format="core036.native-accessor-positive.v2",
            preparation_checkpoint_ref=reference,
            preparation_result_ref=reference,
            scope="relocated_accessor_positive_only",
            native_proof="unestablished",
            feature_complete=False,
        )
        self.assertIsNone(validate_positive_config(config))
        for changed in [
            {"scope": "source_canary_passed"},
            {"feature_complete": True},
            {"native_proof": "proved_for_declared_subject"},
            {"negative_passed": True},
        ]:
            with self.subTest(changed=changed), self.assertRaises(ValueError):
                validate_positive_config({**config, **changed})

    def test_preparation_scope_cannot_claim_a_completed_source_canary(self):
        from native_accessor_source_canary_v2 import validate_canary_config

        reference = dict(root_id="private", path="input.json", bytes=2, sha256="a" * 64)
        config = dict(
            format="core036.native-accessor-source-canary.v2",
            phase="prepare",
            baseline_checkpoint_ref=reference,
            baseline_result_ref=reference,
            positive_checkpoint_ref=reference,
            positive_result_ref=reference,
            borrow_selection_ref=reference,
            analysis_ref=reference,
            scope="owning_source_negative_control",
            native_proof="unestablished",
            feature_complete=False,
        )
        self.assertIsNone(validate_canary_config(config))
        for changed in [
            {"phase": "passed"},
            {"feature_complete": True},
            {"feature_complete": 0},
            {"native_proof": "proved_for_declared_subject"},
            {"scope": "complete_core"},
            {"canary_passed": True},
        ]:
            with self.subTest(changed=changed), self.assertRaises(ValueError):
                validate_canary_config({**config, **changed})

    def test_lock_changes_only_json_registry_identity_not_versions_or_dependencies(
        self,
    ):
        from native_accessor_source_canary_v2 import validate_owner_lock

        old = {
            "version": 4,
            "package": [
                {
                    "name": "serde_json",
                    "version": "1.0.151",
                    "source": "registry+https://github.com/rust-lang/crates.io-index",
                    "checksum": "c841b55ecdae098c80dcae9cf767f6f8a0c2cdb3416bbef72181df4d0fe73f14",
                    "dependencies": ["serde_core"],
                },
                {
                    "name": "serde_core",
                    "version": "1.0.229",
                    "source": "registry+https://github.com/rust-lang/crates.io-index",
                    "checksum": "unchanged",
                },
            ],
        }
        actual = copy.deepcopy(old)
        actual["package"][0].pop("source")
        actual["package"][0].pop("checksum")
        self.assertIsNone(validate_owner_lock(old, actual))
        cases = []
        wrong = copy.deepcopy(actual)
        wrong["package"][0]["version"] = "1.0.152"
        cases.append(wrong)
        wrong = copy.deepcopy(actual)
        wrong["package"][0]["dependencies"] = []
        cases.append(wrong)
        wrong = copy.deepcopy(actual)
        wrong["package"][1]["checksum"] = "substituted"
        cases.append(wrong)
        cases.append(old)
        for wrong in cases:
            with self.subTest(wrong=wrong), self.assertRaises(ValueError):
                validate_owner_lock(old, wrong)

    def test_path_graph_changes_only_owned_json_and_worker_locations(self):
        from native_accessor_source_canary_v2 import validate_owner_metadata

        old_json = "registry+json#serde_json@1.0.151"
        new_json = "path+file:///case/owner#serde_json@1.0.151"
        original = {
            "packages": [
                {
                    "id": "path+/old/worker#worker",
                    "name": "worker",
                    "version": "0.1",
                    "source": None,
                    "manifest_path": "/old/worker/Cargo.toml",
                    "targets": [{"src_path": "/old/worker/src/lib.rs"}],
                },
                {
                    "id": old_json,
                    "name": "serde_json",
                    "version": "1.0.151",
                    "source": "registry+json",
                    "manifest_path": "/registry/json/Cargo.toml",
                    "targets": [
                        {"kind": ["lib"], "src_path": "/registry/json/src/lib.rs"}
                    ],
                },
                {
                    "id": "registry+other",
                    "name": "other",
                    "version": "1",
                    "source": "registry+other",
                    "manifest_path": "/registry/other/Cargo.toml",
                    "targets": [],
                },
            ],
            "resolve": {
                "root": "path+/old/worker#worker",
                "nodes": [
                    {
                        "id": "path+/old/worker#worker",
                        "features": ["worker"],
                        "dependencies": [old_json],
                        "deps": [{"name": "serde_json", "pkg": old_json}],
                    },
                    {
                        "id": old_json,
                        "features": ["default", "std", "unbounded_depth"],
                        "dependencies": [],
                        "deps": [],
                    },
                    {
                        "id": "registry+other",
                        "features": [],
                        "dependencies": [],
                        "deps": [],
                    },
                ],
            },
            "workspace_root": "/old/worker",
            "target_directory": "/old/target",
            "workspace_members": ["path+/old/worker#worker"],
        }
        actual = copy.deepcopy(original)
        actual["packages"][0].update(
            id="path+/case/worker#worker",
            manifest_path="/case/worker/Cargo.toml",
            targets=[{"src_path": "/case/worker/src/lib.rs"}],
        )
        actual["packages"][1].update(
            id=new_json,
            source=None,
            manifest_path="/case/owner/Cargo.toml",
            targets=[{"kind": ["lib"], "src_path": "/case/owner/src/lib.rs"}],
        )
        actual["resolve"].update(root="path+/case/worker#worker")
        actual["resolve"]["nodes"][0].update(
            id="path+/case/worker#worker",
            dependencies=[new_json],
            deps=[{"name": "serde_json", "pkg": new_json}],
        )
        actual["resolve"]["nodes"][1]["id"] = new_json
        actual.update(
            workspace_root="/case/worker",
            target_directory="/case/target",
            workspace_members=["path+/case/worker#worker"],
        )
        paths = dict(
            old_worker="/old/worker",
            new_worker="/case/worker",
            old_owner="/registry/json",
            new_owner="/case/owner",
            old_target="/old/target",
            new_target="/case/target",
        )
        self.assertIsNone(validate_owner_metadata(original, actual, **paths))
        cases = []
        wrong = copy.deepcopy(actual)
        wrong["packages"][1]["source"] = "registry+json"
        cases.append(wrong)
        wrong = copy.deepcopy(actual)
        wrong["packages"][1]["targets"][0]["src_path"] = "/registry/json/src/lib.rs"
        cases.append(wrong)
        wrong = copy.deepcopy(actual)
        wrong["packages"].append(copy.deepcopy(wrong["packages"][1]))
        cases.append(wrong)
        wrong = copy.deepcopy(actual)
        wrong["resolve"]["nodes"][1]["features"].append("arbitrary_precision")
        cases.append(wrong)
        wrong = copy.deepcopy(actual)
        wrong["packages"][2]["version"] = "2"
        cases.append(wrong)
        for wrong in cases:
            with self.subTest(wrong=wrong), self.assertRaises(ValueError):
                validate_owner_metadata(original, wrong, **paths)

    def test_owner_copy_is_complete_independent_and_does_not_overwrite(self):
        from pathlib import Path
        import tempfile
        from native_accessor_source_canary_v2 import copy_source_tree

        with tempfile.TemporaryDirectory() as temporary:
            source, target = Path(temporary) / "source", Path(temporary) / "copy"
            (source / "src/value").mkdir(parents=True)
            (source / "Cargo.toml").write_text('[package]\nname="serde_json"\n')
            (source / "src/value/mod.rs").write_bytes(OWNER_METHOD)
            inventory = copy_source_tree(source, target, max_bytes=4096)
            self.assertEqual(
                {row["path"] for row in inventory},
                {"Cargo.toml", "src/value/mod.rs"},
            )
            for row in inventory:
                old, new = source / row["path"], target / row["path"]
                self.assertEqual(old.read_bytes(), new.read_bytes())
                self.assertNotEqual(
                    (old.stat().st_dev, old.stat().st_ino),
                    (new.stat().st_dev, new.stat().st_ino),
                )
            with self.assertRaises(FileExistsError):
                copy_source_tree(source, target, max_bytes=4096)

    def test_owner_copy_rejects_protected_names_before_stat_and_source_links(self):
        from pathlib import Path
        import os
        import tempfile
        from unittest.mock import patch
        from native_accessor_source_canary_v2 import copy_source_tree

        with tempfile.TemporaryDirectory() as temporary:
            source, target = Path(temporary) / "source", Path(temporary) / "copy"
            source.mkdir()
            # Synthetic fixture only; never an actual033 path.
            forbidden = source / "parameters.bin"
            forbidden.write_bytes(b"synthetic")
            original = os.lstat

            def guarded_stat(path, *args, **kwargs):
                if Path(path).name == "parameters.bin":
                    self.fail("protected name was inspected before rejection")
                return original(path, *args, **kwargs)

            with patch("os.lstat", guarded_stat), self.assertRaises(ValueError):
                copy_source_tree(source, target, max_bytes=4096)
            forbidden.unlink()
            (source / "linked").symlink_to(source / "missing")
            with self.assertRaises(ValueError):
                copy_source_tree(source, Path(temporary) / "links", max_bytes=4096)

    def test_owner_copy_stops_at_declared_byte_limit(self):
        from pathlib import Path
        import tempfile
        from native_accessor_source_canary_v2 import copy_source_tree

        with tempfile.TemporaryDirectory() as temporary:
            source = Path(temporary) / "source"
            source.mkdir()
            (source / "too-large").write_bytes(b"x" * 64)
            with self.assertRaises(ValueError):
                copy_source_tree(source, Path(temporary) / "copy", max_bytes=32)

    def test_only_the_actual_null_arm_changes_and_string_branch_survives(self):
        from native_accessor_source_canary_v2 import mutate_null_accessor

        source = (
            b"// retained owner prefix\n" + OWNER_METHOD + b"\n// retained suffix\n"
        )
        changed = mutate_null_accessor(source)
        expected = source.replace(
            b"            _ => None,",
            b'            Value::Null => Some(""), _ => None,',
            1,
        )
        self.assertEqual(changed, expected)
        self.assertEqual(changed.count(b"Value::String(s) => Some(s),"), 1)
        self.assertEqual(changed.count(b"\n"), source.count(b"\n"))
        self.assertNotEqual(changed, source)

    def test_unknown_duplicate_or_already_changed_owner_is_not_a_canary(self):
        from native_accessor_source_canary_v2 import mutate_null_accessor

        for source in [
            b"",
            OWNER_METHOD + OWNER_METHOD,
            OWNER_METHOD.replace(b"Some(s)", b"None"),
            OWNER_METHOD.replace(b"_ => None,", b'Value::Null => Some(""), _ => None,'),
            OWNER_METHOD.decode(),
        ]:
            with self.subTest(source=source), self.assertRaises(ValueError):
                mutate_null_accessor(source)

    def test_real_baseline_selectors_are_preserved_except_owned_paths(self):
        from native_accessor_source_canary_v2 import replay_extract_argv
        from pathlib import Path

        baseline = [
            "/tool/charon",
            "cargo",
            "--preset",
            "aeneas",
            "--sysroot",
            "default",
            "--start-from",
            "crate::reference::state_fact_row",
            "--opaque",
            "crate::serialization",
            "--include",
            "serde_json::value::_::as_str",
            "--dest-file",
            "/private/native-extraction/a0486/canonical_row.llbc",
            "--",
            "--locked",
            "--offline",
            "--manifest-path",
            "/private/native-extraction/a0486/worker/Cargo.toml",
            "--lib",
            "--features",
            "worker",
        ]
        old = Path("/private/native-extraction/a0486")
        case = Path("/private/disposable/native-accessor-canary-a9999")
        actual = replay_extract_argv(baseline, old, case, "positive")
        expected = list(baseline)
        expected[expected.index("--manifest-path") + 1] = str(
            case / "worker/Cargo.toml"
        )
        expected[expected.index("--dest-file") + 1] = str(
            case / "positive/canonical_row.llbc"
        )
        self.assertEqual(actual, expected)
        for phase in ["positive-a0494", "mutant-a0495"]:
            replay = replay_extract_argv(baseline, old, case, phase)
            self.assertEqual(
                replay[replay.index("--dest-file") + 1],
                str(case / phase / "canonical_row.llbc"),
            )
        for phase in ["../positive", "positive/extra", "positive-a1", "other-a0494"]:
            with self.subTest(phase=phase), self.assertRaises(ValueError):
                replay_extract_argv(baseline, old, case, phase)
        for wrong in [
            [
                x if x != "crate::reference::state_fact_row" else "crate::other"
                for x in baseline
            ],
            baseline + ["--include", "serde_json"],
            [x for x in baseline if x != "--offline"],
            baseline + ["--manifest-path", "/other/Cargo.toml"],
        ]:
            with self.subTest(wrong=wrong), self.assertRaises(ValueError):
                replay_extract_argv(wrong, old, case, "positive")


class NativeAccessorNegativeTests(unittest.TestCase):
    def test_recheck_requires_closed_real_mutant_extraction_and_kernel_witness(self):
        from native_accessor_source_canary_v2 import retained_negative_context
        from controller_v2 import artifact_context_for

        refs, _ = artifact_context_for("w001")
        config = dict(
            format="core036.native-accessor-recheck.v2",
            closed_execution_checkpoint_ref=refs.reference(
                "future_evidence", "attempts/a0497/checkpoint.json"
            ),
            scope="fresh_proof_over_closed_source_extraction",
            native_proof="unestablished",
            feature_complete=False,
        )
        context = retained_negative_context(refs, config)
        self.assertTrue(context["phase"].endswith("mutant-a0497"))
        self.assertEqual(set(context["commands"]), {"extract", "translate"})
        self.assertEqual(context["positive"]["checked_roots"], 21)
        for attempt in ["a0493", "a0494", "a0496"]:
            with self.subTest(attempt=attempt), self.assertRaises(ValueError):
                retained_negative_context(
                    refs,
                    {
                        **config,
                        "closed_execution_checkpoint_ref": refs.reference(
                            "future_evidence",
                            "attempts/" + attempt + "/checkpoint.json",
                        ),
                    },
                )
        for key, value in [
            ("feature_complete", True),
            ("native_proof", "proved"),
            ("scope", "native_complete"),
            ("extra", True),
        ]:
            with self.subTest(key=key), self.assertRaises(ValueError):
                retained_negative_context(refs, {**config, key: value})

    def test_actual_direct_rfl_diagnostic_has_two_expected_errors(self):
        from pathlib import Path
        import json
        from native_accessor_source_canary_v2 import validate_null_rejection

        folder = Path(
            "/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0497/commands/reject-fixed-null"
        )
        row = json.loads((folder / "result.json").read_text())
        stdout, stderr = (
            (folder / name).read_text() for name in ["stdout.txt", "stderr.txt"]
        )
        validate_null_rejection(row, stdout, stderr)
        for altered in [
            stdout.replace("ok none", 'ok (some (toStr ""))'),
            stdout.replace("Value.Null", "Value.Bool true"),
            stdout + "FixedNull.lean:1:0: error: unknown identifier\n",
            stdout.replace("error: Type mismatch", "error: unknown constant"),
        ]:
            with self.subTest(altered=altered), self.assertRaises(ValueError):
                validate_null_rejection(row, altered, stderr)

    def test_positive_generated_files_cannot_be_relabelled_as_mutant_outputs(self):
        from pathlib import Path
        import json
        from native_accessor_source_canary_v2 import generated_phase_bytes

        base = Path("/var/tmp/behavior-ir-core036-v2/w001")
        positive = json.loads(
            (base / "ground-lean-probe/a0494/result.json").read_text()
        )
        phase = Path(positive["phase"])
        generated = generated_phase_bytes(positive["generated"], phase)
        self.assertEqual(
            generated["Funs.lean"], (phase / "generated/Funs.lean").read_bytes()
        )
        with self.assertRaisesRegex(ValueError, "PhaseArtifactPath"):
            generated_phase_bytes(
                positive["generated"], phase.with_name("mutant-a0495")
            )
        wrong = copy.deepcopy(positive["generated"])
        wrong[0]["sha256"] = "0" * 64
        with self.assertRaisesRegex(ValueError, "PhaseArtifactBytes"):
            generated_phase_bytes(wrong, phase)
        for rows in [positive["generated"][:3], positive["generated"] * 2]:
            with self.subTest(rows=rows), self.assertRaises(ValueError):
                generated_phase_bytes(rows, phase)

    def test_negative_project_preserves_emitted_code_and_excludes_positive_theorems(
        self,
    ):
        from pathlib import Path
        import json
        from native_accessor_source_canary_v2 import negative_project_files
        from native_json_borrow_probe_v2 import project_files

        base = Path("/var/tmp/behavior-ir-core036-v2/w001")
        evidence = Path("/var/tmp/behavior-ir-core036-evidence-v2/w001")
        source = Path(__file__).parents[2] / "proofs/Correspondence036/Dependencies"
        selection = json.loads(
            (evidence / "inputs/native-json-borrow-005.json").read_text()
        )
        generated = {
            name: (
                base
                / "disposable/native-accessor-canary-a0492/positive-a0494/generated"
                / name
            ).read_bytes()
            for name in [
                "Types.lean",
                "Funs.lean",
                "TypesExternal_Template.lean",
                "FunsExternal_Template.lean",
            ]
        }
        sources = [
            (source / name).read_bytes()
            for name in [
                "NativeStringBorrow.lean",
                "NativeJsonBorrowWrapper.lean",
                "RuntimeNames.lean",
            ]
        ]
        witness = (
            b"module\npublic import CanonicalRowNames.Funs\n@[expose] public section\n"
        )
        files = negative_project_files(
            generated, *sources, selection["bindings"], witness
        )
        positive = project_files(generated, *sources, selection["bindings"])
        self.assertNotIn("NativeJsonBorrowWrapper", files)
        self.assertEqual(files["NativeAccessorMutantWitness"], witness)
        self.assertIn(b"public import NativeAccessorMutantWitness", files["ProofRoot"])
        self.assertNotIn(b"NativeJsonBorrowWrapper", files["ProofRoot"])
        for name in positive:
            if name not in {"NativeJsonBorrowWrapper", "ProofRoot"}:
                self.assertEqual(files[name], positive[name])
        for wrong in ["text", b"axiom false : False\n", b"sorry\n"]:
            with self.subTest(wrong=wrong), self.assertRaises(ValueError):
                negative_project_files(
                    generated, *sources, selection["bindings"], wrong
                )

    def test_actual_relocated_positive_is_required_before_owner_mutation(self):
        from native_accessor_source_canary_v2 import verified_positive_context
        from controller_v2 import artifact_context_for

        refs, _ = artifact_context_for("w001")
        config = dict(
            format="core036.native-accessor-negative.v2",
            positive_checkpoint_ref=refs.reference(
                "future_evidence", "attempts/a0494/checkpoint.json"
            ),
            positive_result_ref=refs.reference(
                "private", "ground-lean-probe/a0494/result.json"
            ),
            scope="owning_source_negative_only",
            native_proof="unestablished",
            feature_complete=False,
        )
        positive = verified_positive_context(refs, config)
        self.assertEqual(positive["checked_roots"], 21)
        for key, reference in [
            (
                "positive_checkpoint_ref",
                refs.reference("future_evidence", "attempts/a0493/checkpoint.json"),
            ),
            (
                "positive_checkpoint_ref",
                refs.reference("future_evidence", "attempts/a0491/checkpoint.json"),
            ),
            (
                "positive_result_ref",
                refs.reference("private", "ground-lean-probe/a0492/result.json"),
            ),
        ]:
            with self.subTest(key=key), self.assertRaises(ValueError):
                verified_positive_context(refs, {**config, key: reference})

    def test_negative_selection_cannot_claim_native_or_feature_completion(self):
        from native_accessor_source_canary_v2 import validate_negative_config

        reference = dict(
            root_id="future_evidence",
            path="attempts/a0494/checkpoint.json",
            bytes=10,
            sha256="a" * 64,
        )
        selected = dict(
            format="core036.native-accessor-negative.v2",
            positive_checkpoint_ref=reference,
            positive_result_ref={
                **reference,
                "root_id": "private",
                "path": "ground-lean-probe/a0494/result.json",
            },
            scope="owning_source_negative_only",
            native_proof="unestablished",
            feature_complete=False,
        )
        validate_negative_config(selected)
        for key, value in [
            ("native_proof", "proved"),
            ("feature_complete", True),
            ("scope", "relocated_accessor_positive_only"),
            ("format", "core036.native-accessor-positive.v2"),
            ("extra", True),
        ]:
            with self.subTest(key=key), self.assertRaises(ValueError):
                validate_negative_config({**selected, key: value})

    def test_complete_owner_inventory_allows_exactly_the_real_method_change(self):
        from native_accessor_source_canary_v2 import (
            OWNER_METHOD,
            mutate_null_accessor,
            mutated_owner_inventory,
        )

        original = b"// prefix\n" + OWNER_METHOD + b"\n// suffix\n"
        mutant = mutate_null_accessor(original)
        inventory = [
            dict(path="Cargo.toml", bytes=5, sha256="c" * 64),
            dict(
                path="src/value/mod.rs",
                bytes=len(original),
                sha256=hashlib.sha256(original).hexdigest(),
            ),
        ]
        expected = copy.deepcopy(inventory)
        expected[1].update(bytes=len(mutant), sha256=hashlib.sha256(mutant).hexdigest())
        self.assertEqual(mutated_owner_inventory(inventory, original), expected)
        self.assertNotEqual(inventory, expected)
        for rows in [
            inventory[:1],
            inventory + [inventory[1]],
            [{**x, "sha256": "f" * 64} for x in inventory],
        ]:
            with self.subTest(rows=rows), self.assertRaises(ValueError):
                mutated_owner_inventory(rows, original)

    def test_isolated_rejection_uses_the_unchanged_null_declaration(self):
        from native_accessor_source_canary_v2 import isolated_null_source
        from pathlib import Path

        wrapper = (
            Path(__file__).parents[2]
            / "proofs/Correspondence036/Dependencies/NativeJsonBorrowWrapper.lean"
        ).read_bytes()
        result = isolated_null_source(wrapper)
        declaration = (
            b"theorem value_as_str_null :\n"
            b"    transition_study036.serde_json.value.Value.impl.as_str .Null = ok none := rfl\n"
        )
        self.assertIn(declaration, wrapper)
        self.assertIn(declaration, result)
        self.assertNotIn(b"public import NativeJsonBorrowWrapper", result)
        self.assertNotIn(b"value_as_str_bytes", result)
        for wrong in [
            wrapper.replace(declaration, b""),
            wrapper + declaration,
            wrapper.replace(b".Null = ok none := rfl", b".Bool true = ok none := rfl"),
        ]:
            with self.subTest(wrong=wrong), self.assertRaises(ValueError):
                isolated_null_source(wrong)

    def test_mutant_roots_are_independently_fixed_to_the_actual_null_result(self):
        from native_accessor_source_canary_v2 import mutant_witness_roots
        from check_proofs import _validate_roots

        rows = mutant_witness_roots()
        _validate_roots(rows)
        self.assertEqual(len(rows), 2)
        self.assertEqual(
            {x["declaration"] for x in rows},
            {
                "Correspondence036.NativeAccessorSourceCanary.mutant_null_is_some",
                "Correspondence036.NativeAccessorSourceCanary.mutant_null_not_none",
            },
        )
        value = "transition_study036.serde_json.value.Value"
        self.assertEqual(
            rows[0]["expected_type"],
            f'{value}.impl.as_str {value}.Null = Aeneas.Std.Result.ok (some (Aeneas.Std.toStr ""))',
        )
        self.assertEqual(
            rows[1]["expected_type"],
            f"{value}.impl.as_str {value}.Null ≠ Aeneas.Std.Result.ok none",
        )

    def test_compile_failure_alone_is_not_a_semantic_rejection(self):
        from native_accessor_source_canary_v2 import validate_null_rejection

        row = dict(exit_code=1, timed_out=False)
        stdout = (
            "FixedNull.lean:8:75: error: Tactic `rfl` failed: The left-hand side\n"
            "  transition_study036.serde_json.value.Value.impl.as_str transition_study036.serde_json.value.Value.Null\n"
            "is not definitionally equal to the right-hand side\n  ok none\n"
        )
        validate_null_rejection(row, stdout, "")
        for outcome, out, err in [
            ({**row, "exit_code": 0}, stdout, ""),
            ({**row, "exit_code": -9}, stdout, ""),
            ({**row, "timed_out": True}, stdout, ""),
            (row, "unknown module prefix CanonicalRowNames", ""),
            (row, stdout.replace(".Null", ".Bool true"), ""),
            (row, stdout.replace("ok none", 'ok (some (toStr ""))'), ""),
            (row, stdout + "FixedNull.lean:1:0: error: unknown identifier\n", ""),
            (row, stdout, "error: failed to load shared library"),
        ]:
            with self.subTest(out=out, err=err), self.assertRaises(ValueError):
                validate_null_rejection(outcome, out, err)


class NativeAccessorWrongOwnerControlTests(unittest.TestCase):
    def test_real_metadata_control_reaches_owner_binding_and_checks_positive_first(
        self,
    ):
        from pathlib import Path
        import json
        from native_accessor_source_canary_v2 import wrong_owner_control

        base = Path("/var/tmp/behavior-ir-core036-v2/w001")
        old = base / "native-extraction/a0486"
        case = base / "disposable/native-accessor-canary-a0492"
        original = json.loads((old / "commands/metadata/stdout.txt").read_text())
        actual = json.loads(
            (base / "ground-lean-probe/a0494/commands/metadata/stdout.txt").read_text()
        )
        inventory = json.loads(
            (base / "ground-lean-probe/a0492/source-inventories.json").read_text()
        )
        locations = dict(
            old_worker=str(old / "worker"),
            new_worker=str(case / "worker"),
            old_owner=inventory["original_owner"],
            new_owner=str(case / "owner/serde_json-1.0.151"),
            old_target=original["target_directory"],
            new_target=actual["target_directory"],
        )
        result = wrong_owner_control(original, actual, **locations)
        self.assertEqual(result["actual_rejection"], "NativeAccessorCanaryJsonOwner")
        self.assertNotIn(
            result["incorrect_claimed_owner"],
            [locations["old_owner"], locations["new_owner"]],
        )
        invalid = copy.deepcopy(actual)
        package = next(p for p in invalid["packages"] if p["name"] == "serde_json")
        package["manifest_path"] = "/unrelated/Cargo.toml"
        with self.assertRaisesRegex(ValueError, "JsonOwner"):
            wrong_owner_control(original, invalid, **locations)


class NativeRowBindingTests(unittest.TestCase):
    def test_row_audit_requires_actual_closed_expression_rejection_control(self):
        from native_row_probe_v2 import validate_row_abstraction_report

        original = dict(
            source_function="transition_study036.reference.state_fact_row",
            derived_function="Correspondence036.NativeRowDictionary.RowRead",
            dictionary_instance="transition_study036.Shared0T.Insts.Serde_jsonValueIndexIndex",
            consumer="serde_json.value.Value.Insts.CoreOpsIndexIndexIValue.index",
            sites=4,
            reinstantiation_exact=True,
        )
        with self.assertRaises(ValueError):
            validate_row_abstraction_report(original)
        expected = {**original, "closed_constant_abstraction_rejected": True}
        validate_row_abstraction_report(expected)
        for value in (False, 0, 1, None):
            with self.subTest(value=value), self.assertRaises(ValueError):
                validate_row_abstraction_report(
                    {**expected, "closed_constant_abstraction_rejected": value}
                )

    def test_abstraction_report_is_fixed_to_actual_source_and_four_read_sites(self):
        from native_row_probe_v2 import validate_row_abstraction_report

        report = dict(
            source_function="transition_study036.reference.state_fact_row",
            derived_function="Correspondence036.NativeRowDictionary.RowRead",
            dictionary_instance="transition_study036.Shared0T.Insts.Serde_jsonValueIndexIndex",
            consumer="serde_json.value.Value.Insts.CoreOpsIndexIndexIValue.index",
            sites=4,
            reinstantiation_exact=True,
            closed_constant_abstraction_rejected=True,
        )
        validate_row_abstraction_report(report)
        for key, value in [
            ("source_function", "alternate_row"),
            ("consumer", "opaque_callback"),
            ("sites", 0),
            ("sites", 3),
            ("sites", True),
            ("reinstantiation_exact", False),
            ("reinstantiation_exact", 1),
            ("native_proof", "proved"),
        ]:
            with self.subTest(key=key, value=value), self.assertRaises(ValueError):
                validate_row_abstraction_report({**report, key: value})

    def test_row_probe_selection_cannot_choose_verifier_or_promote_scope(self):
        from native_row_probe_v2 import validate_row_probe_config

        reference = dict(
            root_id="repository", path="source.json", bytes=1, sha256="a" * 64
        )
        selection = dict(
            format="core036.native-row-probe.v2",
            positive_checkpoint_ref=reference,
            positive_result_ref=reference,
            borrow_selection_ref=reference,
            scope_ref=reference,
            operations_source_ref=reference,
            proofs_source_ref=reference,
            row_bindings=[{} for _ in range(8)],
            dictionary_bindings=[{} for _ in range(4)],
        )
        validate_row_probe_config(selection)
        validate_row_probe_config({**selection, "canonical_sources_ref": reference})
        with self.assertRaises(ValueError):
            validate_row_probe_config({**selection, "canonical_sources_ref": True})
        for key, value in [
            ("format", "core036.native-complete.v2"),
            ("native_proof", "proved"),
            ("feature_complete", True),
            ("verifier", "/candidate/verifier"),
            ("row_bindings", []),
            ("dictionary_bindings", []),
        ]:
            with self.subTest(key=key), self.assertRaises(ValueError):
                validate_row_probe_config({**selection, key: value})

    def test_dictionary_root_contract_binds_generated_caller_and_all_results(self):
        from native_row_context_v2 import row_dictionary_roots
        from check_proofs import _validate_roots

        roots = row_dictionary_roots()
        _validate_roots(roots)
        expected = {
            "shared_read_exact",
            "value_index_exact",
            "shared_read_congr",
            "shared_dictionary_read_congr",
            "value_index_read_congr",
            "generated_row_is_RowRead",
            "row_read_noninterference",
            "generated_row_read_replacement",
        }
        self.assertEqual({x["declaration"].rsplit(".", 1)[1] for x in roots}, expected)
        by_name = {
            x["declaration"].rsplit(".", 1)[1]: x["expected_type"] for x in roots
        }
        self.assertIn(
            "transition_study036.reference.state_fact_row",
            by_name["generated_row_is_RowRead"],
        )
        self.assertIn(
            "transition_study036.reference.state_fact_row",
            by_name["generated_row_read_replacement"],
        )
        self.assertIn("ReadEq", by_name["row_read_noninterference"])
        for typ in by_name.values():
            self.assertNotIn("InputDomain", typ)
            self.assertNotIn("ReturnsNormally", typ)
            self.assertNotIn("native_equivalent", typ)

    def test_complete_row_project_preserves_all_generated_code_and_dictionary_fields(
        self,
    ):
        import json
        from native_row_context_v2 import row_project_files
        from native_row_bindings_v2 import ROW_DICTIONARY_PRIMITIVES

        folder = Path(
            "/var/tmp/behavior-ir-core036-v2/w001/disposable/native-accessor-canary-a0492/positive-a0494/generated"
        )
        generated = {
            name: (folder / name).read_bytes()
            for name in [
                "Types.lean",
                "Funs.lean",
                "TypesExternal_Template.lean",
                "FunsExternal_Template.lean",
            ]
        }
        external, reached = self.fixture()
        dictionary = []
        for name, spec in ROW_DICTIONARY_PRIMITIVES.items():
            blocks = list(re.finditer(r"^/-- \[[\s\S]*?(?=\n\n|\Z)", external, re.M))
            selected = [
                m.group()
                + ("\n\n" if external[m.end() : m.end() + 2] == "\n\n" else "")
                for m in blocks
                if re.search(r"\baxiom\s+" + re.escape(name) + r"(?=\s|:)", m.group())
            ]
            self.assertEqual(len(selected), 1)
            raw = selected[0].encode()
            dictionary.append(
                dict(
                    lean=name,
                    rust=spec["rust"],
                    block_bytes=len(raw),
                    block_sha256=hashlib.sha256(raw).hexdigest(),
                )
            )
        context = Path(__file__).parents[2] / "proofs/Correspondence036/Dependencies"
        selection = json.loads(
            Path(
                "/var/tmp/behavior-ir-core036-evidence-v2/w001/inputs/native-json-borrow-005.json"
            ).read_text()
        )
        source = b"module\npublic import Aeneas\n@[expose] public section\n"
        files = row_project_files(
            generated,
            (context / "NativeStringBorrow.lean").read_bytes(),
            (context / "RuntimeNames.lean").read_bytes(),
            source,
            source,
            selection["bindings"],
            reached,
            dictionary,
        )
        self.assertEqual(files["CanonicalRowNames.Types"], generated["Types.lean"])
        self.assertEqual(files["CanonicalRowNames.Funs"], generated["Funs.lean"])
        self.assertNotRegex(
            files["CanonicalRowNames.TypesExternal"].decode(), r"\baxiom\s+"
        )
        self.assertNotRegex(
            files["CanonicalRowNames.FunsExternal"].decode(), r"\baxiom\s+"
        )
        self.assertIn(b"index_into_mut", files["CanonicalRowNames.Types"])
        self.assertIn(b"index_or_insert", files["CanonicalRowNames.Types"])
        self.assertIn(b"public import NativeCanonicalRowProofs", files["ProofRoot"])
        self.assertIn("RowAbstractionAudit", files)
        self.assertIn(b"public import RowAbstractionAudit", files["ProofRoot"])
        for altered in [b"sorry\n", b"axiom desired_equivalence : False\n"]:
            with self.subTest(altered=altered), self.assertRaises(ValueError):
                row_project_files(
                    generated,
                    (context / "NativeStringBorrow.lean").read_bytes(),
                    (context / "RuntimeNames.lean").read_bytes(),
                    altered,
                    source,
                    selection["bindings"],
                    reached,
                    dictionary,
                )

    def test_full_dictionary_context_is_separate_and_keeps_real_forwarding(self):
        from native_row_bindings_v2 import (
            ROW_DICTIONARY_PRIMITIVES,
            bind_row_dictionary_primitives,
        )

        folder = Path(
            "/var/tmp/behavior-ir-core036-v2/w001/disposable/native-accessor-canary-a0492/positive-a0494/generated"
        )
        raw = (folder / "FunsExternal_Template.lean").read_text()
        expected = {
            "Str.Insts.Serde_jsonValueIndexIndex.index_into_mut",
            "Str.Insts.Serde_jsonValueIndexIndex.index_or_insert",
            "Shared0T.Insts.Serde_jsonValueIndexIndex.index_into_mut",
            "Shared0T.Insts.Serde_jsonValueIndexIndex.index_or_insert",
        }
        self.assertEqual(set(ROW_DICTIONARY_PRIMITIVES), expected)
        rows = []
        for name, spec in ROW_DICTIONARY_PRIMITIVES.items():
            blocks = list(re.finditer(r"^/-- \[[\s\S]*?(?=\n\n|\Z)", raw, re.M))
            selected = [
                m.group() + ("\n\n" if raw[m.end() : m.end() + 2] == "\n\n" else "")
                for m in blocks
                if re.search(r"\baxiom\s+" + re.escape(name) + r"(?=\s|:)", m.group())
            ]
            self.assertEqual(len(selected), 1)
            block = selected[0].encode()
            rows.append(
                dict(
                    lean=name,
                    rust=spec["rust"],
                    block_bytes=len(block),
                    block_sha256=hashlib.sha256(block).hexdigest(),
                )
            )
            if name.startswith("Shared0T"):
                self.assertIn("IndexInst", spec["implementation"])
                self.assertNotIn("unreached", spec["implementation"])
            else:
                self.assertIn("unreached", spec["implementation"])
        remaining, definitions = bind_row_dictionary_primitives(raw, rows)
        for name in expected:
            self.assertIsNone(
                re.search(r"\baxiom\s+" + re.escape(name) + r"(?=\s|:)", remaining)
            )
            self.assertIn("def " + name, definitions)
        self.assertIn(
            "axiom Str.Insts.Serde_jsonValueIndexIndex.index_into\n", remaining
        )
        for altered in [rows[:-1], rows + rows[:1]]:
            with self.subTest(altered=altered), self.assertRaises(ValueError):
                bind_row_dictionary_primitives(raw, altered)

    def test_row_type_context_keeps_full_value_and_models_only_inert_error_sorts(self):
        from native_row_context_v2 import complete_row_external_types

        folder = Path(
            "/var/tmp/behavior-ir-core036-v2/w001/disposable/native-accessor-canary-a0492/positive-a0494/generated"
        )
        external = (folder / "TypesExternal_Template.lean").read_text()
        result = complete_row_external_types(external)
        for name in ["core.io.error.Error", "serde_json.error.Error"]:
            self.assertIn("structure " + name + " where", result)
            self.assertNotIn("axiom " + name, result)
        self.assertIn("inductive serde_json.map.Map", result)
        self.assertNotRegex(result, r"\baxiom\s+")
        original = (folder / "Types.lean").read_bytes()
        self.assertIn(b"| Io : core.io.error.Error", original)
        self.assertIn(b"| Json : serde_json.error.Error", original)
        for altered in [
            external.replace("axiom core.io.error.Error : Type", ""),
            external + "\naxiom serde_json.error.Error : Type\n",
            external.replace(
                "axiom core.io.error.Error : Type", "axiom core.io.error.Error : Prop"
            ),
            result,
        ]:
            with self.subTest(altered=altered), self.assertRaises(ValueError):
                complete_row_external_types(altered)

    def test_row_component_scope_cannot_admit_native_or_runtime_correctness(self):
        from native_row_context_v2 import validate_row_scope

        packet = dict(
            format="core036.native-row-scope.v2",
            scope="generated_row_component_model_only",
            native_proof="unestablished",
            feature_complete=False,
            runtime_totality_established=False,
        )
        validate_row_scope(packet)
        for key, value in [
            ("native_proof", "proved"),
            ("feature_complete", True),
            ("runtime_totality_established", True),
            ("scope", "full_core"),
            ("extra", True),
        ]:
            with self.subTest(key=key), self.assertRaises(ValueError):
                validate_row_scope({**packet, key: value})

    expected = {
        "Str.Insts.CoreCmpPartialEqStr.eq",
        "Str.Insts.AllocBorrowToOwnedString.to_owned",
        "Str.Insts.Serde_jsonValueIndexIndex.index_into",
        "Shared0T.Insts.Serde_jsonValueIndexIndex.index_into",
        "serde_json.value.Value.Insts.CoreOpsIndexIndexIValue.index",
        "serde_json.value.Value.Insts.CoreCloneClone.clone",
        "serde_json.map.MapStringValue.impl.new",
        "serde_json.map.MapStringValue.impl.insert",
    }

    def fixture(self):
        from native_row_bindings_v2 import ROW_PRIMITIVES

        raw = Path(
            "/var/tmp/behavior-ir-core036-v2/w001/disposable/native-accessor-canary-a0492/positive-a0494/generated/FunsExternal_Template.lean"
        ).read_text()
        rows = []
        for lean, specification in ROW_PRIMITIVES.items():
            matches = list(re.finditer(r"^/-- \[[\s\S]*?(?=\n\n|\Z)", raw, re.M))
            selected = [
                m.group() + ("\n\n" if raw[m.end() : m.end() + 2] == "\n\n" else "")
                for m in matches
                if re.search(r"\baxiom\s+" + re.escape(lean) + r"(?=\s|:)", m.group())
            ]
            self.assertEqual(len(selected), 1)
            block = selected[0].encode()
            rows.append(
                dict(
                    lean=lean,
                    rust=specification["rust"],
                    block_bytes=len(block),
                    block_sha256=hashlib.sha256(block).hexdigest(),
                )
            )
        return raw, rows

    def test_exactly_the_eight_reachable_nodes_are_registered(self):
        from native_row_bindings_v2 import ROW_PRIMITIVES, bind_row_primitives

        self.assertEqual(set(ROW_PRIMITIVES), self.expected)
        raw, rows = self.fixture()
        remaining, definitions = bind_row_primitives(raw, rows)
        for lean in self.expected:
            self.assertIsNone(
                re.search(r"\baxiom\s+" + re.escape(lean) + r"(?=\s|:)", remaining)
            )
            self.assertIn("def " + lean, definitions)
        self.assertIn(
            "axiom Str.Insts.Serde_jsonValueIndexIndex.index_into_mut", remaining
        )
        self.assertIn(
            "axiom Shared0T.Insts.Serde_jsonValueIndexIndex.index_or_insert", remaining
        )
        self.assertNotIn("Value.impl.as_str", definitions)
        self.assertNotRegex(definitions, r"^\s*(axiom|sorry)\b")

    def test_changed_source_signature_duplicates_and_unreviewed_nodes_reject(self):
        from native_row_bindings_v2 import bind_row_primitives

        raw, rows = self.fixture()
        for altered in [
            raw.replace("Str → Str → Result Bool", "Str → Str → Result Unit"),
            raw.replace("Source:", "AlteredSource:"),
            raw + raw,
        ]:
            with self.subTest(altered=altered), self.assertRaises(ValueError):
                bind_row_primitives(altered, rows)
        for altered in [
            rows[:-1],
            rows + rows[:1],
            [{**row, "block_sha256": "0" * 64} for row in rows],
            [{**row, "lean": row["lean"] + ".other"} for row in rows],
            [{**row, "extra": True} for row in rows],
        ]:
            with self.subTest(altered=altered), self.assertRaises(ValueError):
                bind_row_primitives(raw, altered)


class NativeCanonicalRowContextTests(unittest.TestCase):
    def test_canonical_roots_match_independent_full_result_error_frame_contract(self):
        from native_canonical_row_context_v2 import canonical_row_roots
        from check_proofs import _validate_roots

        expected = [
            {
                "id": "canonical_row.exact",
                "declaration": "Correspondence036.NativeCanonicalRow.state_fact_row_exact",
                "expected_type": "∀ (row : transition_study036.behavior_store.documents.SeedEntity) (parents children : Correspondence036.NativeCanonicalRow.Map), Correspondence036.NativeCanonicalRow.InputDomain row parents children → transition_study036.reference.state_fact_row row parents children = Aeneas.Std.Result.ok (Correspondence036.NativeCanonicalRow.rowSpec row parents children)",
            },
            {
                "id": "canonical_row.seed_identity_first",
                "declaration": "Correspondence036.NativeCanonicalRow.seed_identity_first",
                "expected_type": '∀ (row : transition_study036.behavior_store.documents.SeedEntity) (parents children : Correspondence036.NativeCanonicalRow.Map), Correspondence036.NativeCanonicalRow.InputDomain row parents children → Correspondence036.NativeCanonicalRow.textId row = none → transition_study036.reference.state_fact_row row parents children = Aeneas.Std.Result.ok (.Err (.Prerequisite (Aeneas.Std.toStr "SeedIdentity")), parents, children)',
            },
            {
                "id": "canonical_row.other_keys",
                "declaration": "Correspondence036.NativeCanonicalRow.other_keys",
                "expected_type": "∀ (row : transition_study036.behavior_store.documents.SeedEntity) (parents children : Correspondence036.NativeCanonicalRow.Map) (id query : String), Correspondence036.NativeCanonicalRow.InputDomain row parents children → Correspondence036.NativeCanonicalRow.textId row = some id → query ≠ id → (do let (_, parents1, children1) ← transition_study036.reference.state_fact_row row parents children; Aeneas.Std.Result.ok (Correspondence036.NativeCanonicalRow.lookup parents1 query, Correspondence036.NativeCanonicalRow.lookup children1 query)) = Aeneas.Std.Result.ok (Correspondence036.NativeCanonicalRow.lookup parents query, Correspondence036.NativeCanonicalRow.lookup children query)",
            },
        ]
        actual = canonical_row_roots()
        self.assertEqual(actual, expected)
        _validate_roots(actual)

    def test_canonical_source_packet_cannot_choose_expected_result_or_verifier(self):
        from native_canonical_row_context_v2 import validate_canonical_sources

        reference = dict(
            root_id="repository", path="source.lean", bytes=1, sha256="a" * 64
        )
        packet = dict(
            format="core036.native-canonical-row-sources.v2",
            specification_source_ref=reference,
            bridges_source_ref=reference,
            exact_source_ref=reference,
        )
        validate_canonical_sources(packet)
        for key in (
            "specification_source_ref",
            "bridges_source_ref",
            "exact_source_ref",
        ):
            with self.subTest(key=key), self.assertRaises(ValueError):
                validate_canonical_sources(
                    {k: v for k, v in packet.items() if k != key}
                )
        for key, value in (
            ("expected_roots", []),
            ("native_proof", "proved"),
            ("feature_complete", True),
            ("verifier", "/candidate"),
        ):
            with self.subTest(key=key), self.assertRaises(ValueError):
                validate_canonical_sources({**packet, key: value})

    def test_canonical_extension_preserves_generated_basis_and_pins_specification(self):
        from pathlib import Path
        from native_canonical_row_context_v2 import extend_canonical_row_project

        names = [
            "NativeStringBorrow",
            "RuntimeNames",
            "CanonicalRowNames.TypesExternal",
            "CanonicalRowNames.Types",
            "NativeCanonicalRowOperations",
            "CanonicalRowNames.FunsExternal",
            "CanonicalRowNames.Funs",
            "NativeCanonicalRowProofs",
            "RowAbstractionAudit",
        ]
        base = {name: ("module\n-- " + name + "\n").encode() for name in names}
        base["ProofRoot"] = (
            b"module\npublic import NativeCanonicalRowProofs\npublic import RowAbstractionAudit\n@[expose] public section\n"
        )
        source = Path(__file__).parents[2] / "proofs/Correspondence036/Dependencies"
        spec = (source / "NativeCanonicalRowSpec.lean").read_bytes()
        sources = [spec, b"module\n", b"module\n"]
        extended = extend_canonical_row_project(base, *sources)
        self.assertEqual(len(extended), 13)
        for name in names:
            self.assertEqual(extended[name], base[name])
        self.assertIn(b"public import NativeCanonicalRowExact", extended["ProofRoot"])
        self.assertEqual(list(extended)[-1], "ProofRoot")
        with self.assertRaisesRegex(ValueError, "SpecificationBinding"):
            extend_canonical_row_project(base, spec + b"\n-- altered", *sources[1:])
        for altered in (
            {k: v for k, v in base.items() if k != "CanonicalRowNames.Funs"},
            {**base, "Unexpected": b"module\n"},
        ):
            with self.assertRaises(ValueError):
                extend_canonical_row_project(altered, *sources)
        with self.assertRaises(ValueError):
            extend_canonical_row_project(
                base, spec, b"axiom cheat : Prop\n", sources[2]
            )


class ReferenceComponentGuardTests(unittest.TestCase):
    def test_protected_ancestor_is_rejected_by_shared_and_component_entrypoints(self):
        from artifact_registration_v2 import guard_reference
        from native_canonical_row_context_v2 import validate_canonical_sources
        from native_row_probe_v2 import validate_row_probe_config

        reference = dict(
            root_id="repository", path="source.json", bytes=2, sha256="a" * 64
        )
        packet = dict(
            format="core036.native-canonical-row-sources.v2",
            specification_source_ref=reference,
            bridges_source_ref=reference,
            exact_source_ref=reference,
        )
        probe = dict(
            format="core036.native-row-probe.v2",
            positive_checkpoint_ref=reference,
            positive_result_ref=reference,
            borrow_selection_ref=reference,
            scope_ref=reference,
            operations_source_ref=reference,
            proofs_source_ref=reference,
            row_bindings=[{} for _ in range(8)],
            dictionary_bindings=[{} for _ in range(4)],
        )
        for name in ("parameters.bin", "compression_prover_key.bin"):
            nested = {**reference, "path": "synthetic/" + name + "/nested.json"}
            with (
                self.subTest(name=name),
                self.assertRaisesRegex(ValueError, "ProtectedArtifact"),
            ):
                guard_reference(nested)
            for key in (
                "specification_source_ref",
                "bridges_source_ref",
                "exact_source_ref",
            ):
                with (
                    self.subTest(name=name, key=key),
                    self.assertRaisesRegex(ValueError, "ProtectedArtifact"),
                ):
                    validate_canonical_sources({**packet, key: nested})
            with (
                self.subTest(name=name, key="canonical_sources_ref"),
                self.assertRaisesRegex(ValueError, "ProtectedArtifact"),
            ):
                validate_row_probe_config({**probe, "canonical_sources_ref": nested})


class JsonReadSourceSupportTests(unittest.TestCase):
    READ = "serde_json::value::index::_::index_into"
    GET = "serde_json::map::_::get"

    def readers(self):
        return [
            {
                "def_id": index,
                "item_meta": {
                    "name": [
                        {"Ident": ["serde_json", 0]},
                        {"Ident": ["value", 0]},
                        {"Ident": ["index", 0]},
                        {"Impl": {"Trait": 20 + index}},
                        {"Ident": ["index_into", 0]},
                    ]
                },
                "body_present": True,
                "body_form": "translated",
                "body_sha256": str(index) * 64,
            }
            for index in [1, 2]
        ]

    def test_both_used_json_read_bodies_are_required_and_retained(self):
        self.assertEqual(
            source_support_includes({"source_support_includes": [self.READ]}),
            [self.READ],
        )
        rows = self.readers()
        result = required_source_body_inventory(rows, [self.READ])
        self.assertEqual({row["function_id"] for row in result}, {1, 2})
        self.assertEqual({row["body_sha256"] for row in result}, {"1" * 64, "2" * 64})
        self.assertTrue(all(row["status"] == "unestablished" for row in result))
        self.assertEqual(
            required_source_body_inventory(list(reversed(rows)), [self.READ]),
            list(reversed(result)),
        )

    def test_missing_opaque_ambiguous_and_unrelated_readers_fail_closed(self):
        rows = self.readers()
        mutations = [
            rows[:1],
            rows[1:],
            rows + [copy.deepcopy(rows[0])],
            [rows[0], copy.deepcopy(rows[0])],
        ]
        for index in [0, 1]:
            for fields in [
                {"body_present": False},
                {"body_form": "opaque"},
                {"body_sha256": None},
            ]:
                changed = copy.deepcopy(rows)
                changed[index].update(fields)
                mutations.append(changed)
            changed = copy.deepcopy(rows)
            changed[index]["item_meta"]["name"][2] = {"Ident": ["unrelated", 0]}
            mutations.append(changed)
        for changed in mutations:
            with self.subTest(changed=changed), self.assertRaises(ValueError):
                required_source_body_inventory(changed, [self.READ])

    def test_json_map_read_wrapper_requires_its_actual_body(self):
        self.assertEqual(
            source_support_includes({"source_support_includes": [self.GET]}),
            [self.GET],
        )
        row = {
            "def_id": 3,
            "item_meta": {
                "name": [
                    {"Ident": ["serde_json", 0]},
                    {"Ident": ["map", 0]},
                    {"Impl": {"Ty": "source-bound-inherent-impl"}},
                    {"Ident": ["get", 0]},
                ]
            },
            "body_present": True,
            "body_form": "translated",
            "body_sha256": "3" * 64,
        }
        result = required_source_body_inventory([row], [self.GET])
        self.assertEqual(len(result), 1)
        self.assertEqual(result[0]["function_id"], 3)
        for changed in [[], [row, row], [{**row, "body_present": False}]]:
            with self.subTest(changed=changed), self.assertRaises(ValueError):
                required_source_body_inventory(changed, [self.GET])


class JsonMapLayoutSourceTests(unittest.TestCase):
    PATTERN = "serde_json::map::Map"

    def row(self):
        return {
            "def_id": 12,
            "item_meta": {
                "name": [{"Ident": [part, 0]} for part in ["serde_json", "map", "Map"]]
            },
            "kind": {"Struct": [{"name": "map", "ty": {"Adt": "source-bound"}}]},
        }

    def test_real_map_struct_is_selected_and_hashed_without_claiming_refinement(self):
        from extract import required_source_type_inventory

        self.assertEqual(
            source_support_includes({"source_support_includes": [self.PATTERN]}),
            [self.PATTERN],
        )
        rows = required_source_type_inventory([self.row()], [self.PATTERN])
        self.assertEqual(len(rows), 1)
        self.assertEqual(rows[0]["type_id"], 12)
        self.assertEqual(rows[0]["status"], "unestablished")
        self.assertEqual(len(rows[0]["kind_sha256"]), 64)
        for broad in ["serde_json::map", "serde_json::_::Map"]:
            with self.assertRaises(ValueError):
                source_support_includes({"source_support_includes": [broad]})

    def test_opaque_missing_alias_duplicate_and_wrong_map_fields_fail_closed(self):
        from extract import required_source_type_inventory

        row = self.row()
        for rows in [
            [],
            [row, copy.deepcopy(row)],
            [{**row, "kind": "Opaque"}],
            [{**row, "kind": {"Alias": "candidate-defined"}}],
            [{**row, "kind": {"Struct": []}}],
            [{**row, "kind": {"Struct": [{"name": "wrong"}]}}],
            [{**row, "kind": {"Struct": row["kind"]["Struct"] * 2}}],
        ]:
            with self.subTest(rows=rows), self.assertRaises(ValueError):
                required_source_type_inventory(rows, [self.PATTERN])


class JsonValueIndexSourceTests(unittest.TestCase):
    PATTERN = "serde_json::value::index::_::index"

    def row(self):
        return {
            "def_id": 8,
            "item_meta": {
                "name": [
                    {"Ident": ["serde_json", 0]},
                    {"Ident": ["value", 0]},
                    {"Ident": ["index", 0]},
                    {"Impl": {"Trait": 9}},
                    {"Ident": ["index", 0]},
                ]
            },
            "body_present": True,
            "body_form": "translated",
            "body_sha256": "a" * 64,
        }

    def test_generic_value_index_wrapper_is_retained_as_actual_source(self):
        self.assertEqual(
            source_support_includes({"source_support_includes": [self.PATTERN]}),
            [self.PATTERN],
        )
        rows = required_source_body_inventory([self.row()], [self.PATTERN])
        self.assertEqual(len(rows), 1)
        self.assertEqual(rows[0]["function_id"], 8)
        self.assertEqual(rows[0]["body_sha256"], "a" * 64)
        self.assertEqual(rows[0]["status"], "unestablished")

    def test_opaque_missing_duplicate_or_mutable_wrapper_is_not_admitted(self):
        row = self.row()
        wrong_method = copy.deepcopy(row)
        wrong_method["item_meta"]["name"][-1] = {"Ident": ["index_mut", 0]}
        for rows in [
            [],
            [row, copy.deepcopy(row)],
            [{**row, "body_present": False}],
            [{**row, "body_form": "opaque"}],
            [{**row, "body_sha256": None}],
            [wrong_method],
        ]:
            with self.subTest(rows=rows), self.assertRaises(ValueError):
                required_source_body_inventory(rows, [self.PATTERN])


class JsonNullGlobalSourceTests(unittest.TestCase):
    PATTERN = "serde_json::value::index::_::index"

    def fixture(self):
        name = [
            {"Ident": ["serde_json", 0]},
            {"Ident": ["value", 0]},
            {"Ident": ["index", 0]},
            {"Impl": {"Trait": 9}},
            {"Ident": ["index", 0]},
            {"Ident": ["NULL", 0]},
        ]
        global_row = {
            "def_id": 16,
            "item_meta": {"name": name},
            "global_kind": {
                "Static": {
                    "is_mut": False,
                    "is_safe": True,
                    "is_thread_local": False,
                }
            },
            "value": {
                "Value": [
                    138,
                    [
                        {"Call": [{"kind": {"Fun": 215}}, []]},
                        {"Deduplicated": 6},
                    ],
                ]
            },
        }
        initializer = {
            "def_id": 215,
            "item_meta": {"name": name},
            "src": {"GlobalInitializer": {"id": 16}},
            "body": {"Structured": {"body": {"statements": []}}},
        }
        return global_row, initializer

    def test_actual_static_and_initializer_are_retained_not_assumed(self):
        from extract import required_source_global_inventory

        glob, init = self.fixture()
        result = required_source_global_inventory([glob], [init], [self.PATTERN])
        self.assertEqual(len(result), 1)
        self.assertEqual(result[0]["global_id"], 16)
        self.assertEqual(result[0]["initializer_function_id"], 215)
        self.assertEqual(result[0]["status"], "unestablished")
        self.assertEqual(len(result[0]["value_sha256"]), 64)
        self.assertEqual(len(result[0]["initializer_body_sha256"]), 64)
        self.assertEqual(required_source_global_inventory([], [], []), [])

    def test_missing_opaque_wrong_owner_or_mutable_static_fails_closed(self):
        from extract import required_source_global_inventory

        glob, init = self.fixture()
        wrong_name = copy.deepcopy(glob)
        wrong_name["item_meta"]["name"][-1] = {"Ident": ["OTHER", 0]}
        mutable = copy.deepcopy(glob)
        mutable["global_kind"]["Static"]["is_mut"] = True
        wrong_target = copy.deepcopy(glob)
        wrong_target["value"]["Value"][1][0]["Call"][0]["kind"]["Fun"] = 999
        for globals_, functions in [
            ([], [init]),
            ([glob, glob], [init]),
            ([glob], []),
            ([glob], [init, init]),
            ([glob], [{**init, "body": "Opaque"}]),
            ([glob], [{**init, "src": {"GlobalInitializer": {"id": 99}}}]),
            ([wrong_name], [init]),
            ([mutable], [init]),
            ([wrong_target], [init]),
        ]:
            with self.subTest(globals_=globals_), self.assertRaises(ValueError):
                required_source_global_inventory(globals_, functions, [self.PATTERN])

    def test_real_retained_549_global_and_actual_source_mutants(self):
        from artifact_io import RootRegistry
        from artifact_registration_v2 import guard_reference
        from extract import required_source_global_inventory

        repository = Path(__file__).resolve().parents[4]
        fixture = json.loads(
            (
                repository
                / "experiments/transition-study036/native-global-test-input-v2.json"
            ).read_bytes()
        )
        self.assertEqual(fixture["format"], "core036.json-global-inventory-fixture.v1")
        guard_reference(fixture["ir_ref"])
        registry = RootRegistry(
            {"private": Path("/var/tmp/behavior-ir-core036-v2/w001")},
            readonly=["private"],
        )
        raw = json.loads(registry.verify(fixture["ir_ref"]).read_bytes())["translated"]
        result = required_source_global_inventory(
            raw["global_decls"], raw["fun_decls"], [self.PATTERN]
        )
        self.assertEqual(len(result), 1)
        global_id = result[0]["global_id"]
        initializer_id = result[0]["initializer_function_id"]
        glob = next(
            row for row in raw["global_decls"] if row and row["def_id"] == global_id
        )
        init = next(
            row for row in raw["fun_decls"] if row and row["def_id"] == initializer_id
        )
        for changed in [
            {**init, "body": "Opaque"},
            {**init, "src": {"GlobalInitializer": {"id": global_id + 1}}},
        ]:
            with self.subTest(changed=changed["src"]), self.assertRaises(ValueError):
                required_source_global_inventory([glob], [changed], [self.PATTERN])
