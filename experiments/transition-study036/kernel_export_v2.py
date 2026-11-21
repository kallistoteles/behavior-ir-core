"""Policy checks for pinned root-closure export; not a kernel or proof authority."""

import json
from check_proofs import FOUNDATIONS, _validate_roots

EXPECTED_METADATA = {
    "meta": {
        "exporter": {"name": "lean4export", "version": "3.1.0"},
        "lean": {
            "version": "4.36.0-rc2",
            "githash": "b35cb10cf2ced51a2fd1880cfdbf75c71ab7a35a",
        },
        "format": {"version": "3.1.0"},
    }
}
EXPR_KINDS = {
    "bvar",
    "sort",
    "const",
    "app",
    "lam",
    "forallE",
    "letE",
    "proj",
    "natVal",
    "strVal",
}
LEVEL_KINDS = {"succ", "max", "imax", "param"}


def _object(pairs):
    result = {}
    for key, value in pairs:
        if key in result:
            raise ValueError("ExportDuplicateField")
        result[key] = value
    return result


def _number(value):
    if type(value) is not int or not 0 <= value <= 2**64 - 1:
        raise ValueError("ExportControlIndex")
    return value


def _name(text):
    # Never flatten arbitrary Lean Name.str components into dotted strings.
    return tuple(("str", part) for part in text.split("."))


def validate_export(raw, roots):
    """Validate transport/roots/policy only; actual empty-kernel replay required."""
    _validate_roots(roots)
    if not isinstance(raw, bytes) or not raw or len(raw) > 64 * 1024**2:
        raise ValueError("ExportTransport")
    try:
        lines = raw.decode("utf-8", errors="strict").splitlines()
        objects = [
            json.loads(
                line,
                object_pairs_hook=_object,
                parse_constant=lambda _: (_ for _ in ()).throw(
                    ValueError("ExportNonFinite")
                ),
            )
            for line in lines
        ]
    except (UnicodeError, json.JSONDecodeError, RecursionError) as exc:
        raise ValueError("ExportJSON") from exc
    if not objects or objects[0] != EXPECTED_METADATA:
        raise ValueError("ExportMetadata")
    names = {0: ()}
    declarations = {}
    axioms = set()
    source_indices = {}

    def get_name(index):
        index = _number(index)
        if index not in names or not names[index]:
            raise ValueError("ExportMissingName")
        return names[index]

    def add_declaration(kind, data, line_index):
        if not isinstance(data, dict):
            raise ValueError("ExportDeclaration")
        name = get_name(data.get("name"))
        if name in declarations:
            raise ValueError("ExportDuplicateDeclaration")
        if kind == "def":
            if data.get("safety") != "safe":
                raise ValueError("ExportUncheckedDefinition")
        elif kind in {"axiom", "opaque", "inductive", "ctor", "rec"}:
            if data.get("isUnsafe") is not False:
                raise ValueError("ExportUncheckedDeclaration")
        if kind == "axiom":
            if name not in {_name(n) for n in FOUNDATIONS}:
                raise ValueError("ExportUnexpectedAxiom")
            axioms.add(name)
        if kind == "quot" and name not in {
            _name(n) for n in ("Quot", "Quot.mk", "Quot.lift", "Quot.ind")
        }:
            raise ValueError("ExportUnexpectedQuotient")
        declarations[name] = kind
        source_indices[name] = line_index

    for line_index, row in enumerate(objects[1:], 1):
        if not isinstance(row, dict) or not row:
            raise ValueError("ExportObject")
        if "in" in row:
            if set(row) not in ({"in", "str"}, {"in", "num"}):
                raise ValueError("ExportNameObject")
            index = _number(row["in"])
            if index in names:
                raise ValueError("ExportDuplicateName")
            kind = "str" if "str" in row else "num"
            data = row[kind]
            field = "str" if kind == "str" else "i"
            if not isinstance(data, dict) or set(data) != {"pre", field}:
                raise ValueError("ExportNameFields")
            prefix = _number(data["pre"])
            if prefix not in names:
                raise ValueError("ExportNamePrefix")
            value = data[field]
            if kind == "str":
                if not isinstance(value, str):
                    raise ValueError("ExportNameString")
            else:
                value = _number(value)
            names[index] = (*names[prefix], (kind, value))
        elif "ie" in row:
            if len(row) != 2 or not set(row) - {"ie"} <= EXPR_KINDS:
                raise ValueError("ExportExpressionKind")
            _number(row["ie"])
        elif "il" in row:
            if len(row) != 2 or not set(row) - {"il"} <= LEVEL_KINDS:
                raise ValueError("ExportLevelKind")
            _number(row["il"])
        elif len(row) == 1:
            kind, data = next(iter(row.items()))
            if kind == "inductive":
                if not isinstance(data, dict) or set(data) != {
                    "types",
                    "ctors",
                    "recs",
                }:
                    raise ValueError("ExportInductiveGroup")
                for field, decl_kind in (
                    ("types", "inductive"),
                    ("ctors", "ctor"),
                    ("recs", "rec"),
                ):
                    if not isinstance(data[field], list):
                        raise ValueError("ExportInductiveList")
                    for info in data[field]:
                        add_declaration(decl_kind, info, line_index)
            elif kind in {"axiom", "def", "thm", "opaque", "quot"}:
                add_declaration(kind, data, line_index)
            else:
                raise ValueError("ExportDeclarationKind")
        else:
            raise ValueError("ExportObjectFields")
    for root in roots:
        if declarations.get(_name(root["declaration"])) != "thm":
            raise ValueError("ExportMissingTheoremRoot")
    return {
        "declaration_count": len(declarations),
        "name_count": len(names),
        "root_count": len(roots),
        "axioms": sorted(".".join(value for kind, value in name) for name in axioms),
        "root_line_indices": {
            root["declaration"]: source_indices[_name(root["declaration"])]
            for root in roots
        },
    }
