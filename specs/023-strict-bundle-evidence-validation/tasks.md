# Tasks: Strict Bundle Evidence Validation

**Input**: Design artifacts in `specs/023-strict-bundle-evidence-validation/`.

**Prerequisites**: [spec.md](spec.md), [plan.md](plan.md), [research.md](research.md), [data-model.md](data-model.md), [bundle-evidence.md](contracts/bundle-evidence.md), [support-matrix.md](contracts/support-matrix.md), [validation-evidence.md](contracts/validation-evidence.md), [compatibility-assessment.md](compatibility-assessment.md), [quickstart.md](quickstart.md), and `.specify/memory/constitution.md`.

**Tests**: Required by FR-012/013, SC-001–006 and constitution III. Begin with a compiled, collected, asserting reproduction; the retained print-only diagnostic is discovery evidence. Every subsequent behavior correction requires its own asserting failure before implementation. Already-passing characterization/compatibility controls are evidence, not new REDs. Compiler errors, missing targets, skipped cases and timeouts do not establish test-first compliance.

**Organization**: Four user stories, in specification priority order, followed by targeted review and immutable-revision validation. US1 establishes a safe runtime checkpoint; US2–US4 complete the acceptance domain. All stories are required for feature delivery.

## Format and path conventions

Every task uses `- [ ] Tnnn [P?] [USn?] description with exact paths`. Paths are relative to the owning Core repository unless absolute. New paths are prospective. `[P]` means exclusive file ownership permits concurrent work once the task's stated prerequisites are satisfied; it never waives dependencies, test-first sequencing or a source freeze.

No new dependency, crate, public facade export, format/version, ecosystem override or release is required. Protect the ordinary Facts implementation, v1 dispatcher/replay, historical fixtures and all schemas except the two scoped current wrappers. The specification-quality checklist is review evidence, not implementation bookkeeping.

Evidence paths below are planned under `specs/023-strict-bundle-evidence-validation/evidence/`. Tracked reports link to retained runs and identify source revisions known when written. They never contain the final SHA of their own containing commit. Final tasks T060–T064 remain unchecked in the frozen tracked file; their completion is recorded externally against that exact SHA, following the approved immutable-receipt model.

## Phase 1: Setup

**Purpose**: Establish ownership, requirements and truthful source/evidence custody without production edits.

- [ ] T001 Confirm the `023-strict-bundle-evidence-validation` branch, Core remote, clean/unrelated work and frozen 019 ancestry `6ad357c7e9960ce6771fd435adcec9f8018fb7d6`; inventory protected implementation/schema/fixture/facade/dependency files and their digests in `specs/023-strict-bundle-evidence-validation/evidence/baseline-manifest.md`, distinguishing 019 implementation from its earlier merged specification PR.
- [ ] T002 [P] Bind every S01–S09 cell, PC01–PC20 path, H01–H03 archive and K01/K02 codec control in `specs/023-strict-bundle-evidence-validation/contracts/support-matrix.md` to the researched source and existing contracts; initialize `specs/023-strict-bundle-evidence-validation/evidence/coverage.md` with FR/SC/C023/P023 identifiers and prospective test names, without claiming unsupported Cartesian combinations or completed runtime evidence (after T001).
- [ ] T003 [P] Establish the run/custody protocol in `specs/023-strict-bundle-evidence-validation/evidence/README.md`: repository/revision or working manifest, test digests, collection, commands/statuses, toolchain, logs and mutation isolation; verify the retained dirty diagnostic at `/home/kalle/validation-receipts/core019-work/us3-conformance/`, classify it as discovery only, and reserve `/home/kalle/validation-receipts/core023/` for RED/working/final receipts (after T001).

## Phase 2: Foundational characterization

**Purpose**: Freeze the compatibility premises all stories depend on. Complete T004–T008 before story implementation; no production correction or wrapper schema change is allowed here.

- [ ] T004 Add and collect baseline characterization tests in `crates/behavior-store/tests/strict_bundle_compatibility.rs` using actual v1 query producer output; mutate correct/wrong/wrong-domain/malformed/non-string/missing result hashes, resealing unrelated enclosing identities where required, and record the original raw `CommitBundle::from_json` outcome followed by historical commit refusal and unchanged publication state (after T002/T003).
- [ ] T005 Extend `crates/behavior-store/tests/strict_bundle_compatibility.rs` with invalid v1 hash plus genuine earlier Store/transition/parent/head/time/schema/declaration defects and activated `record(p+1)`/head read failures after legal creation/evaluation; assert actual phase, code, selected cause and no publication. An uncalled hypothetical failing commit is not an outcome to reproduce (after T004).
- [ ] T006 [P] Verify H01–H03 custody, original record profiles and supporting manifests at their exact paths in `specs/023-strict-bundle-evidence-validation/contracts/support-matrix.md`; retain source/fixture digests and qualifications in `specs/023-strict-bundle-evidence-validation/evidence/historical-controls.md`. H01 is a structurally self-hashed legacy control; H02/H03 are pre017 decision 0.7, semantic profile 0.8; K01/K02 recognition is not genuine historical publication (after T002).
- [ ] T007 Run and retain collection plus baseline v1 characterization results from `crates/behavior-store/tests/strict_bundle_compatibility.rs` in `specs/023-strict-bundle-evidence-validation/evidence/v1-baseline.md` and external run logs; bind both tests and unchanged production source, and confirm ordinary Facts/read and legacy hash paths against the T001 manifest (after T005/T006).
- [ ] T008 Review and freeze the shared fixture/test contracts in `specs/023-strict-bundle-evidence-validation/evidence/baseline-manifest.md`: use private `conformance::orders`, `orders_seed`, `orders_history` for the exact nine-step reproduction, retain require:none separately from required authentication, and assign one writer per source/test file. Establish pinned-shell execution and the explicit test-only RED revision protocol (after T007).

