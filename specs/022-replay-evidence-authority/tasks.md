---
description: "Dependency-ordered implementation tasks for Core 022"
---

# Tasks: Replay Evidence Authority

**Input**: [spec.md](spec.md), [plan.md](plan.md), [research.md](research.md),
[data-model.md](data-model.md), [quickstart.md](quickstart.md),
[replay boundary](contracts/replay-boundary.md),
[validation matrix](contracts/validation-matrix.md) and
[proof obligations](contracts/proof-obligations.md).

**Branch / owner**: `022-replay-evidence-authority` in `behavior-ir-core`.
**Status**: Generated for implementation; every task below remains unexecuted.
**Dependency baseline**: frozen 018 `391017e536ff64ddf94999ec126bc71799952264`,
including 017. Name the actual starting revision in T001; dependency changes need
renewed integration validation. The 018 receipt does not attest 022.

**Tests**: Required by FR-013, the validation contract and Constitution III.
Write and review relevant tests and observe failure before the implementation
that makes them pass. Preserve actual RED evidence; green preservation controls,
missing targets, compile/setup failures and zero-test runs are not bug regressions.

**Organization**: Setup and a shared cross-story RED barrier, then US1 (P1), US2
(P1), US3 (P2), and cross-cutting review/frozen delivery. The shared barrier is
required because a Core/Store boundary correction can close multiple findings.

## Format and path conventions

- Every task uses `- [ ] Tnnn [P?] [USn?] Description with exact file paths`.
- `[P]` permits concurrent work in disjoint files **after** its phase prerequisites
  and listed barriers. It never overrides test-first or source ownership.
- Story labels appear only in their corresponding story phases.
- Source, fixture and evidence paths are relative to the owning Core repository
  root. New paths are planned targets, not existing execution evidence.
- Use the pinned Nix environment and existing crates/dependencies. No new Wire,
  record/hash/schema format, facade export, Backend method, verifier version,
  release action or ecosystem dependency override is in scope.
- One writer owns each shared Core/Store source boundary. A single coordinator
  updates the execution ledger/manifests after independent workers return evidence.

## Phase 1: Setup — baseline, compatibility and evidence inventory

**Goal**: Establish source custody and the explicit compatibility correction
before writing implementation code. This is an existing workspace; do not scaffold
a new project, dependency or build environment.

- [ ] T001 Document the actual implementation base in `specs/022-replay-evidence-authority/evidence/implementation-base.md`: inspect working directory, branch, remote, status and owning instructions, verify frozen 018 ancestry and integrated 017, record full starting SHA/source digest and pinned Nix/Rust/Z3 availability, and preserve unrelated work plus immutable 016/018 evidence. Explain any changed dependency before attributing new results to it.
- [ ] T002 Write `specs/022-replay-evidence-authority/compatibility-assessment.md` before production edits: describe both findings and the two old live non-match assertions, identify malformed-Snapshot retroactive state equality, justify the agreed phase-sensitive correction, address the same-minor-line “identical results” promise and the 018 patch precedent, and assess 022-alone patch versus combined-017 minor classification without choosing a version or publishing. Protected contract changes require reassessment rather than a silent exception.
- [ ] T003 [P] Create the reviewed case inventory in `tests/fixtures/replay/022/matrix.json` from `specs/022-replay-evidence-authority/contracts/validation-matrix.md`: enumerate R022-01–04, each concrete phase/claim/anchor member, inherited nine 018 rows and applicable boundaries, concrete U01–U10 cases, action/archive controls and protocol cases; include origin, module/profile, exact coordinate, expected result/identity, FR/SC/O022 links and explained N/A/capture limits. Expectations come from reviewed contracts, not automatic runtime blessing.
- [ ] T004 [P] Establish evidence conventions in `specs/022-replay-evidence-authority/evidence/execution-ledger.md` and initial custody in `specs/022-replay-evidence-authority/evidence/source-custody.json`: record commands, source/test digests, environment, collection/execution counts, statuses and log paths under `specs/022-replay-evidence-authority/evidence/runs/`; distinguish not-run, semantic RED, passing control, GREEN, failed, skipped and unavailable evidence. Reserve coverage entries for actually executed cases.

**Checkpoint**: T001–T004 complete. Compatibility and inventory are explicit;
no original audit, archive or 018 receipt has been rewritten.

## Phase 2: Foundational — shared baseline RED before replay correction

**Goal**: Retain all four independent counterexamples and the selected supplied-
Snapshot correction before any production change can make them disappear.
T008 blocks production work in every story.

