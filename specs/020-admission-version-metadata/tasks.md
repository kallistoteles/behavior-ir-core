---
description: "Dependency-ordered implementation tasks for Core020"
---

# Tasks: Accurate Admission Version Metadata

**Branch**: `020-admission-version-metadata` | **Generated**: 2026-10-13

**Input**: [spec.md](spec.md), [plan.md](plan.md), [research.md](research.md), [data-model.md](data-model.md), [reporting contract](contracts/admission-reporting.md), [validation contract](contracts/compatibility-validation.md), [quickstart.md](quickstart.md).

**Tests**: Required by FR-008, the plan and the Core constitution. Author/review assertions, collect and observe behavioral RED before production edits. Previously correct guards are passing characterization controls; never invent a failure or claim that later tests establish earlier test-first compliance.

**Organization**: Three user stories in priority order. The private version authority serves US1/US2/US3; its shared metadata/refusal tests are authored in the earliest story so both known defects have actual RED before any production change. US2 reuses those tests for its independently testable diagnostic correction.

## Format and path conventions

Every task is `- [ ] Tnnn [P?] [USn?] Description with file path`. `[P]` means eligible after its common prerequisites, with different files and no sibling dependency. Paths are relative to the owning `behavior-ir-core` root unless explicitly absolute. Proposed evidence files are implementation outputs, not evidence created by task generation.

Use existing pinned Rust/Nix tools and canonical scripts. No dependency, schema, fixture, public-surface or ecosystem pin changes are planned. Preserve unrelated work and the built-in requirements checklist's historical review prose.

## Phase 1: Setup

**Purpose**: Establish the exact source, scope and evidence custody without adding infrastructure.

- [X] T001 Confirm the Core remote/branch, clean or preserved unrelated work, ancestry of inspected base `af8a0364170a82899fb69c7e18b151ddea8ebdd3`, actual implementation-base SHA, locked Rust/Nix identities and accepted D-020-001; record them in `specs/020-admission-version-metadata/evidence/implementation-base.md` without claiming that parent/audit validation attests020.
- [X] T002 Define command/status/log/source custody, matrix-row identifiers, test collection records and outside-checkout final receipt location in `specs/020-admission-version-metadata/evidence/README.md`; keep existing scripts and review-owned checklists unchanged (after T001).

## Phase 2: Foundational characterization

**Purpose**: Preserve the existing decoder/reference behavior needed by all stories.

- [X] T003 Capture source-bound baseline metadata, generic unsupported-string refusals, the five successful version-specific admission witnesses from research R3, their canonical serialization/item/BehaviorHash/SchemaHash outputs, and frozen schema/fixture/public-surface digests in `specs/020-admission-version-metadata/evidence/baseline.json`; use the named unchanged source and its own CLI, not the actively edited test checkout or old Core016 release (after T002).
- [X] T004 Add/review independent ad hoc read-document gate characterization in `crates/behavior-core/tests/read_wire.rs`: "Ad hoc read documents continue to accept only Wire 0.7"; check the existing witness at0.7 and refusals at0.4/0.5/0.6/0.8, retain minimum-feature/strict controls, collect/run them in Nix and record their actual passing baseline in `specs/020-admission-version-metadata/evidence/controls.json` (after T003; no production edit).

**Checkpoint**: Baseline evidence and separate document-kind boundaries are established. No new admission policy has been implemented.

## Phase 3: User Story 1 — Select a version the engine actually admits (P1; MVP)

**Goal**: Correct module negotiation without widening admission or changing profile behavior.

**Independent test**: Both facade reporting functions and CLI metadata advertise exactly0.4–0.8; one existing valid witness for each version admits, excluded versions still refuse, and decoder guards remain intact. Metadata/control assertions can pass while the known US2 support-clause assertions remain explicitly pending.

### Tests and shared test-first barrier

