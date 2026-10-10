# Tasks: Verified Incremental Validation

**Input**: [spec.md](spec.md), [plan.md](plan.md), [research.md](research.md), [data-model.md](data-model.md), [correctness.md](correctness.md), [construct-mapping.md](construct-mapping.md), [contracts](contracts/compatibility.md) and [quickstart.md](quickstart.md).
**Owner / branch**: behavior-ir-core / `015-incremental-validation-semantics`.
**Status**: Generated from the clarified plan on 2026-10-10. All 39 authorized tasks are complete and verified locally; see [evidence](evidence.md) and [verification](verification.json). No commit, merge or release publication. Earlier activity is preserved verbatim in [prototype/tasks-before-regeneration.json](prototype/tasks-before-regeneration.json).

**Tests**: Required by FR-006/SC-002 and constitution III. Write and review tests, add their necessary cfg(test) module wiring, observe the intended failure, then implement the helpers/algorithms that make them pass. Confirm nonzero collection whenever compilation succeeds; API-absence red must identify the intended newly wired test files, followed by nonzero collection after implementation. Keep per-task red/green logs and record their source identity in [evidence.md](evidence.md). Assertions already passing against the prototype are characterization evidence, not new red evidence or proof of historical test-first compliance. Do not fabricate failures to rewrite that history.

**Organization**: Setup, shared foundation, one phase per specified user story, then cross-cutting verification. Task generation itself did not execute this work or accept the prototype; checkmarks record subsequent authorized implementation and verification.

## Format: `[ID] [P?] [Story] Description`

- `[P]` identifies a listed parallel group with separate write targets. Complete its prerequisites first; otherwise execute tasks in listed order.
- `[US1]`–`[US4]` refer to the stories in spec.md. Setup, foundation and final tasks have no story label.
- Paths are relative to the owning Core root unless absolute. Test/proof modules and experiment artifacts named below are planned files where absent today.
- Keep production APIs, Wire IR, hashes, admission, Backend, records, replay, governance, official dependencies and feature 014 unchanged. No release work, general IVM runtime, bulk API or supported strategy flag is included.

## Phase 1: Setup (Shared Infrastructure)

**Purpose**: Preserve existing work and establish honest scope/provenance before touching the unaccepted prototype. No new crate or dependency is needed.

- [X] T001 Audit the original 014 baseline, isolated worktree, prototype source digests and archived designs/tasks; record exact source identities and missing historical test-first evidence in specs/015-incremental-validation-semantics/evidence.md and specs/015-incremental-validation-semantics/verification.json without resetting, staging or modifying unrelated work.
- [X] T002 [P] After T001, compare prototype delta/validation exports, mixed-rule/removal handling and pre-CAS checks with the approved private/local design; record adoption/removal decisions and the unconfirmed nonlocal refusal-boundary hypothesis in specs/015-incremental-validation-semantics/prototype/audit.md, keeping any semantic repair separate from 015.
- [X] T003 [P] After T001, define exact commands, nonzero test-collection checks, per-task log locations, supported semantic profiles and canonical experiment seeds in specs/015-incremental-validation-semantics/quickstart.md; prepare preservation-safe pre-015 workflow comparison from a separate copy of the recorded 014 baseline, retain pinned Nix/Rust and unchanged official dependency metadata, and distinguish old prototype gates from future acceptance.

**Checkpoint**: Baselines and historical evidence are preserved; no prototype algorithm is implicitly accepted.

## Phase 2: Foundational (Blocking Prerequisites)

**Purpose**: Build the independent reference oracle before relying on optimized tests or measurements. This phase blocks all user-story implementation.

- [X] T004 Write and review failing oracle-independence tests in crates/behavior-store/src/store/incremental/tests.rs, adding only necessary cfg(test) module wiring in crates/behavior-store/src/store/incremental/mod.rs and crates/behavior-store/src/store.rs before the red run; cover full canonical parent reconstruction, every atomic change and independent reference-fact extraction, including an unchanged-row violation missed by a changed-row-only checker, without implementing the oracle or changing unsupported production refusal behavior.
- [X] T005 After T004's recorded red result, implement private cfg(test) full-parent/full-child helpers and complete semantic-outcome comparison in crates/behavior-store/src/store/incremental/tests.rs, retaining T004's existing test-module wiring; use ordinary check_behavior_snapshot without the optimizer's classifier, affected set or cached reference index, and verify nonzero collection and green results.

