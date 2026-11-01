"""Source-pinned scope ledger. This scanner creates no semantic proof authority.

Compare the reviewed source inventory in full, including source bytes. A new
source baseline needs a new review even if a lexical category retains its name.
"""
import argparse
import hashlib
import json
from pathlib import Path
import re
import sys


class InventoryError(ValueError):
    pass


REQUIRED = {"ExprKind": 24, "FoldOp": 6, "QueryKind": 3, "SetOp": 3,
            "CmpOp": 6, "ArithOp": 4, "Type": 10, "Value": 7, "Conv": 3,
            "Kind": 9, "ParamRole": 4}
SPECIAL = set(REQUIRED) | {"SemanticProfile", "Prim", "WType", "Role", "DerivedKind", "OpName", "LambdaOp", "WLifecycle"}
INCLUDED = {
    "ExprKind": {"Lit", "Field", "Param", "Cmp", "Count"},
    "CmpOp": {"Gt", "Le"}, "QueryKind": {"Select"},
    "Type": {"Bool", "Int", "String", "Id", "Entity"},
    "Value": {"Bool", "Int", "Str", "Entity"}, "Conv": {"Keep"},
    "Kind": {"Entity", "Invariant", "Action", "Constraint", "Command"},
    "ParamRole": {"State", "Input"}, "SemanticProfile": {"CommandIntents"},
    "Prim": {"Bool", "Int", "String"}, "WType": {"Bool", "Int", "String", "Id", "Entity"},
    "Role": {"State", "Input"}, "OpName": {"Gt", "Le", "Count"}, "WLifecycle": {"Create"},
}
SURFACE_INCLUDED = {"admit", "AdmissionResult", "DecisionRecord", "evaluate", "evaluate_intent",
                    "semantic::Module", "semantic::module::Module", "canonical::decode_strict",
                    "canonical::tagged_hash", "canonical::to_canonical_string", "format_versions",
                    "commands::CommandDeclaration", "commands::CommandEmission", "commands::CommandIntent",
                    "commands::CommandIntentBag", "semantic::types::SemanticProfile",
                    "store::Store", "store::InMemoryBackend", "store::documents::SeedEntity"}


def masked_rust(text):
    # Preserve offsets/newlines while masking comments and literal contents.
    pattern = re.compile(r'//[^\n]*|/\*.*?\*/|r(?P<hashes>\#*)".*?"(?P=hashes)|"(?:\\.|[^"\\])*"|\'(?:\\.|[^\'\\])\'', re.S)
    return pattern.sub(lambda m: "".join("\n" if c == "\n" else " " for c in m[0]), text)


def enum_members(code, start):
    depth = 0; parts = []; first = start + 1
    for i in range(first, len(code)):
        c = code[i]
        if c in "({[": depth += 1
        elif c in ")}]":
            if c == "}" and depth == 0:
                parts.append(code[first:i]); break
            depth -= 1
            if depth < 0: raise InventoryError("unbalanced enum source")
        elif c == "," and depth == 0:
            parts.append(code[first:i]); first = i + 1
    else:
        raise InventoryError("unterminated enum source")
    result = []
    for part in parts:
        part = re.sub(r"#\[[^]]*\]", "", part).strip()
        if not part: continue
        match = re.match(r"([A-Za-z_][A-Za-z0-9_]*)\b", part)
        if not match: raise InventoryError("unrecognized enum variant")
        result.append(match[1])
    if not result or len(set(result)) != len(result):
        raise InventoryError("empty or ambiguous enum source")
    return result


def entry(identifier, path, included=False, restriction=None, family="language"):
    return {"id": identifier, "source": path, "family": family,
            "status": "included" if included else "deferred",
            "restriction": restriction if included else None,
            "deferred_reason": None if included else
                "Outside the fixed IR0.8 CommandIntents E.x/positive/count/create/set/emit subject; no G1 correctness or speed claim.",
            "obligations": {
                "formal": ["Core033.CoreBridge.template_sound", "Core033.Machine.exact", "Core033.History.scoped_history"] if included else [],
                "native": ["src/reference.rs complete recognition; actual generated checker semantics"] if included else [],
                "matrix": ["actual certified IR lowering and effective Nova port/augmented-shape binding"] if included else [],
                "codec": ["Core033.Codec.acceptance_refines; bounded canonical core033.semantic.v1"] if included else [],
            }, "obligation_status": "open" if included else "deferred"}