**Checkpoint**: Baseline decoder/commit precedence and historical evidence are characterized. Source changes can now be justified against named premises.

## Phase 3: User Story 1 — Commit supported query-bearing transitions (P1)

**Goal**: Restore the real v2 workload through one private, fully checked bundle-evidence boundary while retaining v1 and non-query behavior.

**Independent test**: The exact normal-host v2 regression first fails at `BUNDLE_INVALID: INVALID_CANDIDATE: invalid observed facts`, then yields nine evaluation records, eight commits and head 8. V1, empty/nonempty query results, non-query actions and same-profile index controls succeed with their respective canonical identities. This checkpoint includes all local shape/order/hash checks; it is never an interim permissive parser.

### Tests first

- [ ] T009 [US1] Author `orders_history_v2_producer_evidence_completes_eight_commits` in `crates/behavior-store/src/conformance/query_bundle_evidence_tests.rs` and register the private module with `cfg(test)` in `crates/behavior-store/src/conformance.rs`; reuse the exact parent helpers/seed and normal v2 require:none host. Add v1, optional-index, empty/nonempty membership and non-query positive controls, preserving existing conformance case registration (after T008).
- [ ] T010 [US1] Freeze a reviewed test-only revision and collect/run `conformance::query_bundle_evidence_tests::orders_history_v2_producer_evidence_completes_eight_commits` with `--exact --nocapture`; retain the actual nonzero assertion failure, collected name, source/test digests, commands/statuses and toolchain in external RED runs and `specs/023-strict-bundle-evidence-validation/evidence/first-red.md`. Require the intended invalid-observed-facts refusal before the first commit, not compilation, fixture or authorization failure (after T009; before T013–T017).
- [ ] T011 [P] [US1] Add individually executable existing-candidate boundary tests in `crates/behavior-verify/tests/strict_bundle_evidence.rs` for valid empty/single/multiple query observations, all five sections, allowed null values, exact original claim identity and essential closed/type/order/hash refusals; use existing public candidate APIs so RED compiles before the private codec exists. Retain asserting acceptance/diagnostic failures before implementing their behavior; reseal outer identities to reach the intended checks (after T010).
- [ ] T012 [P] [US1] Add independent fixed query-result vectors and domain/member-object encoding controls in `crates/behavior-verify/tests/hashing.rs`, using the existing hashing function and literal historical tag. Bind `[]` to `sha256:21115dbec5bf6bcf7568f7211fb662ea684c79c6f932d4d50922ffdf1cc4e907` and `[{"id":"a"},{"id":"b"}]` to `sha256:f8267fe64300deaaa901f76ee3c60e396c630280602d22b1f5725c38beae4164`; run these compatibility controls before sharing the constant (after T010).

### Private model and integration

- [ ] T013 [US1] Define private decoded/validated owned products in `crates/behavior-verify/src/governance/trusted/bundle_evidence.rs` using vectors until checks complete. Quote and enforce the data-model grammar: root "Optional arrays: existence, identities, references, queries, fields"; existence "entity:string, id:string, exists:boolean"; identity "entity:string, id:string, used:boolean"; reference target "entity:string, id:string, incoming:edge array"; edge "entity:string, id:string, field:string"; query "instance:string, definition:string, entity:string, captures:array, members:array, result_hash:string"; capture "read:string, value:canonical JSON"; member "id:string"; field "entity:string, id:string, field:string, value:canonical JSON". "All listed item fields are required, even when their values are null or empty where the existing domain permits that. No additional fields are allowed." Preserve allowed null versus missing value, no-float canonical JSON and no new string-length limits (after T011/T012).
- [ ] T014 [US1] Declare the codec as a private child module in `crates/behavior-verify/src/governance/trusted.rs`; restrict validated construction/projection to successfully checked immutable evidence, retain the original candidate claim unchanged, and expose no Behavior primitive, facade type, public unchecked constructor, cache or authorization token (after T013).
- [ ] T015 [US1] Share the unchanged `behavior.query_result.v1` domain constant in `crates/behavior-verify/src/hashing.rs` and preserve Store's existing constant name/value as an alias in `crates/behavior-store/src/store.rs`; reuse the existing canonical tagged hash algorithm and propagate consumer errors. Preserve producer bytes/body and v1 hash behavior; do not fix unrelated producer default suppression or introduce a second query-instance encoder (after T012/T014).
- [ ] T016 [US1] Implement closed-field/type, semantic-key uniqueness/order and hash checks before map/set projection in `crates/behavior-verify/src/governance/trusted/bundle_evidence.rs`. Enforce "Collections use the producer's strictly increasing semantic string/tuple keys": `(entity,id)` for existence/identity/reference targets, `(entity,id,field)` for edges/fields, `instance` for queries, `read` for captures, `id` for members. Require `^sha256:[0-9a-f]{64}$` and exact existing tagged hash of canonical member objects, including empty membership; never sort, deduplicate, default, repair or trust a supplied digest (after T013/T015).
- [ ] T017 [US1] Replace only v2 action observed-evidence consumption in `crates/behavior-verify/src/governance/trusted.rs` with checked evidence then ordinary Facts projection. Keep root `{}`, present empty arrays, omitted/null action-bundle normalization and migration facts exactly `{}`; reject bundle `universe`. Preserve raw `INVALID_GOVERNANCE_DOCUMENT`, local `INVALID_CANDIDATE` with deterministic cause/path and existing outer `HASH_MISMATCH` precedence; do not leak crypto helper errors or call the codec from v1 decode/hash/commit/replay (after T016).

