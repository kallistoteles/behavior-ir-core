---
description: "Dependency-ordered implementation tasks for Core 018"
---

# Tasks: Strict and Profile-Preserving Store Replay

**Input**: [spec.md](spec.md), [plan.md](plan.md), [research.md](research.md),
[data-model.md](data-model.md), [quickstart.md](quickstart.md), and [contracts](contracts/replay-boundary.md).

**Branch**: `018-strict-profile-replay` in `behavior-ir-core`.

**Status**: T001–T042 verified on the isolated017 integration base.
T043–T046 are pending at freeze and complete only in the external revision-bound receipt; the frozen checkboxes are deliberately not rewritten.

**Tests**: Required by FR-011 and Constitution III. Review and execute meaningful
failing regression tests before production corrections. Passing preservation
controls are recorded as controls, not invented RED evidence. Missing fixtures,
compile failures and zero-test runs do not establish the audit defects.

**Organization**: Setup, a shared cross-story RED barrier, then US1 (P1), US2 (P1)
and US3 (P2), followed by integration and delivery evidence. The shared barrier
is necessary because the profile fix can also close the ambiguity defect.

## Format and paths

- `- [ ] Tnnn [P?] [USn?] Description with exact file paths`.
- `[P]` means independent file ownership after the stated prerequisites; it does
  not override dependency or test-first barriers.
- Story labels appear only in their corresponding story phases.
- Paths are relative to the owning Core repository root. New fixture/evidence
  paths below are implementation targets, not existing execution evidence.
- Use the pinned Nix environment. Add no crate, dependency, facade export,
  Backend method, record format or ecosystem override.

## Phase 1: Setup — implementation base and evidence inventory

**Goal**: Select the actual implementation base and turn the reviewed support
matrix into an explicit fixture/test inventory before changing source code.

- [X] T001 Select and document the implementation/integration base in `specs/018-strict-profile-replay/evidence/implementation-base.md`: inspect branch, remote, status and applicable instructions; use reviewed017 when stacking or main after017 merges, preserve unrelated work and original018/audit anchors from `research.md`, and record full base SHA, source digest and pinned Nix/toolchain availability. Resolve integration in an isolated checkout when necessary; do not represent an unreviewed017 base as reviewed or change016 evidence.
- [X] T002 [P] Create `tests/fixtures/replay/018/matrix.json` from `specs/018-strict-profile-replay/contracts/support-matrix.md`, enumerating the nine supported rows, their 24 supported boundary cells, concrete U01–U10 refusals and case IDs for canonical, profile-specific error/refusal, ambiguity, formatting and binding cases. Preserve the model constraint: "An inapplicable cell is explained rather than counted as a passing test." Cite fixture provenance and distinguish standalone transport-refusal limits from Store-originated evidence; do not create Cartesian support.
- [X] T003 [P] Establish `specs/018-strict-profile-replay/evidence/execution-ledger.md` with commands, SHA/source/test digests, collection counts, exit status and log paths under `specs/018-strict-profile-replay/evidence/runs/`; distinguish not-run, semantic RED, passing control, GREEN and unavailable evidence. Reserve `specs/018-strict-profile-replay/evidence/matrix-coverage.json` for actually executed row/boundary/case IDs; no initial placeholder counts as execution.

**Checkpoint**: Base and inventory are explicit. No replay implementation has
changed, and no historical log is attributed to the new implementation base.

## Phase 2: Foundational — all three regressions before any correction

**Goal**: Establish a single cross-story test-first barrier on the selected base.
Production tasks in every story are blocked by T007.

- [X] T004 Capture independent archives and coherent Store setup inputs in `tests/fixtures/replay/018/records/` and `tests/fixtures/replay/018/stores/`, with provenance in `tests/fixtures/replay/018/README.md`: retain original historical read-v1 and inner-invocation bytes/identities from immutable016 reproduction sources or independently established historical evaluators; include current-v2 controls. Never generate historical evidence by relabeling v2 and refreshing its hash. Reconcile fixture references with `tests/fixtures/replay/018/matrix.json` before the parallel test tasks.
- [X] T005 [P] Add baseline legal controls in `crates/behavior-core/tests/strict_profile_replay.rs` for historical Wire0.8 read-v1, its invocation envelope and canonical current-v2 read; assert original identities and recorded semantics through the existing Core boundaries. Consume the reviewed fixtures without editing their manifest or Store test file.
- [X] T006 [P] Add the three separate top-level Store regression tests in `crates/behavior-store/tests/strict_profile_replay.rs`: `historical_wire08_v1_read_must_replay_against_its_exact_store_position`, `historical_wire08_v1_inner_read_must_replay_as_store_invocation`, and `store_replay_rejects_contradictory_duplicate_current_read_result`. Establish passing standalone/current controls and exact Store/genesis/schema coordinates before asserting the defect; compare authoritative Store contents before/after each call.
- [X] T007 Review T005–T006 and run the collection and exact-name commands in `specs/018-strict-profile-replay/quickstart.md` on the T001 base; save outputs under `specs/018-strict-profile-replay/evidence/runs/baseline/` and update `specs/018-strict-profile-replay/evidence/execution-ledger.md`. Require exactly one collected test per named command, passing legal controls and the three expected semantic failures before production edits. If a reviewed base already fixes a case, record that fact and trace its earlier genuine test-first evidence rather than fabricating failure or calling compilation failure RED; resolve the compliance gap before claiming this barrier complete.

