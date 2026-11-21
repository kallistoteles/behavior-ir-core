import copy
import unittest
from records import loads_v2, validate_v2_record, validate_v2_workload, quantity_v2

REF = {"root_id": "repository", "path": "source.rs", "bytes": 1, "sha256": "a" * 64}


def record():
    return {
        "format": "core036.gate.v2",
        "work_id": "w001",
        "record_id": "r1",
        "specification_ref": copy.deepcopy(REF),
        "source_subject_ref": copy.deepcopy(REF),
        "inputs": [copy.deepcopy(REF)],
        "product_adoption": "unactivated",
        "outcome": {"operational": "completed", "acceptance": "met"},
    }


class RecordsV2Tests(unittest.TestCase):
    def test_strict_syntax_depth_and_original_numeric_domain(self):
        self.assertEqual(loads_v2(b'{"native_metadata":1.25}')["native_metadata"], 1.25)
        for raw in [
            b'{"a":1,"a":2}',
            b"{} {}",
            b'{"a":NaN}',
            b'{"a":1e999}',
            bytes([255]),
            b"[" * 129 + b"0" + b"]" * 129,
        ]:
            with self.subTest(raw=raw[:20]), self.assertRaises(ValueError):
                loads_v2(raw)
        self.assertEqual(loads_v2(b'{"s":"{{{{"}')["s"], "{{{{")
        with self.assertRaises(ValueError):
            loads_v2(b"12345", limit=4)

    def test_required_unknown_fields_and_version(self):
        validate_v2_record(record())
        for field in record():
            value = record()
            del value[field]
            with self.subTest(field=field), self.assertRaises(ValueError):
                validate_v2_record(value)
        for key, value in [
            ("verified", True),
            ("format", "core036.gate.v1"),
            ("product_adoption", "activated"),
            ("outcome", "met"),
        ]:
            v = record()
            v[key] = value
            with self.subTest(key=key), self.assertRaises(ValueError):
                validate_v2_record(v)

    def test_utf8_u64_refs_and_blockers(self):
        r = record()
        r["record_id"] = "é" * 128
        validate_v2_record(r)
        for change in [
            "id",
            "empty_id",
            "count",
            "overflow",
            "path",
            "long_path",
            "unknown_outcome",
            "blocker",
            "too_many_refs",
            "null_source",
        ]:
            r = record()
            if change == "id":
                r["record_id"] = "é" * 129
            if change == "empty_id":
                r["record_id"] = ""
            if change == "count":
                r["inputs"][0]["bytes"] = True
            if change == "overflow":
                r["inputs"][0]["bytes"] = 2**64
            if change == "long_path":
                r["inputs"][0]["path"] = "a" * 1025
            if change == "too_many_refs":
                r["inputs"] = [REF] * 20001
            if change == "null_source":
                r["source_subject_ref"] = None
            if change == "path":
                r["inputs"][0]["path"] = "../escape"
            if change == "unknown_outcome":
                r["outcome"]["acceptance"] = "maybe"
            if change == "blocker":
                r["outcome"]["acceptance"] = "blocked"
            with self.subTest(change=change), self.assertRaises(ValueError):
                validate_v2_record(r)
        r = record()
        r["outcome"]["acceptance"] = "blocked"
        r["reason"] = "needs proof"
        r["blocking_ref"] = REF
        validate_v2_record(r)

    def test_workload_and_quantities(self):
        validate_v2_workload({"N": 256, "H": 128, "requests": [{}] * 128})
        for n, h, requests in [
            (257, 8, [{}]),
            (True, 8, [{}]),
            (2, 129, [{}]),
            (2, 8, [{}] * 129),
        ]:
            with self.assertRaises(ValueError):
                validate_v2_workload({"N": n, "H": h, "requests": requests})
        self.assertIsNone(
            quantity_v2(
                None,
                "bytes",
                scope="allocator",
                method="unavailable",
                reason="not exposed",
            )["value"]
        )
        for value, reason in [
            (None, ""),
            (True, ""),
            (-1, ""),
            (float("inf"), ""),
            (1.5, ""),
        ]:
            with self.assertRaises(ValueError):
                quantity_v2(
                    value, "bytes", scope="actual", method="direct", reason=reason
                )
        with self.assertRaises(ValueError):
            quantity_v2(2, "bytes", scope="", method="direct")

    def test_control_and_document_byte_ceilings_before_parse(self):
        for cap in [4 * 1024**2, 32 * 1024**2, 64 * 1024**2]:
            with self.subTest(cap=cap), self.assertRaises(ValueError):
                loads_v2(b" " * (cap + 1), limit=cap)
        r = record()
        r["inputs"] = [REF] * 20000
        validate_v2_record(r)

    def test_unhashable_format_outcome_and_bad_ref_types_are_typed_rejections(self):
        for field, value in [
            ("format", []),
            ("outcome", {"operational": [], "acceptance": "met"}),
            ("outcome", {"operational": "completed", "acceptance": []}),
        ]:
            data = record()
            data[field] = value
            with self.subTest(field=field, value=value), self.assertRaises(ValueError):
                validate_v2_record(data)