### Validation and checkpoint

- [ ] T018 [US1] Collect/run US1 boundary/hash/private conformance targets from `crates/behavior-verify/tests/strict_bundle_evidence.rs`, `crates/behavior-verify/tests/hashing.rs` and `crates/behavior-store/src/conformance/query_bundle_evidence_tests.rs`; require the original v2 RED to turn GREEN with nine evaluations/eight commits/head 8, correct query evidence retained and v1/non-query/index positives unchanged. Save same-source collection and statuses in external working runs (after T017).
- [ ] T019 [US1] Compare actual v1 outputs with the baseline and same-profile indexed/unindexed outputs, including records, observations, bundle/candidate hashes and history, using `crates/behavior-store/src/conformance/query_bundle_evidence_tests.rs`; assert path activation and verify the T001 protected-file manifest against the implementation diff (after T018).
- [ ] T020 [US1] Record US1 RED→GREEN, collected cases, canonical-output comparisons and still-pending adversarial/schema/full-domain work in `specs/023-strict-bundle-evidence-validation/evidence/us1.md`; update its rows in `specs/023-strict-bundle-evidence-validation/evidence/coverage.md` without claiming release, full v2 conformance or complete audit closure (after T019).

## Phase 4: User Story 2 — Reject malformed or forged evidence (P1)

**Goal**: Establish the strict local boundary and independently retained history/authorization/publication obligations with adversarial evidence.

**Independent test**: Each negative case reaches its intended check under otherwise consistent enclosing identities, with an independently executed positive control. A self-consistent forged membership may pass local integrity but is refused by historical validation, including a freshly signed variant; authoritative state/history/refs/commands and Backend commit count remain unchanged.

### Adversarial tests

- [ ] T021 [P] [US2] Expand individually collected hash cases in `crates/behavior-verify/tests/strict_bundle_evidence.rs`: wrong members/digest, wrong domain, bare-ID-array encoding, uppercase/short/non-hex digest, non-string and required missing hash, plus empty and shared-membership positives. Assert deterministic local cause/path and existing category rather than accepting any outer hash error (after T020).
- [ ] T022 [US2] Exercise unknown/missing/wrong-typed root/query/capture/member/edge/field products, root `universe`, explicit allowed null versus absent `value`, and omitted/empty sections in `crates/behavior-verify/tests/strict_bundle_evidence.rs`; retain independent positives and unchanged empty/migration rules (after T021).
- [ ] T023 [US2] Pass raw text with root/nested/escaped/equal-value duplicate object keys and disallowed numeric forms directly to existing checked boundaries in `crates/behavior-verify/tests/strict_bundle_evidence.rs`; assert existing raw-document refusal before reduction. Do not construct duplicate cases through already-lossy `serde_json::Value` (after T022).
- [ ] T024 [US2] Test duplicate semantic keys and noncanonical supplied order for every root section, incoming edge, query instance, capture and member in `crates/behavior-verify/tests/strict_bundle_evidence.rs`; different objects sharing a semantic key must refuse without repair even when hashes are recomputed. Keep backend enumeration reordering distinct from malformed supplied evidence (after T023).
- [ ] T025 [P] [US2] Add a test-owned authorized nine-step orders runner in `crates/behavior-store/src/conformance/query_bundle_evidence_tests.rs` using the same parent seed/steps, required enclosing evidence policy, policy-none execution policy, context-unbound fixture and authorizer key. Sign the exact module/candidate, use `commit_with_context`, assert authenticated success, and cover missing/wrong/reused authorization; keep the original require:none helper unchanged (after T020).
- [ ] T026 [P] [US2] Add actual-history forgery tests in `crates/behavior-store/tests/strict_bundle_evidence.rs`: alter producer members, correctly recompute result/candidate identities, and obtain fresh exact authorization for the governed variant. Show local acceptance followed by historical refusal; snapshot head, bounded events, entity versions/lifetimes, incoming refs and committed commands, and instrument zero Backend publication calls (after T020).
- [ ] T027 [US2] Add original-claim and public-bundle mutation controls in `crates/behavior-store/tests/strict_bundle_evidence.rs`; checked adapters/attachment/hash must revalidate mutated observations, retain original candidate JSON/hash/signature subject and refuse stale checked evidence rather than reusing a validation result for a different claim (after T026).

### Verification and any justified correction