**Checkpoint**: Both historical Store mismatches and the contradictory duplicate
acceptance have fresh, attributable RED evidence. The minimal regression target
is shared infrastructure; the following story phases extend it with their own
independent acceptance coverage.

## Phase 3: US1 — Replay preserved historical evidence (Priority: P1)

**Goal**: Use the recorded supported read profile at every applicable replay
boundary while preserving fresh defaults, historical evidence and refusal limits.

**Independent test**: The two historical Store regressions match, current-v2 and
standalone controls match, and canonical/profile-specific cases cover all 24
supported cells. Unsupported profile/admission combinations retain refusal.
Core/Store comparisons use the same canonical inputs with Store obligations
independently established, rather than requiring equal backend traces.

### Tests before the shared profile correction

- [X] T008 [P] [US1] Extend `crates/behavior-core/tests/strict_profile_replay.rs` with every supported Core read/invocation cell from `tests/fixtures/replay/018/matrix.json`, including minimal compatible ad-hoc0.7 definitions for module0.4–0.6, declared0.7/0.8 reads, both supported0.8 profiles, historical error/query-registry/capture limits, provenance/display and v2 diagnostics/snapshot controls. Expand U01–U07 to their concrete versions; distinguish raw-record rejection from frozen request decoding and standalone-only transport refusal.
- [X] T009 [P] [US1] Extend `crates/behavior-store/tests/strict_profile_replay.rs` with every supported Store read/invocation cell from `tests/fixtures/replay/018/matrix.json`, including historical ad-hoc Wire0.8, matched semantic errors/binding refusals, typed missing-ID behavior and replay after later writes/migrations. Pair outcomes/evidence/identities with Core only where recorded Store obligations hold; retain historical missing-capture limitations and all fresh Wire0.8 v2 outputs.
- [X] T010 [US1] Review, collect and execute the T008–T009 cases before T011, recording failing historical dispatch assertions and passing preservation/refusal controls under `specs/018-strict-profile-replay/evidence/runs/us1-before/`. Check the manifest against an independent enumeration of the nine rows and applicable boundaries, and make the integration suites fail on absent cases, unknown rows or silent skips; do not derive expected coverage only from the cases that happened to execute.

### Implementation and profile proof

