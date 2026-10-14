# Tasks: Query Evidence Domain Consistency

**Input**: [spec.md](spec.md), [plan.md](plan.md), [research.md](research.md), [data-model.md](data-model.md), [contracts/](contracts/) and [quickstart.md](quickstart.md).

**Branch**: `025-query-evidence-domains`

**Prerequisites**: The accepted clarification continues 025 as contract consolidation/regression assurance. Planning at `634023a6d504bac927192c964d945c7025b467c4` established 10/10 public reproduction executions and 214 existing tests passing. Those results are source-bound research, not completion of the tasks below or a later delivery attestation.

**Tests**: Explicitly required by the specification. Reuse equivalent existing tests and add only demonstrated coverage gaps. New preservation controls may be initially green; never manufacture a RED or claim a test-first production fix from a setup/oracle failure. Production code changes require a demonstrated contract violation and an actual failing behavioral regression before correction.

**Organization**: Four independently verifiable user stories in priority order, followed by final review and exact-revision delivery. Every task starts pending. Existing planned artifacts are verified/consolidated rather than recreated without need.

## Format: `[ID] [P?] [Story] Description`

- `[P]` marks independent file authoring/review within the ready group described below; it does not authorize concurrent validation against actively changing source.
- `[US1]`–`[US4]` identify the specification's user stories. Setup, foundational and final tasks have no story label.
- Paths are repository-relative unless explicitly outside the checkout. One owner writes each file. Logs and receipts record actual commands, statuses, collection and tested identities.

## Path Conventions

- Owning checkout: `/home/kalle/repos/behavior-ir-core-025`.
- Feature artifacts: `specs/025-query-evidence-domains/`.
- Only planned test edits: `consumer/tests/strict_bundle_evidence.rs` and `crates/behavior-store/tests/strict_bundle_evidence.rs`.
- Existing production, `schema/`, `tests/fixtures/`, `api/`, Cargo/toolchain/dependency files and frozen 023/024 artifacts remain protected by the baseline manifest. A newly demonstrated violation requires the spec's contract/proof reassessment before a production correction.
- Final receipt: `/home/kalle/validation-receipts/core-025/<candidate-sha>/receipt.json`, outside the checkout. T026–T029 complete there against the frozen revision; their tracked checkboxes intentionally remain pending.

## Phase 1: Setup (Shared Infrastructure)

**Purpose**: Establish the exact owning source, prerequisites and honest evidence custody without changing implementation.

- [x] T001 Capture HEAD/tree, current remote baseline, tracked/untracked state and SHA-256 identities of protected source/schema/fixture/public-surface/dependency files in `specs/025-query-evidence-domains/evidence/implementation-baseline.json`; verify the owning branch/pointer and distinguish the recorded planning source from any later integration revision. Preserve unrelated working changes.
- [x] T002 Verify the pinned Nix/toolchain and checked requirements checklist without rewriting reviewer-owned markers; define log/receipt identity, statuses, source-stability checks and the outside-checkout final receipt policy in `specs/025-query-evidence-domains/evidence/README.md`, including same-revision CLI/fixtures/actual Git dependency resolution and the T026–T029 immutable-candidate bookkeeping.

**Checkpoint**: Correct checkout and evidence policy established; no new dependency, production code or fixture change.

---

## Phase 2: Foundational (Blocking Prerequisites)

**Purpose**: Confirm current behavior and map existing coverage before any new test authoring. Depends on T001–T002 and blocks every user story.

- [x] T003 First verify issue #24's exact R1–R5 public reproduction against the current source through both `Store::invoke` and frozen `Store::evaluate`/commit, recording all ten case outcomes, resulting Mark values, history and authoritative evidence in `specs/025-query-evidence-domains/evidence/baseline-reproduction.json`; verify/reuse the sealed planning probe only if its actual source/input/manifest/lock/log identities match, otherwise rerun a temporary facade-only probe from `contracts/producer-consumer.md`. Exclude the documented missing-reads/reference-oracle mistakes from behavioral RED evidence.
- [x] T004 Inventory all FR-001–FR-014, SC-001–SC-006, AC-001–AC-013, PO-001–PO-008, N01–N12, six ordinary families and supported S01–S09/PC01–PC20 pairings against exact existing test names/paths in `specs/025-query-evidence-domains/evidence/coverage-inventory.json`; identify only the missing permanent Mark matrix and isolated live N05–N07 controls, or record equivalent existing coverage instead of adding duplicates. Distinguish actual producers, constructed codec controls and historical custody.
- [x] T005 Record the implementation scope decision and all eight proof-obligation dispositions in `specs/025-query-evidence-domains/evidence/scope-decision.md`, reusing the existing alternative-A codec/projection and preserving its exact hash/profile/phase behavior. Confirm the two-test-file plus feature-artifact change scope; if every required contract/test already exists, choose documented evidence-mapping-only completion. A passing reproduction does not justify production edits; a genuine remaining violation requires actual test-first evidence, and an unresolved canonical/profile/phase contract stops implementation before that correction.

