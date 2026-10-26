# Tasks: Scalable Validation with Global Rules

**Input:** [spec.md](spec.md), [plan.md](plan.md), [research.md](research.md),
[data-model.md](data-model.md), [contracts/](contracts/) and [quickstart.md](quickstart.md).

**Working directory:** `/home/kalle/repos/behavior-ir-core-029`. All task paths are
relative to this Core repository. Logical branch: `029-incremental-global-validation`;
planning checkout is detached at `aff31ddda163e343be616cb378388e464b90933b`.
Baseline release: Core 0.15.0 at `6b93898a9375113f7a8946f23ab5535319b6f5d6`.

**Tests:** Required by FR-019 and constitution III. Write tests and observe the relevant
failure before the implementation that fixes it. Existing correct semantic expectations
may already pass; new optimization work controls must fail on the unoptimized baseline.
Proof-premise mutation controls must detect the deliberately broken implementation,
then pass after restoration. A missing test selector or an empty test run is not evidence.

**Organization:** Setup → shared blocking foundation → US1 (P1) → US2 (P1) → US3 (P1)
→ US4 (P2) → cross-cutting acceptance. `[P]` identifies independent files within a
stated dependency wave, not permission to run heavy benchmarks/builds concurrently.
No implementation, tests or measurement runs are claimed complete by this task list.

## Phase 1: Setup and neutral inputs

**Purpose:** Preserve repository boundaries, establish provenance and prepare shared
fixtures/comparison helpers without changing execution semantics.

- [X] T001 Verify the Core 029 checkout, clean/dirty boundaries, pinned Rust/lock and released-baseline source equivalence; inventory existing test selectors and record exact release/checkout/toolchain identities in `specs/029-incremental-global-validation/evidence/README.md`, preserving unrelated work and historical artifacts.
- [X] T002 [P] Create shared test-only neutral fixtures in `crates/behavior-store/src/store/incremental/global_fixtures.rs` for no globals, global true, `count(select(T)) <= K`, unrelated field/type updates, fresh creation, limit 1000 boundary, mixed unsupported globals and complete action/effect variations; copy no private application code and introduce no ecosystem build dependency.
- [X] T003 [P] Extend complete-observation comparison helpers in `crates/behavior-store/src/store/incremental/tests.rs` using existing fixtures to compare decisions/errors/order, changes, commands, read/query/derived evidence, canonical records, state/history/hash identities and commit results; retain explicit independent expected outcomes rather than treating agreement alone as correctness.

**Checkpoint:** T001 first; T002/T003 may then run in parallel. No production
optimization, new dependency, format change or mandatory Backend extension is introduced.

## Phase 2: Foundational — baseline, correctness and minimal reuse seam

**Purpose:** Complete G0/G1 before any story implementation. Evidence objects, proof
mapping and measurement infrastructure serve all four stories.

### Baseline and acceptance freeze — G0

