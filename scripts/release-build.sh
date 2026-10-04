#!/usr/bin/env bash
# Builds the assets of a Core Release into <out> (feature 011, contracts/core-release.md):
#   behavior-<v>-x86_64-linux-musl            the command-line tool (static)
#   behavior-conformance-<v>.tar.gz            the schemas and conformance fixtures
#   release-manifest.json                      behavior.core_release_manifest.v1
#   SHA256SUMS                                 every other asset
# The build is reproducible: the same commit gives the same bytes on any machine with the pinned
# toolchain (nix develop). It neither checks nor tags; scripts/release.sh and
# scripts/release-check.sh call it.
set -euo pipefail
cd "$(dirname "$0")/.."
version="${1:?usage: scripts/release-build.sh <version> <out>}"
out="${2:?usage: scripts/release-build.sh <version> <out>}"

SOURCE_DATE_EPOCH="$(git log -1 --format=%ct)"
export SOURCE_DATE_EPOCH CARGO_INCREMENTAL=0
cargo_home="${CARGO_HOME:-$HOME/.cargo}"
export RUSTFLAGS="--remap-path-prefix=$PWD=/build --remap-path-prefix=$cargo_home=/cargo"
# A separate target directory: the remapped flags would otherwise rebuild the dev build each time.
export CARGO_TARGET_DIR="$PWD/target/release-build"

rm -rf "$out"
mkdir -p "$out"
# A static musl binary: no dynamic loader or shared library is needed, so it runs on any x86_64
# Linux, NixOS included, and inside a wheel of any platform tag.
target=x86_64-unknown-linux-musl
cargo zigbuild -q --release --locked --target "$target" -p behavior-cli >&2
cli="behavior-$version-x86_64-linux-musl"
install -m 0755 "$CARGO_TARGET_DIR/$target/release/behavior" "$out/$cli"

conformance="behavior-conformance-$version.tar.gz"
git ls-files -z -- schema tests/fixtures README.md |
  tar --null -T - --sort=name --mtime="@$SOURCE_DATE_EPOCH" --owner=0 --group=0 \
    --numeric-owner --mode='a=rX,u+w' --format=gnu -cf - |
  gzip -n -9 >"$out/$conformance"

info="$("$out/$cli" engine-info)"
python3 - "$out" "$version" "$(git rev-parse HEAD)" "$info" "$cli" "$conformance" <<'PY'
import hashlib, json, sys
out, version, commit, info, *files = sys.argv[1:]
versions = json.loads(info)
if versions["engine"] != version:
    sys.exit(f"release-build: the engine reports version {versions['engine']}, not {version}")
def sha(path):
    return hashlib.sha256(open(path, "rb").read()).hexdigest()
manifest = {
    "format": "behavior.core_release_manifest.v1",
    "release": version,
    "tag": f"v{version}",
    "commit": commit,
    "versions": versions,
    "public_surface": {"crate": "behavior-engine", "items_sha256": sha("api/engine-surface.txt")},
    "artifacts": [{"file": f, "sha256": sha(f"{out}/{f}")} for f in sorted(files)],
    "solver": {"name": "z3", "version": "4.16.0"},
}
with open(f"{out}/release-manifest.json", "w") as f:
    f.write(json.dumps(manifest, sort_keys=True, separators=(",", ":")) + "\n")
PY
(cd "$out" && sha256sum -- "$cli" "$conformance" release-manifest.json | sort -k2 >SHA256SUMS)
echo "release-build: $out" >&2