- [X] T011 [US1] Factor strict decoded read preparation and a checked profile in `crates/behavior-core/src/read.rs`, with unit contract tests written/reviewed before the corresponding helper bodies. Preserve these exact model constraints: "The internal profile kind has no unsupported/default variant." "A selector prepared for another module cannot authorize evaluation." Use private checked-wrapper fields bound to the exact Module identity and retain/recheck that binding at execution; v1 supports Legacy/CommandIntents and v2 requires CommandIntents. Preserve raw decode → format/module → BehaviorHash → source → request precedence, ad-hoc re-admission and `refused_request` selection. Compilation issues for new internal interfaces do not replace T007's semantic RED.
- [X] T012 [US1] Route standalone read replay in `crates/behavior-core/src/read.rs` and resolved read/invocation replay in `crates/behavior-core/src/invocation.rs` through that checked preparation/execution. Test cross-module selector substitution and incompatible profiles, preserve full evidence comparison and refusal/decode-evidence branches, and expose only the narrow hidden Core-to-Store integration hook required by the plan. Fresh entry points retain current defaults; export nothing new through `crates/behavior-engine/src/lib.rs` or `api/engine-surface.txt`.
- [X] T013 [US1] Factor private Store execution mode in `crates/behavior-store/src/store.rs`, driven by the collected tests and unit contracts: "Fresh versus archived execution is an internal sum type, not several independent booleans." Fresh public read/invoke callers hard-select Fresh; ArchivedRead accepts only checked preparation bound to the same module. "Invocation may use an archived read selector only for a resolved read outcome." Do not expose arbitrary profile strings or change public signatures.
- [X] T014 [US1] Correct `Store::replay_read` in `crates/behavior-store/src/store.rs` to consume strict prepared evidence, establish recorded Store/state/history/schema/behavior coordinates and reconstruct typed values/facts from that historical Store position before evaluating the recorded profile. Never use an archive snapshot or standalone match as replacement authority, switch historical v1 to fresh v2, or silently drop/repair bindings and captures.
- [X] T015 [US1] Correct the read outcome of `Store::replay_invocation` in `crates/behavior-store/src/store.rs` using the checked inner profile and the Core integration hook in `crates/behavior-core/src/invocation.rs`; retain strict whole-envelope preflight, capability/behavior/data-version reconciliation, typed resolution, binding facts, transport metadata resealing and complete outer/inner identity comparison. "Refusal/decode-evidence branches have no invented inner read profile." Preserve017 archived/current decision branches.
- [X] T016 [US1] Inspect and document observational equivalence with the reference evaluator under the same recorded profile, separately for every supported profile/version combination, in `specs/018-strict-profile-replay/evidence/us1-profile-review.md`. Equivalence between read-v1 and read-v2 is neither required nor implied; each profile retains its historical semantics and evidence contract. Cite the enforcing code in `crates/behavior-core/src/read.rs`, `crates/behavior-core/src/invocation.rs` and `crates/behavior-store/src/store.rs`: frozen request/query/provenance/capture semantics, v2 complete snapshot/detached diagnostics, fresh profile defaults and the exact-module checked-wrapper invariant. Correct only demonstrated divergence; do not invent facts or normalize historical archives.
- [X] T017 [US1] Execute the two historical regressions, all US1 supported/refused matrix cases and existing read/invocation preservation targets from `specs/018-strict-profile-replay/quickstart.md`; save GREEN/coverage logs under `specs/018-strict-profile-replay/evidence/runs/us1-green/` and update `specs/018-strict-profile-replay/evidence/matrix-coverage.json`. Assert original historical bytes/record IDs and fresh current output remain unchanged, with profile-appropriate semantic diffs on mismatches.
- [X] T018 [US1] Record the independently verified US1 checkpoint in `specs/018-strict-profile-replay/evidence/execution-ledger.md` and `specs/018-strict-profile-replay/evidence/us1-profile-review.md`, mapping FR-001/002/003/006/010/012/016 and P018-02/03/05/06/07/10/11 to exact test/source evidence. Keep US2/US3 and final delivery obligations pending; this checkpoint does not complete018.

**Checkpoint**: Historical replay works across the supported domain and fresh
evaluation is preserved. This is the suggested internal MVP review checkpoint.

## Phase 4: US2 — Refuse ambiguous replay documents (Priority: P1)

**Goal**: Every scoped raw boundary rejects ambiguity before lossy decoding and
retains the existing deterministic match/non-match result contract.

**Independent test**: The named contradictory-current-read regression refuses;
root/nested/equal/escaped duplicates refuse at applicable boundaries; whitespace
and object representation order preserve identity. Repeated identical inputs
produce the same nonempty string diff, and valid controls still match.

### Strictness and result contract tests

- [X] T019 [P] [US2] Extend `crates/behavior-core/tests/strict_profile_replay.rs` with matrix-attributed root/nested duplicates, equal-value duplicates, escaped equivalent decoded keys, retained-last-value/hash attacks, malformed syntax, exact profile-defined unknown-field/numeric cases and duplicates inside invocation inner evidence. Add property/metamorphic whitespace and object-key-order preservation; retain valid raw `refused_request` strings containing duplicate-looking JSON as their original refusal evidence.
- [X] T020 [P] [US2] Extend `crates/behavior-store/tests/strict_profile_replay.rs` with the same applicable raw ambiguity/malformed cases at Store read and Store invocation boundaries, including rehashed but semantically contradictory evidence, repeated deterministic refusals and unchanged canonical Store contents. Attribute cases to the matrix without imposing new legacy request strictness or expecting Store equivalence when its additional binding premises do not hold.
- [X] T021 [P] [US2] Add consumer result-shape controls in `consumer/tests/strict_profile_replay.rs` through `behavior_engine` only, preserving the exact field constraints: "Boolean; true only when required reproduction and comparison succeed." "Optional string; nonempty reason for malformed, ambiguous or mismatching evidence; existing omission-on-match behavior remains." Verify Rust field handling, serialized string/omission behavior and no third result/new field; import no internal Core/Store crate.
- [X] T022 [US2] Review and run T019–T021 before any further strictness correction, recording collection and baseline outcomes in `specs/018-strict-profile-replay/evidence/runs/us2-before/`. Keep T007's named duplicate RED as the pre-correction evidence if US1's shared preparation has already made these cases GREEN; do not reverse correct code or relabel a passing preservation case as a new failure.

### Strict boundary integration