- [X] T004 Register the new test-only fixtures and extend the private reference strategy in `crates/behavior-store/src/store/incremental/mod.rs` and `crates/behavior-store/src/store/incremental/tests.rs` to reconstruct complete parents AND complete resulting children independently of optimized affected sets/counts; assert independently expected acceptance of creation 1000, refusal of 1001 and unchanged history on refusal.
- [X] T005 Add calibrated nonsemantic work instrumentation across `crates/behavior-core/src/eval.rs`, `crates/behavior-store/src/store.rs` and `crates/behavior-store/src/store/incremental/mod.rs`, extending the existing testing seam to distinguish cached traversal, decoding/normalization, parent/child rule checks, query membership, copies, Backend reads, output and serialized/hashed bytes; verify known small-case counts, provide a production-like release mode with detailed counters/tracing compiled out or absent from timed hot paths, and keep instrumentation out of semantic records/identities and consumer authority.
- [X] T006 Extend the existing explicit workload harness in `crates/behavior-store/src/store/incremental/workload_tests.rs` for the entire evaluation/commit/reproduction/publication/final-next-evaluation sequence, nonoverlapping cycle timing, preparation/open totals, resource use, all corpus families in `specs/029-incremental-global-validation/contracts/evaluation.md` and actual sequential creation in one growing Store per run; support identical released-baseline/full-reference/candidate inputs in separate production-like timing and instrumented work modes, verify cross-mode semantic parity, and record build identities/remaining probe overhead without exposing a production reference-mode switch.
- [X] T007 Add strict full-cycle work regressions for constants, unaffected nonconstant updates and affected cardinality creation in `crates/behavior-store/src/store/incremental/workload_tests.rs`; run them against unoptimized behavior, retain the expected failing validation-work results and passing semantic boundary controls in `specs/029-incremental-global-validation/evidence/baseline-red.txt`, and distinguish required evidence emission from avoidable revalidation.
- [X] T008 Run controlled released-baseline and full-reference pilots with the T006 harness; retain all raw attempts in `specs/029-incremental-global-validation/evidence/baseline.jsonl`, covering populations 1, 16, 128, 512, pilot 2048/8192, real growing creation, fixed-N/increasing-history and unrelated-type controls, full-cycle/phase work, wall time, memory and output costs; use production-like release runs for timing and separate instrumented runs for work attribution, retain mode/build identity and measured overhead, isolate heavy work and document capacity failures without selecting sizes using candidate success.
- [X] T009 Freeze baseline-derived numerical whole-cycle budgets, local regression limits and a quantitative growth-related improvement criterion in `specs/029-incremental-global-validation/evaluation-profile.json`, with hardware/resources, backend/index conditions, exact revisions/digests, sequences, at least two larger populations, at least three independent sequential production-like timing runs per case, predeclared instrumented-run repetitions, mode/build identities, semantic-parity/overhead checks, summary/variance/rerun rules and expected outcomes; derive timing budgets and growth criteria only from production-like pilots, never overhead-subtracted diagnostic timings; record rationale in `specs/029-incremental-global-validation/evaluation-report.md` before any candidate acceptance evaluation.

**G0 gate:** T004–T009 complete. A parent-cache-only comparator, evaluate-only timer,
tautological global, missing numeric threshold or one seeded creation cannot pass.
The released-baseline harness adaptation must retain immutable source provenance and
equivalent input/measurement meaning; an instrumented current build is not the release.
Detailed work modes and production-like timing modes must be fixed before pilots.
Freeze timing acceptance from production-like results, with diagnostics/overhead reported
separately and no estimated-overhead subtraction used to produce a passing result.

### Correctness argument and minimal evidence seam — G1

- [X] T010 Write the arbitrary-finite-state conditional equivalence/validity argument in `specs/029-incremental-global-validation/correctness.md`, reusing Feature 015 premises and the assessed verified IVM results; prove unchanged-row/unaffected-global complete Result preservation and disjoint typed creation cardinality with checked conversion, and specify trace/error/phase/publication obligations and the trusted boundary without claiming machine-checked end-to-end proof.
- [X] T011 Map each supported rule, derived dependency, reference, query/count, effect, validation phase and observation to authoritative Core constructs in `specs/029-incremental-global-validation/construct-mapping.md`; identify unsupported cases and exact fallback, prohibit assumptions of later success, and define how Core-owned evidence plus Store history establish complete coverage and correspondence.
- [X] T012 Add failing prepared-state/evidence-reuse tests in `crates/behavior-core/src/eval/prepared_tests.rs` and minimal Store workflow tests in `crates/behavior-store/src/store/incremental/tests.rs` for checked construction, mismatched module/profile/state, forged validity attempts, malformed state, tampered records and a complete update/create cycle; register the tests in `crates/behavior-core/src/eval.rs` and verify nonempty failing test execution; require exact observations and reduced semantic validation through BOTH evaluation and commit reproduction.
- [X] T013 Implement opaque Core-owned prepared semantic state and checked construction in `crates/behavior-core/src/eval/prepared.rs`, registering it in `crates/behavior-core/src/eval.rs`; enforce “No unchecked constructor, deserialization authority, or public consumer Boolean may assert validity.” Bind canonical typed rows/membership/rule evidence to exact semantic identities and preserve ordinary construction failure outcomes/phases.
- [X] T014 Implement the minimal evidence-consuming evaluation seam in `crates/behavior-core/src/eval.rs` and `crates/behavior-core/src/eval/prepared.rs` for the G1 supported demonstration, preserving complete universe/trace/derived/read/query evidence and ordinary reference entry points; eliminate duplicate semantic validation using checked evidence, not caller assertions or a count-only substitute.
- [X] T015 Integrate checked exact-parent evidence into independent commit reproduction in `crates/behavior-core/src/record.rs` and `crates/behavior-store/src/store.rs`, reconstructing request/effects/expected canonical record and rejecting tampering without trusting proposed changes or cached approval; keep the internal workspace interface outside the unchanged `behavior-engine` consumer facade.
- [X] T016 Connect the minimal prepared evidence to existing Store exact identity and successful-CAS promotion in `crates/behavior-store/src/store.rs` and `crates/behavior-store/src/store/incremental/mod.rs`; discard speculative child evidence on refusal/conflict/uncertainty and demonstrate the T012 complete cycle without O(N) cloning solely to keep reuse.
- [X] T017 Execute the G1 demonstration and audit T010–T016 against `specs/029-incremental-global-validation/contracts/execution-equivalence.md`; record exact test selectors, full-record equality, validation-work results, checked constructors and phase/TCB review in `specs/029-incremental-global-validation/evidence/feasibility.md`, completing this task only if BOTH evaluation and reproduction preserve observations while avoiding duplicate validation.