- [ ] T028 [US2] Close only demonstrated local gaps in `crates/behavior-verify/src/governance/trusted/bundle_evidence.rs` and its candidate integration in `crates/behavior-verify/src/governance/trusted.rs`, if T021–T024/T027 expose them; retain each compiled asserting RED before its correction. If already correct, record no additional source correction and run the relevant controls. Do not weaken ordinary Facts or alter historical phases (after T021–T024/T027).
- [ ] T029 [US2] Collect/run all US2 tests from `crates/behavior-verify/tests/strict_bundle_evidence.rs`, `crates/behavior-store/tests/strict_bundle_evidence.rs` and `crates/behavior-store/src/conformance/query_bundle_evidence_tests.rs`, including independently executable negatives and required-authentication/forged-history positives; bind complete no-publication comparisons and selected errors to working run evidence (after T025/T028).
- [ ] T030 [US2] Run isolated source mutation controls specified in `specs/023-strict-bundle-evidence-validation/contracts/validation-evidence.md` against the relevant new tests: ignored hash, wrong member/domain encoding, projection before checking, permissive fields, silent duplicate/order repair, removed historical comparison and new v1 early checking. Record mutant activation and intended assertion failures in `specs/023-strict-bundle-evidence-validation/evidence/mutations.md`; use disposable copies/separate targets, never official outputs (after T029).
- [ ] T031 [US2] Document local-integrity versus historical-truth/authentication/authorization/publication evidence in `specs/023-strict-bundle-evidence-validation/evidence/us2.md`, including actual performed-backend/error and negative collection evidence; do not infer backend durability or full correctness from successful parsing (after T030).
- [ ] T032 [US2] Reconcile C023-03–10 and P023-01–08 coverage/statuses in `specs/023-strict-bundle-evidence-validation/evidence/coverage.md`, resolve failures within the agreed boundary and record remaining assumptions. Mark the US2 checkpoint complete only after all required adversarial and authorization controls pass (after T031).

## Phase 5: User Story 3 — Preserve document and historical boundaries (P2)

**Goal**: Preserve the versioned pipeline, ordinary Facts, supported historical evidence and surrounding read/replay/migration behavior.

**Independent test**: Invalid v1 evidence has the same baseline decode result and later refusal, including competing-error/operational precedence. Historical H/K controls retain their actual interpretation; unsupported combinations retain refusal. Ordinary Facts rejects `result_hash`, and every documented read compatibility row retains its own profile.

### Compatibility tests and source comparison

- [ ] T033 [P] [US3] Re-run and compare all T004/T005 v1 characterization cases in `crates/behavior-store/tests/strict_bundle_compatibility.rs` against the retained baseline phase/code/cause/publication snapshots; include correct/malformed/missing hashes and activated earlier read failures. Attribute any difference before further changes; never homogenize the v1 decoder with the v2 codec (after T020/T007).
- [ ] T034 [P] [US3] Add ordinary Facts/read boundary controls in `crates/behavior-verify/tests/strict_bundle_compatibility.rs`, calling the unchanged `crates/behavior-core/src/facts.rs` parser and appropriate existing record APIs; ordinary query Facts/read evidence still forbids bundle `result_hash`, while ordinary no-query and permitted supplied-facts behavior remains unchanged (after T020).
- [ ] T035 [US3] Exercise H01–H03 original bundle/archive/recovery/replay controls in `crates/behavior-store/tests/strict_bundle_compatibility.rs` with recorded policies/context and fixture bytes; preserve decision 0.4 versus pre017 decision 0.7/profile 0.8 distinctions, required legacy upgrade rules and archived proof eligibility. Do not rewrite original records or claim standalone decoding establishes historic authentication (after T033/T006).
- [ ] T036 [US3] Exercise K01/K02 candidate/inner-record recognition controls in `crates/behavior-verify/tests/strict_bundle_compatibility.rs` using original decision 0.4/0.5/0.6 and actual 0.7/0.8 layouts; explicitly label newly wrapped candidates as codec controls and retain unknown/mismatched profile refusal. These constructions are not historical Store events (after T034).
- [ ] T037 [US3] Cover all documented unsupported/upgrade cases in `crates/behavior-store/tests/strict_bundle_compatibility.rs`: unsupported Wire/query versions, fresh Wire 0.8 v1 commitment, fresh required-v1 writes, cross-format evidence/context/history, unknown kinds/profiles, bundle universe and migration queries. Preserve `HISTORY_FORMAT_UPGRADE_REQUIRED`, `TRUSTED_GOVERNANCE_UPGRADE_REQUIRED` and other baseline categories (after T035).
- [ ] T038 [US3] Verify collection and run all nine existing 018 read support rows through owning Core/Store/invocation replay tests, adding only missing coverage in `crates/behavior-store/tests/strict_bundle_compatibility.rs`; retain original read-v1/v2 semantics, valid bytes/identities and refusal paths. Map row-to-test evidence in `specs/023-strict-bundle-evidence-validation/evidence/us3.md`, without new ad-hoc invocation support or cross-profile equality (after T037).
- [ ] T039 [US3] Cover unchanged legacy migration decode/hash/commit/replay, transient prepared empty candidates on legacy Stores and refused nonempty observations in `crates/behavior-store/tests/strict_bundle_compatibility.rs`; distinguish actual supported preparation from invented query-bearing migration support (after T038).
- [ ] T040 [US3] Collect/run affected existing 017/018/022 resulting-state, strict-profile and refusal-authority regression targets alongside query/read/history/migration controls named in `specs/023-strict-bundle-evidence-validation/quickstart.md`; record source-bound commands/statuses in `specs/023-strict-bundle-evidence-validation/evidence/us3.md`. No skipped/inconclusive case is a passing compatibility result (after T036/T039).
- [ ] T041 [US3] Compare protected implementation, ordinary/witness/legacy/read/decision schemas, historical fixtures, facade surface and dependency metadata with `specs/023-strict-bundle-evidence-validation/evidence/baseline-manifest.md`; update `specs/023-strict-bundle-evidence-validation/compatibility-assessment.md` with the preserved v1 pipeline premises and explicitly scoped wrapper-asset exception. Keep F023-EXTERNAL-FACTS-SCHEMA-001 separate (after T040).
- [ ] T042 [US3] Finalize same-recorded-profile compatibility conclusions and C023-08/11/13/14 evidence in `specs/023-strict-bundle-evidence-validation/evidence/us3.md` and `specs/023-strict-bundle-evidence-validation/evidence/coverage.md`; explain whether decoder/commit preservation is established by construction, source invariants, empirical controls or assumptions, rather than claiming universal pipeline equality from tests alone (after T041).