**Checkpoint**: The oracle detects omitted obligations independently. Fully validating an unsupported candidate here does not introduce production validation or change its refusal phase. No public testing switch is added.

## Phase 3: User Story 1 — Unchanged validation results with less repeated work (P1)

**Goal**: Optimize proven local updates/creates while preserving complete changed row validation, final-state references and the existing fallback workflow.

**Independent test**: From the same valid committed parent and atomic changeset, compare ordered candidate outcomes against T005's independent full validator; compare public decisions, evidence and record identities separately. Counters must show no unchanged-row validation or validation-related universe enumeration on eligible warm update/create operations; report total backend reads separately, including reads required by other obligations. Unsupported cases retain their existing operation/refusal boundaries and leave the committed child cold.

### Tests first

- [X] T006 [P] [US1] After Phase 2, write failing eligibility/validation-work tests in crates/behavior-store/src/store/incremental/tests.rs for local updates/creates, synthesized versus explicit Ref checks, no-op deltas and ineligible removals/schema changes/migrations/globals; require zero unchanged-row validation and zero validation-related full-universe enumeration on eligible warm operations while counting total backend reads separately, and enforce “Unknown dependency means affected.” and committed-parent-only, Applied-only reuse before changing dispatch.
- [X] T007 [P] [US1] After Phase 2, write public transaction/property and baseline fallback regressions in crates/behavior-store/tests/incremental_validation.rs for simultaneous source/target creates, optional and changed refs, missing targets, invalid complete rows, canonical diagnostic ordering and semantic projection parity against the preserved pre-015 workflow; keep candidate-oracle comparisons in private T006/T012 tests rather than exporting cfg(test) helpers, and record intended red failures separately.

### Implementation and verification

- [X] T008 [P] [US1] After T006–T007's reviewed red cases, implement the conservative whole-module/transition guard in crates/behavior-store/src/store/incremental/dependency.rs: exact valid parent, updates/creates only, no globals and proven ordinary row-local roots; recognize only admitted synthesized Ref obligations for the no-removal proof, and treat unresolved/derived roots conservatively until US2 proves their closure.
- [X] T009 [P] [US1] After T006–T007's reviewed red cases, implement the private complete-row candidate overlay in crates/behavior-store/src/store/incremental/candidate.rs with membership “parent live keys plus all created keys; the eligible delta has no removals.”; look up changes before parent, resolve references in the simultaneous child, and avoid a full map clone or universe enumeration for changed-row validation.
- [X] T010 [US1] After T008–T009, integrate eligible dispatch and canonically ordered changed/new row validation through the existing ordinary validator in crates/behavior-store/src/store/incremental/mod.rs and crates/behavior-store/src/store.rs; remove prototype mixed-rule/removal candidate checking from production, preserve mandatory rederivation/integrity/governance/error boundaries, and invalidate child carry-forward for unsupported successful transitions without adding a pre-CAS refusal.
- [X] T011 [US1] Establish the minimum safe private pending-result and successful-Applied carry-forward in crates/behavior-store/src/store/incremental/mod.rs and crates/behavior-store/src/store.rs, binding candidate/parent and exact committed child before reuse; enforce “A pending result contains no authority to predict which head will commit.” and discard on any uncertain binding/ownership rather than publishing or copying the universe.
- [X] T012 [US1] Run the collected private candidate/property tests in crates/behavior-store/src/store/incremental/tests.rs against T005's independent full candidate, and public workflow regressions in crates/behavior-store/tests/incremental_validation.rs against pre-015 outcomes; verify ordered validity/errors, reference membership, complete semantic evidence, validation-only work counters and separate total backend reads, recording red/green commands, seeds and actual results in specs/015-incremental-validation-semantics/evidence.md.
- [X] T013 [US1] Execute the unsupported-case regressions in crates/behavior-store/tests/incremental_validation.rs against the preserved pre-015 workflow for removals, query/cross-entity obligations, globals and migrations; investigate the static unchanged-row nonlocal example and record a confirmed gap, if any, separately in specs/015-incremental-validation-semantics/prototype/audit.md without fixing it or broadening production validation under 015.
- [X] T014 [US1] Update the conditional local-row/no-removal-Ref proof, assumptions and test anchors in specs/015-incremental-validation-semantics/correctness.md; distinguish the existing validator's diagnostics from omitted work, and record US1 acceptance/remaining lifecycle hardening in specs/015-incremental-validation-semantics/evidence.md without claiming a machine-checked proof.

**Checkpoint**: The local path is independently correct and has minimum safe publication. US3's full lifecycle/fault checks remain required before delivery.

