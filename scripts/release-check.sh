#!/usr/bin/env bash
# The release check of Behavior Core (feature 011, contracts/core-release.md). Any failure stops
# the check and names the step.
#
#   scripts/release-check.sh [--skip-gates] [dist-dir]
#
# 1 gates             scripts/gates.sh (the constitution's gates, as core-ci runs them)
# 2 reproducible      two release builds give identical assets, a canonical manifest, checksums
# 3 version           the built CLI reports the declared release version
# 4 clean run         the built CLI admits, evaluates and replays a fixture in an empty
#                     environment, outside the repository
# 5 conformance       the conformance archive holds exactly the tracked schemas and fixtures
set -euo pipefail
cd "$(dirname "$0")/.."

skip_gates=0
if [ "${1:-}" = "--skip-gates" ]; then skip_gates=1; shift; fi
dist="${1:-}"
current=""
step() { current="$1"; echo "release-check: step $1" >&2; }
fail() { echo "release-check: FAILED step $current: $*" >&2; exit 1; }
tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT
version="$(python3 -c 'import tomllib; print(tomllib.load(open("Cargo.toml", "rb"))["workspace"]["package"]["version"])')"

step "1 gates"
if [ "$skip_gates" -eq 0 ]; then
  scripts/gates.sh || fail "gates (see the gate named above)"
else
  echo "release-check: gates skipped" >&2
fi

step "2 reproducible"
scripts/tests/slow_release_build.sh "$version" >&2 || fail "release build"
[ -n "$dist" ] || dist="$tmp/dist"
scripts/release-build.sh "$version" "$dist" || fail "build"
cli="$dist/behavior-$version-x86_64-linux-musl"

step "3 version"
engine="$("$cli" engine-info | python3 -c 'import json, sys; print(json.load(sys.stdin)["engine"])')"
[ "$engine" = "$version" ] || fail "the CLI reports engine $engine, the release is $version"

step "4 clean run"
mkdir -p "$tmp/clean"
cp tests/fixtures/wire/valid/invoice.json tests/fixtures/requests/discount_breaks_invariant.json \
  "$cli" "$tmp/clean/"
(
  cd "$tmp/clean" &&
    env -i PATH=/nonexistent "./$(basename "$cli")" admit invoice.json >/dev/null &&
    { env -i PATH=/nonexistent "./$(basename "$cli")" eval invoice.json \
        discount_breaks_invariant.json >record.json || [ $? -eq 1 ]; } &&
    env -i PATH=/nonexistent "./$(basename "$cli")" replay invoice.json record.json >/dev/null
) || fail "the CLI does not admit, evaluate and replay in an empty environment"

step "5 conformance"
mkdir -p "$tmp/unpacked"
tar -xzf "$dist/behavior-conformance-$version.tar.gz" -C "$tmp/unpacked"
(cd "$tmp/unpacked" && find . -type f | sed 's#^\./##' | sort) >"$tmp/archived"
git ls-files -- schema tests/fixtures README.md | sort >"$tmp/tracked"
cmp -s "$tmp/archived" "$tmp/tracked" ||
  fail "the archive differs from the tracked files: $(diff "$tmp/tracked" "$tmp/archived" | head -n 4)"
while IFS= read -r f; do
  cmp -s "$f" "$tmp/unpacked/$f" || fail "$f differs in the archive"
done <"$tmp/tracked"

echo "release-check: OK ($dist)"
