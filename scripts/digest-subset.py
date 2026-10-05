#!/usr/bin/env python3
"""Check a conformance digest against the frozen 012 compatibility baseline."""
import json
import sys

ALLOWED = (
    "file:tests/fixtures/invocation/",
    "file:schema/invocation-",
    "file:schema/capability-intent-",
    "file:schema/snapshot-",
)


def unique_object(pairs):
    result = {}
    for key, value in pairs:
        if key in result:
            raise ValueError(f"duplicate key {key}")
        result[key] = value
    return result


def digest(stream):
    value = json.load(stream, object_pairs_hook=unique_object)
    if not isinstance(value, dict) or any(
        not isinstance(k, str) or not isinstance(v, str) for k, v in value.items()
    ):
        raise ValueError("expected an object of string hashes")
    return value


def main():
    if len(sys.argv) != 2:
        print("usage: digest-subset.py <before.json>", file=sys.stderr)
        return 2
    try:
        with open(sys.argv[1], encoding="utf-8") as stream:
            before = digest(stream)
        after = digest(sys.stdin)
    except (OSError, ValueError) as error:
        print(f"digest-subset: invalid digest: {error}", file=sys.stderr)
        return 2
    problems = [
        f"{key}: {'missing' if key not in after else 'changed hash'}"
        for key in sorted(before)
        if after.get(key) != before[key]
    ]
    problems.extend(
        f"{key}: forbidden new key"
        for key in sorted(after.keys() - before.keys())
        if not key.startswith(ALLOWED)
    )
    if problems:
        print("\n".join(problems), file=sys.stderr)
        return 1
    print(f"digest-subset: OK ({len(before)} frozen keys)")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
