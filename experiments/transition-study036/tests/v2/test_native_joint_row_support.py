"""Conserve actual520 executable/type modules while composing row proof contexts."""

import hashlib
from pathlib import Path
import unittest

from test_native_typed_seed_support import bindings

BASE = Path("/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0520/generated")
HASHES = {
    "Types.lean": "63d86e10ea09787650cf3dfae0344ef812767266ec5cd1d5ab063ef7260ae9da",
    "Funs.lean": "3f1dd8aaa87a80a247c192be2b804ffe5352ec3492d686017ecbed9510cafc14",
    "TypesExternal_Template.lean": "a823a470ee5aa755e5e998a990a521615ddc04acc7209285ca6cf2c0ced6f010",
    "FunsExternal_Template.lean": "727aaf2d194076ee6e1e9f3ae1cdc277aeda48a71b5bebff8d37223f24242efd",
}


def actual_sources():
    from native_joint_row_context_v2 import SOURCE_NAMES

    directory = (
        Path(__file__).resolve().parents[2] / "proofs/Correspondence036/Dependencies"
    )
    return {name: (directory / (name + ".lean")).read_bytes() for name in SOURCE_NAMES}


def generated():
    result = {name: (BASE / name).read_bytes() for name in HASHES}
    if any(
        hashlib.sha256(raw).hexdigest() != HASHES[name] for name, raw in result.items()
    ):
        raise AssertionError("Actual520SourceFixtureChanged")
    return result


class NativeJointRowSupportTests(unittest.TestCase):
    def test_joint_scope_and_complete_source_packet_are_strict(self):
        from native_joint_row_context_v2 import (
            SOURCE_NAMES,
            validate_joint_probe_config,
        )

        reference = dict(
            root_id="repository", path="synthetic/source", bytes=1, sha256="a" * 64
        )
        packet = dict(
            format="core036.native-joint-row-probe.v2",
            extraction_checkpoint_ref=reference,
            extraction_result_ref=reference,
            borrow_selection_ref=reference,
            source_refs={name: reference for name in SOURCE_NAMES},
            bindings=[{} for _ in range(20)],
            scope="generated_joint_row_model_only",
            native_proof="unestablished",
            feature_complete=False,
            runtime_totality_established=False,
        )
        validate_joint_probe_config(packet)
        for key, value in (
            ("feature_complete", True),
            ("native_proof", "proved"),
            ("source_refs", {}),
            ("bindings", [{}] * 17),
        ):
            with self.subTest(key=key), self.assertRaises(ValueError):
                validate_joint_probe_config({**packet, key: value})
        for name in ("parameters.bin", "compression_prover_key.bin"):
            bad = {**reference, "path": "synthetic/" + name + "/nested"}
            with self.assertRaisesRegex(ValueError, "ProtectedArtifact"):
                validate_joint_probe_config(
                    {
                        **packet,
                        "source_refs": {
                            **packet["source_refs"],
                            "NativeCanonicalRowSpec": bad,
                        },
                    }
                )

    def test_all_twenty_actual_external_blocks_and_both_specs_are_bound(self):
        from native_joint_row_context_v2 import JOINT_PRIMITIVES, joint_project_files

        rows, sources = generated(), actual_sources()
        self.assertEqual(len(JOINT_PRIMITIVES), 20)
        ledger = bindings(rows["FunsExternal_Template.lean"].decode(), JOINT_PRIMITIVES)
        files = joint_project_files(rows, sources, ledger)
        self.assertEqual(files["SeedCanonicalNames.Types"], rows["Types.lean"])
        self.assertEqual(files["SeedCanonicalNames.Funs"], rows["Funs.lean"])
        for name in (
            "NativeCanonicalRowSpec",
            "NativeTypedSeedSpec",
            "NativeCanonicalRowOperations",
            "NativeTypedSeedOperations",
            "NativeCanonicalRowProofs",
            "NativeCanonicalRowExact",
            "NativeJointRowSpec",
            "NativeJointRowProofs",
        ):
            self.assertEqual(files[name], sources[name])
        for prefix in ("CanonicalRowNames", "TypedSeedRowNames"):
            self.assertEqual(
                files[prefix + ".Types"],
                b"module\npublic import SeedCanonicalNames.Types\n@[expose] public section\n",
            )
            self.assertEqual(
                files[prefix + ".Funs"],
                b"module\npublic import SeedCanonicalNames.Funs\n@[expose] public section\n",
            )
        self.assertNotIn(b"axiom ", files["SeedCanonicalNames.FunsExternal"])
        self.assertEqual(len(files), 22)
        for name in ("NativeCanonicalRowSpec", "NativeTypedSeedSpec", "NativeJointRowSpec"):
            with self.subTest(name=name), self.assertRaises(ValueError):
                joint_project_files(
                    rows, {**sources, name: sources[name] + b"\n"}, ledger
                )
        with self.assertRaises(ValueError):
            joint_project_files(rows, sources, ledger[:-1])

    def test_handwritten_proof_adaptation_is_exactly_twelve_identifier_changes(self):
        from native_joint_row_context_v2 import adapt_seed_proofs

        original = actual_sources()["NativeTypedSeedProofs"]
        adapted, report = adapt_seed_proofs(original)
        self.assertEqual(
            report, {"lookup": 2, "indexStr": 3, "ownResult": 1, "eqStr": 6}
        )
        restored = adapted.replace(
            b"public import NativeCanonicalRowOperations\n", b"", 1
        )
        for name in report:
            restored = restored.replace(
                ("NativeCanonicalRowOperations." + name).encode(),
                ("NativeTypedSeedOperations." + name).encode(),
            )
        self.assertEqual(restored, original)
        for name in ("insert", "eqString", "cmpString", "cloneString", "newSet"):
            identifier = ("NativeTypedSeedOperations." + name).encode()
            self.assertEqual(adapted.count(identifier), original.count(identifier))

    def test_previous_sixteen_independent_root_types_are_retained(self):
        from native_joint_row_context_v2 import joint_roots
        from native_row_context_v2 import row_dictionary_roots
        from native_canonical_row_context_v2 import canonical_row_roots
        from native_seed_context_v2 import seed_roots
        from check_proofs import _validate_roots

        roots = joint_roots()
        self.assertEqual(
            roots[:16], row_dictionary_roots() + canonical_row_roots() + seed_roots()
        )
        self.assertEqual(len(roots), 17)
        self.assertEqual(roots[-1]["id"], "joint_row.rows_commute")
        self.assertIn("Compatible key version", roots[-1]["expected_type"])
        _validate_roots(roots)