- [X] T005 [P] [US1] Extend `crates/behavior-core/tests/versions.rs` with independent expected-set and legal-witness assertions, and correct its old accepted-list expectation; quote/enforce "Exactly five entries in existing ascending version order; every entry has a legal version-specific admission witness." Also author shared generic-refusal regressions for the complete clause including0.8, excluded0.1/0.2/0.3, unknown/noncanonical strings from V020-01, supplied spelling, unchanged prefix/suffix, repeated output, missing/non-string/duplicate headers and supported invalid bodies. Group tests as `admission_metadata_*`, `admission_refusal_*` and `admission_controls_*` for staged execution (after T004).
- [X] T006 [P] [US1] Extend `crates/behavior-cli/tests/cli_engine_info.rs` with the same independent module witness/negative matrix, corrected old accepted-list expectation, canonical repeated outputs and exact existing status0/status2/error-category assertions; add shared `admission_refusal_*` clause tests and metadata/control groups, using temporary files without rewriting fixtures or merely comparing two delegates (after T004).
- [X] T007 [P] [US1] Create `consumer/tests/admission_versions.rs` using only `behavior-engine` to exercise both reporting functions, actual witness admission, the shared refusal/negative matrix, independent expected values and preserved metadata shape/inventories; use the same metadata/refusal/control test groups. Narrowly correct only the accepted-list expectation in `consumer/tests/resulting_state_validity.rs`, retaining its unrelated assertions (after T004).
- [X] T008 [US1] Review the T005–T007 assertions against C020-01–04/V020-01, collect all tests and run the three targets with the existing production source; record actual metadata and support-clause failures, passing legal/guard controls, source/test-overlay identity, commands and logs in `specs/020-admission-version-metadata/evidence/red.json`. Both known bugs must have behavioral RED; compilation/setup failures do not qualify (after T005–T007).

### Implementation and focused integration

- [X] T009 [US1] Introduce the small ordered descriptor/closed-profile authority in `crates/behavior-core/src/wire.rs` and use its exact lookup for decoder membership/configuration: "Keep the descriptor/table private or crate-private, immutable and nonempty. Keys are unique; membership is exact-string equality, with no trimming, numeric ranges or fallback." Preserve all five existing flag configurations, header/duplicate-key precedence, Wire0.8 strict/length handling and explicit CommandIntents versus Legacy selection; correct the stale0.4-only comment, without changing historical constants or the ad hoc read decoder (after T008).
- [X] T010 [US1] Derive only `accepted_wire_ir` from that authority in `crates/behavior-core/src/lib.rs`; preserve "The established `wire_ir` JSON field remains `0.1–0.7` on the inspected base" and all other metadata values/field shapes. Leave facade/CLI production delegation and `api/engine-surface.txt` unchanged (after T009).
- [X] T011 [US1] Run metadata/control groups plus corrected existing metadata goldens and read/command/minimum-profile controls using `quickstart.md` targets; record actual US1 GREEN and any explicitly still-failing US2 clause cases in `specs/020-admission-version-metadata/evidence/us1-green.json`. Check all five real witnesses, exact ordering/no duplicates and malformed/body/strict gate preservation; do not claim full-target or feature acceptance while diagnostic tests remain red (after T010).

**Checkpoint**: US1 is independently demonstrated. The three production edits remain parts of one feature delivery; this MVP is a development checkpoint, not a releasable complete020.

## Phase 4: User Story 2 — Receive a complete unsupported-version explanation (P1)

**Goal**: Make generic refusal support text agree with actual fresh-module acceptance while preserving all other refusal observations.

**Independent test**: Each covered excluded/unknown string preserves its supplied spelling/category/status and deterministically reports exactly the metadata set including0.8. Structural/body/minimum-feature cases retain their existing distinction.

### Tests

- [X] T012 [US2] Review/collect the shared `admission_refusal_*` cases authored before production in T005–T007 and run them against the post-US1 source; record the remaining stale-clause behavioral RED in `specs/020-admission-version-metadata/evidence/us2-red.json`. Assert only the clause between "this engine accepts" and "only", not every version-looking token in migration guidance; verify unchanged category/status/supplied spelling and structural/minimum-feature controls (after T011).

### Implementation and integration

- [X] T013 [US2] Render the generic UnsupportedVersion support clause from the same ordered private authority in `crates/behavior-core/src/admit/mod.rs`, producing C020-03's exact five-version clause; preserve "Only the generic support-list clause projects `keys(T)`; the existing rounded-arithmetic explanation remains unchanged", existing error structure/supplied value, minimum-feature/command refusals and read-document domain. Add no contextual error, public formatter or permissive parsing (after T012).
- [X] T014 [US2] Run complete Core `versions`/`read_wire`, CLI `cli_engine_info` and facade `admission_versions` targets, including repeated canonical output and every V020-01 row; record collected names, statuses, boundary coverage and actual GREEN in `specs/020-admission-version-metadata/evidence/us2-green.json`. Confirm C020-01–04 agreement and that no row was skipped or left uncollected (after T013).

**Checkpoint**: The decoder and both reporting projections agree; US1/US2 targets pass together under existing public shapes and refusal algebra.