- [X] T023 [US2] Ensure raw read and invocation routes in `crates/behavior-core/src/read.rs`, `crates/behavior-core/src/invocation.rs` and `crates/behavior-store/src/store.rs` consistently use the existing strict replay preparation before object reduction. Remove remaining lossy in-scope pre-parsing only where tests/source inspection demonstrate it; retain already-strict invocation preflight. Do not replace replay with blanket `ReadRecord::from_json` validation, alter historical first-difference order, decode `refused_request` string contents as an enclosing object or tighten frozen runtime requests.
- [X] T024 [US2] Check and, only for a demonstrated remaining violation, correct mismatch/error rendering in `crates/behavior-core/src/read.rs` and `crates/behavior-store/src/store.rs` using the existing `ReplayResult` in `crates/behavior-core/src/record.rs`; preserve optional string diff, nonempty deterministic malformed/ambiguity reasons and established semantic diff paths. Document diagnostic guarantees/limits in `specs/018-strict-profile-replay/evidence/us2-boundary-review.md`; introduce no public reason grammar, exact path promise unsupported by the decoder, result variant or object-valued diff.
- [X] T025 [US2] Run the named duplicate regression, complete applicable malformed/refusal matrix cases, property tests and consumer controls; save results under `specs/018-strict-profile-replay/evidence/runs/us2-green/` and update `specs/018-strict-profile-replay/evidence/matrix-coverage.json` and `specs/018-strict-profile-replay/evidence/execution-ledger.md`. Map FR-004/005/011/014, SC-001/002/006 and P018-01/08/10 to executed cases, retaining legal controls and unchanged historical identities.

**Checkpoint**: Ambiguous evidence is a deterministic non-match, with unchanged
consumer result types and profile-specific decoding boundaries.

## Phase 5: US3 — Preserve Store and evidence obligations (Priority: P2)

**Goal**: Profile sharing and strict decoding preserve the stronger historical
Store boundary, operational error behavior and read-only authority.

**Independent test**: Coordinate/behavior/binding substitutions refuse; actually
required backend failures retain their existing category; matched, mismatched and
erroring replay leave canonical Store components and command authority unchanged.

### Trust, failure and immutability tests

- [X] T026 [P] [US3] Extend `crates/behavior-core/tests/strict_profile_replay.rs` with counterpart controls for U08–U10 comparisons, inner/outer behavior/data-version/capability contradictions, identity-bearing metadata and refusal/decode-evidence paths. Demonstrate that standalone reproduction does not certify foreign Store coordinates. Include017 archived decision0.4–0.7/current decision0.8 invocation controls on the selected integration base without changing their profiles.
- [X] T027 [P] [US3] Extend `crates/behavior-store/tests/strict_profile_replay.rs` with concrete U08/U09 substitutions: foreign Store lineage, wrong StateId/history position, historical/current schema confusion, equal-schema wrong BehaviorHash, typed missing/wrong/extra binding IDs and forged facts/observations. Cover read and inner-read invocation, later writes/migrations and017 action collateral controls. Preserve the constraint: "State identity alone is insufficient to select a history position. Equal schemas do not imply equal behavior." Assert non-match or the existing refusal category, not an invented category.
- [X] T028 [US3] Add a narrowly scoped fault/counting Backend test wrapper and performed-failure cases in `crates/behavior-store/tests/strict_profile_replay.rs`, reusing existing backend test conventions where available. Inject failures only at operations established to be required, distinguish StoreError propagation from contracted evaluator FactError handling and assert U10 behavior; do not demand a fixed backend call trace or failures from omitted calls.
- [X] T029 [US3] Add before/after and property assertions in `crates/behavior-store/tests/strict_profile_replay.rs` for genesis/head/history/entity versions/reference evidence/command streams over matched, mismatched, malformed and performed-error cases. Reject candidate/uncommitted authority reuse; allow only already-contracted reconstructible cache effects. Record explicitly: "No step commits a state/history record, executes a command or creates reusable uncommitted validity."
- [X] T030 [US3] Review, collect and execute T026–T029 before any trust/error-path correction, recording controls and genuine failures under `specs/018-strict-profile-replay/evidence/runs/us3-before/`. Document which guarantees already hold by construction and tests; passing existing obligations require preservation rather than a fabricated bug or unnecessary source change.

### Store obligation preservation

