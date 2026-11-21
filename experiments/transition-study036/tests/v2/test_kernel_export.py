"""Export policy is necessary; only a real empty-kernel replay checks a proof."""

import copy
import json
import unittest


METADATA = {
    "meta": {
        "exporter": {"name": "lean4export", "version": "3.1.0"},
        "lean": {
            "version": "4.36.0-rc2",
            "githash": "b35cb10cf2ced51a2fd1880cfdbf75c71ab7a35a",
        },
        "format": {"version": "3.1.0"},
    }
}
ROOTS = [{"id": "helper.root", "declaration": "root", "expected_type": "True"}]


def encoded(rows):
    return ("\n".join(json.dumps(row) for row in rows) + "\n").encode()


def rows():
    # Deliberately transport-only fixture: expression indices need a real
    # kernel test. Accepting this policy fixture certifies no theorem.
    return [
        METADATA,
        {"in": 1, "str": {"pre": 0, "str": "root"}},
        {"thm": {"name": 1, "levelParams": [], "type": 0, "value": 0, "all": [1]}},
    ]


class KernelExportPolicyTests(unittest.TestCase):
    def validate(self, raw, roots=ROOTS):
        from kernel_export_v2 import validate_export

        return validate_export(raw, roots)

    def reject(self, raw, roots=ROOTS):
        with self.assertRaises(ValueError):
            self.validate(raw, roots)

    def test_transport_root_coverage_does_not_claim_kernel_or_native_success(self):
        report = self.validate(encoded(rows()))
        self.assertEqual(report["root_count"], 1)
        self.assertEqual(report["declaration_count"], 1)
        self.assertNotIn("native_verified", report)
        self.assertNotIn("feature_complete", report)

    def test_empty_metadata_only_missing_or_wrong_kind_roots_fail(self):
        for raw in (b"", encoded([METADATA]), encoded(rows()[:-1])):
            self.reject(raw)
        for kind in ("def", "opaque", "axiom"):
            data = {**rows()[-1]["thm"], "isUnsafe": False, "safety": "safe"}
            self.reject(encoded([*rows()[:-1], {kind: data}]))

    def test_metadata_is_checked_including_the_line_stock_parser_skips(self):
        for metadata in ({}, {"meta": {}}, {"meta": {**METADATA["meta"], "extra": 1}}):
            self.reject(encoded([metadata, *rows()[1:]]))
        changed = copy.deepcopy(METADATA)
        changed["meta"]["lean"]["githash"] = "0" * 40
        self.reject(encoded([changed, *rows()[1:]]))

    def test_duplicate_json_nonfinite_invalid_utf8_and_blank_lines_fail(self):
        good = encoded(rows())
        for raw in (
            b"\xff",
            good + b"\n",
            good + b'{"extra":NaN}\n',
            good + b'{"extra":Infinity}\n',
            good.replace(b'"in": 1', b'"in": 1, "in": 1'),
        ):
            self.reject(raw)

    def test_tagged_names_do_not_alias_a_literal_dot_with_namespace_segments(self):
        expected = [{**ROOTS[0], "declaration": "A.B"}]
        alias = [METADATA, {"in": 1, "str": {"pre": 0, "str": "A.B"}}, rows()[-1]]
        self.reject(encoded(alias), expected)
        real = [
            METADATA,
            {"in": 1, "str": {"pre": 0, "str": "A"}},
            {"in": 2, "str": {"pre": 1, "str": "B"}},
            {"thm": {**rows()[-1]["thm"], "name": 2}},
        ]
        self.assertEqual(self.validate(encoded(real), expected)["root_count"], 1)

    def test_name_indices_are_typed_unique_and_have_existing_prefixes(self):
        for value in (True, -1, 2**64, 1.0, "1"):
            self.reject(
                encoded(
                    [
                        METADATA,
                        {"in": value, "str": {"pre": 0, "str": "root"}},
                        rows()[-1],
                    ]
                )
            )
        self.reject(encoded([*rows()[:2], rows()[1], rows()[-1]]))
        self.reject(
            encoded([METADATA, {"in": 1, "str": {"pre": 9, "str": "root"}}, rows()[-1]])
        )

    def test_duplicate_declarations_and_unknown_object_kinds_fail(self):
        self.reject(encoded([*rows(), rows()[-1]]))
        self.reject(encoded([*rows(), {"status": "verified"}]))
        self.reject(encoded([*rows(), {"ie": 2, "new_expression_kind": {}}]))

    def test_unsafe_or_partial_declarations_are_policy_failures(self):
        for kind, fields in (
            ("def", {"safety": "unsafe"}),
            ("def", {"safety": "partial"}),
            ("opaque", {"isUnsafe": True}),
            ("opaque", {"isUnsafe": "false"}),
        ):
            self.reject(
                encoded(
                    [
                        *rows(),
                        {"in": 2, "str": {"pre": 0, "str": "unchecked"}},
                        {kind: {"name": 2, **fields}},
                    ]
                )
            )

    def test_unused_axioms_cannot_hide_outside_the_root_audit(self):
        self.reject(
            encoded(
                [
                    *rows(),
                    {"in": 2, "str": {"pre": 0, "str": "forged"}},
                    {"axiom": {"name": 2, "type": 0, "isUnsafe": False}},
                ]
            )
        )

    def test_nested_unsafe_inductive_constructor_or_recursor_is_rejected(self):
        for field in ("types", "ctors", "recs"):
            group = {"types": [], "ctors": [], "recs": []}
            group[field] = [{"name": 2, "isUnsafe": True}]
            self.reject(
                encoded(
                    [
                        *rows(),
                        {"in": 2, "str": {"pre": 0, "str": "Unchecked"}},
                        {"inductive": group},
                    ]
                )
            )

    def test_expected_roots_are_executor_inputs_with_no_duplicates_or_flags(self):
        for roots in ([], ROOTS * 2, [{**ROOTS[0], "checked": True}]):
            self.reject(encoded(rows()), roots)