def generate(root):
    root = Path(root).resolve()
    files = sorted(path for crate in ["behavior-core", "behavior-store", "behavior-verify"]
                   for path in (root / "crates" / crate / "src").rglob("*.rs"))
    surface_path = root / "api/engine-surface.txt"
    if not files or not surface_path.is_file(): raise InventoryError("actual Core source/surface is unavailable")
    files.append(surface_path)
    files.extend(root / path for path in ["ARCHITECTURE.md", "docs/commands.md", "docs/source-locations.md", "docs/versioning.md"])
    sources = {}; entries = []; counts = {}; ids = set()
    for path in files:
        relative = path.relative_to(root).as_posix()
        raw = path.read_bytes(); sources[relative] = {"sha256": hashlib.sha256(raw).hexdigest(), "bytes": len(raw)}
        if path.suffix != ".rs": continue
        text = raw.decode("utf-8"); code = masked_rust(text)
        for match in re.finditer(r"\benum\s+(\w+)(?:\s*<[^{};]*>)?\s*\{", code):
            enum = match[1]; members = enum_members(code, match.end() - 1)
            if enum in REQUIRED:
                if enum in counts: raise InventoryError(f"ambiguous required enum: {enum}")
                counts[enum] = len(members)
            for variant in members:
                identifier = f"{enum}::{variant}" if enum in SPECIAL else f"{relative}::{enum}::{variant}"
                included = variant in INCLUDED.get(enum, set())
                entries.append(entry(identifier, relative, included,
                                     "Only occurrences in the complete fixed template and its exact results; no arbitrary expression of this constructor."))
        for match in re.finditer(r"\bpub\s+struct\s+(\w+)", code):
            name = match[1]
            entries.append(entry(f"{relative}::declaration::{name}", relative, False, family="declaration"))
        for match in re.finditer(r'\bconst\s+(\w*(?:VERSION|FORMAT|TAG_)\w*)\s*:\s*&str\s*=\s*([^;]+);', text):
            name, version = match[1], match[2]
            included = name == "IR_VERSION_COMMANDS" and version == '"0.8"'
            entries.append(entry(f"{relative}::version::{name}={version}", relative, included,
                                 "IR0.8 only with admitted CommandIntents semantics.", family="profile"))
    if counts != REQUIRED:
        raise InventoryError(f"required constructor coverage changed: actual {counts}; expected {REQUIRED}")
    surface = surface_path.read_text().splitlines()
    if any(not name.strip() for name in surface) or len(surface) != len(set(surface)):
        raise InventoryError("ambiguous public surface inventory")
    for name in surface:
        entries.append(entry("surface::" + name, "api/engine-surface.txt", name in SURFACE_INCLUDED,
                             "Closed-template oracle/support boundary only; no proof of the unrestricted API.", family="public_operation"))
    for name, meaning in {
        "phase-order": "actual Core binding/decode/evaluate/post-state/local/global/command phases and first failure",
        "exact-effects": "simultaneous declared create/set effects, private until publication",
        "command-multiset": "actual Core canonical multiset, duplicate-preserving occurrence sequence",
        "diagnostics": "complete frozen source locations, phase/reason/message reconstruction",
        "initial-validity": "raw authoritative complete seed, positivity, count, live subset used, exact typed lifetimes",
        "observation-expansion": "full reference observation from exact recipe and retained support",
        "historical-subject": "explicit origin and complete initialized suffix, no claim about earlier history",
    }.items():
        entries.append(entry("contract::"+name, "ARCHITECTURE.md", True, meaning, family="semantic_contract"))
    entries.sort(key=lambda row: row["id"])
    for row in entries:
        if row["id"] in ids: raise InventoryError("duplicate scope entry: " + row["id"])
        ids.add(row["id"])
    return {"format_version": "core033.scope.v1", "source_files": sources, "required_enum_counts": counts,
            "public_surface_entries": len(surface), "entries": entries, "g1_pass": False,
            "scope": "source inventory and open obligation map; no semantic theorem is established by this scanner",
            "old_identity_policy": "Existing identities/records are unchanged; no byte-compatibility or trust promotion."}


def main():
    parser = argparse.ArgumentParser(); parser.add_argument("--root", type=Path, required=True)
    mode = parser.add_mutually_exclusive_group(required=True)
    mode.add_argument("--out", type=Path); mode.add_argument("--verify", type=Path)
    args = parser.parse_args()
    try:
        result = generate(args.root)
        if args.verify:
            expected = json.loads(args.verify.read_text())
            if result != expected: raise InventoryError("source/constructor/public-surface inventory differs from frozen coverage")
        else:
            with args.out.open("x") as output: json.dump(result, output, sort_keys=True, indent=2); output.write("\n")
    except (OSError, ValueError) as exc:
        print(str(exc), file=sys.stderr); return 3
    print(json.dumps({"status": "Inventoried", "entries": len(result["entries"]), "g1_pass": False}))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