## Phase 5: User Story 3 — Retain historical compatibility without claiming fresh acceptance (P2)

**Goal**: Establish unchanged identities/history and disclose the existing-contract consumer correction.

**Independent test**: Historical inventories/assets, successful semantics, serialization/hashes and supported same-profile replay retain the integrated baseline. Consumer adaptation and minor-class assessment are explicit; ecosystem published pins remain untouched.

### Preservation tests and comparison

- [X] T015 [P] [US3] On unchanged post-US2 source, run existing admission/profile/hash/schema/serialization/read-golden/command identity controls named in `quickstart.md`, including `crates/behavior-core/tests/{ir_0_4,ir_0_5,ir_0_6,hash_vectors,schema,serialize,read_goldens,command_admission,command_identity,legacy_intents_frozen}.rs`; record exact commands/statuses and frozen-file/public-surface comparison with T003 in `specs/020-admission-version-metadata/evidence/identity-controls.json`. Do not regenerate golden outputs (after T014).
- [X] T016 [P] [US3] Run existing same-profile historical replay controls in `crates/behavior-core/tests/{strict_profile_replay,replay_evidence_authority,replay}.rs` and `crates/behavior-store/tests/{strict_profile_replay,replay_evidence_authority}.rs`; record actual commands/statuses/profile coverage in `specs/020-admission-version-metadata/evidence/replay-controls.json`, without interpreting `wire_ir` as unrestricted historical replay support (after T014).
- [X] T017 [US3] Compare the baseline and candidate's successful admission/serialization/identities, unrelated metadata and error properties; allow exactly the corrected `accepted_wire_ir` and generic support-list differences. Record source-bound results and unchanged frozen schema/fixture/public-surface digests in `specs/020-admission-version-metadata/evidence/compatibility.json`; do not mask whole errors or require equality of intentionally changed conformance output digests (after T015–T016).

### Consumer contract and documentation

- [X] T018 [P] [US3] Update `docs/versioning.md` with current fresh-module versus historically known meanings, the corrected five-version list, retained historical0.1–0.7 array, unchanged fields/categories/statuses/identities and exact-text adaptation; preserve the historical release account and assess minor-class under the existing0.x policy without selecting a number, tag or publication (after T017).
- [X] T019 [P] [US3] Write `specs/020-admission-version-metadata/compatibility-assessment.md` inventorying the three corrected Core expectations and read-only ecosystem `python/tests/test_core_alignment.py`/`docs/versioning.md` against its actual declared published pin, plus uninspected external exact-text risk. Record how consumers adapt through a published corrected Core Release; change no ecosystem source, pin, asset, dependency or override (after T017).
- [X] T020 [US3] Map actual US1/US2/US3 evidence to FR-001–011, SC-001–005 and C020/V020 contracts in `specs/020-admission-version-metadata/implementation-report.md`; distinguish established controls, code invariants, actual test evidence and final checks still pending. State the scoped F-COORD-011/RC-004 disposition and preserve separate unresolved audit findings (after T018–T019).

**Checkpoint**: Scoped historical/consumer evidence is established. Final delivery requires the unchanged-candidate gates below.

## Phase 6: Polish and final revision validation

- [X] T021 Perform the targeted source/requirements review of private table lookup, decoder flags/error order, both projections, public boundary and future-version acceptance safeguards in `crates/behavior-core/src/{wire.rs,lib.rs,admit/mod.rs}`; retain concrete locations, review disposition and any resolved issues in `specs/020-admission-version-metadata/evidence/review.md`. A correction requires its relevant test-first work and fresh affected validation; close only RC-004 when justified (after T020).
- [X] T022 Check links/whitespace, requirement coverage and the executable `specs/020-admission-version-metadata/quickstart.md` scenarios, finalize `implementation-report.md`, migration/compatibility evidence and `specs/020-admission-version-metadata/tasks.md` bookkeeping for T001–T022; leave final-candidate checks explicitly pending, with no containing-commit SHA or fabricated success in tracked reports (after T021).
- [ ] T023 Commit/push the finalized candidate, verify clean tracked source and capture the exact SHA as `core020_candidate_sha`, repository and source/report identities for the external receipt specified by `specs/020-admission-version-metadata/evidence/README.md`; freeze that checkout before final execution and perform no tagging/publication (after T022).
- [ ] T024 From that exact frozen owning checkout run `nix develop -c scripts/gates.sh`; retain complete command/status/toolchain/log evidence in the outside-checkout receipt location declared in `specs/020-admission-version-metadata/evidence/README.md`, without changing canonical gates, tracked files or dependency resolution (after T023).
- [ ] T025 From the same frozen checkout and its own CLI run `nix develop -c scripts/check-consumer.sh --rev "$core020_candidate_sha"` using the exact pushed SHA captured in T023; retain the actual temporary manifest/lock Core Git resolutions before cleanup, commands/statuses/environment and logs in the external receipt declared in `specs/020-admission-version-metadata/evidence/README.md`. Do not substitute a stale `BEHAVIOR_BIN`, untracked dependency override or different consumer/fixture checkout (after T024).
- [ ] T026 Seal and verify the external revision-bound receipt, e.g. `/home/kalle/validation-receipts/core-020/<frozen-sha>/receipt.json`, binding repository/SHA, T023–T026 completion, all commands/statuses, actual dependency/CLI identity, pinned environment/toolchain and evidence locations; confirm no tracked changes since freeze and report scoped acceptance. Any subsequent tracked edit or different merge/release SHA requires fresh final validation (after T025).

