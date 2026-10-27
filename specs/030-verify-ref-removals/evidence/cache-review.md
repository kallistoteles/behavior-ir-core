# PR #39: bounded full-module cache dependencies

Review: https://github.com/kallistoteles/behavior-ir-core/pull/39#discussion_r4382654569

The initial implementation serialized the full module for each affected action/check
kind and copied that string into individual proof-site dependencies. The new 32-action,
32-reference-class regression failed against that implementation: each site copied
22,795 bytes for a 22,772-byte module ([red output](cache-review-red.txt)).

The verification context now lazily computes one SHA-256 digest of the exact serialized
module under the private `behavior.reference_world_module.v1` domain. All affected
actions and check kinds reuse it. The per-site module dependency is 94 bytes; the
public action-name dependency remains separate. No relevant module content is omitted.
Modules that never need this dependency do not compute it.

This removes the module-size multiplier from copying this particular dependency.
It does not claim linear total verification cost or establish a general capacity bound.
Core behavior, proof obligations, public hash domains and replay are unchanged. The
unpublished 0.11 diagnostic keys for affected removals intentionally change, causing
old development-cache entries to miss; historical artifacts are unchanged.

## Validation

Pinned environment and build settings are the same as the original feature evidence.

```text
cargo test --locked -p behavior-verify --lib --test cache --test ref_removals --test trusted_verification
27 unit + 8 cache + 20 reference + 24 trusted-verification tests = 79 passed

cargo fmt --all --check
cargo clippy --locked -q -p behavior-verify --all-targets -- -D warnings
scripts/check-public-surface.sh
scripts/check-boundary.sh
```

All checks above pass. [Green output](cache-review-green.txt) includes unchanged-action/
added-incoming-schema invalidation, equal-body action scope, cache/no-cache parity,
independent trusted inventories, and all six mandatory pattern/version positives.

[Fresh default-profile measurements](cache-review-resources.json) use the same
measurement harness as `resources.json`, writing a separate output file. They retain
the exact new source digest, inputs, scripts, all solver calls, complete reports,
wall times and RSS. All six cases remain verified within unchanged default budgets.
They completed in 0.19–0.24 seconds on the recorded environment; these are fixture
measurements rather than a claim about large-module solver performance.

The original `gates.txt`, `gates-summary.json` and `resources.json` remain evidence for
the implementation snapshot in commit `4c48f90`. They are not relabelled as a full
gate run of this follow-up. Updated full CI must pass before merge.