- [ ] T005 Capture genuine baseline records and coherent setup inputs in `tests/fixtures/replay/022/records/` and `tests/fixtures/replay/022/stores/`, describe provenance in `tests/fixtures/replay/022/README.md`, and record digests in `tests/fixtures/replay/022/checksums.json` and `specs/022-replay-evidence-authority/evidence/source-custody.json`. Use real Store reads for input/context arrays and host invocations at the actual Culture#c1 coordinate for input/binding shape failures; capture malformed/contradictory documents-origin Snapshot refusals and legal controls. Never fabricate Store origin or retag historical v1 as v2.
- [ ] T006 [P] Add baseline legal controls in `crates/behavior-core/tests/replay_evidence_authority.rs`: reproduce the four original refusals and identities through supported Core paths, distinguish semantic object-input refusal from transport refusal, and cover intent/invocation/documents origins plus sparse accepted versus atomically rejected Snapshots. Consume the reviewed fixtures without editing manifests or Store tests.
- [ ] T007 [P] Add separate named tests in `crates/behavior-store/tests/replay_evidence_authority.rs`: `store_read_input_array_refusal_replays_original_request`, `store_read_context_array_refusal_replays_original_request`, `host_invocation_input_array_refusal_keeps_invocation_origin` and `host_invocation_binding_shape_refusal_keeps_invocation_origin`. Assert correct actual coordinates, passing standalone/ordinary/binding controls and unchanged authority before requiring Store match. Add new matching assertions for malformed and contradictory supplied-Snapshot decode refusals; retain existing limitation tests unchanged at this stage.
- [ ] T008 Review and execute T006–T007 on the T001 source using collection and exact-name commands in `specs/022-replay-evidence-authority/quickstart.md`; retain each command, semantic assertion failure, control result and source/test digest under `specs/022-replay-evidence-authority/evidence/runs/baseline/` and update `specs/022-replay-evidence-authority/evidence/execution-ledger.md`. Require exactly one executed test per named counterexample command and genuine RED for each finding and the supplied-Snapshot correction before production edits. If the base already fixes a case, trace its real earlier test-first evidence or report the unresolved compliance gap; never fabricate RED.

**Checkpoint**: Shared RED barrier established. A passing old limitation assertion
does not satisfy T008. Earlier failures in a future branch cannot be attributed
to the inspected implementation base without evidence.

## Phase 3: US1 — Reproduce the original rejected read (Priority: P1, MVP)

**Goal**: A real Store transport-refusal record uses its original request text,
while ordinary reads retain historical Store-derived values/facts and their checks.

**Independent test**: R022-01 and R022-02 match through Core and Store without
changing original bytes/identity. Semantic object-input refusals and valid reads
retain their evidence. False coordinates, invalid raw archives and substitutions
non-match; required backend failures retain their channel.

### Tests before read implementation

- [ ] T009 [P] [US1] Extend `crates/behavior-core/tests/replay_evidence_authority.rs` with read contract tests for exact selected raw text, missing/non-string `refused_request`, valid replacement text, v1 refusal limits, same-hash/different-module provenance, whole-record substitutions and semantic-refusal controls. Assert actual failure phase rather than trusting a label; preserve current full comparison and historical request rules.
- [ ] T010 [P] [US1] Extend `crates/behavior-store/tests/replay_evidence_authority.rs` with read anchor/schema/prevalidation and first-diff controls, foreign/wrong coordinates, raw-refusal versus ordinary request paths, actually performed backend failures and required Store-derived values/facts. Include co-occurring schema mismatch plus later history/snapshot fault so added checks cannot move that fault ahead of the existing prerequisite.
- [ ] T011 [P] [US1] Add facade-only US1 regressions and controls in `consumer/tests/replay_evidence_authority.rs`, using public `behavior-engine` and real Store operations; require original outcome/identity, no internal-crate imports and no fixture/coordinate transplantation. Consume baseline bytes without modifying their custody.
- [ ] T012 [US1] Review and collect T009–T011, run the meaningful read failure assertions and passing controls before T013, and retain results under `specs/022-replay-evidence-authority/evidence/runs/us1-red/` with `specs/022-replay-evidence-authority/evidence/execution-ledger.md`. Preserve T008's named finding evidence separately; classify already-green controls honestly.

### Read implementation and independent closure

