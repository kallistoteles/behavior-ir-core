"""Requested JSON source support must really contain both native bodies."""

import copy
import hashlib
import unittest

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
    def test_positive_generated_files_cannot_be_relabelled_as_mutant_outputs(self):
        from pathlib import Path
        import json
        from native_accessor_source_canary_v2 import generated_phase_bytes

        base = Path("/var/tmp/behavior-ir-core036-v2/w001")
        positive = json.loads((base / "ground-lean-probe/a0494/result.json").read_text())
        phase = Path(positive["phase"])
        generated = generated_phase_bytes(positive["generated"], phase)
        self.assertEqual(generated["Funs.lean"], (phase / "generated/Funs.lean").read_bytes())
        with self.assertRaisesRegex(ValueError, "PhaseArtifactPath"):
            generated_phase_bytes(positive["generated"], phase.with_name("mutant-a0495"))
        wrong = copy.deepcopy(positive["generated"])
        wrong[0]["sha256"] = "0" * 64
        with self.assertRaisesRegex(ValueError, "PhaseArtifactBytes"):
            generated_phase_bytes(wrong, phase)
        for rows in [positive["generated"][:3], positive["generated"] * 2]:
            with self.subTest(rows=rows), self.assertRaises(ValueError):
                generated_phase_bytes(rows, phase)

    def test_negative_project_preserves_emitted_code_and_excludes_positive_theorems(self):
        from pathlib import Path
        import json
        from native_accessor_source_canary_v2 import negative_project_files
        from native_json_borrow_probe_v2 import project_files

        base = Path("/var/tmp/behavior-ir-core036-v2/w001")
        evidence = Path("/var/tmp/behavior-ir-core036-evidence-v2/w001")
        source = Path(__file__).parents[2] / "proofs/Correspondence036/Dependencies"
        selection = json.loads((evidence / "inputs/native-json-borrow-005.json").read_text())
        generated = {name: (base / "disposable/native-accessor-canary-a0492/positive-a0494/generated" / name).read_bytes()
                     for name in ["Types.lean", "Funs.lean", "TypesExternal_Template.lean", "FunsExternal_Template.lean"]}
        sources = [(source / name).read_bytes() for name in [
            "NativeStringBorrow.lean", "NativeJsonBorrowWrapper.lean", "RuntimeNames.lean"]]
        witness = b"module\npublic import CanonicalRowNames.Funs\n@[expose] public section\n"
        files = negative_project_files(generated, *sources, selection["bindings"], witness)
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
                negative_project_files(generated, *sources, selection["bindings"], wrong)

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
            ("positive_checkpoint_ref", refs.reference(
                "future_evidence", "attempts/a0493/checkpoint.json")),
            ("positive_checkpoint_ref", refs.reference(
                "future_evidence", "attempts/a0491/checkpoint.json")),
            ("positive_result_ref", refs.reference(
                "private", "ground-lean-probe/a0492/result.json")),
        ]:
            with self.subTest(key=key), self.assertRaises(ValueError):
                verified_positive_context(refs, {**config, key: reference})

    def test_negative_selection_cannot_claim_native_or_feature_completion(self):
        from native_accessor_source_canary_v2 import validate_negative_config

        reference = dict(root_id="future_evidence", path="attempts/a0494/checkpoint.json",
                         bytes=10, sha256="a" * 64)
        selected = dict(format="core036.native-accessor-negative.v2",
                        positive_checkpoint_ref=reference,
                        positive_result_ref={**reference, "root_id": "private",
                                             "path": "ground-lean-probe/a0494/result.json"},
                        scope="owning_source_negative_only", native_proof="unestablished",
                        feature_complete=False)
        validate_negative_config(selected)
        for key, value in [("native_proof", "proved"), ("feature_complete", True),
                           ("scope", "relocated_accessor_positive_only"),
                           ("format", "core036.native-accessor-positive.v2"),
                           ("extra", True)]:
            with self.subTest(key=key), self.assertRaises(ValueError):
                validate_negative_config({**selected, key: value})

    def test_complete_owner_inventory_allows_exactly_the_real_method_change(self):
        from native_accessor_source_canary_v2 import (
            OWNER_METHOD, mutate_null_accessor, mutated_owner_inventory,
        )

        original = b"// prefix\n" + OWNER_METHOD + b"\n// suffix\n"
        mutant = mutate_null_accessor(original)
        inventory = [dict(path="Cargo.toml", bytes=5, sha256="c" * 64),
                     dict(path="src/value/mod.rs", bytes=len(original),
                          sha256=hashlib.sha256(original).hexdigest())]
        expected = copy.deepcopy(inventory)
        expected[1].update(bytes=len(mutant), sha256=hashlib.sha256(mutant).hexdigest())
        self.assertEqual(mutated_owner_inventory(inventory, original), expected)
        self.assertNotEqual(inventory, expected)
        for rows in [inventory[:1], inventory + [inventory[1]],
                     [{**x, "sha256": "f" * 64} for x in inventory]]:
            with self.subTest(rows=rows), self.assertRaises(ValueError):
                mutated_owner_inventory(rows, original)

    def test_isolated_rejection_uses_the_unchanged_null_declaration(self):
        from native_accessor_source_canary_v2 import isolated_null_source
        from pathlib import Path

        wrapper = (Path(__file__).parents[2] / "proofs/Correspondence036/Dependencies/NativeJsonBorrowWrapper.lean").read_bytes()
        result = isolated_null_source(wrapper)
        declaration = (b"theorem value_as_str_null :\n"
                       b"    transition_study036.serde_json.value.Value.impl.as_str .Null = ok none := rfl\n")
        self.assertIn(declaration, wrapper)
        self.assertIn(declaration, result)
        self.assertNotIn(b"public import NativeJsonBorrowWrapper", result)
        self.assertNotIn(b"value_as_str_bytes", result)
        for wrong in [wrapper.replace(declaration, b""), wrapper + declaration,
                      wrapper.replace(b".Null = ok none := rfl", b".Bool true = ok none := rfl")]:
            with self.subTest(wrong=wrong), self.assertRaises(ValueError):
                isolated_null_source(wrong)

    def test_mutant_roots_are_independently_fixed_to_the_actual_null_result(self):
        from native_accessor_source_canary_v2 import mutant_witness_roots

        rows = mutant_witness_roots()
        self.assertEqual(len(rows), 2)
        self.assertEqual({x["declaration"] for x in rows}, {
            "Correspondence036.NativeAccessorSourceCanary.mutant_null_is_some",
            "Correspondence036.NativeAccessorSourceCanary.mutant_null_not_none",
        })
        value = "transition_study036.serde_json.value.Value"
        self.assertEqual(rows[0]["expected_type"],
                         f'{value}.impl.as_str {value}.Null = Aeneas.Std.Result.ok (some (Aeneas.Std.toStr ""))')
        self.assertEqual(rows[1]["expected_type"],
                         f"{value}.impl.as_str {value}.Null ≠ Aeneas.Std.Result.ok none")

    def test_compile_failure_alone_is_not_a_semantic_rejection(self):
        from native_accessor_source_canary_v2 import validate_null_rejection

        row = dict(exit_code=1, timed_out=False)
        stdout = ("FixedNull.lean:8:75: error: Tactic `rfl` failed: The left-hand side\n"
                  "  transition_study036.serde_json.value.Value.impl.as_str transition_study036.serde_json.value.Value.Null\n"
                  "is not definitionally equal to the right-hand side\n  ok none\n")
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