## Dependencies and execution order

```text
T001 → T002 → T003 → T004
                     ↓
             {T005, T006, T007}
                     ↓
                   T008          shared metadata/refusal RED barrier
                     ↓
          T009 → T010 → T011      US1 implementation / focused checkpoint
                     ↓
          T012 → T013 → T014      US2 RED / diagnostic correction / full GREEN
                     ↓
                {T015, T016}
                     ↓
                   T017
                     ↓
                {T018, T019}
                     ↓
                   T020          US3 evidence / consumer checkpoint
                     ↓
T021 → T022 → T023 → T024 → T025 → T026
```

US1 begins after the foundational controls. Its shared test tasks cover both known reporting defects before any production edit. US2's implementation depends on the US1 authority and its own recorded failure. US3 compares the fully corrected candidate with the baseline; its documentation starts after validation writers finish. All three stories are mandatory for020 delivery.

## Parallel execution examples

### US1

After T004, T005/T006/T007 may author the Core, CLI and facade tests in parallel: distinct files, one writer each. Stop all writers, review/collect and run T008 before any production change. T009/T010 are dependent production edits and remain sequential. US2 clause failures remain explicitly pending at T011.

### US2

The Core, CLI and facade refusal assertions were authored in the early parallel group. T012/T013/T014 are sequential: RED, production edit, GREEN. No production or test-file editing runs alongside these executions; no false parallel task is marked.

### US3

After T014, T015/T016 may execute read-only validation on frozen source with separate logs/build environments; retain the same canonical metadata and Nix tooling. Complete both and T017 before any document writer starts. T018/T019 may then update distinct documents in parallel. No tests run against a checkout being edited.

## Implementation strategy and completion bookkeeping

1. Establish source-bound baselines and independent read guards.
2. Author the shared regressions, observe both bugs, implement US1 and demonstrate negotiation as the development MVP.
3. Complete US2 so the three-way accepted-set relationship holds. Complete US3 and targeted review before treating the fix as deliverable. No partial020 release is planned.
4. Finalize tracked execution evidence/tasks, freeze one pushed candidate and validate it using the existing gates and exact Git consumer. No new capability/document version or ecosystem update is needed for this feature.

**Immutable-candidate bookkeeping**: Current task generation marks nothing complete. During implementation, T001–T022 are checked only after actual work/verification. T023–T026 occur after the final tracked commit: keep their tracked markers pending and record actual completion/statuses against that exact SHA in the external immutable receipt. That receipt, together with the tracked pre-freeze evidence, establishes task completion without changing the checkout or embedding its own containing-commit SHA. Never mark a final check done before it runs. If tracked bookkeeping is changed afterward, freeze a new candidate and repeat T023–T026.

## Requirement and story traceability

| Scope | Tasks |
| --- | --- |
| US1; FR-001/002/004/008/011; SC-001/004 | T003–T011, T014, T021 |
| US2; FR-003/006/008; SC-002/004 | Shared T005–T008, then T012–T014 |
| US3; FR-005/007/009/010; SC-003/005 | T004, T007, T015–T020 |
| Final exact-revision assurance | T021–T026 |

**Generated totals**: 26 tasks; US1:7, US2:3, US3:6, setup/foundation/final:10. Seven tasks carry `[P]` in three ready groups. Task generation executes none of these tasks and is not passing implementation, test-first, runtime-gate or release evidence.
