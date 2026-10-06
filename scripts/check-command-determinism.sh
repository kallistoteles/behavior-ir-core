#!/usr/bin/env bash
# Version 013 semantic outputs: expected status, canonical bytes and digest keys.
set -euo pipefail
export LC_ALL=C
cd "$(dirname "$0")/.."
bin="${BEHAVIOR_BIN:-target/debug/behavior}"
demo="${BEHAVIOR_COMMAND_DEMO_BIN:-$PWD/target/consumer/debug/examples/durable_commands}"
if [ -z "${BEHAVIOR_COMMAND_DEMO_BIN:-}" ]; then
  CARGO_TARGET_DIR="$PWD/target/consumer" cargo build -q --manifest-path consumer/Cargo.toml --example durable_commands
fi
tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT
record_digest() {
  if [ -n "${BEHAVIOR_DIGEST_DIR:-}" ]; then
    printf 'core\t013:%s\t%s\n' "$1" "$(sha256sum "$2" | cut -d' ' -f1)" >>"$BEHAVIOR_DIGEST_DIR/outputs.tsv"
  fi
}
run_twice() {
  local label="$1"; shift
  local a=0 b=0
  "$@" >"$tmp/a" || a=$?
  "$@" >"$tmp/b" || b=$?
  if [ "$a" -ne 0 ] || [ "$b" -ne 0 ] || [ ! -s "$tmp/a" ] || ! cmp -s "$tmp/a" "$tmp/b"; then
    echo "command determinism: unexpected status/output for $label ($a/$b)" >&2; exit 1
  fi
  record_digest "$label" "$tmp/a"
}
for wire in tests/fixtures/commands/modules/*.json; do
  run_twice "admit:$(basename "$wire")" "$bin" admit "$wire"
done
root=tests/fixtures/commands
run_twice invoke:receipt "$bin" invoke "$root/modules/receipt.json" "$root/invocations/receipt.json" "$root/snapshots/receipt.json"
run_twice invocation-replay:receipt "$bin" invoke-replay "$root/modules/receipt.json" "$root/records/receipt.invocation.json"
run_twice replay:receipt "$bin" replay "$root/modules/receipt.json" "$root/records/receipt.json"
# Independent stores have identical canonical genesis/candidate/context. Compare
# the entire proof/authorization/commit/stream result, not paths or wall time.
for pass in a b; do
  folder="$tmp/$pass-demo"
  "$demo" prepare --root "$folder" >"$tmp/$pass-prepare"
  "$bin" governance verify "$root/modules/receipt.json" --profile tests/fixtures/governance-v2/profile.json --seed tests/fixtures/governance-v2/verifier.seed --out "$folder/verification.json" >"$tmp/$pass-proof"
  "$bin" governance authorize "$folder/candidate.json" --wire "$root/modules/receipt.json" --evidence-policy tests/fixtures/governance-v2/evidence-policy.json --policy tests/fixtures/governance-v2/policy.json --verification "$folder/verification.json" --seed tests/fixtures/governance-v2/authorizer.seed --context "$folder/context.json" --now 2026-10-05T12:00:00Z --out "$folder/evidence.json" >"$tmp/$pass-authorization"
  "$demo" commit --root "$folder" --evidence "$folder/evidence.json" --context "$folder/context.json" >"$tmp/$pass-commit"
  "$demo" stream --root "$folder" >"$tmp/$pass-stream"
  "$demo" crash-recovery --root "$folder" >"$tmp/$pass-crash"
done
for result in prepare proof authorization commit stream crash; do
  if [ ! -s "$tmp/a-$result" ] || ! cmp -s "$tmp/a-$result" "$tmp/b-$result"; then
    echo "command determinism: changed or empty $result output" >&2; exit 1
  fi
  record_digest "$result:receipt" "$tmp/a-$result"
done
for artifact in candidate context verification evidence; do
  if [ ! -s "$tmp/a-demo/$artifact.json" ] || ! cmp -s "$tmp/a-demo/$artifact.json" "$tmp/b-demo/$artifact.json"; then
    echo "command determinism: changed or empty $artifact artifact" >&2; exit 1
  fi
  record_digest "artifact:$artifact" "$tmp/a-demo/$artifact.json"
done
