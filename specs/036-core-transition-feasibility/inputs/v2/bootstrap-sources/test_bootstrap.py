"""V2 bootstrap contract. Record actual red before adding accepting APIs."""
import copy
import hashlib
import json
import tempfile
import unittest
from pathlib import Path

from bootstrap import adopt_v2, profile_digest, validate_v2_profile, v2_admit

REPO = Path(__file__).resolve().parents[4]
PROFILE = REPO / "experiments/transition-study036/profiles/v2/work.json"
GIB = 1024**3


class BootstrapV2Tests(unittest.TestCase):
    def setUp(self):
        self.profile = json.loads(PROFILE.read_text())
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        self.base = Path(self.temp.name)
        self.receipt = {
            "format": "core035.bounded.v1", "boot_id": "first-boot",
            "start_monotonic_ns": 100, "wall_ns": 50, "exit_code": 1,
            "stop_reason": None, "group_empty": True, "tree_empty": True,
            "group_id": 123, "disk_start_floor_bytes": 16*GIB,
        }
        self.path = self.base / "receipt.json"
        self.write_receipt()

    def write_receipt(self):
        self.path.write_text(json.dumps(self.receipt))
        raw = self.path.read_bytes()
        self.ref = {"root_id": "bootstrap", "path": "receipt.json",
                    "bytes": len(raw), "sha256": hashlib.sha256(raw).hexdigest()}

    def adopt(self, **changes):
        args = dict(expected_profile_digest=profile_digest(self.profile),
                    expected_receipt_ref=self.ref,
                    expected_origin={"started_ns": 100, "boot_id": "first-boot"},
                    expected_specification_ref=self.profile["specification_ref"],
                    out=self.base / "context.json", now_ns=200, boot_id="first-boot")
        args.update(changes)
        return adopt_v2(self.profile, self.path, **args)

    def test_actual_red_origin_is_preserved_and_not_authority(self):
        value = self.adopt()
        self.assertEqual(value["clock"], {"started_ns": 100, "boot_id": "first-boot"})
        self.assertEqual(value["bootstrap_exit"], 1)
        self.assertEqual(value["initial_authority"], "unverified")
        self.assertFalse(value["feature_complete"])
        self.assertEqual(value, json.loads((self.base/"context.json").read_text()))

    def test_profile_root_spec_and_type_binding(self):
        validate_v2_profile(self.profile)
        for change in ["root", "spec", "unknown", "bool", "lifetime"]:
            p = copy.deepcopy(self.profile)
            if change == "root": p["roots"]["cache"] = "/tmp/other-owner"
            if change == "spec": p["specification_ref"]["sha256"] = "0"*64
            if change == "unknown": p["limits"]["hidden_limit"] = 1
            if change == "bool": p["limits"]["cpu_workers"] = True
            if change == "lifetime": p["limits"]["attempt_seconds"] = 21600
            with self.subTest(change=change), self.assertRaises(ValueError):
                validate_v2_profile(p)

    def test_wrong_clock_origin_and_source_refs(self):
        for change in [
            {"expected_origin": {"started_ns": 101, "boot_id": "first-boot"}},
            {"expected_origin": {"started_ns": 100, "boot_id": "wrong-boot"}},
            {"now_ns": 99},
            {"expected_profile_digest": "0"*64},
            {"expected_specification_ref": {**self.profile["specification_ref"], "sha256": "0"*64}},
            {"expected_receipt_ref": {**self.ref, "sha256": "0"*64}},
        ]:
            with self.subTest(change=change), self.assertRaises(ValueError): self.adopt(**change)

    def test_missing_receipt_and_unclosed_group_rejected(self):
        self.path.unlink()
        with self.assertRaises(ValueError): self.adopt()
        for field, value in [("tree_empty", False), ("group_empty", False),
                             ("stop_reason", "WallLimit"), ("group_id", None)]:
            self.receipt[field] = value
            self.write_receipt()
            with self.subTest(field=field), self.assertRaises(ValueError): self.adopt()
            self.receipt[field] = None if field == "stop_reason" else (123 if field == "group_id" else True)

    def test_no_overwrite_and_no_cross_boot_subtraction(self):
        value = self.adopt(now_ns=1, boot_id="later-boot")
        self.assertTrue(value["imported_across_boot"])
        self.assertEqual(value["clock"]["boot_id"], "first-boot")
        with self.assertRaises(FileExistsError): self.adopt()

    def test_initial_reserve_not_reimposed_after_cache_use(self):
        v2_admit(self.profile, free_root_bytes=50*GIB, free_data_bytes=9*GIB, initial=True)
        v2_admit(self.profile, free_root_bytes=30*GIB, free_data_bytes=6*GIB, initial=False)
        for initial, root, data in [(True, 30, 9), (True, 50, 7), (False, 7, 9), (False, 30, 3)]:
            with self.subTest(initial=initial, root=root, data=data), self.assertRaises(ValueError):
                v2_admit(self.profile, free_root_bytes=root*GIB, free_data_bytes=data*GIB, initial=initial)

    def test_initial_and_stage_profiles_and_successor_rules(self):
        for p in PROFILE.parent.glob("*.json"):
            validate_v2_profile(json.loads(p.read_text()))
        p = copy.deepcopy(self.profile)
        p["allocation"]["kind"] = "successor"
        p["allocation"]["predecessor"] = None
        with self.assertRaises(ValueError): validate_v2_profile(p)