**Checkpoint**: Mapping-first gate passes, real missing work is bounded and all historical/ordinary/bundle invariants remain defined. Never reinterpret an already-green case as a defect RED.

---

## Phase 3: User Story 1 - Commit valid query-reading actions (Priority: P1) — MVP

**Goal**: Permanently preserve the exact public reproduction, with state and evidence assertions rather than exception-only success.

**Independent Test**: Five fresh-Store R1–R5 cases × direct/frozen routes succeed through `behavior-engine` alone. Query cases observe a present empty Mark membership with the existing hash; constant-true cases do not fabricate query observations. Evaluation publishes nothing; one commit creates the exact Mark and preserves its archived bundle.

### Tests and contract consolidation

- [x] T006 [P] [US1] Add only the missing permanent `issue24_`-prefixed regression/helper in `consumer/tests/strict_bundle_evidence.rs`, parameterizing R1/R2 as Legacy/Wire 0.7/v1 and R3–R5 as CommandIntents/Wire 0.8/v2 with none policy. Use `User {name: string}`, `Doc {title: string}`, `Mark {doc: Id<Doc>, by: Id<User>}`, input `mid: Id<Mark>`, state `subject: Doc`, context `actor: Id<User>` and fresh `u1/d1/m1` identities. Retain required Wire 0.8 `reads`, `commands`, `command_effects` arrays. Preserve the data-model constraint: "`Id<T>` stores a typed identity and implies neither existence nor a reverse-reference edge." Reuse existing public APIs without new dependencies/exports or another full intent-route matrix.
- [x] T007 [P] [US1] Verify/consolidate the exact row/route/assertion contract in `specs/025-query-evidence-domains/contracts/producer-consumer.md`, keeping the permanent regression explicitly pending until executed and preserving: "Presence of a query with empty members still requires `hQ`; absence of all queries does not require a fabricated query/hash." Specify no precommit publication, ALLOW, typed checked bundle round trip, v2 full candidate preservation, exact resulting Mark values, one history advance and archived authoritative bundle equality; do not strengthen plain IDs to references or require cross-profile byte equality.
- [x] T008 [US1] After T006–T007 writers stop, collect the actual `issue24_` test filter and require nonzero intended collection, then run it under pinned Nix and retain case markers/assertion outcomes plus source/manifest/lock/command/log identities in `specs/025-query-evidence-domains/evidence/us1.json`; require all ten row/route combinations and their state/evidence assertions, not merely a zero Cargo exit code. If an equivalent existing regression was reused, bind its actual matching coverage instead.
- [x] T009 [US1] Finalize the public-reproduction portion of `specs/025-query-evidence-domains/contracts/coverage.md` from T008, distinguishing current performed evidence from the temporary planning probe and prior Orders controls; map FR-011/013, SC-001 and AC-001/011 to actual permanent cases without claiming a new production fix.

**Checkpoint**: US1 is independently demonstrable. It is the development MVP, not completion of all 025 integrity/historical/delivery obligations.

---

## Phase 4: User Story 2 - Reject false or damaged evidence (Priority: P1)

**Goal**: Close only the isolated live semantic-tampering coverage gaps, preserving local acceptance and the existing later refusal phase.

**Independent Test**: Genuine v2 bundles with one false but well-typed query claim retain local structural/hash acceptance and fail exact parent evidence comparison at commit. Full authority remains unchanged, backend commit count is zero and the independent genuine counterpart commits. Existing malformed/hash/member-forgery controls remain passing.

### Tests and validation