- [ ] T013 [US1] Extend checked read preparation/private trace in `crates/behavior-core/src/read.rs` and `crates/behavior-core/src/eval.rs`, retaining exact original text, admitted source/profile and module binding. Enforce the model constraint: “Strict/profile-aware Core preparation with private fields. Existing preparation alone does not prove a transport refusal or Store truth.” Keep objects per operation, unpersisted and absent from supported facade exports; add no field to public `ReadExecution`.
- [ ] T014 [US1] Route Core standalone and Store-facing read reproduction through the same request/source/profile and complete comparison authority in `crates/behavior-core/src/read.rs`; preserve historical provenance and semantic argument construction. Enforce: “Progress used to omit obligations is usable only after complete comparison matches.” A string archive alone cannot prove a transport refusal or permit skipping ordinary body obligations.
- [ ] T015 [US1] Replace echo reconstruction in `Store::replay_read` in `crates/behavior-store/src/store.rs`, factoring bounded historical loading into `crates/behavior-store/src/store/replay_evidence.rs` where needed. Keep coordinate/schema and existing canonical snapshot prevalidation before read execution, preserve `bind_schema` prerequisite order, use unchanged raw text for verified transport refusal and actual Store values/facts for ordinary reads, and retain direct backend versus evaluator `FactError` behavior.
- [ ] T016 [US1] Correct only the live transport-limit expectation in `crates/behavior-store/tests/strict_profile_replay.rs` (`store_origin_transport_refusal_preserves_existing_reconstruction_limit`) to require Store match, retaining original Store provenance, case identity/label and read-only probes. Cite T002/T008; do not rewrite frozen 018 fixtures, reports or receipts to hide their previous outcome.
- [ ] T017 [US1] Run named R022-01/02, Core/Store read acceptance tests, existing read preservation targets and facade consumer checks from `specs/022-replay-evidence-authority/quickstart.md`; retain GREEN/control logs under `specs/022-replay-evidence-authority/evidence/runs/us1-green/` and reconcile actually executed US1 cells in `specs/022-replay-evidence-authority/evidence/matrix-coverage.json` and `specs/022-replay-evidence-authority/evidence/execution-ledger.md`.
- [ ] T018 [US1] Record the scoped read authority/identity/error review in `specs/022-replay-evidence-authority/evidence/us1-read-review.md`, mapping F-REPLAY-022-001, FR-001/002/007/009/010/013, SC-001/003 and O022-01/02/08/11/13 to exact code invariants, separate RED/GREEN runs and residual historical/backend premises. This is US1 closure, not final delivery or whole-kernel soundness.

**Checkpoint**: US1 is independently testable and is the MVP. Continue the full
022 scope; this checkpoint does not authorize release or waive US2/US3.

## Phase 4: US2 — Preserve the kind of attempted invocation (Priority: P1)

**Goal**: Replay keeps intent/invocation/documents origin, reproduces actual
component progress and reconciles accepted claims without promoting rejected data.

**Independent test**: R022-03/04 match at both boundaries, Store intent controls
remain matching, and malformed/contradictory documents-origin Snapshot refusals
match under true independent anchors. Sparse accepted snapshots retain availability;
false retained historical claims and forged phases reject. No body or commit
authority is invented for a pre-evaluation refusal.

### Tests before invocation implementation

- [ ] T019 [P] [US2] Extend `crates/behavior-core/tests/replay_evidence_authority.rs` for all origin branches and context discriminators, atomic Snapshot rejection, accepted archived Snapshot followed by resolution refusal, absent Snapshot capture after request-shape failure, sparse `INCOMPLETE_SNAPSHOT`, and resealed stage/source/outcome/document/profile substitutions. Test id-only resolver surrogates, metadata/nested evidence and exact module binding through existing replay operations.
- [ ] T020 [P] [US2] Extend `crates/behavior-store/tests/replay_evidence_authority.rs` with positive and negative demands for accepted typed values, explicit existence/used/fields/universes/incoming refs/queries, bound/unknown/wrong-type resolution and accepted-early/sparse cases. Include ordinary Store refusal prevalidation, including a resolution `UNKNOWN_CAPABILITY` with `DECODE` stage, exact decimal spellings, false self-consistent history, incomplete/uncheckable explicit queries and true/false anchors; do not require values from unarchived snapshots or fill missing values before reproducing the attempt.
- [ ] T021 [P] [US2] Extend `consumer/tests/replay_evidence_authority.rs` with R022-03/04, all three origin controls, malformed/contradictory supplied-Snapshot refusal and binding-refusal cases through the supported facade. Preserve original record bytes and distinguish absent archived evidence from false established claims.
- [ ] T022 [US2] Review and collect T019–T021 before T023, retain relevant semantic RED and passing controls under `specs/022-replay-evidence-authority/evidence/runs/us2-red/` and update `specs/022-replay-evidence-authority/evidence/execution-ledger.md`; link new claim/origin behavior to concrete assertions while preserving T008's separate finding and supplied-Snapshot RED evidence.

### Invocation interpretation, reconciliation and closure