**G1 gate:** T010/T011 may be prepared alongside G0 after T004, but production reuse
T013 onward waits for T009 and the corresponding red tests. T017 blocks every story.
If G1 cannot be established, document the precise blocker and leave this gate and
dependent work incomplete. Do not replace the accepted scope with a cache-only speedup,
new record format, trusted Boolean or weakened semantic check.

## Phase 3: User Story 1 — Keep local changes local despite global rules (P1)

**Goal:** Complete the selected optimized language for both unaffected updates and
genuinely affected creations, across evaluation, commit and subsequent evaluation.

**Independent test:** After foundation, compare optimized/reference real creation and
unrelated updates with complete observations. Require zero unrelated validity revisits
for unaffected cases, no full unchanged-state validation for affected creation, accept
entity 1000/refuse 1001 under K=1000, and no head/history advance on refusal. Mandatory
populations are 1, 16, 128, 512 and the larger frozen sizes. Timing acceptance follows US4.

### Tests first

- [X] T018 [P] [US1] Add classifier/coverage tests in `crates/behavior-store/src/store/incremental/dependency/tests.rs` for literal globals, exact typed unfiltered cardinality bounds, unrelated fields/types, profile-resolved derived calls, every actual action/effect including generated-like actions, multi-rule/type modules and unknown/partial/filtered/captured patterns requiring reference fallback; assert origin/name/order cannot hide dependencies.
- [X] T019 [P] [US1] Add failing full-cycle unaffected/affected global regressions in `crates/behavior-store/src/store/incremental/global_tests.rs`, using shared fixtures to test empty state, same-head repeat, sequential creates, the 1000/1001 boundary, simultaneous fresh creates, aliases, duplicate IDs, same textual IDs in different types, valid Ref targets and exact reference records plus work counters; register the test module in `crates/behavior-store/src/store/incremental/mod.rs`.

### Implementation

- [X] T020 [US1] Extend complete resolved obligation/effect classification in `crates/behavior-store/src/store/incremental/dependency.rs` for the selected constant/unaffected/cardinality cases; make unknown dependencies affected/reference and preserve every previously executable module, enforcing “Eligibility is an execution strategy decision, not a new admission restriction.”
- [X] T021 [US1] Implement exact typed membership/cardinality maintenance in `crates/behavior-core/src/eval/prepared.rs` from fully validated state and actual checked fresh distinct creations; enforce “Use checked arithmetic and preserve ordinary Count conversion.” Prove/test domain and representability boundaries without trusting submitted counts or rebuilding the full summary each cycle.
- [X] T022 [US1] Extend the coherent parent/changed/created overlay in `crates/behavior-store/src/store/incremental/candidate.rs` to supply the selected complete obligations/evidence, validating all changed rows and simultaneous freshness/Ref premises; retain “No-removal and no-migration premises apply to the first optimized pattern.” Unsupported cases must keep ordinary reference behavior.
- [X] T023 [US1] Complete Core parent/child/global reuse in `crates/behavior-core/src/eval.rs` and `crates/behavior-core/src/eval/prepared.rs`, avoiding repeated unchanged-row decoding/rule validation while emitting identical canonical universe, member IDs, observations, derived values and per-rule traces; preserve accumulated snapshot failures versus action fail-fast/skipped semantics and fall back when typed/definedness premises are absent.
- [X] T024 [US1] Complete Store evaluation/rederivation/pending-child integration in `crates/behavior-store/src/store.rs` and `crates/behavior-store/src/store/incremental/mod.rs` for supported globals, carrying exact successful evidence through commit and next evaluation without equivalent hidden revalidation, new refusal phases or unnecessary full-cache clones.
- [X] T025 [US1] Run the complete T018/T019 and T007 selected-case comparisons with the T006 instrumentation and add strict cross-phase assertions in `crates/behavior-store/src/store/incremental/workload_tests.rs`; record actual affected/unaffected work and full-result equality in `specs/029-incremental-global-validation/evidence/us1.md`, retaining required output work separately and refusing to count whole-module fallback as passing the mandatory affected case.
- [X] T026 [US1] Close the cardinality/frame/checked-count and evidence-reconstruction correspondence against the implemented paths in `specs/029-incremental-global-validation/correctness.md` and `specs/029-incremental-global-validation/construct-mapping.md`, linking exact positive/negative tests and proving arbitrary-state premises rather than extrapolating from the measured populations.

