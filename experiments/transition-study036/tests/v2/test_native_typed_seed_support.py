"""Actual514 typed-seed source, external-binding and context guards."""

import copy
import hashlib
from pathlib import Path
import re
import unittest

BASE = Path("/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0514/generated")
HASHES = {
    "Types.lean": "e9579b0f0a142ea513f524abd5b1769f030acee233ee894318569a9c265707ae",
    "Funs.lean": "88f5911277314978e6b891085cd880bb3b719b8786457f3e6b6fa995c257047a",
    "TypesExternal_Template.lean": "a823a470ee5aa755e5e998a990a521615ddc04acc7209285ca6cf2c0ced6f010",
    "FunsExternal_Template.lean": "70d4ebce0bbe1e8541b1951db5e1c93dbd0213f136c6129eab4d327dac61f710",
}


def generated():
    rows = {name: (BASE / name).read_bytes() for name in HASHES}
    if any(
        hashlib.sha256(raw).hexdigest() != HASHES[name] for name, raw in rows.items()
    ):
        raise AssertionError("Actual514SourceFixtureChanged")
    return rows


def bindings(external, primitives):
    result = []
    for lean, spec in primitives.items():
        match = re.search(
            r'^@\[\s*rust_fun\s+"'
            + re.escape(spec["rust"])
            + r'"\s*\]\s*axiom\s+'
            + re.escape(lean)
            + r"(?=\s|:)[\s\S]*?(?=\n\n|\Z)",
            external,
            re.M,
        )
        if match is None:
            raise AssertionError("Actual514MissingSourceBlock:" + lean)
        start = external.rfind("/-- [", 0, match.start())
        end = match.end() + (
            2 if external[match.end() : match.end() + 2] == "\n\n" else 0
        )
        block = external[start:end].encode()
        result.append(
            dict(
                lean=lean,
                rust=spec["rust"],
                block_bytes=len(block),
                block_sha256=hashlib.sha256(block).hexdigest(),
            )
        )
    return result