- [x] T010 [US2] Add the missing N05 live false-instance preservation control in `crates/behavior-store/tests/strict_bundle_evidence.rs`, reusing `query_setup`, `locally_accepted` and `authority`; keep canonical collection order, correct member hash and a resealed enclosing identity, prove local acceptance and assert the existing exact read-facts mismatch at commit, unchanged authority, zero commit calls and a genuine passing counterpart. Reuse equivalent coverage from T004 rather than duplicate it.
- [x] T011 [US2] Add only the missing N06 live definition/entity-binding control in `crates/behavior-store/tests/strict_bundle_evidence.rs` after T010, using separately labeled one-field subcases and the existing genuine-bundle/helper pattern; preserve unrelated locally valid evidence and assert the same independent commit-phase refusal/no-publication/positive-counterpart obligations rather than adding a new local string constraint.
- [x] T012 [US2] Add only the missing N07 live capture control in `crates/behavior-store/tests/strict_bundle_evidence.rs` after T011, selecting a genuinely captured query and separately labeling changed capture-read/value cases while retaining canonical bundle order, unique keys and correct membership integrity. Preserve: "A matching result hash still does not validate false definitions/captures/members/history." Establish local acceptance, reseal the outer identity and assert the existing commit refusal with unchanged authority and a genuine passing counterpart.
- [x] T013 [US2] After all Store test writers stop, collect/run the new controls and the existing complete Store `strict_bundle_evidence` target under pinned Nix, recording actual source-stable outcomes in `specs/025-query-evidence-domains/evidence/us2.json`; require `BUNDLE_INVALID: the read facts are not the ones the evaluation observed at the parent`, zero `commit_calls` and full `authority` equality for each false claim. Reuse existing malformed/hash/forged-member/signed-forgery tests; report the existing ignored fixture-capture writer separately and never refresh fixtures.
- [x] T014 [US2] Verify/consolidate `specs/025-query-evidence-domains/contracts/validation-phases.md` against the performed N05–N07 cases and existing negatives, retaining v2 integrity-before-projection and later state-dependent semantic refusal. Record why local acceptance is correct for well-typed false semantic claims; production must not be tightened to move those refusals earlier. Reassess actual behavioral failures before any production correction.

**Checkpoint**: Hash consistency is still insufficient for semantic truth, and all added controls preserve the existing live trust boundary without new production logic.

---

## Phase 5: User Story 3 - Exchange evidence within its own domain (Priority: P2)

**Goal**: Consolidate explicit F/E domains, full typed closure and observation-preserving projection using existing contracts, code and tests.

**Independent Test**: All six ordinary families retain checked round trips and omission/empty distinctions; supported complete bundle claims retain typed integrity metadata/original identity and exact ordinary projection. Ordinary Facts still rejects bundle-only metadata; unsupported pairings remain unsupported. Existing actual-producer and projection suites provide the tests.

### Contract and evidence consolidation

- [x] T015 [P] [US3] Verify/consolidate the six-family products, exact checked item keys/types and ordinary typed equality in `specs/025-query-evidence-domains/data-model.md`, retaining "Every root family is optional.", "Missing observation keys mean unknown, not false or an empty result." and "Ordinary capture arrays retain their supplied order; this model imposes no new sorted/unique capture-read restriction on the ordinary parser." Preserve existing explicit-null values/open universe member payloads and distinguish omitted family versus `[]` normalization from missing query/universe-type observations; do not edit the ordinary codec/schema.
- [x] T016 [P] [US3] Verify/consolidate both full typed closure laws, exact projection and S01–S09/PC01–PC20 reuse in `specs/025-query-evidence-domains/contracts/producer-consumer.md`. Retain "`universe` is forbidden here." and "Explicit null family arrays are invalid at this strict boundary." for strict Bundle Evidence, required per-query `result_hash`, the existing canonical member-object payload/domain and migration `read_facts == {}`. Keep bundle sorted/unique capture requirements separate from ordinary capture sequences; retain original claim/hash/signature subjects and no new public projection/type.
- [x] T017 [P] [US3] Consolidate exact existing closure/projection/strictness test bindings in `specs/025-query-evidence-domains/contracts/coverage.md`, reusing 023 producer laws/generated cases/39 captured projections, private Verify projection tests and 024 six-family/normalization controls; map FR-001–005/007, SC-002 and AC-002–007 with construction invariants, bounded empirical evidence and assumptions distinguished. Add no duplicate closure suite and regenerate no fixture.
- [x] T018 [US3] After T015–T017 writers stop, run the unchanged Verify `strict_bundle_evidence`, `strict_bundle_compatibility`, `facts_witness_schema` and private `governance::trusted::bundle_evidence` targets; bind actual collection/status/log/source identity and the matching already-run Store producer cases from T013 in `specs/025-query-evidence-domains/evidence/us3.json`. Reuse an existing same-source execution only with its actual identity; verify complete typed evidence/original claims and independent ordinary projection, rather than serializer self-agreement or schema acceptance as truth.

