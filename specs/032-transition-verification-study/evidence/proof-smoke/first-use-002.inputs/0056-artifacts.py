"""Strict, bounded research artifact transport; no semantic proof authority."""
import gzip
import hashlib
import json
from pathlib import Path

from jsonschema import Draft202012Validator, validators
from jsonschema.exceptions import SchemaError, ValidationError


class ArtifactError(ValueError):
    """Malformed, incomplete, unbound or resource-bounded evidence."""


_TYPED = Draft202012Validator.TYPE_CHECKER.redefine("integer", lambda _c, v: type(v) is int)
_VALIDATOR = validators.extend(Draft202012Validator, type_checker=_TYPED)


def _pairs(pairs):
    value = {}
    for key, item in pairs:
        if key in value:
            raise ArtifactError(f"duplicate JSON key: {key}")
        value[key] = item
    return value


def _constant(value):
    raise ArtifactError(f"nonfinite JSON number: {value}")


def _validate(value, schema):
    try:
        _VALIDATOR.check_schema(schema)
        _VALIDATOR(schema).validate(value)
    except (SchemaError, ValidationError) as exc:
        raise ArtifactError(f"schema validation: {exc}") from exc


def read_json(path, schema, *, expected_sha256=None, max_bytes=16 * 1024 * 1024):
    """Hash exact input bytes before typed parsing; limits are explicit per caller."""
    if type(max_bytes) is not int or max_bytes <= 0:
        raise ArtifactError("invalid artifact byte bound")
    try:
        with Path(path).open("rb") as handle:
            raw = handle.read(max_bytes + 1)
        if len(raw) > max_bytes:
            raise ArtifactError("artifact byte bound exceeded")
        if expected_sha256 is not None and hashlib.sha256(raw).hexdigest() != expected_sha256:
            raise ArtifactError("artifact digest mismatch")
        value = json.loads(raw, object_pairs_hook=_pairs, parse_constant=_constant)
    except (OSError, ValueError, UnicodeError) as exc:
        raise ArtifactError(str(exc)) from exc
    _validate(value, schema)
    return value


def same_json(left, right):
    """Preserve every JSON scalar type, including bool/int and int/float."""
    if type(left) is not type(right):
        return False
    if isinstance(left, dict):
        return left.keys() == right.keys() and all(same_json(left[k], right[k]) for k in left)
    if isinstance(left, list):
        return len(left) == len(right) and all(same_json(a, b) for a, b in zip(left, right))
    return left == right


def read_gzip(path, *, raw_sha256, raw_bytes, max_bytes):
    if type(raw_bytes) is not int or type(max_bytes) is not int or not 0 <= raw_bytes <= max_bytes:
        raise ArtifactError("invalid or exceeded uncompressed bound")
    try:
        with gzip.open(path, "rb") as handle:
            raw = handle.read(max_bytes + 1)
    except (OSError, EOFError, ValueError) as exc:
        raise ArtifactError(f"invalid gzip: {exc}") from exc
    if len(raw) != raw_bytes or len(raw) > max_bytes:
        raise ArtifactError("uncompressed byte length mismatch")
    if hashlib.sha256(raw).hexdigest() != raw_sha256:
        raise ArtifactError("uncompressed digest mismatch")
    return raw


def attempt_coverage(rows, expected):
    """Coverage counts retained attempts, including failures; it is not success."""
    expected = list(expected)
    if len(expected) != len(set(expected)):
        raise ArtifactError("duplicate expected attempt key")
    seen = set()
    for row in rows:
        try:
            key = tuple(row[k] for k in ("case_id", "candidate", "mode", "repetition"))
        except (KeyError, TypeError) as exc:
            raise ArtifactError("missing attempt coordinates") from exc
        if not all(type(v) is str for v in key[:3]) or type(key[3]) is not int or key[3] < 0:
            raise ArtifactError("invalid attempt coordinate types")
        if key in seen or key not in expected:
            raise ArtifactError("duplicate or unexpected attempt")
        if type(row.get("outcome")) is not str:
            raise ArtifactError("missing retained outcome")
        seen.add(key)
    if seen != set(expected):
        raise ArtifactError("missing attempts")
    return len(seen)
