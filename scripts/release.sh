#!/usr/bin/env bash
# Checks and builds a Core Release from the current commit (feature 011): the tag must exist and
# pass scripts/check-tag.sh, then scripts/release-check.sh builds the assets into dist/v<version>/
# with the release notes. It neither creates tags nor publishes; the core-release workflow
# publishes a pushed tag.
#
#   scripts/release.sh <version>
set -euo pipefail
cd "$(dirname "$0")/.."
version="${1:?usage: scripts/release.sh <version>}"
scripts/check-tag.sh "v$version"
[ "$(git rev-parse "v$version^{commit}")" = "$(git rev-parse HEAD)" ] ||
  { echo "release: v$version is not the checked-out commit" >&2; exit 1; }
out="dist/v$version"
scripts/release-check.sh "$out"
python3 - "$out" <<'PY'
import json, sys
out = sys.argv[1]
m = json.load(open(f"{out}/release-manifest.json"))
v = m["versions"]
lines = [
    f"Behavior Core {m['release']} (commit {m['commit']}).",
    "",
    f"- Engine {v['engine']}; verifier {v['verifier']}",
    f"- Wire IR {', '.join(v['wire_ir'])}; records {', '.join(v['records'])}; "
    f"read records {', '.join(v['read_records'])}",
    f"- Store documents: {', '.join(v['store_documents'])}",
    f"- Public Rust surface: behavior-engine (items sha256 {m['public_surface']['items_sha256']})",
    f"- Solver: {m['solver']['name']} {m['solver']['version']}",
    "",
    "Depend on it with",
    "",
    "```toml",
    f'behavior-engine = {{ git = "https://github.com/kallistoteles/behavior-ir-core", rev = "{m["commit"]}" }}',
    "```",
]
open(f"{out}/NOTES.md", "w").write("\n".join(lines) + "\n")
PY
echo "release: $out" >&2