## Phase 4: User Story 2 — Existing expressions retain their meaning (P1)

**Goal**: Prove complete transitive locality, keep all existing operators usable through ordinary evaluation, and retain the generic derivative only as private test/proof machinery.

**Independent test**: Compare dependency decisions and optimized validation with ordinary evaluation for nested derived arguments/captures, profile-dependent resolution, all lazy branches, references, optional values and errors. Every current operator is inventoried; nonlocal/unproven operators remain reference evaluated without changing admission or introducing runtime delta nodes.

### Tests first

- [X] T015 [P] [US2] After US1, write failing transitive-closure/property regressions in crates/behavior-store/src/store/incremental/dependency/tests.rs and wire its cfg(test) module from crates/behavior-store/src/store/incremental/dependency.rs before the red run; cover nested derived parameter aliases, all branches, profile-sensitive hash/name resolution, hidden Exists/Referenced/query/fold/capture dependencies, unresolved targets and unused nonlocal definitions outside obligation roots, enforcing “Unknown dependency means affected.” against ordinary evaluation.
- [X] T016 [P] [US2] After US1, add private-model tests in crates/behavior-core/src/incremental_proof/mod.rs and register that private cfg(test) module in crates/behavior-core/src/lib.rs before the red run, without implementing the reference model; cover exact replacement/wrong-parent refusal, composition, all four Value/Error transition classes, operator coverage, short-circuiting, Option, empty min/max and ordered numeric prefix overflow, recording diagnostics from the newly wired tests for API-absence red honestly before relocation.

### Implementation and verification

- [X] T017 [P] [US2] After T015–T016's reviewed failures, implement full derived dependency closure in crates/behavior-store/src/store/incremental/dependency.rs using ordinary profile-sensitive resolution and formal/actual binding; conservatively inspect every reachable operand/branch, reject cycles/unresolved/external facts, and ignore unused definitions that are not validation roots.
- [X] T018 [P] [US2] After T015–T016's reviewed failures and US1's removal of runtime consumers, move the generic complete-outcome reference model into private cfg(test) crates/behavior-core/src/incremental_proof/delta.rs, retaining T016's private test registration in crates/behavior-core/src/lib.rs; retire prototype crates/behavior-core/src/delta.rs and crates/behavior-core/src/validation.rs runtime modules and their exports, preserving useful tests and ordinary evaluator behavior without adding a runtime trait, new semantic API or dependency.
- [X] T019 [US2] Populate and exhaustively test current operator coverage in crates/behavior-core/src/incremental_proof/operator_inventory.rs and align specs/015-incremental-validation-semantics/construct-mapping.md with actual semantic variants/full evaluator entry points; label reference-only evaluation, local-row omission and synthesized Ref proof separately, include errors/composition, and claim no optimized scalar/query kernel or new admission requirement.
- [X] T020 [US2] Collect and run the private model, derived-closure and candidate differential/property suites from crates/behavior-core/src/incremental_proof/mod.rs and crates/behavior-store/src/store/incremental/dependency/tests.rs; update proof/test status in specs/015-incremental-validation-semantics/construct-mapping.md and specs/015-incremental-validation-semantics/evidence.md, proving unknown dependencies fall back and lazy/errors/ordering remain ordinary semantics.

**Checkpoint**: Transitive locality agrees with ordinary resolution. All existing operators retain their meaning and reference path; proof models remain private.

## Phase 5: User Story 3 — Reconstructible materialization and atomic publication (P1)

**Goal**: Bind reuse to exact committed canonical inputs, reconstruct from source state, and preserve independent historical, trust, concurrency and error obligations.

**Independent test**: Discard/reopen/rebuild caches, vary exact history/schema/behavior/profile while retaining equal values, inject commit failures/lost acknowledgment and fault mandatory versus redundant reads. Compare semantic records, hashes, commands and replay; no uncertain child may become reusable and every actual failure keeps its existing route.

### Tests first