**Checkpoint / G2:** US1 is an internally reviewable functional increment, not release
readiness. Semantic hardening (US2), lifecycle/recovery (US3), and measured capacity
(US4) remain mandatory. A true-only or unaffected-only improvement fails this checkpoint.

## Phase 4: User Story 2 — Preserve the complete meaning of execution (P1)

**Goal:** Establish complete-observation correspondence and adversarial coverage for
the implemented optimization, preserving ordinary fallback and historical semantics.

**Independent test:** Compare complete optimized/reference results on valid, invalid,
partial/error and simultaneous-effect cases with independently expected outcomes;
review the general argument and show each essential-premise mutation is detected.

### Tests first

- [X] T027 [P] [US2] Extend `crates/behavior-core/src/eval/prepared_tests.rs` with malformed changed rows, missing facts/Refs, optional values, checked arithmetic/count conversion, lazy inactive branches, multiple failing rules, skipped traces, simultaneous effects and commands/read/query/derived observations; assert exact reference errors, activation/order and canonical records, not merely the final Boolean.
- [X] T028 [P] [US2] Add adversarial complete-inventory/dependency controls in `crates/behavior-store/src/store/incremental/dependency/tests.rs` for hidden/transitive derived calls, wrong profile/captures, omitted relevant creates, removals, mixed supported/unsupported globals, generated-origin actions and declaration/parameter order variations; independently specify which obligations must be affected or fall back.
- [X] T029 [P] [US2] Extend `crates/behavior-store/tests/incremental_validation.rs` with untrusted-bundle/record/evidence mutations, Backend enumeration-order and optional-index variations, and actually performed Backend errors, requiring canonical results/reference phases and rejection of altered module, effects, read facts, commands or histories; do not require hypothetical errors for omitted calls.

### Implementation and correspondence

- [X] T030 [US2] Preserve the exact reference activation, ordering, definedness and evidence semantics in `crates/behavior-core/src/eval.rs` and `crates/behavior-core/src/record.rs` for T027/T029, resolving every observed difference through the shared ordinary semantic paths rather than inventing cached-true traces, skipping reproduction or adding an earlier refusal.
- [X] T031 [US2] Complete conservative unsupported/incomplete coverage handling in `crates/behavior-store/src/store/incremental/dependency.rs` and `crates/behavior-store/src/store/incremental/mod.rs`, verifying T028 unknown/mixed/nonlocal/removal cases execute through existing reference semantics and no optimization decision changes admission or assumes a later successful check.
- [X] T032 [US2] Extend historical-profile and current-profile metamorphic/replay comparisons in `crates/behavior-core/tests/resulting_state_metamorphic.rs` and `crates/behavior-store/tests/incremental_validation.rs` to establish byte-identical records, stable hashes/read evidence and replay with ephemeral reuse absent; never rewrite established compatibility or historical fixtures to hide a difference.
- [X] T033 [US2] Exercise deliberate mutations of coverage, locality, typed membership, count maintenance, effect inventory, identity and observation reconstruction using `crates/behavior-core/src/eval/prepared_tests.rs`, `crates/behavior-store/src/store/incremental/tests.rs` and `crates/behavior-store/src/store/incremental/dependency/tests.rs`; record a premise-to-detecting-test matrix and failing controls in `specs/029-incremental-global-validation/evidence/premise-mutations.md`, restoring production code and rerunning focused controls.
- [X] T034 [US2] Review/finalize the complete-observation arbitrary-state argument and construct mapping in `specs/029-incremental-global-validation/correctness.md` and `specs/029-incremental-global-validation/construct-mapping.md`, explicitly distinguishing mathematical reasoning, any machine-checked claims, the shared semantic reference evaluator, independent expected outcomes, tests and Backend/implementation trust; record remaining assumptions without upgrading evidence classes.