class NativeTypedSeedSupportTests(unittest.TestCase):
    def test_probe_scope_and_protected_ancestor_reject_before_reference_read(self):
        from native_seed_probe_v2 import validate_seed_probe_config

        reference = dict(
            root_id="repository", path="synthetic/source", bytes=1, sha256="a" * 64
        )
        packet = dict(
            format="core036.native-seed-probe.v2",
            extraction_checkpoint_ref=reference,
            extraction_result_ref=reference,
            borrow_selection_ref=reference,
            operations_source_ref=reference,
            specification_source_ref=reference,
            proofs_source_ref=reference,
            bindings=[{} for _ in range(17)],
            scope="generated_typed_seed_model_only",
            native_proof="unestablished",
            feature_complete=False,
            runtime_totality_established=False,
        )
        validate_seed_probe_config(packet)
        for key, value in (
            ("feature_complete", True),
            ("native_proof", "proved"),
            ("runtime_totality_established", True),
            ("bindings", []),
        ):
            with self.subTest(key=key), self.assertRaises(ValueError):
                validate_seed_probe_config({**packet, key: value})
        for name in ("parameters.bin", "compression_prover_key.bin"):
            with self.assertRaisesRegex(ValueError, "ProtectedArtifact"):
                validate_seed_probe_config(
                    {
                        **packet,
                        "extraction_result_ref": {
                            **reference,
                            "path": "synthetic/" + name + "/child",
                        },
                    }
                )

    def test_project_conserves_both_actual_generated_modules_and_exact_roots(self):
        from native_seed_bindings_v2 import SEED_PRIMITIVES
        from native_seed_context_v2 import seed_project_files, seed_roots
        from check_proofs import _validate_roots

        rows = generated()
        source = b"module\npublic import Aeneas\n@[expose] public section\n"
        specification = (
            Path(__file__).resolve().parents[2]
            / "proofs/Correspondence036/Dependencies/NativeTypedSeedSpec.lean"
        ).read_bytes()
        files = seed_project_files(
            rows,
            source,
            source,
            source,
            specification,
            source,
            bindings(rows["FunsExternal_Template.lean"].decode(), SEED_PRIMITIVES),
        )
        self.assertEqual(files["TypedSeedRowNames.Types"], rows["Types.lean"])
        self.assertEqual(files["TypedSeedRowNames.Funs"], rows["Funs.lean"])
        self.assertEqual(len(files), 10)
        roots = seed_roots()
        _validate_roots(roots)
        self.assertEqual(len(roots), 5)
        self.assertIn(
            "∀ (failure : transition_study036.views.SeedFailure)",
            roots[2]["expected_type"],
        )
        self.assertIn("NativeTypedSeed.publicError failure", roots[2]["expected_type"])
        self.assertIn("∃ message : Aeneas.Std.Str", roots[3]["expected_type"])
        self.assertIn("NativeTypedSeed.textSpec value label", roots[0]["expected_type"])
        self.assertIn(
            "sameEntity : left.entity = right.entity", roots[1]["expected_type"]
        )
        self.assertIn("sameValue : left.value = right.value", roots[1]["expected_type"])
        self.assertIn(
            "NativeTypedSeed.InputDomain key version", roots[4]["expected_type"]
        )
        self.assertIn(
            "NativeTypedSeed.seedSpec key version parents children active",
            roots[4]["expected_type"],
        )
        with self.assertRaisesRegex(ValueError, "UnprovedSource"):
            seed_project_files(
                {**rows, "Funs.lean": b"axiom Unproved : True\n"},
                source,
                source,
                source,
                specification,
                source,
                [],
            )
        with self.assertRaisesRegex(ValueError, "IndependentSpecification"):
            seed_project_files(
                rows, source, source, source, specification + b"\n", source, []
            )

    def test_all_actual_external_functions_have_exact_complete_bindings(self):
        from native_seed_bindings_v2 import SEED_PRIMITIVES, bind_seed_primitives

        external = generated()["FunsExternal_Template.lean"].decode()
        declared = re.findall(r"\baxiom\s+([\w.]+)", external)
        self.assertEqual(set(declared), set(SEED_PRIMITIVES))
        ledger = bindings(external, SEED_PRIMITIVES)
        remaining, definitions = bind_seed_primitives(external, ledger)
        self.assertNotRegex(remaining, r"\baxiom\s+")
        self.assertNotRegex(definitions, r"\b(?:axiom|sorry)\s+")
        self.assertEqual(len(re.findall(r"\bdef\s+", definitions)), len(declared))
        for edit in ("hash", "signature", "missing", "duplicate"):
            changed, rows = external, copy.deepcopy(ledger)
            if edit == "hash":
                rows[0]["block_sha256"] = "0" * 64
            elif edit == "signature":
                changed = external.replace(
                    "Str → Str → Result Bool", "Str → Str → Result String", 1
                )
            elif edit == "missing":
                rows = rows[:-1]
            else:
                rows[-1] = rows[0]
            with self.subTest(edit=edit), self.assertRaises(ValueError):
                bind_seed_primitives(changed, rows)

    def test_type_context_preserves_all_metadata_and_numeric_variants(self):
        from native_seed_context_v2 import complete_seed_external_types

        rows = generated()
        completed = complete_seed_external_types(
            rows["TypesExternal_Template.lean"].decode()
        )
        self.assertNotRegex(completed, r"\baxiom\s+")
        for name in (
            "BTreeMap",
            "BTreeSet",
            "serde_json.map.Map",
            "core.io.error.Error",
            "serde_json.error.Error",
        ):
            self.assertIn(name, completed)
        for field in (
            "content_hash",
            "entity",
            "id",
            "revision",
            "created_at",
            "value",
        ):
            self.assertIn(field + " :", rows["Types.lean"].decode())
        for variant in ("PosInt", "NegInt", "Float"):
            self.assertIn("| " + variant + " :", rows["Types.lean"].decode())
        with self.assertRaises(ValueError):
            complete_seed_external_types(
                rows["TypesExternal_Template.lean"].decode() + "\naxiom Hidden : Type\n"
            )