- [ ] T023 [US2] Factor invocation preparation/reproduction into bounded helpers in `crates/behavior-core/src/invocation.rs` and new private `crates/behavior-core/src/invocation/replay.rs`. Preserve intent/invocation/documents origin, archive context, strict/profile-aware headers and deferred inner selection; enforce: “Private Core construction preserving existing replay check order. No freely constructible profile selector.” Bind to the same exact admitted Module; own requests and borrow resolution during execution without self-referential objects.
- [ ] T024 [US2] Trace actual established Snapshot/request/resolution/body components in `crates/behavior-core/src/invocation.rs` and `crates/behavior-core/src/invocation/replay.rs`, returning checked per-call progress only after original computation and full comparison. Enforce: “Rows or facts parsed locally before rejection are not individually promoted into established state.” An asserted `DECODE` stage cannot erase an accepted archived Snapshot, and intent/invocation archives lacking that Snapshot gain none.
- [ ] T025 [US2] Derive typed `ClaimDemand` and pure historical-answer comparison in `crates/behavior-core/src/invocation/replay.rs`, reusing existing query definitions/captures/registries and typed encoding helpers in `crates/behavior-core/src/eval.rs`. Enforce: “Core derives from accepted components and actual execution. A recorded stage cannot manufacture or erase it.” Check values, existence, used, explicit exhaustive universes, fields, incoming refs, query memberships and actual binding statuses; uncheckable explicit claims deterministically non-match. Id-only resolver surrogates create existence claims only: “Ordinary binding refusals do not gain values their record never retained.”
- [ ] T026 [US2] Centralize complete invocation envelope/nested identity/metadata application and sealing in `crates/behavior-core/src/invocation.rs` and `crates/behavior-core/src/invocation/replay.rs`, sharing it with standalone and checked Store hooks. Preserve existing canonical first-difference order, full evidence comparison and current/archived profiles; add no public progress field, semantic API or fresh archived selector.
- [ ] T027 [US2] Implement bounded historical answers in `crates/behavior-store/src/store/replay_evidence.rs` and factor needed canonical loaders from `crates/behavior-store/src/store.rs`: establish exact Store/history/state/schema anchoring, check surviving versions/declarations/content and explicit fact/membership truth, and rederive authoritative incoming/query source universes. Enforce: “Store loads from immutable canonical history; direct load errors remain fallible. Core performs semantic comparison.” Keep endpoint/header/backend premises explicit; no full-prefix audit or retroactive full parent validation on genuine original-document decode paths or accepted sparse archives, and no new Backend method or authoritative index. This does not waive existing ordinary Store-route prevalidation merely because its eventual refusal says `DECODE`.
- [ ] T028 [US2] Replace Store's intent-only decode archive replay in `crates/behavior-store/src/store.rs` with Core's checked route/progress/claim demands. Preserve Core whole-envelope reproduction before independent Store anchoring and existing prerequisite order. Rejected Snapshot data receives no semantic equality; accepted sparse archives use original availability and retained claims. Enforce: “Missing values/universes/facts mean unavailable evidence, not false facts.” Never substitute Store values into the original rejected/incomplete attempt.
- [ ] T029 [US2] Reconcile ordinary binding refusals against actual historical resolution in `crates/behavior-store/src/store.rs` using Core semantics, retaining existing actual Store snapshot prevalidation or equivalent exact committed validation evidence before resolution, including ordinary unknown-capability/unknown-binding/wrong-type/alias refusals regardless of recorded stage. Bound requires existence/retained evidence, unknown requires true absence, wrong type invents no existence claim, and a differing resolution or newly reachable body yields non-match before unexpected evaluation. Preserve the distinct accepted-sparse archive route and add no fake decoded value or inner record.
- [ ] T030 [US2] Integrate evaluated-read/current-action/archived-decision routes in `crates/behavior-store/src/store.rs` with Core envelope authority, preserving actual Store facts, checked nested read profiles, 017 `rederive_archived`/requested reproduction and Fresh-only authority guard. Remove Store's duplicate metadata resealing policy; replay must never invoke fresh bundle construction, dispatch or candidate validation promotion, even for archived ALLOW at head.
- [ ] T031 [US2] Correct the live malformed-Snapshot expectation in `crates/behavior-store/src/store/replay_tests.rs` (`decoded_document_refusal_replay_does_not_construct_commit_bundle`) to require matching refusal under independent anchoring. Retain genuine fresh ALLOW/bundle-positive control and zero replay construction, reference T002/T008, and leave frozen 018 custody intact.
- [ ] T032 [US2] Execute R022-03/04, full US2 origin/phase/claim controls, existing invocation/action/archive tests and facade consumer checks; retain results under `specs/022-replay-evidence-authority/evidence/runs/us2-green/`, update executed coverage/ledger, and write `specs/022-replay-evidence-authority/evidence/us2-invocation-review.md`. Map F-REPLAY-022-002 plus FR-003/004/005/009/011/012/017, SC-001/003/004/006 and O022-03–08/10/13 to invariants and separate evidence.