**Checkpoint:** US2 passes when the general contract is justified and all adversarial
valid/invalid/error/fallback/mutation controls pass, not merely because both strategies
return the same successful state. No safety-verifier or Core 030 work is added.

## Phase 5: User Story 3 — Reuse validity only at the correct state boundary (P1)

**Goal:** Prove/test exact-context reuse, successful-child publication and existing
recovery semantics across cache invalidation and uncertain outcomes.

**Independent test:** Compare reference and optimized conflict, stale-head, context
change, reopen, migration and committed-but-lost-acknowledgement workflows; require exact
state/history/replay and demonstrate speculative evidence never authorizes another head.

### Tests first

- [X] T035 [P] [US3] Add exact-anchor boundary tests in `crates/behavior-store/tests/snapshot_reuse.rs` for same-head reuse, changed heads, equal StateIds at different history positions, Store identity, schema/Behavior/semantic-profile/validation-profile mismatches, new Store instances, explicit Backend mutation, cold reopen and shared cache ownership, with full-reference expected results and validation-work checks.
- [X] T036 [P] [US3] Add stale-bundle, conflict, failed-CAS, ordinary retry, idempotent recovery and committed-but-lost-acknowledgement cases in `consumer/tests/incremental_validation.rs`, extending `consumer/tests/support/durable_backend.rs` only as needed to exercise actual existing Backend contracts; assert uncertain error does not imply rollback and no pending child is promoted incorrectly.
- [X] T037 [P] [US3] Add genesis/invalid seed and migration/context invalidation controls in `crates/behavior-store/tests/migration_context.rs` and `crates/behavior-store/tests/migration_evidence.rs`, requiring ordinary boundary validation and unchanged history/governance outcomes instead of transferring ordinary-transition evidence across an unproved boundary.

### Implementation and integration

- [X] T038 [US3] Complete validation-context binding/invalidation in `crates/behavior-store/src/store.rs` and `crates/behavior-core/src/eval/prepared.rs` for full Store/history record/position/state, exact module/schema/semantic/validation profile and Backend continuity, enforcing “Equal entity counts or StateIds alone are insufficient.” Re-establish evidence or use reference behavior on incompatibility.
- [X] T039 [US3] Complete pending-to-established publication checks in `crates/behavior-store/src/store/incremental/mod.rs` against exact Applied parent/child state, record, position and schema/Behavior context; enforce pending evidence's “It grants no reusable child authority.” Discard on conflict/refusal/uncertainty and preserve the rule that shared ownership must not force O(N) cache cloning solely to retain reuse.
- [X] T040 [US3] Complete existing retry/idempotency/lost-acknowledgement recovery integration in `crates/behavior-store/src/store.rs`, establishing the actual committed head before reuse and preserving performed-operation errors, archival/governance checks and cold validation when continuity is absent; fix only failures reproduced by T035–T037 and add no new governance or persistence mechanism.
- [X] T041 [US3] Run the exact-anchor and durable public-consumer matrix, including replay after dropping all ephemeral prepared state, and record test selectors, state/history equivalence, invalidation/promotion work and actual uncertainty recovery in `specs/029-incremental-global-validation/evidence/us3.md`; confirm no Lean, policy document or optimization artifact becomes a replay dependency.

**Checkpoint / G3 semantic portion:** US1–US3 remain green together; missing evidence
means reference validation, not an invalid state. Failures and uncertain publication
never grant speculative reuse authority.

## Phase 6: User Story 4 — Understand capacity and remaining fallback costs (P2)

