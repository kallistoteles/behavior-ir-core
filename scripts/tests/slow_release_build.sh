#!/usr/bin/env bash
# Test of scripts/release-build.sh (feature 011, FR-006a, FR-029, SC-011): two builds of the same
# commit give the same checksums, and the release holds exactly its four assets with a canonical
# manifest. Slow (two release builds), so scripts/release-check.sh runs it, not scripts/gates.sh.
#
#   scripts/tests/slow_release_build.sh <version>
set -euo pipefail
cd "$(dirname "$0")/../.."
version="${1:?usage: scripts/tests/slow_release_build.sh <version>}"
tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT
fail() { echo "slow_release_build: $*" >&2; exit 1; }

scripts/release-build.sh "$version" "$tmp/a" >/dev/null
scripts/release-build.sh "$version" "$tmp/b" >/dev/null
cmp -s "$tmp/a/SHA256SUMS" "$tmp/b/SHA256SUMS" ||
  fail "two builds differ: $(diff "$tmp/a/SHA256SUMS" "$tmp/b/SHA256SUMS" | head -n 4)"

expected="SHA256SUMS
behavior-$version-x86_64-linux-musl
behavior-conformance-$version.tar.gz
release-manifest.json"
[ "$(cd "$tmp/a" && ls | sort)" = "$(sort <<<"$expected")" ] ||
  fail "assets: $(cd "$tmp/a" && ls | tr '\n' ' ')"
(cd "$tmp/a" && sha256sum -c --quiet SHA256SUMS) || fail "SHA256SUMS does not match the assets"

python3 - "$tmp/a" "$version" <<'PY' || fail "manifest"
import hashlib, json, subprocess, sys
out, version = sys.argv[1:]
text = open(f"{out}/release-manifest.json").read()
m = json.loads(text)
assert text == json.dumps(m, sort_keys=True, separators=(",", ":")) + "\n", "not canonical"
cli = f"{out}/behavior-{version}-x86_64-linux-musl"
info = json.loads(subprocess.run([cli, "engine-info"], check=True, capture_output=True,
                                 text=True).stdout)
commit = subprocess.run(["git", "rev-parse", "HEAD"], check=True, capture_output=True,
                        text=True).stdout.strip()
surface = hashlib.sha256(open("api/engine-surface.txt", "rb").read()).hexdigest()
want = {
    "format": "behavior.core_release_manifest.v1", "release": version, "tag": f"v{version}",
    "commit": commit, "versions": info,
    "public_surface": {"crate": "behavior-engine", "items_sha256": surface},
    "solver": {"name": "z3", "version": "4.16.0"},
}
for k, v in want.items():
    assert m[k] == v, f"{k}: {m[k]!r} != {v!r}"
files = [a["file"] for a in m["artifacts"]]
assert files == sorted(files), "artifacts not sorted"
assert set(files) == {f"behavior-{version}-x86_64-linux-musl",
                      f"behavior-conformance-{version}.tar.gz"}, files
for a in m["artifacts"]:
    assert a["sha256"] == hashlib.sha256(open(f"{out}/{a['file']}", "rb").read()).hexdigest()
assert info["engine"] == version, f"the CLI reports engine {info['engine']}, not {version}"
PY
echo "slow_release_build: OK"