**Checkpoint**: US1 and US2 acceptance works independently. Store does not define
a second record interpreter; original availability, false truth and rejected data
remain distinct. Remaining compatibility/delivery evidence belongs to US3 and polish.

## Phase 5: US3 — Keep historical replay and Store integrity trustworthy (Priority: P2)

**Goal**: Demonstrate preservation of the complete supported domain, actual
historical truth, error precedence and read-only authority; account for every case.

**Independent test**: Every applicable 018 support cell retains its same-profile
meaning, including replay after writes/migrations; U01–U10 retain refusal/limits.
False anchors/claims, tampered enclosing/nested evidence and ambiguities reject.
Performed operational/evaluation errors keep their categories. Every outcome
leaves canonical state/history/committed command authority unchanged.

### Preservation, adversarial and authority tests

- [ ] T033 [P] [US3] Add/extend Core preservation and metamorphic/property cases in `crates/behavior-core/tests/replay_evidence_authority.rs`, consuming unchanged `crates/behavior-core/tests/strict_profile_replay.rs` controls and fixtures: cover all inherited supported rows and applicable boundaries, concrete U01–U08 combinations, v1 missing-capture/provenance/query limits, v2 evidence and root/nested/equal/escaped duplicate keys versus legitimate raw refused-string content. Preserve canonical identities under contracted formatting/order changes; never require v1/v2 equality.
- [ ] T034 [P] [US3] Add/extend Store historical integrity cases in `crates/behavior-store/tests/replay_evidence_authority.rs`: all applicable inherited cells, U09/history/schema/state/header/linkage substitution, later writes/migrations, equal state at different position and same-schema different read Behavior, false self-consistent absence/value/fact claims, exact decimal equality and reordered/corrupted index controls. Reuse canonical history rather than trusting indexes or reconstructing a second query evaluator.
- [ ] T035 [P] [US3] Extend read-only/bundle probes in `crates/behavior-store/src/store/replay_tests.rs` for matching, nonmatching, malformed refusal, semantic error and required backend failure, including current/archived action and command-producing ALLOW at head. Assert zero canonical mutation, fresh bundles, uncommitted certificate promotion and dispatch with a fresh positive bundle control. Add probe-confirmed actual head/history/schema/entity/fact failures, evaluator `FactError` controls, omitted-later-read and co-occurring schema/fault precedence cases; parent cache reconstruction is not candidate authority.
- [ ] T036 [P] [US3] Extend `consumer/tests/replay_evidence_authority.rs` with historical profile/inner-read, later-history, false-anchor, enclosing/nested substitution and no-authority controls through `behavior-engine` only. Require preserved optional string diff/results and facade-only dependencies; count no unsupported/N/A route as passing consumer compatibility.
- [ ] T037 [US3] Review and collect T033–T036 and execute their focused suites, retaining results under `specs/022-replay-evidence-authority/evidence/runs/us3-controls/` and `specs/022-replay-evidence-authority/evidence/execution-ledger.md`. Record green preservation controls as such. If a new in-scope failure requires a correction, retain its semantic RED before the smallest source change and rerun affected tests; do not silently widen the feature, weaken a check or fabricate test-first compliance.

### Fixture custody, deterministic protocol and coverage