**Goal:** Demonstrate the original growing-live-state problem is materially improved
through the complete path within the pre-frozen acceptance profile, and disclose limits.

**Independent test:** At least three independent sequential production-like timing runs
per accepted case and the predeclared diagnostic work runs, each creation run growing one
Store. All quantitative budgets/growth criteria and strict work controls pass against
released baseline, with cross-mode semantic parity and residual full-state/output work
measured separately. Timing failure is a performance failure, not a semantic counterexample.

### Measurement validation and mandatory gates before G4

- [X] T042 [US4] Add profile/result validation to `crates/behavior-store/src/store/incremental/workload_tests.rs` so missing numeric budgets/growth criteria, wrong fixture/harness/mode/build provenance, missing/failed repetitions, absent cross-mode parity, diagnostic timings used as production acceptance, incomplete final drain, semantic mismatches or incomplete dimensions cannot yield a passing evaluation; validate the frozen `specs/029-incremental-global-validation/evaluation-profile.json` without changing its thresholds using candidate observations.
- [X] T043 [US4] Run the existing `scripts/gates.sh` from the Core 029 worktree after US1–US3 and T042, before the final G4 measurement campaign; retain the tested source identity and actual command/environment/outcome in `specs/029-incremental-global-validation/evidence/gates.txt`; keep fast new correctness/work tests in the existing workspace/consumer pipeline and preserve required fmt, Clippy, Rust tests/build, determinism, boundaries, public surface, workflows, terminology and script checks without weakening them.

**G3 gate:** T043 must pass for the finalized production and measurement harness code
before T044 starts. Do not run final candidate measurements against an ungated revision.

### Final evaluation and documentation

- [X] T044 [US4] Execute the frozen complete corpus sequentially for released-baseline/full-reference/candidate using the T006 harness, retaining all raw attempts in `specs/029-incremental-global-validation/evidence/scaling.jsonl` with exact source/harness/toolchain/environment identity, actual continuous creation, fixed-N history, larger populations, affected/rule dimensions, setup/open/final drain and phase/resource/output accounting in separately identified production-like timing and instrumented work runs, with cross-mode semantic parity and measured overhead; any harness adaptation requires equivalent baseline reruns and a documented non-post-hoc profile amendment.
- [X] T045 [US4] Evaluate every frozen semantic/work/numeric growth/regression criterion from raw repetitions, using only production-like timings for numeric timing/growth acceptance and instrumented results for strict work criteria; write machine-readable per-case results to `specs/029-incremental-global-validation/evidence/acceptance.json`, with causal baseline/candidate growth analysis in `specs/029-incremental-global-validation/evaluation-report.md`; leave unmet criteria failed instead of averaging away semantic failures, omitting attempts or relaxing the profile.
- [X] T046 [US4] Attribute remaining Backend and cached traversals, decoding/rules, summary maintenance, copies, universe/member/trace emission, hashing, record lookup and history costs in `specs/029-incremental-global-validation/evaluation-report.md`; justify output-sized lower bounds, measure fallback, interactions and instrumentation overhead without subtracting estimated overhead to claim production speedups, and enforce measurement data as “Nonsemantic test/research artifacts, never included in BehaviorHash, records or cache authority.” Equivalent avoidable full validation elsewhere blocks completion.
- [X] T047 [US4] Document the measured optimized domain, exact count/creation/locality premises, reference fallbacks, cold/open costs, production-like timing versus diagnostic work/overhead, existing Backend responsibilities and remaining global/output limitations in `docs/persistence.md` and `docs/incremental-validation.md`; distinguish platform-specific measured performance from correctness and make no all-global, unlimited-scale or private-application endurance claim.
- [X] T048 [US4] Replace planned-only acceptance steps in `specs/029-incremental-global-validation/quickstart.md` with actual nonempty test selectors and reproducible frozen-profile commands/report locations, and complete provenance/digest instructions in `specs/029-incremental-global-validation/evidence/README.md` so another contributor can reproduce the comparisons through existing tooling without a new release process.

**Checkpoint / G4:** All five conjunctive criteria in
[contracts/evaluation.md](contracts/evaluation.md) pass. Flat total cost is not required
under complete records; reduced Backend calls or a faster isolated function are not
sufficient. A later profiling-driven production/harness code change requires its red test,
focused regression checks and renewed required gate evidence before rerunning affected
frozen comparisons. Documentation-only changes do not require repeating already-passing
code checks. Timing acceptance cannot use diagnostic-mode speedups.