- [X] T031 [US3] Trace and enforce, correcting only demonstrated regressions, the historical reconstruction/binding chain in `crates/behavior-store/src/store.rs`: Store lineage, exact history/StateId, schema/behavior, typed values, snapshot validity and required facts precede archived execution. Missing identities retain existing bound-ID/refusal behavior; archived evidence is compared to actual Store data. Write the source-level argument and coordinate-test mapping in `specs/018-strict-profile-replay/evidence/us3-store-review.md`.
- [X] T032 [US3] Trace actually performed backend errors and replay-only authority in `crates/behavior-store/src/store.rs`, preserving existing error propagation rather than globally recategorizing FactError. Correct only a demonstrated contract violation after its failing test; document the enforcing paths in `specs/018-strict-profile-replay/evidence/us3-store-review.md`. Replay must not create an action bundle, dispatch commands or promote uncommitted validation evidence.
- [X] T033 [US3] Run existing Store read/history/schema/invocation/conformance targets and integrated017 archived/current action replay controls from `specs/018-strict-profile-replay/quickstart.md`, preserving unrelated migration/command/refusal paths. Save results under `specs/018-strict-profile-replay/evidence/runs/us3-collateral/` and cite the actual017 integration SHA in `specs/018-strict-profile-replay/evidence/execution-ledger.md`; if integration changes, refresh affected evidence before closure.
- [X] T034 [US3] Execute all US3 substitution, performed-failure and immutability cases and paired conditional Core/Store assertions; save GREEN logs under `specs/018-strict-profile-replay/evidence/runs/us3-green/` and update `specs/018-strict-profile-replay/evidence/matrix-coverage.json`, `specs/018-strict-profile-replay/evidence/us3-store-review.md` and `specs/018-strict-profile-replay/evidence/execution-ledger.md`. Map FR-007/008/009/016, SC-004/006 and P018-04/05/07/08/09/11 to evidence while retaining Backend coherence/immutability premises.

**Checkpoint**: All stories are independently verified. Semantic non-match,
faithfully replayed evaluation failures and operational inability to replay remain
distinct, with no authoritative mutation or command dispatch.

## Phase 6: Cross-cutting proof, determinism and delivery evidence

**Goal**: Validate the integrated correction through canonical gates and the
supported facade, then report targeted RC-002 closure with explicit limits.