- [ ] T038 [US3] Complete reviewed fixture members in `tests/fixtures/replay/022/records/`, `tests/fixtures/replay/022/stores/`, `tests/fixtures/replay/022/matrix.json` and `tests/fixtures/replay/022/checksums.json`: reconcile all expanded cases against the contract inventory, retain baseline and historical bytes/identities, annotate intentionally corrected Store expectations and retain original capture/provenance limits. Expected data is reviewed independently of optimized output, not refreshed to make tests pass.
- [ ] T039 [US3] Write and run test-first protocol negatives in `scripts/tests/test_replay_evidence_determinism.sh` before T040–T042: missing/extra/duplicate case IDs, wrong identities/profiles/coordinates/outcomes, empty/noncanonical output, unequal runs/exits, changed/missing fixtures and gate-hook failure propagation. Record actual assertions/statuses under `specs/022-replay-evidence-authority/evidence/runs/protocol-red/`; distinguish harness/setup absence from semantic rejection evidence and require meaningful failing behavior assertions before implementing each check.
- [ ] T040 [US3] Implement `crates/behavior-store/examples/replay_evidence_authority.rs` as a bounded actual Core/Store replay runner over the reviewed inventory, emitting nonempty canonical JSONL with case/boundary, origin/profile, coordinate, original identity and actual expected outcome fields. Preserve all existing 018 labels/hashes and use distinct 022 labels; do not print canned match results or bypass Store historical checks.
- [ ] T041 [US3] Implement `scripts/check-replay-evidence-determinism.sh` using the existing pinned environment: run the actual 022 example twice, require zero equal statuses and identical canonical bytes, verify fixture checksums and exact unique inventory membership plus identity/profile/coordinate/outcome fields, and fail deterministically on T039 protocol violations. Add no heavy dependency, private build override or historical golden rewrite.
- [ ] T042 [US3] Add the 022 checker to `scripts/determinism-check.sh` without replacing existing checks or weakening failure propagation; run `scripts/tests/test_replay_evidence_determinism.sh` and the real twice-run checker, retaining GREEN outputs under `specs/022-replay-evidence-authority/evidence/runs/protocol-green/` and `specs/022-replay-evidence-authority/evidence/execution-ledger.md`.
- [ ] T043 [US3] Reconcile `specs/022-replay-evidence-authority/evidence/matrix-coverage.json` against `tests/fixtures/replay/022/matrix.json` and actual collected test/runner output: required expanded cell IDs must equal attributed executed IDs, with commands/assertions/statuses for positives/negatives and explicit unsupported/N/A limits. Reject zero-test, ignored required cases, silently skipped boundaries, duplicate/unexpected inventory and inferred coverage unsupported by execution.
- [ ] T044 [US3] Finalize `specs/022-replay-evidence-authority/evidence/source-custody.json` and `tests/fixtures/replay/022/README.md`, verifying original fixture digests and provenance, preserved 017/018 archives/labels/reports/receipts, and the distinction between unchanged record bytes and new Store expected outcomes. Record exact source/fixture inputs; never attribute exploratory or regenerated bytes to an immutable earlier run.
- [ ] T045 [US3] Run the complete targeted compatibility/action/archive/error/authority suites and facade consumer checks in `specs/022-replay-evidence-authority/quickstart.md`; retain attributable results under `specs/022-replay-evidence-authority/evidence/runs/us3-green/` and write `specs/022-replay-evidence-authority/evidence/us3-history-review.md`, updating coverage/ledger. Map FR-004/006/007/008/010/011/012/017, SC-002/003/004/006 and O022-05–12 to results and residual premises; no whole-kernel soundness claim.

**Checkpoint**: All user-story acceptance and required deterministic coverage are
established on the current tracked implementation. Final delivery still requires
an independent scoped review and a frozen revision's gates/consumer receipt.

## Phase 6: Polish, targeted re-audit and immutable delivery evidence

**Goal**: Preserve an honest chain from contracts to invariants/source/tests, then
validate one immutable delivery candidate. No tagging, merging or publishing.