- [X] T021 [P] [US3] After US1 (and US2 before production edits), add failing lifecycle/exact-binding cases in crates/behavior-store/src/store/incremental/tests.rs for cold/reopen/cache discard, equal content at different positions/forks, changed schema/admitted content/profile, backend_mut, stale handles, uncertain ownership, HeadMoved and applied-but-lost acknowledgment; distinguish previously committed parent evidence from forbidden speculative child publication.
- [X] T022 [P] [US3] After US1, add performed-operation versus omitted-read fault tests and historical identity-reuse cases in crates/behavior-store/tests/incremental_validation.rs: fail required head/record/schema/version/used_at/reference/commit calls through their existing routes, preserve refusal ordering, and allow a proven redundant universe/unrelated-row read to be omitted; record new failures without comparing call traces for equality.
- [X] T023 [P] [US3] After US1, add supported-facade consumer regressions in consumer/tests/incremental_validation.rs for update/create followed by reads, cache-independent reconstruction, command-only/no-op histories, governance refusal and data/Behavior replay; import behavior-engine only, preserve exact canonical records/hash/command bags, and confirm test collection before recording red evidence for changed behavior.

### Implementation and verification

- [X] T024 [US3] After T021–T023's reviewed tests and US2, harden exact cache matching/invalidation in crates/behavior-store/src/store.rs using “Exact history/state, schema and admitted semantic content/profile.”; preserve existing full SnapshotIdentity checks and process-local validation generation, fully rebuild missing/unbound parents, and never infer freshness or current head from StateId alone.
- [X] T025 [US3] Harden staged reference/value-index patching and publication in crates/behavior-store/src/store/incremental/mod.rs and crates/behavior-store/src/store/incremental/candidate.rs: only Applied with the exact pending parent/transition/child binding may publish; “Patch failure/ownership uncertainty drops the optimization.”; keep unchanged incoming refs coherent and avoid an O(N) clone to retain a cache.
- [X] T026 [US3] Preserve independent mandatory freshness/rederivation/integrity/governance/head/CAS checks in crates/behavior-store/src/store.rs and crates/behavior-store/src/store/incremental/mod.rs with “no authoritative ever_used cache.” and “Actual backend failures preserve their current direct-Store or FactError/evaluator route and ordering.”; satisfy T022 without hiding errors, converting them to ordinary DENY, adding checks for arbitrary unused backend defects or changing Backend/public error types.
- [X] T027 [US3] Run full semantic workflow and failure/rebuild sequences in crates/behavior-store/tests/incremental_validation.rs, crates/behavior-store/tests/snapshot_reuse.rs and consumer/tests/incremental_validation.rs plus existing schema/migration/governance/command/replay suites; compare decisions, ordered errors, required facts, canonical bundles/history/hash identities and replay against independent eligible/reference baselines, preserving existing suites and canonical consumer build configuration.
- [X] T028 [US3] Reconcile the implemented lifecycle table and fault/obligation evidence in specs/015-incremental-validation-semantics/data-model.md, specs/015-incremental-validation-semantics/correctness.md and specs/015-incremental-validation-semantics/evidence.md; record actual red/green/collection results and confirm all US3 scenarios, including loss of acknowledgment, reconstruction and historical identity permanence.

**Checkpoint**: US1/US2/US3 correctness is established for the planned local optimization; cache evidence is never canonical authority or a substitute for independent mandatory checks.

## Phase 6: User Story 4 — Representative workload evidence (P2)

**Goal**: Measure warm reads and repeated write/read pairs on controlled and actual TCUP models near 10,000 entities with a genuinely full reference comparator.

**Independent test**: Identical canonical seeds/operations yield identical semantic outputs and record identities before timing. Report write, immediate read and pair samples separately for optimized and full-parent/full-candidate strategies, with validation-only work counters, separate total backend reads and exact build provenance. Keep old parent-only samples labeled.

### Tests first

- [X] T029 [P] [US4] After US1–US3, write failing private benchmark-control tests in crates/behavior-store/src/store/incremental/workload_tests.rs and wire its cfg(test) module from crates/behavior-store/src/store/incremental/mod.rs before the red run, without implementing the comparator; detect shared optimized candidate validation, assert independent full-parent/full-child invocation and paired semantic/record equality, and require zero unchanged-row validation and zero validation-related full-universe enumeration on eligible warm operations while reporting total backend reads separately.
- [X] T030 [P] [US4] After US1–US3, write and collect stdlib-unittest harness regressions in specs/015-incremental-validation-semantics/benchmarks/test_tcup_workload.py rejecting mismatched semantic outputs, absent candidate-reference instrumentation or native-build provenance, and missing warm/update-read/create-read write/read/pair samples; observe meaningful failure against the existing parent-reconstruction-only harness.

### Implementation and measurement