**Freeze and receipt policy**: Follow [the validation guide](quickstart.md#4-run-canonical-gates-and-exact-revision-consumer-validation).
Tracked reports identify tested source revisions known during their production
and supporting evidence locations; they never attempt to contain their own final
commit SHA. Finalize tracked implementation, fixtures, reports and task bookkeeping
before freezing the candidate. Pending post-freeze steps remain explicitly pending
in that snapshot; record their subsequent completion in revision-bound CI or an
external immutable receipt rather than modifying the frozen `tasks.md`.
`receipt-root/<candidate-sha>/` below denotes an external retained evidence
location, outside the frozen checkout, selected before validation. The receipt
binds repository, exact SHA, commands, exit statuses, environment/toolchain
identity and log/evidence locations. A different merge/squash/rebase/release SHA
requires its own final validation when exact-revision assurance is required.

- [X] T035 [P] Complete `consumer/tests/strict_profile_replay.rs` with facade-only end-to-end historical/current read and inner-invocation coverage, exact coordinate refusal, fresh-v2 emission, deterministic malformed non-match and representative performed-backend-error handling. Reuse `tests/fixtures/replay/018/` through the existing consumer fixture layout; do not import hidden integration hooks or change `consumer/Cargo.toml` to an unpublished ecosystem override.
- [X] T036 [P] Write and execute `scripts/tests/test_replay_determinism.sh` before adding the018 determinism hook/example. Add real-runner output/identity/outcome assertions as well as existing-convention mocks for failure propagation; require fixture-runner execution twice, required case IDs, stable nonempty output/exit codes, additive unique018 digest labels and correct match/non-match expectations. Reject missing/empty/changed output, missing cases, unequal exits and consistent unexpected failures. Record script/runner test-first failures under `specs/018-strict-profile-replay/evidence/runs/determinism-red/`, distinguishing initially unavailable new interfaces from executable failing assertions; neither replaces T007's semantic RED, and a non-collected test or missing tool is not passing evidence.
- [X] T037 Add the minimal fixture-driven `crates/behavior-store/examples/strict_profile_replay.rs`, covered first by the runner contract tests from T036 and the existing replay regressions. It must actually replay the retained historical read/invocation and current ambiguous/control evidence against coherent Store inputs, assert expected outcomes/no mutation, and emit fixed-case-ID canonical JSON with original record identities and result fields. Unexpected mismatch, missing fixture/case or failed Store obligation exits unsuccessfully; no public API or generic replay runtime is added.
- [X] T038 Implement `scripts/check-replay-determinism.sh` to run that exact-checkout example twice through existing cargo/Nix conventions, compare exit codes/canonical bytes, validate every selected case against the reviewed expected result and record only additive `core`/`018:` digest labels. Make all T036 negative/error cases pass; an intentionally nonmatching malformed case is valid evidence, while a matching malformed case or failed historical case fails the gate. Record script GREEN under `specs/018-strict-profile-replay/evidence/runs/determinism-green/`.
- [X] T039 Connect `scripts/check-replay-determinism.sh` to `scripts/determinism-check.sh` with a test-first invocation/failure-propagation assertion in `scripts/tests/test_replay_determinism.sh`; propagate nonzero results and retain all existing digest keys/goldens. Confirm `scripts/gates.sh` still collects the new `test_*.sh` regression through its canonical path without bypasses or private development switches.
- [X] T040 [P] Update `docs/persistence.md`, `docs/soundness-remediation.md`, `docs/versioning.md` and `specs/018-strict-profile-replay/quickstart.md` to document recorded-profile Store replay, ambiguity non-match/string-diff limits, support/capture/origin constraints, actual added commands and public consumer effects. Record patch-class018 in isolation and separate017 minor-class treatment; introduce no version bump, new profile, historical rewrite, tag or ecosystem pin change. Link the feature evidence and immutable016 findings without editing016.
- [X] T041 Run the complete new Core/Store suites, collection checks, existing quickstart preservation/conformance targets, facade consumer and018 determinism/script regressions in the pinned Nix environment; store outputs under `specs/018-strict-profile-replay/evidence/runs/integrated/`. Reconcile `specs/018-strict-profile-replay/evidence/matrix-coverage.json` with the independently reviewed required ID set in `tests/fixtures/replay/018/matrix.json`; missing/extra/skipped cases, unexplained N/A or zero collected tests prevent completion.
- [X] T042 Perform the targeted re-audit and write `specs/018-strict-profile-replay/implementation-report.md`, mapping all FRs/SCs and P018-01–P018-12 to construction arguments, source invariants, tests and conditional premises. Assess only F-PERSIST-001/F-TRUST-001 and the relevant parts of O-MODEL-013/O-IDENTITY-010/O-PERSIST-008/O-TRUST-012; classify discharged/conditional/open obligations separately and preserve immutable016. Include public/versioning effects, source revisions known during report production and supporting evidence locations; keep final frozen-candidate validation explicitly pending and do not embed the final SHA of the commit containing the report.
- [ ] T043 Finalize `specs/018-strict-profile-replay/implementation-report.md`, `specs/018-strict-profile-replay/evidence/execution-ledger.md` and `specs/018-strict-profile-replay/tasks.md` with verified pre-freeze results and pending final validation. Review explicit file lists, source/test/fixture digests, unchanged `api/engine-surface.txt`, historical bytes/hash domains and017 collateral compatibility; commit the reviewed implementation, fixtures, reports and task bookkeeping, then freeze that integrated candidate. Select the external receipt location and record the final SHA there rather than in the commit that contains the reports. Preserve unrelated work and the review-owned `specs/018-strict-profile-replay/checklists/requirements.md`; perform no merge/release/version/pin action.
- [ ] T044 Run `nix develop -c scripts/gates.sh` and `git diff --check` from the clean frozen candidate Core root, following `specs/018-strict-profile-replay/quickstart.md`; save repository/full SHA, commands, exit statuses, environment/toolchain identity and logs under external `receipt-root/<candidate-sha>/final-gates/`. Confirm canonical fmt/clippy/workspace tests/build/determinism/boundary/public-surface/consumer/workflow/terms/script tests execute, Z3-dependent required evidence is available, and no skipped/inconclusive result is reported as passing. Assert tracked checkout contents remain unchanged before/after execution; do not update tracked reports or task checkboxes.
- [ ] T045 Validate the supported consumer with the existing `scripts/check-consumer.sh` revision mode: `nix develop -c scripts/check-consumer.sh --rev FULL_CANDIDATE_SHA`, using the actual frozen full SHA and candidate-matching CLI/fixtures/demo sources as specified in `specs/018-strict-profile-replay/quickstart.md`. Save commands, exit status, environment and logs under external `receipt-root/<candidate-sha>/final-consumer/`; push the frozen feature commit if needed without publishing a tag or Release. Preserve the frozen checkout; a local override, different revision or different consumer checkout does not satisfy FR-013.
- [ ] T046 Seal the external immutable `receipt-root/<candidate-sha>/receipt.json` or equivalent revision-bound CI receipt according to `specs/018-strict-profile-replay/quickstart.md`, binding repository, exact commit SHA, commands, exit statuses, environment/toolchain identity and log/evidence locations. Record post-freeze task completion, verified results, remaining conditional premises and actual delivery state there without changing the frozen `specs/018-strict-profile-replay/tasks.md` or reports. Keep failed/skipped/unavailable checks visible; claim completion only after required checks pass. Any later tracked source/report/bookkeeping change creates a new candidate and requires fresh final validation; a later merge/squash/rebase/release SHA is not attested by this receipt and must receive its own validation if published under exact-revision assurance.

**Checkpoint**: All requirements and proof obligations have attributable evidence
for the integrated delivery revision. No audit evidence was rewritten and no
release, general soundness claim or ecosystem dependency update is implied.

## Dependencies and execution order

### Phase dependencies

```text
T001 → {T002, T003} → T004 → {T005, T006} → T007
                                                    │
                                                    ▼
                               US1: {T008, T009} → T010
                                  → T011 → T012 → T013
                                  → T014 → T015 → T016
                                  → T017 → T018
                                                    │
                                                    ▼
                           US2: {T019, T020, T021} → T022
                                  → T023 → T024 → T025
                                                    │
                                                    ▼
                               US3: {T026, T027} → T028
                                  → T029 → T030 → T031
                                  → T032 → T033 → T034
                                                    │
                                                    ▼
                              {T035, T036, T040}
                              T036 → T037 → T038 → T039
                              {T035, T039, T040} → T041
                              → T042 → T043 → T044
                              → T045 → T046
```

- Phase1 selects the integration base; Phase2 blocks every production correction.
  T005/T006 are a deliberate cross-story baseline rather than replacement story
  acceptance. All three defects need this barrier because one shared change can
  resolve more than one defect.
- US1 depends on the foundation. US2 depends on US1's shared preparation, and US3
  verifies the integrated boundary after both. Their acceptance tests are
  independently runnable; implementation is not falsely advertised as three
  disjoint source changes.
- Inside each story, test review/collection precedes the corresponding correction.
  Adding another production helper/script requires its own relevant test-first
  work; a newly discovered defect gets a genuine failing regression before repair.
- T035, T036 and T040 can run together after T034. T037/T038 wait for T036's
  reviewed failing runner/gate contract; T039 waits for that hook. T041 waits for
  all cross-cutting code/documentation. T042/T043 finish tracked reports and
  bookkeeping before the freeze. T044–T046 validate and record completion
  externally against the frozen SHA without modifying that candidate.
- Evidence-manifest and ledger edits have one coordinator; parallel test owners
  consume the shared inventory and submit coverage for sequential reconciliation.

### File ownership and parallel lanes

| Lane | Exclusive writable files while active | Dependencies / handoff |
| --- | --- | --- |
| Core tests | `crates/behavior-core/tests/strict_profile_replay.rs` | T005, T008, T019 and T026 are separate sequential assignments to the same owner. |
| Store tests | `crates/behavior-store/tests/strict_profile_replay.rs` | T006, T009, T020, T027–T029 are sequential assignments; no concurrent edits between stories. |
| Core implementation | `crates/behavior-core/src/read.rs`, `crates/behavior-core/src/invocation.rs` | One owner for T011–T012 and later required strictness corrections; stabilize checked hook before Store integration. |
| Store implementation | `crates/behavior-store/src/store.rs` | One owner for T013–T015 and T023/T031/T032 inspections/corrections; do not assign read and invocation edits concurrently. |
| Facade consumer | `consumer/tests/strict_profile_replay.rs` | T021 then T035; supported `behavior_engine` imports only. |
| Determinism | `scripts/tests/test_replay_determinism.sh`, `crates/behavior-store/examples/strict_profile_replay.rs`, `scripts/check-replay-determinism.sh`, `scripts/determinism-check.sh` | T036 → T037 → T038 → T039; serialize test-first edits/integration. |
| Coordination/docs | `tests/fixtures/replay/018/`, feature evidence/report, canonical docs | Finish fixtures before parallel tests; serialize coverage/log/report updates and final delivery validation. |

Parallel implementation can use separate agents once authorized and staffed;
file ownership and prerequisite barriers still apply. No runtime command may
claim coverage of another checkout or a partially integrated set of changes.

### Parallel example: US1

After T007, assign T008 to the Core-test owner and T009 to the Store-test owner.
Both read the frozen manifest/fixtures; neither edits shared evidence. Join at
T010, then serialize T011–T015 because the Store code depends on the checked
Core hook and shares `store.rs` between read/invocation paths.

### Parallel example: US2

After T018, assign T019, T020 and T021 to Core tests, Store tests and facade
consumer respectively. Join at T022 for reviewed coverage. Perform T023–T024
through the established source owners, then reconcile actual execution at T025.

### Parallel example: US3

After T025, assign T026 to Core tests and T027 to Store tests. T028/T029 continue
sequentially with the Store-test owner. Join at T030, preserve the one-owner
Store source lane, and collect all immutability/failure proof evidence at T034.

## Requirement and proof traceability

| Requirement | Principal tasks | Acceptance evidence |
| --- | --- | --- |
| FR-001 | T002, T008–T018, T033, T041 | Nine rows/24 supported cells plus collateral controls. |
| FR-002 | T011–T015, T017 | Recorded profile at read/inner-read execution. |
| FR-003 | T004, T008–T009, T012, T015–T017 | Frozen semantics, errors/refusals, evidence and identities. |
| FR-004 | T006–T007, T011, T019–T025 | Strict raw decoding before loss. |
| FR-005 | T008, T019–T020, T023, T025 | Applicable strictness, numeric/unknown-field and historical controls. |
| FR-006 | T004, T016–T017, T019, T025, T043 | Unchanged archives/hashes; formatting metamorphisms. |
| FR-007 | T014–T015, T026–T031, T034 | Exact Store/history/schema/behavior and typed facts. |
| FR-008 | T009, T012–T013, T029, T032–T035 | Fresh defaults; read-only authority and collateral controls. |
| FR-009 | T028, T030, T032, T034–T035 | Actually performed operational failures remain distinct. |
| FR-010 | T002, T008–T011, T017, T023 | Unsupported profile/admission refusal preserved. |
| FR-011 | T005–T007, T010, T017, T022, T025, T030, T034 | Three named RED/GREEN cases plus reviewed controls. |
| FR-012 | T002, T008–T010, T017, T025, T034, T041 | Required/executed matrix IDs agree; limits/N/A explicit. |
| FR-013 | T035–T039, T041, T043–T046 | Actual final gates/conformance/facade/revision/determinism. |
| FR-014 | T019–T025, T028, T032, T034–T035, T040 | Deterministic optional-string diff; compatible result/errors. |
| FR-015 | T012–T013, T016, T040, T042–T046 | Small correction; unchanged facade/hash/format; version effects. |
| FR-016 | T009, T014–T018, T026–T027, T031, T034, T041 | Conditional paired Core/Store semantic equivalence. |

| Success criterion | Required checkpoints |
| --- | --- |
| SC-001 | T007 RED; T017/T025 GREEN and passing controls. |
| SC-002 | T017/T025/T034 case coverage; T041 complete manifest reconciliation. |
| SC-003 | T004/T016/T017/T025/T043 historical bytes/identities and fresh defaults. |
| SC-004 | T027–T034 coordinate refusal, no mutation/dispatch. |
| SC-005 | T041/T043–T046 exact-revision collected gates/conformance/consumer evidence. |
| SC-006 | T019–T025/T028/T032/T034/T035 deterministic string reasons and operational errors. |

| Proof obligation | Principal enforcing / evidence tasks |
| --- | --- |
| P018-01 | T006–T007, T011, T019–T020, T023, T025 |
| P018-02 | T002, T008–T012, T017 |
| P018-03 | T004, T008–T009, T016–T017 |
| P018-04 | T014–T015, T026–T031, T034 |
| P018-05 | T006–T007, T009, T014–T018, T034, T041 |
| P018-06 | T009, T012–T013, T035, T043 |
| P018-07 | T012, T015, T026–T027, T034 |
| P018-08 | T021–T025, T028, T032, T034–T035 |
| P018-09 | T006, T029, T032, T034 |
| P018-10 | T002, T008–T010, T017, T019–T020, T023, T025 |
| P018-11 | T001, T015, T026–T027, T033, T043–T046 |
| P018-12 | T003–T007, T035–T039, T041–T046 |

T042 provides the targeted proof/closure assessment for all twelve obligations;
test success alone does not prove Backend honesty or universal Core soundness.

## Implementation strategy

1. Finish setup and all three fresh regressions before touching shared production
   code. Keep immutable audit evidence separate from new RED/GREEN evidence.
2. Complete US1 as the first reviewable increment: historical profile reproduction
   and full supported-domain preservation. Inspect the source invariant as well as
   test outcomes. This is an internal MVP checkpoint, not release acceptance.
3. Complete US2 and US3 with their independently runnable acceptance suites;
   preserve existing guarantees rather than inventing more remediation scope.
4. Finish facade/determinism coverage, reconcile actual matrix execution and
   perform only the targeted RC-002 re-audit. Retain conditional/open obligations.
5. Validate the exact integrated candidate with canonical gates and the existing
   pushed-revision consumer mode; bind the results and post-freeze task completion
   in an external immutable receipt. All stories and cross-cutting tasks are
   required for018 completion. Tagging, merging, publishing a Release and updating
   the ecosystem pin are separate delivery requests; a different published SHA
   requires its own exact-revision validation.

Use focused commits and explicit staging lists during implementation. Never
refresh historical goldens to hide changed meaning, bypass required gates,
silently count unsupported/N/A cells as passing or claim test-first compliance
from older audit logs. No implementation checkbox is complete at task generation.
