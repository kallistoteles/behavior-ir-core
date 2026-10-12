# US3 — Exact justified validation reuse

Status: reviewed RED and integrated GREEN checkpoint complete (T037–T046).

## Test-first boundary

Root reviewed the assertions and actual compiled pre-change runs before modifying
Store production code. [Public reuse/fault evidence](runs/US3/store/summary.md)
records twelve reuse tests (six passing controls, six intended failures), six
passing publication/fault controls and actual backend counters. The
[private run](runs/US3/private/summary.md) records 24 passing controls and three
intended profile-guard failures, one unexecuted benchmark and two filtered tests.
The existing snapshot-reuse baseline separately reproduced three redundant
capture failures. Compiler errors and mistaken seed record-shape assertions are
retained and excluded from semantic RED.

## Implementation invariant

A reusable certificate is private and bound to the exact store/history record,
state identity, history position, schema, canonical admitted behavior and
`behavior.complete_resulting_state.v1` validation profile. State content alone
cannot bind identity lifetime. `backend_mut` invalidates materialization and
reopen begins without it; a cache miss reconstructs canonical rows and uses the
full reference checker. No persistent validated bit is introduced.

Fresh action evaluation, invocation and commit rederivation retain the Arc returned
by `validate_snapshot` and use the existing snapshot facts adapter. Values,
membership and incoming references come from that exact capture. `used` continues
to read the backend at the exact historical position; absence from live state is
not freshness. Required bound-version, history, schema, head and commit checks
remain on their existing routes. The captured Arc is local to evaluation and is
dropped before post-commit carry, so speculative observations do not force a
copy of the entire cache.

The private pending-child boundary accepts only a strictly decoded current 0.8
record with the exact validation profile and matching module/language identity.
It excludes removals, migrations, global/query/world-dependent obligations and
unproven dependency closure. Unknown dependencies and suppressed nonlocal
branches are affected. Simultaneous changed/new refs are checked against one
candidate overlay; public creation freshness is a separate historical obligation.
Pending evidence does not replace the committed parent certificate.

Only successful atomic backend application may carry the exact pending child.
The child head, history record, schema, parent certificate and unique Arc ownership
must match; otherwise the materialization is discarded. Non-application and
failed CAS retain the parent. A durable write with a lost acknowledgment is
already canonical history, but its uncertain response never publishes speculative
validation evidence; exact recovery and later child reconstruction are distinct.

## Equivalence and assumptions

For an exact established valid parent, a local update/create-only delta preserves
unchanged row-local obligations. No removal preserves targets of unchanged refs;
changed/new refs are evaluated against the candidate. Together with ordinary
creation freshness and successful atomic application, this justifies carrying
validity to that exact child. This is a scoped mathematical argument and a code
invariant, not a machine-checked proof for arbitrary Behavior expressions.

Current evaluation still computes the complete canonical child schedule and emits
all required typed witnesses, observations and snapshot evidence. The cache saves
redundant backend work; it does not erase reference semantics or alter the first
failure. Whole-record/bundle comparisons share the production evaluator. The
private full-child controls independently reconstruct inputs but share its
production semantic checker; US1's direct finite-state oracle is separate.

Canonical backend/history contracts, immutable captured data and engine-owned
private cache memory remain assumptions. Optimization may omit a redundant call,
but may not omit its semantic or trust obligation. Performed backend failures keep
the existing route: provider `used` failure yields ERROR/UNKNOWN_FACT; a later
commit freshness failure is operational Backend error. Historical replay/live
commit separation is completed in US4; this checkpoint makes no archive authority
claim.

## Actual execution

[Private GREEN](runs/US3/green/run.json): 27 passed, zero failed, one ignored
workload, two filtered. The first integration command named nonexistent test
targets and selected no tests; it is retained and excluded. The first actual
integration execution exposed an old harness expectation for raw injected error
text. Current 0.8 canonical evidence reports semantic ERROR/UNKNOWN_FACT; the
harness was made exact about that existing route, without a production change.

[Focused acceptance GREEN](runs/US3/acceptance-green/run.json): twelve reuse tests,
six fault tests and ten existing snapshot tests passed, with zero failed or
filtered tests; one existing snapshot benchmark remains unexecuted in this run.
Both Wire0.7 and0.8 and both selected sizes 10/100 reached the warm assertions.

| Measured boundary | Universe enumerations | Version loads | Historical used calls |
| --- | ---: | ---: | ---: |
| Warm evaluate plus invoke, 10/100 rows, both languages | 0 | 4 | 0 |
| Warm commit rederivation, 10/100 rows, both languages | 0 | 2 | 0 |
| Warm create, 100 parents/101 child rows, both languages | 0 | 0 | 1 |
| Same-schema language change, 10 rows | 1 | 12 | 0 |

These are recorded transport counters, not a semantic call-trace contract.
Complete canonical child evidence is separately asserted. The [broader integration capture](runs/US3/verified-green/run.json) actually
executed all fourteen selected targets with no-fail-fast. Its command exited 101
because three old lifecycle-create assertions still expected the frozen record
header and omitted newly explicit parent field facts. These were current-harness
expectations, not archive fixtures; no production behavior was changed to make
them pass. The [focused corrected harness run](runs/US3/lifecycle-current-green/run.json)
then executed all five lifecycle-create tests successfully. The forged-ref control
now mutates only its existence fact while retaining the required parent fields.
The initial failed execution remains evidence and is not reported as a successful
whole command.

| Broader selected target | Actual successful tests | Unexecuted ignored workload |
| --- | ---: | ---: |
| behavior_validity | 8 | 0 |
| command_occurrences / command_only / command_replay / command_stream | 4 / 4 / 3 / 8 | 0 |
| concurrency_props / durable_commands | 1 / 8 | 1 / 0 |
| incremental_validation | 9 | 1 |
| lifecycle_create (focused corrected harness) / lifecycle_remove | 5 / 1 | 0 |
| lifecycle_replay | 2 | 1 |
| resulting_state_commit_faults / resulting_state_reuse | 6 / 12 | 0 |
| snapshot_reuse | 10 | 1 |

The longer lifecycle replay completed in 690 seconds; historical reproduction
checks are empirical controls, not a claim that US4 dispatch is already complete.
Ignored workloads remain unexecuted and are not counted as passing tests.
O(n) child traversal, canonical snapshot bytes, observations and strict record
checking remain possible. There is no latency, constant-time semantic work,
SC-007 performance or general audit-SOUND claim.
