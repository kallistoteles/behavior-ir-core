#!/usr/bin/env bash
set -euo pipefail
cli="$RELEASE_SMOKE_CLI"
tmp="$RELEASE_SMOKE_TMP"
current=""
step() { current="$1"; }
fail() { echo "release-check: FAILED step $current: $*" >&2; exit 1; }
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