## Phase 6: User Story 4 — Keep supported producers and consumers consistent (P2)

**Goal**: Establish complete actual producer–consumer coverage, scoped schema correspondence and supported consumer behavior under each matching profile.

**Independent test**: Every supported producer–consumer pairing in PC01–PC20/S01–S09 has a justified valid domain, actual producer-output acceptance evidence and exact semantic-projection evidence under the same profile. Shared construction invariants may justify reuse of that evidence, never replace it; each pairing must bind collected tests/source/logs, including its distinct route checks. Preserve the inventory's structural/codec-control classifications. Actual output round-trips exactly; both current wrapper schemas agree; index/enumeration, recovery/command consumers and facade/CLI checks preserve their contracts. See [producer-projection-evidence.md](contracts/producer-projection-evidence.md).

### Producer laws and projection

- [ ] T043 [P] [US4] Add actual `evaluate`, `invoke`/`invoke_mode` and `invoke_intent` producer–consumer laws in `crates/behavior-store/tests/strict_bundle_evidence.rs` for supported v1/v2 cells and empty/no-query/single-query/multi-query/mixed observations; exercise checked raw decode/hash/candidate adaptation/evidence attachment instead of only handcrafted candidates. Preserve omitted/null action bundle → empty candidate normalization (after T032/T042).
- [ ] T044 [US4] Add bounded generated/metamorphic laws and deterministic capture/reproduction recipes in `crates/behavior-store/tests/strict_bundle_evidence.rs`, covering all five observed sections, supported values/captures/members and same-profile round-trip/projection/identity laws. Create/review `tests/fixtures/strict-bundle-evidence/projection-cases.json` and `tests/fixtures/strict-bundle-evidence/projection-manifest.json` from actual PC01–PC03/PC04 output; derive expected ordinary Facts from the same inner ALLOW record, removing only the documented parent universe, never from bundle evidence or the codec. Follow `specs/023-strict-bundle-evidence-validation/contracts/producer-projection-evidence.md`: explicit ignored maintenance capture, normal collected reproduction/digest/coverage checks with no fixture writes, actual profiles/source custody, and no containing-final-SHA self-reference. Hand off both reviewed files only after normal checks pass; record generated domains/seeds/limits without claiming universal proof (after T043).
- [ ] T045 [US4] Read the reviewed T044 package at `tests/fixtures/strict-bundle-evidence/projection-cases.json` and `tests/fixtures/strict-bundle-evidence/projection-manifest.json` from private projection/ownership tests in `crates/behavior-verify/src/governance/trusted/bundle_evidence.rs`; compare projected Facts serialization with the independently captured record observations for every case/section/value and preserve original candidate claims. Reject missing/stale/mismatched fixture custody; retain separately labeled local required/null controls. Verify adds no Store dependency, producer subprocess or public test export and never regenerates expected fixtures. If a discrepancy is found, retain its asserting RED before correcting the codec (after T044's package review/reproduction checks; exclusive codec ownership).
- [ ] T046 [US4] Exercise actual prepared v2 Migration IR 0.1 output and S07/S08/S09 consumers in `crates/behavior-store/tests/strict_bundle_evidence.rs`: candidate facts exactly `{}`, action-style nonempty facts refused, report/hash/source/target agreement retained and legacy commit dispatch preserved. Use real supported transformation output, not fabricated query migrations (after T044/T039).

### Scoped public schema correspondence

- [ ] T047 [P] [US4] Author collected tests in `crates/behavior-store/tests/strict_bundle_schema.rs` using actual mixed producer candidates/bundles and original current-v2 H02/H03 controls; reuse the existing pinned Python Draft202012Validator/registry pattern from `crates/behavior-store/tests/trusted_governance.rs`. Test both wrappers, closed products/required fields/digest syntax and preserved empty/null/migration refs; raw ambiguity and digest equality remain runtime obligations (after T032/T042; US1 producer GREEN required).
- [ ] T048 [US4] Run `crates/behavior-store/tests/strict_bundle_schema.rs` against unchanged current wrapper assets and retain compiled asserting schema REDs, actual producer/source identity, test collection and rejection details in `specs/023-strict-bundle-evidence-validation/evidence/schema-red.md` and external logs. Do not change the wrappers before this actual failure; a v2 producer failure or missing Python module is setup, not schema RED (after T047).
- [ ] T049 [US4] Add matching closed bundle-evidence/nested definitions in `schema/governance-v2.schema.json` and `schema/store-v2.schema.json`, using the exact required field/type/null constraints quoted in T013, optional root arrays "existence, identities, references, queries, fields", no unknown fields, required query `result_hash` with `^sha256:[0-9a-f]{64}$`, and existing canonical-value schema. Change only action candidate and non-null action commit-bundle observation refs; retain omitted/null bundles, migration constant `{}` and every ordinary/witness/legacy definition/ref. Semantic-key order/uniqueness and hash equality stay runtime checks (after T048).
- [ ] T050 [US4] Run schema positives/negatives and runtime wrong-digest controls from `crates/behavior-store/tests/strict_bundle_schema.rs`; verify actual mixed producers and genuine supported v2 archives satisfy both wrappers, valid historical bytes remain unchanged, and all out-of-scope definitions/refs match the baseline. Disclose changed wrapper asset digests separately from semantic SchemaHash/BehaviorHash in `specs/023-strict-bundle-evidence-validation/evidence/us4-schema.md` (after T049).

### Supported facade, CLI and transitive consumers

- [ ] T051 [P] [US4] Add supported-consumer tests in `consumer/tests/strict_bundle_evidence.rs`, importing only behavior-engine, for generated query candidates, strict valid/invalid consumption, exact required authorization, failed-publication controls and unchanged ordinary/read/migration behavior; exercise raw existing CLI governance authorization without new facade exports or Store CLI commands (after T032/T042).
- [ ] T052 [US4] Build the current checkout CLI and collect/run `consumer/tests/strict_bundle_evidence.rs` using its source-bound binary; unset stale `BEHAVIOR_BIN`/`CARGO_TARGET_DIR` or explicitly bind a verified same-revision CLI path/digest. Record selected binary, fixtures, commands/statuses and resolved dependency in `specs/023-strict-bundle-evidence-validation/evidence/us4-consumer.md`; working-tree success is not final exact-SHA assurance (after T051).
- [ ] T053 [US4] Exercise actual checked archive/recovery/`replay_data`/behavior-replay and committed command-stream consumers in `crates/behavior-store/tests/strict_bundle_evidence.rs` and `consumer/tests/strict_bundle_evidence.rs`, preserving exact historical checks, idempotent recovery, signed archive/context and no dispatch of uncommitted commands. Record PC13–PC19 evidence separately from structural `documents::decode<T>` and from local authenticity claims (after T045/T046/T052).
- [ ] T054 [US4] Extend/run same-profile indexed/unindexed/reversed-enumeration comparisons in `crates/behavior-store/src/conformance/query_bundle_evidence_tests.rs` and actual producer laws in `crates/behavior-store/tests/strict_bundle_evidence.rs`; compare complete records/observations/candidate and bundle identities/history/content/reference relations, and assert each adapter path is activated. Test supplied-order refusal separately; never require v1 and v2 byte equality (after T053).
- [ ] T055 [US4] Complete `specs/023-strict-bundle-evidence-validation/evidence/us4.md` and `specs/023-strict-bundle-evidence-validation/evidence/coverage.md` with PC01–PC20, S01–S09, H/K, C023-01–16 and P023-01–12 mappings to actual tests/source/logs; require actual producer-output acceptance and exact projection evidence for every supported pairing as SC-002 specifies. Shared invariants explain evidence reuse, not source-only completion; retain structural/codec-control classifications. Bind the T044/T045 package, capture provenance and collected reproduction/projection cases; demonstrate `Validate_v(Produce_v(E)) = Ok` over each supported domain and resolve every required gap before review (after T050/T054).

## Phase 7: Targeted review and exact-revision delivery evidence

**Purpose**: Close only the scoped finding/proof obligations, freeze all tracked deliverables, then validate the immutable revision. This phase does not merge, publish, choose a numeric release or update the ecosystem pin.

- [ ] T056 [P] Write `specs/023-strict-bundle-evidence-validation/implementation-report.md` and finalize `specs/023-strict-bundle-evidence-validation/compatibility-assessment.md` with actual changes, tests/RED custody, limitations and conservative minor-class public schema assessment. Explain 019 creation scope versus 023 query correction, protected identities/phases, open ordinary/witness schema finding and final gates still pending; do not select a version/tag (after T055).
- [ ] T057 [P] Obtain an independent targeted trust/query/evidence review in `specs/023-strict-bundle-evidence-validation/evidence/targeted-re-audit.md` of every P023-01–12 and relevant type/history/identity/optimization obligation; inspect implementation invariants, mutation controls, actual source-bound evidence and remaining assumptions. Review must distinguish construction/source invariants/tests/assumptions and may not claim all 016 or full v2 Store conformance (after T055; a different reviewer owns this file).
- [ ] T058 Resolve review discrepancies through their corresponding story tasks with new asserting REDs before any correction; reconcile `specs/023-strict-bundle-evidence-validation/evidence/coverage.md`, `specs/023-strict-bundle-evidence-validation/follow-up-findings.md` and `specs/023-strict-bundle-evidence-validation/origin-and-priority.md`. Preserve F023-EXTERNAL-FACTS-SCHEMA-001 and immutable 016/019 evidence; report the scoped query finding as working-source remediated with final validation pending until the external receipt establishes delivery (after T056/T057).
- [ ] T059 Complete focused verification/links/`git diff --check`, reconcile required collection/results with `specs/023-strict-bundle-evidence-validation/quickstart.md`, and finalize tracked reports plus T001–T059 bookkeeping in `specs/023-strict-bundle-evidence-validation/tasks.md`. Review the explicit source/schema/test/document file list against the protected manifest; leave final freeze/gates/consumer/sealing tasks unchecked for external completion (after T058).
- [ ] T060 Commit and push the explicit finalized source/tests/schema/reports/bookkeeping file list, freeze the delivery candidate and initialize `/home/kalle/validation-receipts/core023/<candidate-sha>/receipt.json` with repository/SHA/tree, environment/toolchain, source/test/CLI/fixture identities, commands/statuses/log locations and T060–T064 states. Do not embed that SHA in its own tracked report or modify the frozen source; any subsequent tracked change creates a new candidate (after T059).
- [ ] T061 Run `nix develop -c scripts/gates.sh` from the clean unchanged frozen checkout; retain each canonical status/log and required new-test collection in `/home/kalle/validation-receipts/core023/<candidate-sha>/receipt.json`. No private override, gate weakening, uncollected test or skipped mandatory case is acceptable (after T060).
- [ ] T062 Run `nix develop -c scripts/check-consumer.sh --rev <candidate-sha>` from that same unchanged frozen checkout against the exact pushed Git revision; bind current consumer/fixtures and fresh CLI path/digest, resolved Git dependency, commands/statuses and environment in `/home/kalle/validation-receipts/core023/<candidate-sha>/receipt.json`. Respect the CLI default-target trap and canonical dependency graph; do not substitute ecosystem path overrides (after T061).
- [ ] T063 Check clean checkout/remote/SHA/tree agreement, receipt completeness and actual test/consumer/CLI/fixture source identities in `/home/kalle/validation-receipts/core023/<candidate-sha>/receipt.json`; confirm every required FR/SC/case/proof has its evidence or justified invariant, and classify remaining assumptions. A different merge/squash/rebase/release SHA has no automatic exact-revision attestation (after T062).
- [ ] T064 Complete and seal external T060–T064 task statuses and final scoped assessment in `/home/kalle/validation-receipts/core023/<candidate-sha>/receipt.json`, report implemented/committed/pushed separately from merged/released, and provide finding/evidence links without editing the frozen checkout. If required validation fails, keep completion pending and create/revalidate a corrected candidate; do not silently change reports or publish (after T063).

## Dependencies and execution order

### Phase/story graph

```text
Setup T001–T003
        ↓
Foundation T004–T008
        ↓
US1 T009–T020: asserting RED → complete safe private codec → workload GREEN
        ├───────────────────┐
        ↓                   ↓
US2 T021–T032         US3 T033–T042
adversarial/trust     versioned compatibility
        └─────────┬─────────┘
                  ↓
          US4 T043–T055
     full producer/schema/consumer domain
                  ↓
          Review T056–T059
                  ↓
  Freeze → gates → exact Git consumer → seal
             T060–T064
```

US2 and US3 are independently executable after the shared US1 implementation; completion does not require one another. Separate Verify/Store compatibility targets keep their test owners independent. US4's complete acceptance result depends on both. Its schema and facade authoring lanes can start after their explicit prerequisites while other US4 lanes work on distinct files. None of this authorizes a source freeze while another owner is writing.

| Ready group / dependency | Execution constraint |
| --- | --- |
| T001 → T002 + T003 | Independent inventory/evidence documents |
| T004 → T005 → T007; T002 → T006 → T007 → T008 | Baseline test lane and historical custody lane; both join before story work |
| T009 → T010 | Exact source-frozen asserting RED; all production changes blocked |
| T010 → T011 + T012 → T013 → T014 → T015 → T016 → T017 → T018 → T019 → T020 | Independent boundary/vector files, then one coordinator integrates |
| T020 → T021–T024; T020 → T025; T020 → T026 → T027 | Verify negatives, private signed workload and Store forgery files have exclusive owners |
| T021–T024 + T027 → T028; T025 + T028 → T029 → T030 → T031 → T032 | No gap correction without its RED; source-bound runs/mutations serialized |
| T020 → T033 → T035 → T037 → T038 → T039; T020 → T034 → T036 | Store and Verify compatibility lanes own separate targets from US2 |
| T036 + T039 → T040 → T041 → T042 | Historical/read/migration results join before compatibility conclusion |
| T032 + T042 → T043 → T044 → T045/T046 | Store capture/reproduction and reviewed static fixture handoff precede private Verify projection; migration remains separate |
| T032 + T042 → T047 → T048 → T049 → T050 | Independently owned schema RED→correction lane |
| T032 + T042 → T051 → T052 | Independently owned facade/CLI lane |
| T045 + T046 + T052 → T053 → T054; T050 + T054 → T055 | Shared Store/consumer files serialized before domain reconciliation |
| T055 → T056 + T057 → T058 → T059 | Report author and independent reviewer own different artifacts |
| T059 → T060 → T061 → T062 → T063 → T064 | Freeze/publication of source and canonical checks are strictly sequential |

### File ownership for parallel work

| Lane | Exclusive write ownership | Shared dependency |
| --- | --- | --- |
| Coordinator / codec | `governance/trusted.rs`, `governance/trusted/bundle_evidence.rs`, Verify boundary/hash tests, shared hash tag and Store alias | Owns integration and v1 protection; does not edit other owners' tests concurrently |
| Exact workload / authorization | `conformance.rs` registration and `conformance/query_bundle_evidence_tests.rs` | Parent helpers unchanged; no public testing hook |
| Store laws / trust | `tests/strict_bundle_evidence.rs` and `tests/fixtures/strict-bundle-evidence/projection-{cases,manifest}.json` | US2 then US4 handoff; creates/reviews static producer package before Verify consumption |
| Historical compatibility | Verify and Store `tests/strict_bundle_compatibility.rs` and their evidence | Original fixture/profile custody; separate from local-boundary and Store law targets |
| Schema | `tests/strict_bundle_schema.rs` and the two current wrapper assets | Actual producer output must be available; no ordinary/witness schema edits |
| External consumer | `consumer/tests/strict_bundle_evidence.rs` and its evidence | Supported behavior-engine APIs and same-source CLI only |
| Independent review / runner | Targeted re-audit artifact / external final receipts respectively | Reviewer is distinct from author; runner freezes source and serializes final gates |

Paths in this table are abbreviated within their already specified crate roots. Shared artifacts (`coverage.md`, task bookkeeping, PR description) have one coordinator writer. Use separate test build/output locations for concurrent lanes; source mutation outputs never enter official caches.

The projection fixture paths are repository-root paths, not crate-local test
folders. Their Store owner writes them only during explicit maintenance capture;
Verify reads the reviewed package after T044 and never refreshes it. This data
handoff introduces no reverse crate dependency.

## Parallel examples by user story

### US1

After T010, assign T011 to the existing-candidate test owner and T012 to the fixed hash-vector test owner. They edit different test files and invoke existing APIs. Join and retain their results before T013–T017. The actual codec/integration sequence is intentionally serialized.

### US2

After T020, T021–T024 (Verify negatives), T025 (private authenticated workload) and T026–T027 (Store forgery/mutation controls) can be authored in parallel in three distinct files. Join before any T028 correction and freeze the working source before T029 runtime evidence. T030 mutation runs use disposable sources.

### US3

After T020, T033 (Store historical pipeline) and T034 (Verify ordinary Facts compatibility) can proceed in different files, followed by T035 and T036 in their respective lanes. These targets are also separate from US2's files. Join before T040–T042. Read/archive verification does not require a second replay interpreter.

### US4

After T032/T042, T043 (actual Store laws), T047 (schema tests) and T051 (facade/CLI tests) can proceed in different files. The schema lane must record T048 RED before T049 asset edits. Store/consumer integration at T053 waits for their owners to finish; one writer performs T054/T055 consolidation.

## Requirement and evidence traceability

| Requirement / outcome | Tasks providing the required work |
| --- | --- |
| FR-001; SC-001 | T009–T020, T025, T054 |
| FR-002/003/004/006/007; SC-003 | T011–T017, T021–T029, T045, T047–T050 |
| FR-005 | T022/T034, T038/T041 |
| FR-008 | T025–T029, T035/T037/T040, T053 |
| FR-009; SC-004 | T004–T008, T019, T033–T042, T046/T050/T053/T056 |
| FR-010; SC-005 | T009/T019, T024, T054 |
| FR-011; SC-002 | T002/T006, T043–T055 |
| FR-012 | T003, T009–T011 |
| FR-013/014 | T004/T005, T021–T042, T044/T046/T050/T053/T054 |
| FR-015/016; SC-006 | T055–T064 |
| C023-01 | T009/T010/T018/T019 |
| C023-02/07 | T011/T017/T027, T043–T045 |
| C023-03–06 | T011/T012/T016, T021–T024/T028–T030 |
| C023-08 | T004/T005/T007/T033 |
| C023-09/10 | T025–T029 |
| C023-11 | T002/T006, T035–T037/T055 |
| C023-12 | T047–T050 |
| C023-13 | T034/T038/T040/T041 |
| C023-14 | T039/T046 |
| C023-15 | T019/T024/T054 |
| C023-16 | T051–T053, T060–T064 |
| P023-01–05 | T011–T017, T021–T024/T027/T028/T045 |
| P023-06 | T004/T005/T007/T033/T041/T042 |
| P023-07/08 | T025–T029, T035/T037/T040/T053 |
| P023-09/10/11 | T002/T006, T043–T055 |
| P023-12 | T001/T003/T010, T059–T064 |

The actual collected-name/source/log mappings live in `evidence/coverage.md` during implementation. A task list assigns obligations; it is not evidence they have been discharged.

## Implementation strategy

### MVP checkpoint: US1

Complete setup and baseline characterization, record the exact test-only RED, then implement the full private closed/integrity/projection boundary. Validate the real v2 eight-commit workload and v1/non-query controls before proceeding. Do not defer required hash/shape/order checks to US2 or weaken ordinary Facts for an interim success. This is an internal runtime milestone; schema/trust/full-domain acceptance still blocks feature delivery.

### Incremental completion

Complete adversarial/trust controls and historical compatibility independently around the shared implementation. Complete actual producer laws, scoped public schemas and supported consumer controls next. Re-audit only the agreed trust/query/evidence boundary, preserve unrelated findings and qualify the conclusion. Freeze all tracked implementation/evidence before final gates and exact Git consumer validation; later changes require a new candidate and fresh applicable evidence.

### Multi-agent execution

The coordinator assigns ready tasks according to the ownership table and reviews test/fixture contracts before parallel authoring. Separate test, schema and consumer owners may work concurrently after prerequisites, with a different reviewer for the targeted re-audit. All source freezes, integration, shared bookkeeping and final evidence runs have one owner. Agent count does not change semantic scope, compatibility boundaries or required proof obligations.

## Completion accounting

There are **64 tasks**: setup 3, foundation 5, US1 12, US2 12, US3 10, US4 13, final review/delivery 9. Every checkbox starts unchecked. Mark only performed/verified tasks complete. After T059, externally complete T060–T064 against the frozen revision instead of modifying its tracked checkboxes. A final assessment requires successful mandatory gates and exact-revision consumer evidence; task generation itself creates no code, tests, schema correction, merge or release.
