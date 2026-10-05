#!/usr/bin/env bash
# Release validation uses a disposable repository; product tags are never touched.
set -euo pipefail
here="$(cd "$(dirname "$0")/.." && pwd)"
tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT
mkdir -p "$tmp/repo/scripts"
cp "$here/release.sh" "$here/check-tag.sh" "$tmp/repo/scripts/"
cd "$tmp/repo"
cat >scripts/release-check.sh <<'CHECK'
#!/usr/bin/env bash
set -euo pipefail
echo check >>"$RELEASE_TRACE"
mkdir -p "$1"
cat >"$1/release-manifest.json" <<'JSON'
{"release":"0.10.2","commit":"fixture","versions":{"engine":"0.10.2","verifier":"0.6.0","wire_ir":[],"records":[],"read_records":[],"store_documents":[]},"public_surface":{"items_sha256":"fixture"},"solver":{"name":"z3","version":"4.16.0"}}
JSON
CHECK
cp scripts/release-check.sh scripts/release-build.sh
sed -i 's/echo check/echo build/; s/"$1"/"$2"/g; s/"$1\//"$2\//g' scripts/release-build.sh
cat >scripts/check-consumer.sh <<'CONSUMER'
#!/usr/bin/env bash
echo "consumer $*" >>"$RELEASE_TRACE"
exit "${CONSUMER_STATUS:-0}"
CONSUMER
chmod +x scripts/*.sh
printf '[workspace.package]\nversion = "0.10.2"\n' >Cargo.toml
git init -q -b main
git config user.name test
git config user.email test@example.invalid
git add .
git commit -qm fixture
git update-ref refs/remotes/origin/main HEAD
git tag -a v0.10.2 -m fixture
git tag -a v0.10.3 -m wrong-version
revision="$(git rev-parse HEAD)"

run_release() {
  env -u GH_TOKEN -u GITHUB_TOKEN -u CHECK_TAG_REQUIRED \
    RELEASE_TRACE="$tmp/trace" CONSUMER_STATUS="$1" \
    scripts/release.sh "$2" >"$tmp/out" 2>&1
}

# Successful order: all release checks, the exact pushed revision, final artifacts.
run_release 0 0.10.2
printf 'check\nconsumer --rev %s\nbuild\n' "$revision" >"$tmp/expected"
if ! cmp -s "$tmp/expected" "$tmp/trace"; then
  echo 'FAIL release order: expected checks, exact-revision consumer, final build' >&2
  cat "$tmp/trace" >&2
  exit 1
fi

# A broken consumer stops before the final build.
: >"$tmp/trace"
if run_release 23 0.10.2; then
  echo 'FAIL consumer rejection did not stop the release' >&2
  exit 1
fi
printf 'check\nconsumer --rev %s\n' "$revision" >"$tmp/expected"
cmp "$tmp/expected" "$tmp/trace"

# A wrong immutable tag stops before any artifact construction and names both versions.
: >"$tmp/trace"
if run_release 0 0.10.3; then
  echo 'FAIL wrong version was accepted' >&2
  exit 1
fi
grep -q '0.10.3.*0.10.2' "$tmp/out"
test ! -s "$tmp/trace"
test "$(git tag --list | wc -l)" -eq 2
echo 'test_release_order: OK'
