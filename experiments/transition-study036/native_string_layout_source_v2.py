"""Actual-layout source inventory, without memory/native interpretation."""

import hashlib
import json

STRING_LAYOUT_TYPES = (
    "alloc::string::String",
    "alloc::vec::Vec",
    "alloc::raw_vec::RawVec",
    "alloc::raw_vec::RawVecInner",
    "core::ptr::unique::Unique",
    "core::ptr::non_null::NonNull",
)


def required_string_layout_inventory(rows, patterns):
    observed = []
    for pattern in STRING_LAYOUT_TYPES:
        if pattern not in patterns:
            continue
        name = pattern.split("::")
        matches = [
            row
            for row in rows
            if row is not None
            and [part.get("Ident", [None])[0] for part in row["item_meta"]["name"]]
            == name
        ]
        if len(matches) != 1:
            raise ValueError("NativeExtractionRequiredStringLayout")
        kind = matches[0].get("kind")
        if not isinstance(kind, dict) or set(kind) != {"Struct"}:
            raise ValueError("NativeExtractionOpaqueStringLayout")
        fields = kind["Struct"]
        if (
            not isinstance(fields, list)
            or not fields
            or any(
                not isinstance(field, dict)
                or not isinstance(field.get("name"), str)
                or not field["name"]
                or not isinstance(field.get("ty"), dict)
                or not field["ty"]
                for field in fields
            )
            or len({field["name"] for field in fields}) != len(fields)
        ):
            raise ValueError("NativeExtractionIncompleteStringLayout")
        observed.append(
            {
                "pattern": pattern,
                "type_id": matches[0]["def_id"],
                "field_names": [field["name"] for field in fields],
                "kind_sha256": hashlib.sha256(
                    json.dumps(
                        kind, sort_keys=True, separators=(",", ":"), ensure_ascii=False
                    ).encode()
                ).hexdigest(),
                "status": "unestablished",
            }
        )
    return observed