**Checkpoint**: Ordinary Facts and Bundle Evidence are explicit distinct domains; closure and projection do not grant semantic truth or commitment authority.

---

## Phase 6: User Story 4 - Preserve history and enable consumer adoption (Priority: P2)

**Goal**: Retain supported recorded semantics, canonical identities and refusal phases, with honest adoption guidance for Approval.

**Independent Test**: Existing historical/profile/replay/governance controls preserve their original bytes/signatures/outcomes and v1 decode-then-commit behavior; v2 integrity remains before projection. The supported public consumer uses the same-source CLI where required. Adoption notes permit a release containing the existing 023 correction without evidence stripping or profile downgrade.

### Compatibility and integration

- [x] T019 [P] [US4] Finalize the compatibility-axis and historical-phase mapping in `specs/025-query-evidence-domains/contracts/validation-phases.md` for candidate serialization/hash/signatures, historical v2 interpretation, ordinary serialization, governance, replay, public schemas and error phase/category/precedence. Preserve v1's deferred checks, v2's local ordering, migration "`read_facts` is exactly `{}`", H01–H03 custody, labeled K01/K02 codecs and independent 018 read profiles; no new support cell or regenerated archive.
- [x] T020 [P] [US4] Update `specs/025-query-evidence-domains/quickstart.md` to the actual permanent test names and current evidence locations, retain same-source CLI/fixtures and recorded-profile expectations, and document replacing Approval's known-bug test only upon adoption of an actually delivered compatible Core release, including one carrying 023. Select no numeric release, tag, publication, Model workaround or ecosystem dependency edit.
- [x] T021 [US4] After T019–T020 writers stop, execute or verify reusable same-source historical Store/Verify `strict_bundle_compatibility` results, build the owning `behavior-cli`, and run the existing public consumer `strict_bundle_evidence` target including signed archive/recovery/replay/command and CLI cases; retain exact source/CLI/fixture/status/log identity and recorded phases in `specs/025-query-evidence-domains/evidence/us4.json`. Do not use a stale `BEHAVIOR_BIN`, old logs as current evidence, or replay success as fresh authority.
- [x] T022 [US4] Complete the FR-008–010/013, SC-004/006 and AC-008–010/013 mappings in `specs/025-query-evidence-domains/contracts/coverage.md` from T021 and the protected baseline comparisons, recording unchanged canonical bytes/hashes/signatures and independent governance/concurrency/no-publication obligations. State that Core validation and consumer-readiness notes do not perform publication, adoption or whole-Core soundness closure.

**Checkpoint**: All four stories have scoped implementation/validation evidence; final candidate assurance remains mandatory.

---

## Phase 7: Polish & Cross-Cutting Concerns

**Purpose**: Review every obligation, finalize tracked evidence before freeze and validate the exact pushed candidate. Depends on all four stories.

