#!/usr/bin/env bash
# Models compile downward; the documents that define them never call them plugins or extensions
# (feature 011, FR-013), words that suggest components changing runtime semantics.
#
#   scripts/check-terms.sh [file...]      # default: ARCHITECTURE.md
set -euo pipefail
cd "$(dirname "$0")/.."
[ $# -gt 0 ] || set -- ARCHITECTURE.md
if grep -HniE '\b(plugin|extension)s?\b' "$@" >&2; then
  echo "check-terms: FAILED: name models by what they are (lowered to Behavior IR)" >&2
  exit 1
fi
echo "check-terms: OK"