- [X] T031 [P] [US4] After T029–T030's reviewed red results, implement the private cfg(test) controlled benchmark and reference selection in crates/behavior-store/src/store/incremental/workload_tests.rs, retaining T029's test registration from crates/behavior-store/src/store/incremental/mod.rs; use T005's independent full candidate and freshly reconstructed parent for the reference series, fixed seeds near 10k rows, separate cold setup, validation-only counters and total backend reads, with no production strategy flag/API.
- [X] T032 [P] [US4] After T029–T030's reviewed red results, revise specs/015-incremental-validation-semantics/benchmarks/tcup_workload.py and document two isolated native experiment builds in specs/015-incremental-validation-semantics/benchmarks/README.md; use real TCUP handlers/JSONL, record exact source plus any private reference-instrumentation patch and extension digests, disable optimized candidate validation in the eligible reference experiment, and leave ecosystem pins, official scripts and TCUP SC-007 unchanged.
- [X] T033 [US4] After T031 and green harness/control tests, run controlled warm-read, update/read and create/read series sequentially and save raw paired samples, validation-only counters, separate total backend reads, semantic parity and source/seed/build/platform provenance in specs/015-incremental-validation-semantics/benchmarks/controlled-015-results.json; aim for at least 30 measured pairs per final series, report p50/p95 and setup separately, and distinguish inherent query/output/profile costs.
- [X] T034 [US4] After T032 and green harness tests, run the real TCUP model/JSONL series in isolated experiment environments near 10k records and save parity, raw samples, validation-only counters, separate total backend reads and rebuilt native/source/patch provenance in specs/015-incremental-validation-semantics/benchmarks/tcup-015-results.json; measure sequentially without concurrent build load, explain smaller samples or ineligible models, and make no live-MCP, published-pin or SC-007 compatibility claim.
- [X] T035 [US4] Analyze all three series and validation-work counters in specs/015-incremental-validation-semantics/evidence.md with reproducible commands from specs/015-incremental-validation-semantics/benchmarks/README.md; retain historical controlled-results.json/tcup-results.json as parent-reconstruction-only evidence, report affected-closure/transport/record costs and measurement limits, and claim neither universal constant time nor a new latency guarantee.

**Checkpoint**: Performance evidence distinguishes genuine full candidate validation from parent-only reconstruction and remains separate from semantics, canonical release compatibility and TCUP's existing expected failure.

## Phase 7: Polish & Cross-Cutting Concerns

**Purpose**: Validate the actual revised implementation through the unchanged required gates and reconcile documentation/evidence without publication.

- [X] T036 [P] After all stories, reconcile ARCHITECTURE.md, PRINCIPLES.md, docs/persistence.md and specs/015-incremental-validation-semantics/plan.md, spec.md, quickstart.md and contracts/compatibility.md with actual private placement and evidence; preserve normative contracts and feature 014, link the canonical full validator and retain “Operations may be eliminated; proof obligations may not.” without adding language/runtime requirements.
- [X] T037 [P] After all stories, audit api/engine-surface.txt, crates/behavior-engine/src/lib.rs, wire/admission/hash/schema/record/conformance files, Cargo.toml/Cargo.lock, original 014 baselines and canonical ecosystem dependency metadata; record protected-boundary/source checks in specs/015-incremental-validation-semantics/verification.json, confirming no public semantic API, Backend, release pin or unrelated file changed.
- [X] T038 After T036–T037, run nix develop -c scripts/gates.sh and git diff --check from the owning Core root, including unchanged conformance, determinism, external consumer, boundary and script checks; record exact source/revision identities, commands, collected suites and logs in specs/015-incremental-validation-semantics/evidence.md and specs/015-incremental-validation-semantics/verification.json, rerunning affected checks if subsequent code changes invalidate them.
- [X] T039 Reconcile specs/015-incremental-validation-semantics/tasks.md, evidence.md and verification.json with work actually completed and verified, preserving prototype archives and historical test-first gaps; record unresolved scope/failed checks honestly, distinguish local files from delivery, and perform no commit, merge, tag, publication or ecosystem pin update as part of this task list.

**Checkpoint**: The actual revised implementation passes the owning required gates with complete evidence. Unperformed or inconclusive work stays unchecked.

## Dependencies & Execution Order

### Phase and story dependencies

```text
Setup T001 → {T002, T003}
    ↓
Foundation T004 → T005
    ↓
US1 T006–T014
    ↓
US2 T015–T020 ──→ US3 production hardening T024–T028
    └────────────── US3 test drafting T021–T023 may start after US1
                                  ↓
                        US4 T029–T035
                                  ↓
                        Final T036–T039
```

