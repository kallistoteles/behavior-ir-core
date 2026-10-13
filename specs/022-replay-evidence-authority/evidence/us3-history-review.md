# US3 historical integrity and authority review

Full retained targeted commands run under the pinned Nix environment against the
completed uncommitted implementation. All exit zero, with no ignored tests:

| Evidence | Substantive passing tests |
| --- | ---: |
| [Core full preservation](runs/us3-green/core-full/run.json) | 129 |
| [Store full preservation](runs/us3-green/store-full/run.json) | 157 |
| [Private authority probes](runs/us3-green/authority-probes/run.json) | 4 |
| [Canonical facade consumer](runs/us3-green/facade-consumer-gate/run.json) | 66 |
| [Complete candidate protocol](runs/us3-green/protocol-complete/run.json) | 29 subprocess controls |

The first four rows count 356 actual test executions. Auxiliary zero-test targets
are excluded. The feature subset contains 125 collected tests; property case
iterations and repeated compatible executions are support, not inflated test
counts. Protocol mocks establish checker/hook behavior, not semantic replay truth.
The actual runner emits 38 unique original-identity/profile/coordinate rows twice
with equal bytes; 35 match and three correctly reject false historical claims.

The [coverage report](matrix-coverage.json) reconciles all 786 reviewed dispositions:
224 applicable feature cells,468 inherited 018 cells,62 unsupported/admission
controls,14 atomic-rejection positives and18 protocol cases (including three
retained baselineRED assertions). Four Store-read N/A have explicit code-based
explanations. None is silently skipped or counted as positive compatibility.
Concrete source/branch assertions and successful commands support each required ID.

O022-05–09 / FR-004/006/007/008/012/017: the complete supported historical domain
retains its own profile interpretation. Original records replay after writes and
real migrations; equal StateId at another position does not move a record's
identity. New independently sourced original action0.4–0.7 and current0.8
ALLOW/DENY/ERROR controls establish30 Core/Store outcome cells. Historical missing
captures/query-registry limits and unsupported combinations retain their refusals.
Exact typed decimal equality and canonical membership are distinct from raw archive
identity. Optional corrupt indexes cannot replace canonical history answers.

O022-10–11 / FR-010/011: complete Core reproduction precedes invocation historical
claim reconciliation, ordinary Store prevalidation remains mandatory, and schema
binding retains priority over new later loading. Actual direct read errors remain
Backend failures; actual evaluator Used errors preserve semantic UNKNOWN_FACT and
Ok(nonmatch) replay. Rejected Snapshot data creates no late entity demand, while
required independent historical reads still occur and remain fallible.

Fresh command ALLOW actually increments the bundle probe; replay increments zero.
Current/archived command replay, mismatch, malformed refusal and evaluation error
preserve canonical state/history/committed command occurrences. Private cache
checks permit only exact committed-parent reconstruction, never promotion of an
uncommitted candidate or rejected Snapshot. Replay performs no command dispatch.

SC-002/003/004/006 have scoped empirical evidence and inspected invariants; tests
are not a universal proof. Residual premises remain coherent immutable Backend
history/complete primary enumeration, existing typed codecs/arithmetic/hash and
query/profile contracts, cryptographic assumptions and historical capture limits.
Endpoint integrity is not a new full-prefix adversarial backend audit. The
[independent re-audit](targeted-re-audit.md) separately assesses both022 findings;
final O022-14 delivery remains dependent on the [external receipt](validation-location.md).