- [x] T023 Review the actual diff, every FR/SC/AC/PO/N category and constitution principle against existing plus new evidence in `specs/025-query-evidence-domains/evidence/review.md`; verify only justified feature/test paths changed, prior 023/024 artifacts and protected production/schema/fixture/dependency/public-surface identities remain unchanged, and no current production fix, universal proof or test-first RED is falsely claimed. Resolve scoped findings before freeze.
- [x] T024 Finalize `specs/025-query-evidence-domains/implementation-report.md` with actual story results, mathematical contract/evidence mapping, compatibility and adoption limits, and performed versus pending final checks; bind commands/logs/test collection/source identities without embedding the report's own containing-commit SHA or changing old receipts. Preserve the evidence-mapping-only outcome if equivalent existing coverage made additions unnecessary.
- [x] T025 Verify `specs/025-query-evidence-domains/tasks.md` bookkeeping and the finalized quickstart/report links, run `nix develop -c cargo fmt --check` and `git diff --check`, and record pre-freeze verification in `specs/025-query-evidence-domains/evidence/pre-freeze.json`; mark T001–T025 only after their actual work/verification and leave T026–T029 pending in tracked text. If a formatting/source correction occurs, rerun affected validation before freezing; do not alter reviewer-owned checklist markers or final-gate scripts.
- [ ] T026 Commit/push the explicit finalized feature/test file list, verify clean tracked source and capture exact SHA/tree as `core025_candidate_sha`, then initialize `/home/kalle/validation-receipts/core-025/<candidate-sha>/receipt.json` with repository/source/report/environment identities and T026–T029 statuses. Freeze the owning checkout; perform no tagging/publication or tracked edits afterward.
- [ ] T027 From that exact frozen checkout run unchanged `nix develop -c scripts/gates.sh` and retain complete statuses/logs/toolchain/source identities in `/home/kalle/validation-receipts/core-025/<candidate-sha>/receipt.json`; no weakened/skipped mandatory gate, dependency override or actively edited source. A failure requires its real resolution and a new candidate where tracked changes are necessary.
- [ ] T028 From the same unchanged checkout run `nix develop -c scripts/check-consumer.sh --rev "$core025_candidate_sha"` using the exact pushed SHA and own CLI/fixtures; retain actual temporary Cargo manifest/lock Core Git resolutions, command/environment/status/log identity before cleanup in `/home/kalle/validation-receipts/core-025/<candidate-sha>/receipt.json`. Verify every resolved Core package points to the captured candidate, not another source or published pin.
- [ ] T029 Verify and seal `/home/kalle/validation-receipts/core-025/<candidate-sha>/receipt.json`, binding final T026–T029 completion, logs/source/report/CLI/dependency digests, local HEAD/tree/remote identity and unchanged source since freeze; report scoped completion separately from merged/released/adopted state. Keep tracked final checkboxes unchanged; a different subsequent tracked/merge/release SHA needs its own applicable final checks.

---

## Dependencies & Execution Order

### Phase Dependencies

- Setup T001 → T002 precedes foundational T003 → T004 → T005.
- All story work requires the mapping/scope gate T005. The default priority sequence is US1 → US2 → US3 → US4; stories reuse the same foundations and are independently verifiable.
- US1: `{T006,T007}` → T008 → T009. The two authors own different files and neither requires an unfinished result from the other.
- US2: T010 → T011 → T012 → T013 → T014. All three test authors modify the same existing Store file, so they are sequential.
- US3: `{T015,T016,T017}` → T018. Three independent documentation files; all authors finish before validation.
- US4: `{T019,T020}` → T021 → T022. Independent compatibility and quickstart documents; run integration only after both finish.
- Final sequence: T023 → T024 → T025 → T026 → T027 → T028 → T029. Freeze after all tracked edits and before final gates.

```text
T001 → T002 → T003 → T004 → T005
                                  ↓
                         {T006, T007} → T008 → T009        US1 / development MVP
                                                  ↓
                      T010 → T011 → T012 → T013 → T014     US2
                                                          ↓
                              {T015, T016, T017} → T018     US3
                                                          ↓
                                    {T019, T020} → T021 → T022  US4
                                                               ↓
                           T023 → T024 → T025 → T026 → T027 → T028 → T029
```

### Within Each Story

Complete coverage inspection before adding a test. Author requested regressions before any proposed production correction, and observe a genuine failing case if such a correction is needed. Already-green conformance controls stay honestly classified as preservation evidence. Stop source writers before collecting/running tests; one validation owner records stable source identities. Record reports after execution, never mark a test/gate complete in advance.

## Parallel Examples by User Story

- **US1:** After T005, T006 owns `consumer/tests/strict_bundle_evidence.rs` while T007 owns `contracts/producer-consumer.md`. Both can author in parallel. T008 begins only after both stop.
- **US2:** No parallel editing: T010–T012 share `crates/behavior-store/tests/strict_bundle_evidence.rs`. Existing helpers and exact assertion review are reused sequentially; T013 executes only after the file is stable.
- **US3:** After the US2 checkpoint, T015 owns `data-model.md`, T016 owns `contracts/producer-consumer.md`, T017 owns `contracts/coverage.md`. All inputs exist; the three reviews may run together. T018 follows the authoring barrier.
- **US4:** T019 owns `contracts/validation-phases.md` and T020 owns `quickstart.md`; they may run together after US3. T021 follows both, and T022 records the actual results afterward.

