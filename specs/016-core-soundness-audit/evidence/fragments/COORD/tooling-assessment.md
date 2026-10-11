# Supplemental tooling decision

Exact baseline: `1e286ebcf1d61117320c57df155fa1ef9397e880` / tree
`6a9f9879a9fece5a001ca30ace483a8cde1addd9`. Decisions concern evidence
for this audit; none changes repository gates, dependencies or release policy.

## Feature coverage

E-COORD-007 workspace metadata lists five packages and E-COORD-008 lists the
external consumer. Every first-party package has an empty Cargo feature map
`{}`. Thus `--all-features` selects the same first-party configurations as the
canonical workspace/consumer checks. A redundant second full suite is not run.
This does not assert testing every transitive dependency feature or target platform.
The significant `cfg(test)`/production split in incremental validation is inspected
explicitly and exercised through integration tests that compile the dependency
without its inline-test configuration; inline oracle/property tests are separate.

## Risk-directed checks

| Risk | Selected evidence | Limits / omitted tooling |
| --- | --- | --- |
| Invalid committed child masked by common-reference agreement | Existing characterization and independent complete-child oracle, plus exact-base contract assertion overlay | A failing assertion is counterexample evidence, not a passing quality gate. No remediation is applied. |
| Historical read-v1 Store dispatch differs from standalone dispatch | Two exact-base integration assertions, preserving current-v2 positive controls and standalone historical-v1 positive controls | Tests express existing compatibility obligations; compilation failure would not count as reproduction. |
| Backend iteration/index order affects semantics | Existing seeded permutation/index/no-index metamorphic test requested explicitly despite its ignored default | Records count/seeds/comparators; no guarantee for arbitrary nonconforming backends. |
| Arithmetic, operator composition and candidate locality | Existing proptest/unit/regression suites, full collection and actual execution | Empirical bounded domains are not formal arithmetic or composition proofs. |
| Atomicity and command exposure | Existing fault injectors, idempotent-recovery/interleaving tests, external durable consumer crash tests | Backend::create fault injection and arbitrary backend internal write/crash windows remain explicit gaps. |
| Type/identity/parser and authenticated evidence substitution | Existing strict-decode, tamper, binding and trusted-governance negative tests | Arbitrary external adapter dispatch and cryptographic key custody remain external assumptions. |

Miri/sanitizers are not selected: the first-party inventory finds no unsafe block
and forbids unsafe at entry points; the concrete risks above concern semantic
validation, dispatch and contracts rather than a newly identified unsafe-memory
path. This is a non-applicability decision for the identified risks, not a Miri
or sanitizer pass or an audit of dependency internals. Long-running fuzzing and
new frameworks are not introduced: existing property tests and minimized direct
counterexamples address the identified classes, while global proof/coverage limits
remain unestablished in the obligation ledger. No tool absence is called success.

Ignored latency workloads are not required semantic acceptance tests for this
correctness audit. Their skipped status will be retained. The long 10,000-event
replay stress test is distinguished from ordinary executed replay, historical
schema and fault tests; run/omission decisions are recorded after actual collection.

## Resource custody

The canonical command remains `nix develop -c scripts/gates.sh`. Recorded
`CARGO_PROFILE_DEV_DEBUG=0`, `CARGO_PROFILE_TEST_DEBUG=0`,
`CARGO_INCREMENTAL=0`, `CARGO_BUILD_JOBS=2` constrain build artifacts/concurrency
with initially 4.5 GiB free disk. They do not alter assertions, dependency metadata,
source or gate commands. Supplemental overlays use the same owned build target
only after the baseline runner finishes; their source paths and patches are explicit.

## Recorded actual supplemental outcomes

Every selected run completed on the unchanged baseline with recorded seed20261010
where proptest uses it. This does not retrospectively seed the canonical gates.

| Run | Executed result | Scope |
| --- | --- | --- |
| E-MODEL-002 |34passed,0ignored | exact6/hash-properties10/queries8/read-replay10 |
| E-MODEL-003 |4passed,4filtered | private reference derivative Value/Error replacement/composition |
| E-MODEL-004 |1passed,0ignored/filtered | explicitly requested release ignored order case:1000permutation seeds1–1000, alternating indexes |
| E-INCREMENTAL-003 |17passed,1ignored,2filtered | full child/oracle/local dependency/candidate/cache/ref corpus |
| E-INCREMENTAL-004 |1passed,9filtered | known invalid-child characterization; not G3 proof |
| E-IDENTITY-002 |2passed | schema/state bounded properties |
| E-TRUST-003 |1passed,20filtered | poisoned diagnostic cache cannot become fresh trusted evidence |