## Phase 7: Polish and cross-cutting acceptance

**Purpose:** Verify retained gate evidence, compatibility and final traceability;
mandatory gates have already passed at T043 before final measurement. No optional new
features or publication are included.

- [X] T049 Verify every runnable step/report link in `specs/029-incremental-global-validation/quickstart.md` against the actual harness and gate evidence, recording verification in `specs/029-incremental-global-validation/evidence/README.md`; reuse already-passing checks unless changes or unresolved concerns justify reruns, and keep explicit scaling acceptance mandatory alongside normal gates.
- [X] T050 [P] Audit unchanged public facade, Backend contract, canonical/historical formats, semantic/hash identities, replay and governance against the immutable baseline and record findings in `specs/029-incremental-global-validation/evidence/compatibility.md`, referencing `crates/behavior-engine/src/lib.rs`, `crates/behavior-store/src/lib.rs` and `crates/behavior-core/src/record.rs`; preserve historical fixtures/artifacts and resolve any compatibility deviation explicitly before readiness.
- [X] T051 Close FR-001–FR-020, SC-001–SC-007 and all 13 story acceptance scenarios with exact proof/test/measurement references in `specs/029-incremental-global-validation/evidence/README.md`, recording supported capacity, residual full-state work and assumptions; mark readiness only if G0–G4 and T043/T050 pass, and leave unmet obligations incomplete rather than weakening scope, modifying Core 030 or publishing a release.

## Dependencies and execution order

### Blocking graph

```text
T001 -> {T002, T003} -> T004 -> T005 -> T006 -> T007 -> T008 -> T009  [G0]
                         |
                         +-> T010 -> T011
{T009, T011} -> T012 -> T013 -> T014 -> T015 -> T016 -> T017         [G1]
T017 -> {T018, T019} -> T020 -> T021 -> T022 -> T023 -> T024
     -> T025 -> T026                                               [US1/G2]
T026 -> {T027, T028, T029} -> T030 -> T031 -> T032 -> T033 -> T034    [US2]
T034 -> {T035, T036, T037} -> T038 -> T039 -> T040 -> T041            [US3]
T041 -> T042 -> T043                                              [G3 complete]
T043 -> T044 -> T045 -> T046 -> T047 -> T048                       [US4/G4]
T048 -> {T049, T050} -> T051                                     [acceptance]
```

For G3, T043 completes the mandatory-gates portion after US1–US3 and the finalized
T042 profile validator, before T044 starts final G4 measurements. G1's minimal
history/CAS checks are foundational and must not wait for US3; US3 expands and hardens
the complete boundary/recovery matrix. US2's general proof foundation is T010/T011,
not deferred until after optimization. US4's freeze is T009, not deferred until US4.

Story completion order is intentionally US1 → US2 → US3 → US4 because these increments
share an evaluator, reproduction and cache lifecycle. Each has a separately executable
test criterion once prerequisites exist; whole stories are not independent parallel
implementations. Do not force template independence at the expense of correct ordering.

### Safe parallel waves and examples

The following examples are optional scheduling guidance; they do not spawn agents or
authorize overlapping edits automatically. Merge completed test changes before editing
their production seams. Tasks lacking `[P]` follow the dependency graph.

| Wave/story | Independent work | Join before |
|---|---|---|
| Setup | T002 neutral fixtures; T003 comparison helpers | T004 |
| Foundation | T010/T011 written reasoning after T004 while the separate G0 measurement work proceeds | T012; keep measurements free of heavy competing builds |
| US1 | T018 dependency tests; T019 full-cycle global tests | T020 |
| US2 | T027 Core errors/observations; T028 Store dependency coverage; T029 public Store tamper/backend tests | T030 |
| US3 | T035 snapshot anchors; T036 durable recovery; T037 migration/genesis boundaries | T038 |
| US4 | No overlapping heavy runs: T042–T046 are sequential, with T043 gates before T044 measurement; after T046, documentation-only portions of T047/T048 can be split by file | T049 |
| Final | T050 read-only compatibility audit alongside T049 guide/evidence verification | T051; preserve the source identity checked by T043 |