Seven tasks carry `[P]` in three ready groups. Final gates/Git consumer are sequential against one unchanged candidate, not parallel with mutations or a different candidate.

## Implementation Strategy

### MVP First (User Story 1)

Complete T001–T009: verify current source, map existing evidence, then establish permanent five-row/two-route public regression with exact result/evidence assertions. Demonstrate that supported query-reading commitment works without Approval or a workaround. This is a development checkpoint; all four stories and final assurance remain necessary for scoped 025 completion.

### Incremental Delivery

1. Establish source-bound prerequisites and mapping; choose reuse rather than duplicate existing contracts/tests.
2. Preserve the exact public reproduction, then isolate live semantic tampering without moving its refusal phase.
3. Consolidate F/E closure, projection, family/null/order restrictions and existing support routes using actual tests and clear proof limits.
4. Verify historical/profile/identity/governance behavior and document separate consumer adoption.
5. Review/finalize tracked evidence, freeze one pushed candidate, execute unchanged owning-revision gates/Git consumer and seal the external receipt.

No additional production/model/schema abstraction is presumed. An unresolved compatibility or semantic contract returns to clarification/planning before implementation; passing current behavior permits docs/tests or evidence-mapping-only completion. Any real production correction requires a demonstrated violation, a failing behavioral regression and fresh affected/final evidence.

### Immutable-Candidate Completion Bookkeeping

All generated task checkboxes start unchecked. T001–T025 may be marked only after actual performed/verified work. T026–T029 occur after the last tracked commit: their completion is recorded externally against the exact SHA while tracked markers remain pending. That receipt establishes their completion without changing the checkout or embedding its own containing commit identity. A post-freeze tracked edit invalidates exact-candidate assurance and requires a new freeze and applicable final checks.

## Requirement and Acceptance Traceability

| Obligation | Principal tasks |
| --- | --- |
| FR-001 domain separation | T004–T005, T015–T018 |
| FR-002 closure/projection | T004, T015–T018 |
| FR-003 ordinary strictness | T015, T017–T018 |
| FR-004 strict bundle | T004–T005, T013–T018 |
| FR-005 required query hashes | T006–T008, T013, T016–T018 |
| FR-006 semantic integrity | T010–T014, T021–T023 |
| FR-007 six ordinary families | T004, T015–T018 |
| FR-008 historical profiles | T019–T023 |
| FR-009 canonical identities | T001, T008, T013, T016, T019–T023 |
| FR-010 phases/no publication | T008, T010–T014, T019–T023 |
| FR-011 public reproduction | T003, T006–T009 |
| FR-012 N01–N12 | T004, T010–T014, T017–T018, T021–T023 |
| FR-013 ecosystem independence | T006–T009, T020–T024 |
| FR-014 bounded consolidation | T004–T005, T023–T025 |
| SC-001; AC-001/011 | T003, T006–T009 |
| SC-002; AC-002/003/007 | T015–T018 |
| SC-003; AC-004/005/006 | T010–T014, T017–T018 |
| SC-004; AC-008/009/010 | T019–T023 |
| SC-005; PO-001–PO-008 | T004–T005, T015–T023 |
| SC-006; AC-012/013 | T020–T029 |
| N01–N04 | Reused owning controls via T013/T018; map T004/T017 |
| N05/N06/N07 | T010/T011/T012 respectively, verified T013–T014 |
| N08/N09/N12 | Existing forged-member/history controls via T013/T021; map T017/T022 |
| N10 | Existing ordinary decoder control via T018 |
| N11 | Existing recorded-profile/format/upgrade controls via T018/T021 |
| Exact final delivery assurance | T026–T029, external receipt |

## Notes

- Generated total: **29 tasks**. US1: **4**, US2: **5**, US3: **4**, US4: **4**; setup/foundational/final: **12**.
- This generation command executes no implementation task, changes no test/production source and claims no new test/gate result.
- Existing planning evidence remains intact and source-bound. Do not regenerate old fixtures, reinterpret historical artifacts, mark reviewer-owned checklists or promote bounded tests to universal proof.
