# US3 original-versus-current recovery review

T039–T048 establish the existing US2 implementation against the broader US3
controls; no additional production Store/Backend behavior was required. This is
not a claim of retroactive test-first evidence for already satisfied laws.

Exact Module-bearing recovery validates the original candidate, checks published
original Genesis, normalized versions, typed universes, historical lifetimes,
reference relation and original accumulator/history anchor, then independently
inspects a single captured current head and bounded history/schema endpoints.
Recovery does not assign a new current head or reconstruct a new Store genesis.
Original schema and actual current migration schema have distinct roles.

The Core controls pass16 recovery tests,6 fixed-seed property laws (32 cases each)
and7 private tests. They cover real create/update/retarget/remove sequences,
immutable original revisions, removal and ever-used facts, preserved reference
history/events, current accumulator/history/schema tampering, legacy normalized
seed substitution, v1 sequence identity and v2 normalization/order laws. A later
commit after capturing H0 retains current history. A captured H0 certificate is
bound to H0 and cannot answer validation at position one; it does not require an
invented head-stability loop. Advanced/equal-StateId/migrated captures stay cold.

Direct Backend retry tests under both profiles preserve original/current material
at zero, after updates, creates, removals, later equal-StateId events and migration.
The InMemory implementation never assigns its private candidate on equivalent
retry. The durable implementation uses one stable cooperative lock and never
rewrites the authoritative advanced snapshot on recognized retry; recovery first
establishes the persistence barrier. Process schedules and removals are passing
controls, not a new production host defect requiring another implementation.

Evidence: `/home/kalle/validation-receipts/core019-work/core-api-us3-baseline/`,
`core-api-us3-recovery-confirmed/`, `us3-conformance/receipt.json` and consumer lane
receipts. Initial RefEdge serialization setup failure is excluded from RED claims.

The complete C5–C10/C12/C14 case registration, activated designated mutations,
final host shared-suite/race/regression closure and independent P019 assessment
remain pending before T054. Immutable complete fixed-position Backend history,
cryptographic identities and disclosed host locking/sync/root assumptions remain
premises; bounded opening is not full-prefix Behavior replay or proof of arbitrary
Backend/device honesty.

## Closed US3 checkpoint

All 45 shared cases pass, including31 preserved prior cases and all 14 creation
cases; the complete conformance target passes33 tests, noignored case.
Private creation instruments pass19 activation/ordering controls; six retry
mutants fail their designated cases after actual activation and legal positives.
The final C12 compares nonempty supported query READ records (active_count1,
open_total45, big_orderso1/o2) across reordered/unindexed/indexed paths under each
genesis profile. Its unrelated v2 ordinary-query-commit failure is retained as a
separate finding; it is neither repaired nor called unsupported by 019.

Root US3closure passes21contract+16recovery+6property laws+98 historical017/018/
022 regressions (141 tests, noignored). Post-instrument boxing7 private and13 fixture
controls also pass. Complete-source clippy passes after reducing a large private
fixture enum with Box payloads; no semantic change or lint suppression was used.

The facade passes14tests and all 45 shared cases on the durable host. Process11
passes55 actual scoped rows:34 window observations,11 fault activations,6same-target
process races and4 advanced-history workloads. All42 prior consumer regressions
pass with the rebuilt019 CLI. An unrelated internal test-support representation
edit overlapped the broad facade source manifest; runtime/host sources were stable.
This is scoped working-source evidence, not an exact frozen-revision receipt.

Independent reviews: [Core boundary](independent-core-review.md) and
[host/reference boundary](independent-host-review.md). P019-04 exact original
product, P019-05 idempotence, P019-08 captured-history races, P019-09 preservation,
P019-10 certificate non-authority and P019-11 historical profiles have explicit
code invariants and executable evidence. Complete immutable Backend answers and
disclosed physical locking/sync/root/device premises remain assumptions.
T054 closes this bounded assessment; [case closure](case-closure.md) closesT055.
Final frozen gates and exact Git consumer validation remain delivery work.