US4 deliberately has no `[P]` checkbox: its measurements and derived results depend on
each other. Optional documentation scheduling must not imply concurrent benchmarks or
threshold changes. Within T019/T036, shared module/fixture edits remain owned by that
task rather than another concurrent task.

## Implementation strategy and MVP

1. Complete setup and G0 with known-red work evidence plus passing independent semantic
   controls. Lock actual numeric acceptance criteria before candidate evaluation.
2. Complete the general proof/correspondence design and minimal G1 seam. Report an exact
   feasibility blocker if complete record/error/phase equivalence cannot be preserved.
3. Deliver US1 as the smallest internal MVP: constants plus meaningful unaffected and
   affected cardinality cases through the whole cycle, including 1000/1001. US1 is not a
   shipping subset; correctness, recovery and measured capacity remain mandatory.
4. Complete US2 and US3 adversarial/identity/recovery coverage without expanding language,
   public semantics, historical formats or trust assumptions.
5. Finalize T042, pass normal gates at T043, then run US4 final frozen evaluation.
   Judge semantic correctness and performance independently and require both for readiness.

**Out of scope:** Core 030/Gap009 Ref-removal verification, `unique(Option)` SMT work,
new Model families, generalized IVM, governance redesign, mandatory host/Backend APIs,
new durable state, record redesign, private-application integration, release tagging
or publication. No task authorizes unrelated work or overwriting user changes.

## Requirements and artifact coverage

| Requirements | Primary tasks |
|---|---|
| FR-001–FR-002 | T001–T009; T044–T046 |
| FR-003–FR-004 | T018–T026; T044–T045 |
| FR-005 | T018/T020, T028/T031, T047 |
| FR-006–FR-009 | T010–T017, T020–T023, T027–T034 |
| FR-010–FR-012 | T012–T016, T035–T041 |
| FR-013–FR-014 | T010–T011, T026/T034, T051 |
| FR-015–FR-016 | T005–T009, T042–T046 |
| FR-017–FR-018 | T013–T016, T032, T038–T041, T046/T050 |
| FR-019 | T003–T007, story tests, T033, T043/T049 |
| FR-020 | T025, T044–T048, T051 |
| SC-001 | T003/T004, T012/T017, T027–T034, T043 |
| SC-002–SC-003 | T007, T018–T026, T044–T045 |
| SC-004 | T006/T008–T009, T042–T045 |
| SC-005 | T012/T016, T035–T041, T050 |
| SC-006 | T010–T011, T017/T026, T033–T034 |
| SC-007 | T005–T009, T025, T044–T048 |

The execution-equivalence contract maps to foundation/US2, reuse/publication to
foundation/US3, and evaluation to G0/US4. Prepared state and exact membership serve
US1; exact context and pending child serve US3; complete observations serve US2;
the frozen profile and nonsemantic measurements serve US4.

**Inventory:** 51 tasks: setup 3, foundational 14, US1=9, US2=8, US3=7, US4=7, final 3.
All tasks start unchecked. Completing a task requires its concrete result and evidence;
writing a report that says a required gate failed does not complete that gate.


## Phase 8: Convergence

- [X] T052 Complete the derived-observation differential coverage promised by T027 in `crates/behavior-core/src/eval/prepared_tests.rs`: exercise a supported module with a selected global invariant and actually called nested local derived rules, including repeated calls and changed/unchanged subjects; establish that the prepared path is selected, compare complete records and Observed evidence with ordinary execution, and verify prepared reproduction with independently expected successful and failing outcomes. Preserve ordinary evaluation of memo-bearing rules; this task does not authorize templating or broadening the optimization language. Record the nonempty test selectors/results in `specs/029-incremental-global-validation/evidence/us2.md` per T027, FR-007 and US2/AC1 (partial).
- [X] T053 Complete the US1 evidence deliverable at `specs/029-incremental-global-validation/evidence/us1.md` with precise references to the existing classifier/full-cycle tests, G2 logs and accepted final measurements; identify affected/unaffected work, complete reference-result equality, the 1000/1001 boundary and required output work separately. Reuse sufficient existing evidence rather than rerunning the scaling campaign solely to create this report, and link it from `specs/029-incremental-global-validation/evidence/README.md` per T025 and T051 (partial).
