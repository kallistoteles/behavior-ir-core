"""Prospective regression for the actual owning-source provenance control."""
class NativeAccessorWrongOwnerControlTests(unittest.TestCase):
    def test_real_metadata_control_reaches_owner_binding_and_checks_positive_first(self):
        from pathlib import Path
        import json
        from native_accessor_source_canary_v2 import wrong_owner_control

        base = Path("/var/tmp/behavior-ir-core036-v2/w001")
        old = base / "native-extraction/a0486"
        case = base / "disposable/native-accessor-canary-a0492"
        original = json.loads((old / "commands/metadata/stdout.txt").read_text())
        actual = json.loads((base / "ground-lean-probe/a0494/commands/metadata/stdout.txt").read_text())
        inventory = json.loads((base / "ground-lean-probe/a0492/source-inventories.json").read_text())
        locations = dict(old_worker=str(old / "worker"), new_worker=str(case / "worker"),
                         old_owner=inventory["original_owner"],
                         new_owner=str(case / "owner/serde_json-1.0.151"),
                         old_target=original["target_directory"],
                         new_target=actual["target_directory"])
        result = wrong_owner_control(original, actual, **locations)
        self.assertEqual(result["actual_rejection"], "NativeAccessorCanaryJsonOwner")
        self.assertNotIn(result["incorrect_claimed_owner"],
                         [locations["old_owner"], locations["new_owner"]])
        invalid = copy.deepcopy(actual)
        package = next(p for p in invalid["packages"] if p["name"] == "serde_json")
        package["manifest_path"] = "/unrelated/Cargo.toml"
        with self.assertRaisesRegex(ValueError, "JsonOwner"):
            wrong_owner_control(original, invalid, **locations)