Exact commands, source revision, stdout/stderr and counts are in the separate
run directories. The three test-only counterexample overlays are semantic RED,
not passing gates. Their final assertions fail after legal positive controls.

## Default-ignored accounting

The24 default-ignored cases below remain recorded as skipped in the baseline.
Only one was actually selected for supplemental execution. The other23 are
unexecuted measurements or larger stress domains; no test absence is called pass.

| Target / case | Supplemental status | Reason / remaining scope |
| --- | --- | --- |
| perf.rs / perf_admission_and_evaluation | skipped | latency/resource benchmark, not audit semantic acceptance |
| perf.rs / perf_bound_analysis_overhead | skipped | latency/resource benchmark, not audit semantic acceptance |
| src/lib.rs / store::incremental::workload_tests::controlled_10000_pairs | skipped | additional large-domain stress; bounded default coverage is not this stress run |
| concurrency_props.rs / ten_thousand_interleavings | skipped | additional large-domain stress; bounded default coverage is not this stress run |
| incremental_validation.rs / repeated_warm_update_read_and_create_read_workloads | skipped | additional large-domain stress; bounded default coverage is not this stress run |
| invocation_perf.rs / three_binding_invocation_adds_at_most_ten_percent_over_legacy_evaluation | skipped | latency/resource benchmark, not audit semantic acceptance |
| lifecycle_perf.rs / one_creation_or_removal_does_not_depend_on_the_store_size | skipped | latency/resource benchmark, not audit semantic acceptance |
| lifecycle_props.rs / colliding_creations_at_scale | skipped | additional large-domain stress; bounded default coverage is not this stress run |
| lifecycle_replay.rs / a_long_mixed_history_replays | skipped | additional large-domain stress; bounded default coverage is not this stress run |
| migration_perf.rs / a_hundred_thousand_entities_migrate_in_one_transition_within_a_minute | skipped | latency/resource benchmark, not audit semantic acceptance |
| migration_replay.rs / ten_thousand_transitions_across_three_migrations_replay | skipped | additional large-domain stress; bounded default coverage is not this stress run |
| perf.rs / one_commit_does_not_depend_on_the_store_size | skipped | latency/resource benchmark, not audit semantic acceptance |
| query_order_props.rs / backend_order_and_indexes_never_change_a_decision | pass | backend enumeration/index metamorphic correctness |
| query_perf.rs / a_selective_query_does_not_depend_on_the_store_size | skipped | latency/resource benchmark, not audit semantic acceptance |
| query_perf.rs / the_index_never_changes_a_result | skipped | additional large-domain indexed/unindexed semantic equivalence:20,000 entities,10 members,no timing assertion; unexecuted, distinct from E-MODEL-004 |
| query_replay.rs / a_long_query_history_replays | skipped | additional large-domain stress; bounded default coverage is not this stress run |
| query_replay.rs / a_thousand_transition_query_history_replays | skipped | additional large-domain stress; bounded default coverage is not this stress run |
| read_perf.rs / a_five_item_projection_of_ten_thousand_entities_takes_under_two_seconds | skipped | latency/resource benchmark, not audit semantic acceptance |
| replay.rs / ten_thousand_transitions_replay_and_tampers_are_found | skipped | additional large-domain stress; bounded default coverage is not this stress run |
| result_state_props.rs / derived_resulting_state_queries_match_full_reevaluation_10k | skipped | additional large-domain stress; bounded default coverage is not this stress run |
| snapshot_reuse.rs / release_snapshot_validation_measurements | skipped | latency/resource benchmark, not audit semantic acceptance |
| perf.rs / example_modules_verify_within_ten_seconds | skipped | latency/resource benchmark, not audit semantic acceptance |
| perf.rs / fixed_scale_money_is_not_slower_than_general_decimals | skipped | latency/resource benchmark, not audit semantic acceptance |
| perf.rs / warm_reverification_after_one_change_is_cheap | skipped | latency/resource benchmark, not audit semantic acceptance |

T080 independently corrected the classification of the_index_never_changes_a_result:
its source at Store tests/query_perf.rs136–159 compares records and10 expected
members over20,000 entities with no timing assertion. It remains skipped. The
executed1000-permutation/index E-MODEL-004 is a distinct sampled test, not this
20k check. This description correction changes no verdict or test outcome.
