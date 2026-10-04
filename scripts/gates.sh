#!/usr/bin/env bash
# The quality gates of the constitution, in one list (feature 011, FR-034): Spec Kit's implement
# phase, scripts/release-check.sh and core-ci all run exactly this. Stops at the first failing
# gate and names it.
set -euo pipefail
cd "$(dirname "$0")/.."

gate() {
  local name="$1"; shift
  echo "gates: $name" >&2
  if ! "$@"; then
    echo "gates: FAILED $name" >&2
    exit 1
  fi
}

gate "cargo fmt" cargo fmt --all --check
gate "clippy" cargo clippy -q --workspace --all-targets -- -D warnings
gate "cargo test" cargo test -q --workspace
gate "cargo build" cargo build -q --workspace
gate "determinism check" scripts/determinism-check.sh
gate "boundary" scripts/check-boundary.sh
gate "public surface" scripts/check-public-surface.sh
gate "external consumer" scripts/check-consumer.sh
gate "workflows" scripts/check-workflows.sh
gate "terms" scripts/check-terms.sh
gate "script tests" sh -c 'for t in scripts/tests/test_*.sh; do "$t" || exit 1; done'
echo "gates: OK" >&2
