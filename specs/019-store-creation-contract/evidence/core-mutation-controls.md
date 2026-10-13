# Activated Core error and cache mutation controls

Backend mutants alone cannot alter Core's handling of a fault already injected
by the conformance suite's outer probe. These experiments therefore mutate only
an isolated external working-source copy. They introduce no official runtime
flags, test hooks, public APIs, dependency overrides or source changes.

**Provenance correction**: The first experiment used the same Cargo target as
official-source builds. A later positive run emitted copy-only mutation markers
despite unchanged official source hashes, demonstrating an artifact collision.
Those shared-target runs are excluded from mutation assurance and normal GREEN
claims; their logs remain preserved with `shared-target-excluded.json`.
Fresh captured-source reruns use an exclusively separate build target. The
replacement isolated receipts below are complete; the former shared-target
success claims remain excluded.

## Source custody and execution

The corrected copy is retained at
`/home/kalle/validation-receipts/core019-work/core-mutations/isolated/source/`.
`capture.json` records the observed official HEAD, every copied file digest and
the method: working-tree copy, excluding `.git`, build output and caches,
preserving symlinks and lock files. This is an explicitly captured working-source
experiment, not a final frozen-revision validation receipt. Official source files
were never changed. The external copy's baseline is restored between mutations
and again after the experiment.

Commands use the copy's existing pinned Nix/Rust environment and canonical
workspace dependency graph. Resource flags match the execution ledger, but the
copy exclusively uses `/dev/shm/behavior-core019-mutant-target`. No official or
consumer command uses that output directory. These
isolated negative runs are not substitutes for official gates or consumer checks.

Before mutation, the exact named C019-03, C019-04 and C019-11 registration tests
passed, as did the private later-equal-state cold-cache test. Each positive run
collected and executed exactly one named test, with no ignored test. Every
negative run requires both an actual mutated-path marker and an assertion failure
in its designated test; compilation/setup failure is not accepted.
All four isolated positive logs are additionally checked to contain no mutation
marker, and `isolated/summary.json` verifies exactly one executed test per run,
the exclusively dedicated build directory and restoration of the captured source.

## Actual designated failures

| Mutation | Designated test | Actual rejection |
| --- | --- | --- |
| Recover equivalent creation immediately after Backend create Err | creation_lost_ack_case_registered (C019-04) | Lost creation acknowledgment was fabricated as success |
| Convert original Backend error to conflict without foreign evidence | creation_before_failure_case_registered (C019-03) | Primary prepublication error changed |
| Keep BACKEND_ERROR category but erase original error content | creation_before_failure_case_registered (C019-03) | Primary prepublication error changed |
| Convert failed preflight genesis observation to None/absence | creation_read_failure_case_registered (C019-11) | Unexpected Backend create invocation changed the retained creation counter |
| Remove advanced-head guard and attach the initial certificate | store::creation_tests::later_equal_state_identity_never_grants_current_seed_certificate | Position-zero candidate was promoted for an advanced Store |

All five actual negative runs returned101, emitted their explicit copy-only
`CORE_MUTATION019` marker and reported the designated test as FAILED. The cache
marker additionally records position1, proving activation on the advanced path.
The read-error mutant's counter failure establishes the forbidden continuation;
it is not evidence that canonical history was physically overwritten.

Individual `isolated/<label>.json` receipts bind command, exit status, environment, mutated
source digest, marker observation and actual test-failure status. Logs and exact
`<label>-store.rs` copies are retained in that isolated directory alongside
`store-baseline.rs`, `run.py`, `summary.json` and `experiment.log`.
The four baseline logs establish legal positive controls before
these defects were introduced.

These controls support T032's primary-error/uncertainty boundary and T050's cache
authority guard. They are empirical rejection evidence for deliberately injected
defects, not newly discovered production defects or a general soundness theorem.
Final official-source gates and exact-revision consumer validation remain separate.
