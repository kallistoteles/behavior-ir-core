"""Text/inventory guard fixtures only; these do not execute or certify Lean."""

import copy
import hashlib
from pathlib import Path
import tempfile
import unittest


class NativeIterationBindingTests(unittest.TestCase):
    def fixture(self, root):
        from native_iteration_binding_v2 import FUNCTIONS

        paths = {
            "model_ref": root / "NativeCollectionIteration.lean",
            "invariant_ref": root / "CollectionsInvariant.lean",
            "order_ref": root / "CollectionsOrder.lean",
        }
        blocks, definitions, bindings = [], [], []
        signature = " (cursor : List Nat) : List Nat"
        for index, name in enumerate(FUNCTIONS):
            rust = "fixture::" + str(index)
            block = (
                "/-- ["
                + rust
                + ']\nFixture only -/\n@[rust_fun "'
                + rust
                + '"] axiom '
                + name
                + signature
                + "\n\n"
            )
            blocks.append(block)
            body = (
                (
                    "fun cursor => match cursor with\n"
                    "  | [] => .ok (none, ⟨[]⟩)\n"
                    "  | row :: tail => .ok (some row, ⟨tail⟩)"
                )
                if index == 0
                else "cursor"
            )
            definitions.append(
                block.rstrip().replace(" axiom ", " def ") + " :=\n  " + body + "\n\n"
            )
            bindings.append(
                dict(
                    rust=rust,
                    lean=name,
                    block_bytes=len(block.encode()),
                    block_sha256=hashlib.sha256(block.encode()).hexdigest(),
                )
            )
        external = (
            "module\npublic import NativeJsonIterators\n"
            + "".join(blocks)
            + '@[rust_fun "fixture::unrelated"] axiom unrelated : Nat\n'
        )
        model = (
            "module\n"
            + "".join(definitions)
            + "\nnamespace Correspondence036.NativeCollectionIteration\nend Correspondence036.NativeCollectionIteration\n"
        )
        for key, path in paths.items():
            path.write_text(
                model if key == "model_ref" else "fixture source; not a Lean theorem"
            )
        selection = dict(
            format="core036.native-collection-iteration.v2",
            contract_ref="contract",
            **{key: key for key in paths},
        )
        contract = dict(
            format="core036.native-iteration-contract.v2",
            scope="exact_signature_candidate_api_not_native_admission",
            template_sha256="a" * 64,
            bindings=bindings,
            native_proof="unestablished",
            feature_complete=False,
        )
        documents = {"selection": selection, "contract": contract}

        class Refs:
            def verify(self, reference):
                return paths[reference]

            def read(self, reference):
                return documents[reference]

        return (
            dict(
                refs=Refs(),
                reference="selection",
                external=external,
                template_sha256="a" * 64,
                source_dir=root,
            ),
            paths,
            documents,
        )

    def test_exact_bindings_preserve_unrelated_nodes_and_generate_real_body_mutations(
        self,
    ):
        from native_iteration_binding_v2 import FUNCTIONS, prepare

        with tempfile.TemporaryDirectory() as directory:
            values, _, _ = self.fixture(Path(directory))
            paths, modules, external, roots, controls = prepare(**values)
            self.assertEqual(set(paths), {"model_ref", "invariant_ref", "order_ref"})
            self.assertEqual(
                list(modules),
                [
                    "CollectionsInvariant",
                    "CollectionsOrder",
                    "NativeCollectionIteration",
                ],
            )
            self.assertIn("axiom unrelated : Nat", external)
            for name in FUNCTIONS:
                self.assertNotIn("axiom " + name, external)
            self.assertEqual(len(roots), 17)
            self.assertEqual(len(controls), 2)
            self.assertIn("| row :: tail => .ok (none, ⟨tail⟩)", controls[0][1])
            self.assertIn(
                "| row :: tail => .ok (some row, ⟨row :: tail⟩)", controls[1][1]
            )
            self.assertIn("⟨[((1 : Nat), (2 : Nat))]⟩", controls[0][1])
            self.assertNotIn(
                "namespace Correspondence036.NativeCollectionIteration", controls[0][1]
            )

    def test_missing_duplicate_changed_signature_hash_or_runner_field_is_rejected(self):
        from native_iteration_binding_v2 import FUNCTIONS, prepare

        for fault in (
            "missing",
            "duplicate",
            "signature",
            "hash",
            "block_count",
            "runner",
            "template",
        ):
            with self.subTest(fault=fault), tempfile.TemporaryDirectory() as directory:
                values, paths, docs = self.fixture(Path(directory))
                if fault == "missing":
                    values["external"] = values["external"].replace(
                        "axiom " + FUNCTIONS[0], "axiom missing"
                    )
                elif fault == "duplicate":
                    docs["contract"]["bindings"][0] = copy.deepcopy(
                        docs["contract"]["bindings"][1]
                    )
                elif fault == "signature":
                    text = paths["model_ref"].read_text()
                    paths["model_ref"].write_text(
                        text.replace("(cursor : List Nat)", "(cursor : List Bool)", 1)
                    )
                elif fault == "hash":
                    docs["contract"]["bindings"][0]["block_sha256"] = "0" * 64
                elif fault == "block_count":
                    docs["contract"]["bindings"][0]["block_bytes"] = True
                elif fault == "runner":
                    docs["selection"]["runner"] = "/untrusted/executable"
                else:
                    values["template_sha256"] = "b" * 64
                with self.assertRaises(ValueError):
                    prepare(**values)

    def test_protected_reference_is_rejected_before_any_reader_or_verifier(self):
        from native_iteration_binding_v2 import prepare

        class NoRead:
            def read(self, reference):
                raise AssertionError("A protected reference must never be read")

            def verify(self, reference):
                raise AssertionError("A protected reference must never be hashed")

        for basename in ("parameters.bin", "compression_prover_key.bin"):
            with (
                self.subTest(basename=basename),
                self.assertRaisesRegex(ValueError, "ProtectedArtifact"),
            ):
                prepare(
                    NoRead(),
                    {"path": "synthetic/" + basename},
                    "",
                    "a" * 64,
                    Path("/synthetic/source-not-created"),
                )