- [ ] T046 [P] Update `docs/persistence.md`, `docs/invocation.md` and `docs/versioning.md` with links to the 022 contract and explicit original-attempt/phase-sensitive replay correction, capture limitations and compatibility assessment. State that rejected payloads gain no historical authority and 022 alone follows the assessed patch policy; combined 017 remains minor. Add no transient release number, public contract expansion or rewritten historical promise.
- [ ] T047 [P] Perform a separate targeted source review and produce `specs/022-replay-evidence-authority/evidence/targeted-re-audit.md`: assess O022-01–15 and each F-REPLAY-022 finding independently, with exact code locations/inspected revision/evidence links; distinguish construction, code invariants, empirical support, documented assumptions and not-established obligations. Review semantic authority, trust/anchoring, canonical identity, runtime error order and zero replay authority; leave 016 and queued 019–021 findings unchanged.
- [ ] T048 Reconcile the re-audit, compatibility assessment, execution ledger, custody and coverage into `specs/022-replay-evidence-authority/implementation-report.md`; check protected facade/schema/record/hash/Backend/verifier surfaces and original fixtures against the baseline, recheck the constitution and document any unresolved obligation without calling it closed. Block freeze on unresolved in-scope correctness/trust/authority obligations; documented external premises remain explicit limits. Run local-link/format checks and `git diff --check` for feature/docs changes; include inspected source references and future final receipt location, not a self-referential containing-commit SHA.
- [ ] T049 Finalize all tracked implementation/fixtures/reports and verified pre-freeze task bookkeeping in `specs/022-replay-evidence-authority/tasks.md`; describe the external receipt convention in `specs/022-replay-evidence-authority/evidence/validation-location.md`. Select an absolute persistent directory outside the checkout, keyed by the eventual full candidate SHA, as `REPLAY022_RECEIPT_DIR`; reserve `receipt.json` and logs there. No task is checked off without its work/evidence, and T050–T053 stay unchecked in the frozen document until externally established.
- [ ] T050 Commit the finalized explicit file set and freeze its full SHA following `specs/022-replay-evidence-authority/evidence/validation-location.md`; verify clean tracked state and correct branch/base, then create `REPLAY022_RECEIPT_DIR/receipt.json` outside the checkout identifying repository, SHA, environment/toolchain, commands/status/log/checksum locations and pending final tasks. From this point record task completion externally; do not amend tracked source, reports or checkboxes to include final results.
- [ ] T051 Run `nix develop -c scripts/gates.sh` from the frozen candidate root and retain all eleven actual gate outcomes/stdout/stderr in `REPLAY022_RECEIPT_DIR/logs/` and `REPLAY022_RECEIPT_DIR/receipt.json`. Record repository/full SHA, Nix/Rust/toolchain identity, exact command/status and evidence checksums; failed, skipped, unavailable or inconclusive is not success. Do not weaken gates or claim a stopped runner executed its remaining gates.
- [ ] T052 Push the frozen `022-replay-evidence-authority` candidate when needed for Git fetch and run `nix develop -c scripts/check-consumer.sh --rev FULL_FROZEN_CANDIDATE_SHA` using `scripts/check-consumer.sh` from that exact checkout; save logs/statuses/checksums in `REPLAY022_RECEIPT_DIR/receipt.json`. The temporary consumer facade dependency, candidate fixtures/tests and demonstration CLI must all bind that SHA; no internal-crate or ecosystem override evidence substitutes for this check.
- [ ] T053 Verify unchanged frozen tracked state with `git diff --quiet`, `git diff --cached --quiet`, `git diff --check` and status, reconcile final gates/consumer and scoped finding closure, and finalize/seal `REPLAY022_RECEIPT_DIR/receipt.json` plus its log/checksum manifest with T050–T053 completion; completed evidence is not overwritten and a new candidate uses a new directory. Preserve failed/inconclusive outcomes honestly; any tracked change or different merge/squash/rebase/release SHA creates a new candidate requiring fresh final validation. Report validated branch/candidate and remaining limitations without merging, tagging, publishing or changing ecosystem pins.

**Freeze rule**: Completion of T050–T053 is external to the frozen checkout.
Their tracked checkboxes intentionally remain pending in that commit, and the
revision-bound receipt is the final authority for their execution status. This
prevents report/task edits from invalidating the revision being attested.

## Dependencies and execution order

### Phase and story dependencies

```text
T001 → T002 → (T003 || T004) → T005 → (T006 || T007) → T008
                                                           │
                        US1: T009–T018 ←────────────────────┘
                                      │
                        US2: T019–T032
                                      │
                        US3: T033–T045
                                      │
                (T046 || T047) → T048 → T049
                                      │
                       T050 → T051 → T052 → T053
                       frozen candidate / external completion
```

- Setup T001–T004 precedes fixture custody and test writing. T005 precedes the
  parallel baseline tests; T008 is the cross-story production RED barrier.
- Within US1, T009/T010/T011 run concurrently after T008. T012 reviews/runs them
  before T013–T016 production/live-expectation changes. T017 precedes T018 closure.
- US2 is independently testable but follows the US1 shared boundary stabilization
  for source ownership. T019/T020/T021 are concurrent after T018; T022 blocks
  T023–T031. Core T023–T026 fixes its interface before Store T027–T030 consumes it.
- US3 integration follows T032. T033/T034/T035/T036 have disjoint files; T037
  establishes their executed evidence before fixture/protocol/coverage work.
  T038 precedes T039; T039 precedes each relevant implementation in T040–T042.
- T043 needs completed test/runner execution; T044 verifies custody; T045 closes
  focused compatibility evidence before parallel documentation/re-audit T046/T047.
- T048/T049 complete tracked work before freeze. T050–T053 are serialized against
  one SHA, with external completion and no candidate mutation.

Do not reorder source changes ahead of a RED barrier to make parallel scheduling
easier. Earlier test writing in disjoint files is allowed after prerequisites;
required baseline evidence must remain attributable to the unchanged runtime.

### File ownership and parallel examples

Use at most one writer per shared source/test/manifest file. The Core writer owns
`read.rs`, `eval.rs`, `invocation.rs` and its private replay module. The Store writer
owns `store.rs` and its private evidence loader. A fixture/consumer writer owns
their disjoint files. The coordinator alone merges ledger/manifest results and
serializes final gates. A separate reviewer can assess completed code.

**US1 example**, after T008:

```text
Core writer:     T009 — Core read tests
Store writer:    T010 — Store read integrity/error tests
Consumer writer: T011 — supported-facade read tests
Coordinator:     T012 — consolidate RED/control evidence
Then:            T013–T018 in dependency order
```

**US2 example**, after T018:

```text
Core writer:     T019 — origin/progress/claim tests
Store writer:    T020 — historical truth/sparse tests
Consumer writer: T021 — facade invocation tests
Coordinator:     T022 — consolidate RED/control evidence
Then:            Core T023–T026 → Store T027–T031 → T032
```

**US3 example**, after T032:

```text
Core writer:     T033 — profile/strictness/property tests
Store writer:    T034 — historical integrity tests
Probe writer:    T035 — private authority/failure tests
Consumer writer: T036 — facade preservation tests
Coordinator:     T037 — collect and verify evidence
Then:            T038–T045 in dependency order
```

With four agent slots including the coordinator, run at most three worker tasks
at once, or let the coordinator own a disjoint task. `[P]` permits scheduling;
it does not require all parallel candidates to launch simultaneously.

## Implementation strategy and completion summary

**MVP first**: Complete setup and the shared RED barrier, then US1. Demonstrate
R022-01/02 and read preservation independently. Do not stop the authorized full
022 implementation at MVP or treat that checkpoint as release readiness.

**Incremental delivery**: Add US2 origin/progress/claim correction, then US3
compatibility/integrity/determinism evidence. Review narrowly scoped findings,
finish tracked work, and validate the frozen candidate. No general replay/IVM
runtime, language redesign, queued remediation or release is added.

| Group | Tasks | Count |
| --- | --- | --- |
| Setup | T001–T004 | 4 |
| Foundational RED barrier | T005–T008 | 4 |
| US1 — original read refusal | T009–T018 | 10 |
| US2 — invocation origin/phase | T019–T032 | 14 |
| US3 — history/integrity | T033–T045 | 13 |
| Cross-cutting / frozen delivery | T046–T053 | 8 |
| Total | T001–T053 | 53 |

Sixteen `[P]` tasks form independent-file opportunities at their stated barriers.
All FR-001–017 and SC-001–006 are covered by the tasks and O022-01–15 closure
contract. A completed finding needs invariants plus attributable evidence, not
only green test counts. Keep incomplete obligations explicit.

## Requirement traceability

These are planned coverage links, not executed evidence. T043 records actual
case execution; T047 independently assesses obligations and their residual premises.

| Requirement | Implementation / evidence tasks | Proof obligations |
| --- | --- | --- |
| FR-001 | T013–T015, T023–T030, T018/T032/T047 | O022-01 |
| FR-002 | T005–T014, T016–T018 | O022-02 |
| FR-003 | T007–T008, T019–T024, T028/T032 | O022-01/03 |
| FR-004 | T010/T015, T020/T024–T029, T034–T035/T045 | O022-04–07 |
| FR-005 | T019/T023–T024, T028–T029/T032 | O022-03/05 |
| FR-006 | T033–T034/T036–T038, T043/T045 | O022-09 |
| FR-007 | T009/T013–T014, T019/T023/T026, T033/T045 | O022-02/08 |
| FR-008 | T013–T015, T023–T030, T033–T036, T044/T046–T048 | O022-09/10/12 |
| FR-009 | T009/T014, T019–T020/T025–T026, T028–T030/T032 | O022-07/08 |
| FR-010 | T010/T015, T020/T027–T030, T033/T035/T045 | O022-11 |
| FR-011 | T030–T032, T035–T036/T045/T047 | O022-10 |
| FR-012 | T020/T024–T029, T034–T036/T045 | O022-04–07 |
| FR-013 | T004–T008, T009–T012, T019–T022, T039/T044 | O022-13 |
| FR-014 | T002/T016/T031, T044/T046–T048 | O022-12 |
| FR-015 | T043–T045, T049–T053 | O022-14 |
| FR-016 | T018/T032/T045, T047–T048/T053 | O022-15 |
| FR-017 | T019–T020/T023–T029, T034–T035/T045 | O022-03–05 |
| SC-001 | T005–T018, T019–T032 | O022-01–03/13 |
| SC-002 | T003/T033–T043/T045, T050–T053 | O022-09/11/14 |
| SC-003 | T009–T018, T019–T032, T033–T044/T046–T048 | O022-05–09/11/12 |
| SC-004 | T030–T032, T035–T036/T045/T047 | O022-10 |
| SC-005 | T001/T004–T008/T018/T032/T043–T045/T047–T053 | O022-13–15 |
| SC-006 | T007–T008/T019–T032, T034–T035/T045 | O022-03–06 |
