# US1 — unaffected updates and affected global creation

This closes the T025 evidence deliverable using the retained G2/G3 controls and
accepted G4 campaign. No measurement was repeated or threshold changed to assemble
this report. All paths below refer to the current Core 029 implementation; the
historical logs retain their original run counts and source context.

## Exact semantic controls

The following nonempty selectors are recorded in [g2-store.txt](g2-store.txt),
with the later suppressed/mixed-root control in [us2-store.txt](us2-store.txt).
The subsequent [full gates](gates.txt) rerun these suites:

| Test selector suffix under `store::incremental::` | Established behavior |
|---|---|
| `dependency::tests::selected_global_language_classifies_every_actual_obligation` | Literal globals and exact typed unfiltered cardinality are eligible; unsupported/mixed obligations retain reference execution. |
| `dependency::tests::selected_coverage_resolves_suppressed_derived_and_mixed_roots` | Transitive/suppressed dependencies cannot be hidden by source naming or ordering. |
| `global_tests::complete_creation_cycles_include_empty_multi_create_and_multiple_policy_bounds` | Candidate and full-reference sequences have identical records, bundles and committed identities for empty/nonempty states, simultaneous fresh creates, multiple global roots and typed identity collisions. |
| `global_fixtures::cardinality_boundary_has_independent_expected_results` | From 999 entities under a limit of 1000, creation 1000 is ALLOW and commits; creation 1001 is DENY, has no bundle and leaves the head unchanged. Complete evaluations and the successful commit match the reference. |
| `workload_tests::supported_global_cycles_do_not_revalidate_unchanged_rows` | At N=1,16,128,512, literal-true and nonconstant-count updates/creates preserve the strict per-operation allowed-row set through evaluation, commit/reproduction and the final next evaluation. |

The boundary test independently checks exactly 1000 resulting rows and ordinary Core
snapshot validity. It does not infer correctness from agreement alone. The creation
sequence independently requires ALLOW, ALLOW, DENY against its declared limit, checks
the refused head, and exercises an unrelated type sharing a textual identifier.

See [global_fixtures.rs](../../../crates/behavior-store/src/store/incremental/global_fixtures.rs),
[global_tests.rs](../../../crates/behavior-store/src/store/incremental/global_tests.rs)
and [workload_tests.rs](../../../crates/behavior-store/src/store/incremental/workload_tests.rs)
for the actual expected results and complete comparisons. The reference strategy
reconstructs complete parents **and** children independently of prepared summaries.

## Affected and unaffected work

[baseline-red.txt](baseline-red.txt) retains the failing unoptimized work control;
[g2-store.txt](g2-store.txt) retains the passing work observations. For example, at
N=128 a count-preserving update has zero snapshot-row validations, two decoded rows
and ten predicate evaluations across the measured cycle. An affected creation has
zero snapshot-row validations, one decoded row and eleven predicate evaluations.
The independently allowed typed-row set changes for the final evaluation; the
control requires zero unrelated semantic row checks throughout the cycle.

The final [scaling.jsonl](scaling.jsonl) contains these diagnostic observations for
N=8192, eight committed operations and the final next-evaluation drain, with one
count rule and batch size one:

| Operation / strategy | Snapshot rows checked | Rows decoded | Predicates evaluated | Child-row visits | Backend version reads |
|---|---:|---:|---:|---:|---:|
| Unaffected field update / released baseline | 204800 | 1245167 | 483387 | 139264 | 65570 |
| Unaffected field update / candidate | 0 | 9 | 45 | 73728 | 34 |
| Unrelated-type creation / released baseline | 204900 | 1245603 | 483371 | 139328 | 65598 |
| Unrelated-type creation / candidate | 0 | 1 | 21 | 139328 | 26 |
| Affected E creation / released baseline | 204900 | 1245767 | 483615 | 139328 | 65598 |
| Affected E creation / candidate | 0 | 1 | 53 | 139328 | 26 |

The affected creation run actually grows one Store from 8192 to 8200 E entities.
It is not a whole-module fallback counted as incremental success. Candidate
snapshot/provider/query/store-value row checks and unrelated-row checks are zero.
Complete canonical universes, query membership, child traces and read evidence remain
present. Child-row visits include evidence construction, not merely predicate checks;
they must not be described as repeated unchanged-row semantic validation. Named
copy/hash counters are site-specific proxies, not universal allocation accounting.

## Growth acceptance and limits

[acceptance.json](acceptance.json) passes all 103 frozen cases and 927 raw rows,
including three production-like repetitions per case, separate instrumented work
runs and full-reference comparisons. Each required strategy/mode matches the frozen
complete semantic digest and observation byte count. Exact test comparisons above
supplement these digest comparisons.

For count-constrained creation at N=8192, the production-like median complete-cycle
time is 26870.894ms for the released baseline and 19106.547ms for the candidate, a
28.9% reduction. The measured growth slope is 2.347445ms per starting entity, below
the predeclared 3.062466 limit. These timings are separate from diagnostic work
counts; no overhead subtraction or post-hoc budget relaxation is used.

[evaluation-report.md](../evaluation-report.md) explains setup, output, parsing,
hashing, historical and fallback costs. [g2.md](g2.md),
[correctness.md](../correctness.md) and [construct-mapping.md](../construct-mapping.md)
state the finite-state argument and trusted Rust/Backend correspondence boundaries.
This is conditional mathematical reasoning plus tests and measured capacity, not a
machine-checked implementation proof. It establishes the selected update/fresh-create
pattern; it does not establish all-global incrementality, constant total transaction
cost, unbounded capacity or incremental removal/migration.