- US1 depends only on the shared foundation and ordinary evaluator; its initial guard can conservatively reject derived roots until US2 proves them.
- US2 builds on US1's candidate/dispatch path. Its Core proof model and Store closure tests are independently executable; no operator delta runtime is needed.
- US3 tests can be drafted after US1. Production edits wait for US2 to avoid shared Store-module conflicts and validate the final semantic/profile guard.
- US4 depends on accepted US1/US2/US3 behavior and T005's independent oracle. Measure series sequentially even though harness development can be parallel.
- Final checks depend on every story. T038 covers the source that will be reported; prototype gate results do not satisfy it. No release dependency is created.

### Within each phase

Review tests and record actual red evidence before related implementation; resolve fixture errors before treating a failure as evidence. Run matching green tests and confirm nonzero collection. Preserve complete result/evidence/ordering comparisons; test operational faults separately from semantic equality. Append shared evidence after parallel test authoring, using separate per-task logs during the parallel work. Only mark tasks complete after their work and required verification are done.

### Parallel opportunities and examples

The following are optional independent file groups, not an instruction to spawn agents. All unlisted tasks are sequential.

| Phase/story | Prerequisite | Parallel work with separate write targets |
| --- | --- | --- |
| Setup | T001 | T002 prototype/audit.md; T003 quickstart.md |
| US1 tests | T005 | T006 private tests.rs; T007 integration incremental_validation.rs |
| US1 implementation | T006–T007 red | T008 dependency.rs; T009 candidate.rs |
| US2 tests | US1 | T015 dependency/tests.rs; T016 Core incremental_proof/mod.rs |
| US2 implementation | T015–T016 red | T017 Store dependency.rs; T018 Core private delta/lib relocation |
| US3 tests | US1 | T021 private tests.rs; T022 integration incremental_validation.rs; T023 consumer test |
| US4 tests | US1–US3 | T029 Rust workload_tests.rs; T030 Python test_tcup_workload.py |
| US4 harnesses | T029–T030 red | T031 private Rust benchmark; T032 Python/isolated-build harness |
| Final | All stories | T036 documentation; T037 protected-file audit/verification.json |

For example, US1 can pair “T006 write local guard/counter regressions” with “T007 write public transaction/fallback regressions.” US2 can pair “T015 write closure regressions” with “T016 write complete-result proof-model regressions.” US3 can pair the three distinct lifecycle, operational-fault and supported-consumer test files. US4 can pair Rust comparator-control tests with Python provenance/parity tests; timed runs T033 and T034 must remain sequential to avoid competing build/load noise.

## Requirement Coverage

| Spec requirement/outcome | Primary tasks |
| --- | --- |
| FR-001/002, SC-002: normative full semantics, observations/order and independent equivalence | T004–T005, T007, T010, T012, T020, T027 |
| FR-003/005: exact proven unaffected closure, unknown affected, fallback boundaries | T006, T008, T010, T013–T015, T017, T024 |
| FR-004/010: transitions, final refs, historical freshness and independent obligations | T007, T009–T011, T022, T025–T027 |
| FR-006/007/012, SC-001: proof/model/inventory, lazy/exact errors and composition | T014–T020, T028 |
| FR-008/009, SC-003: reconstructible exact cache, Applied-only, fault/replay sequences | T011, T021–T028 |
| FR-011, SC-006: unchanged 014, boundaries, facade, hashes, replay/governance | T001–T002, T018, T023, T027, T036–T038 |
| FR-013, SC-004/005: actual work, three series, honest true-reference provenance | T006, T012, T029–T035 |
| FR-014/015: performed errors versus omitted calls; mandatory trust checks | T010, T022, T026–T028 |

## Implementation Strategy

**MVP**: Complete Setup/Foundation, US1 and US3's exact binding/atomic/fault safety before any usable delivery. US2 is needed to claim the specified transitive-derived coverage and complete private inventory; under the sequential execution order it is completed before US3 production hardening. US1 alone is a testable scalar-local increment, not a deliverable exemption from lifecycle obligations.

Add US4 only after correctness and safety are established. Verify each story at its checkpoint, then run the unchanged final gates. Increasing optimization coverage later must retain the same semantic reference and conservative fallback; queries, aggregates and removals need no new optimized engine in this delivery.

Before implementation, run `$speckit-analyze` to check the generated task list against the current specification and design. `$speckit-implement` is a separate user-invoked phase. Do not mark review-owned specification checklists from these implementation tasks, clear TCUP's expected failure, or use private builds as official compatibility evidence.
