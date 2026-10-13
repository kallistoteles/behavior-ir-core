# Tasks: Faithful Facts and Witness Schemas

**Input**: Design documents from `specs/024-facts-witness-schema/`.

**Prerequisites**: [spec.md](spec.md), [plan.md](plan.md), [research.md](research.md), [data-model.md](data-model.md), [contracts](contracts/validation-evidence.md), [quickstart.md](quickstart.md) and the owning constitution.

**Tests**: Required by FR-001/012/013 and the test-first constitution. Completed tasks are backed by the feature evidence documents and retained source-bound runs; unchecked tasks remain pending.

**Organization**: Setup → shared foundation → US1/US2/US3/US4 → review/frozen delivery. New test/schema/fixture paths are prospective. Paths are repository-relative unless absolute. The owning checkout is `/home/kalle/repos/behavior-ir-core-024`, branch `024-facts-witness-schema`, base `4f44fb83054d6d100f55e0b1466196b8cc94b151`.

## Format and execution rules

Every executable task uses `- [ ] Tnnn [P?] [USn?] description with paths`. `[P]` permits parallel work only after listed dependencies are complete and when exclusive file ownership is respected; it does not waive dependencies or test-first.

Shared test authoring for structural obligations belongs to the foundation because US1 and US2 use the same schema change. Story-specific tests extend/execute those shared controls under the single test-file owner. This avoids placing US2's required baseline failures after US1's schema implementation.

Correcting malformed structures that the old schema actually admits requires intended assertion failures before schema edits. Already-rejected canonical-family negatives are passing baseline-preservation controls; root-name masking is recorded. No diagnostic schema patch is used to manufacture RED. New correction behavior discovered later gets its own asserting RED before any correction.

Evidence belongs under `specs/024-facts-witness-schema/evidence/` with retained runs under `/home/kalle/validation-receipts/core024/`. Tracked reports contain known source revisions/digests, not the final SHA of their own containing commit. Final T048–T052 completion is recorded externally after freeze; their tracked checkboxes remain unchecked in that frozen revision by the approved immutable-receipt policy.

## Phase 1: Setup — scope, environment and evidence

**Purpose**: Establish ownership and baseline custody without changing a schema or runtime.

- [X] T001 Confirm clean/known Git state, exact remote/branch/base and preserved user files; read the constitution, issue #21 and feature artifacts; record the explicit allowed schema/test/doc paths and protected runtime/facade/dependencies/other schemas in `specs/024-facts-witness-schema/evidence/scope.md`.
- [X] T002 [P] Capture baseline digests and unchanged-definition snapshots for both V2 wrappers, all other schema assets, runtime/parser/serializer/hash/facade files and retained canonical evidence in `specs/024-facts-witness-schema/evidence/protected-manifest.md` and external `/home/kalle/validation-receipts/core024/baseline/` (after T001).
- [X] T003 [P] Verify pinned Rust/Python/jsonschema/Z3 availability and define source/test/CLI/schema/fixture/log custody, producer-class labels and external receipt rules in `specs/024-facts-witness-schema/evidence/README.md`; no dependency or gate/script change (after T001).

## Phase 2: Foundational — reviewed fixtures and shared asserting controls

**Purpose**: All story work depends on this baseline/fixture/test protocol. Schema edits are blocked until US1's genuine producer RED also completes.

- [X] T004 Bind S01–S07, H01, K01–K03 and N01–N03 to actual fixture/module/profile/consumer boundaries in `specs/024-facts-witness-schema/evidence/case-inventory.md`; distinguish current signed production, ordinary serializer/runtime, genuine archive, constructed codec and structural negatives; assign one fixture writer (after T002/T003).
- [X] T005 Prepare only necessary admitted modules/independent products in `tests/fixtures/facts-witness-schema/` and document their ownership/provenance in `specs/024-facts-witness-schema/evidence/baseline-manifest.md`; use the actual Marker/Customer issue module, existing public signing fixtures and immutable original archive paths, without fabricated signed/history witnesses (after T004).
- [X] T006 Author the shared independent schema-validation/ordinary-serialization test corpus in `crates/behavior-verify/tests/facts_witness_schema.rs` for C02/C04/C05/C06/C11: six optional array families, all ten required/closed item products, open universe members requiring string id, unchanged json_data payloads, permitted nulls, empty arrays, basic strings without new nonempty/hash patterns, captures as sequence and bundle-only result_hash refusal (after T005).
- [X] T007 Collect and execute T006 on the actual uncorrected baseline in the pinned environment; retain formerly accepted wrong-alias/queries/fields/universe rejection failures, canonical producer-shape failures and already-rejected masked negatives separately in `specs/024-facts-witness-schema/evidence/structural-red.md` and `/home/kalle/validation-receipts/core024/structural-red/`; compile/tool failures are not RED (after T006).
- [X] T008 Review/freeze the test/fixture/oracle protocol and allowed edit set in `specs/024-facts-witness-schema/evidence/baseline-manifest.md`; confirm expected products are independent of schemas under test, local schema resources resolve without network, governance roots differ from embedded Store boundaries and no implementation edits occurred (after T007).

## Phase 3: User Story 1 — Exchange valid counterexample evidence (P1, MVP)

**Goal**: Genuine ordinary/witness production becomes schema-valid without altering original computation, bytes or identity.

**Independent test**: Real signed Marker/Customer report, exact current subject/profile and identical runtime DENY; both applicable schemas accept its original bytes. All six families are covered collectively through their actual producer/serializer paths.

### Tests and actual baseline failures

- [X] T009 [US1] Add the real authenticated Marker/Customer acceptance regression to `crates/behavior-verify/tests/facts_witness_schema.rs`: actual supported Z3 work, public fixture signing, not_verified report, emitted existence:false and complete universe, exact-subject validation, original DENY reproduction and required schema acceptance at governance root/Store embedded envelope plus witness/facts (after T008).
- [X] T010 [US1] Extend `crates/behavior-verify/tests/facts_witness_schema.rs` with actual six-family ordinary serialization/round trips and applicable action/query/confirmation producers for C02/C03; assert each chosen emitted family rather than inferring it from operators, compare independent normalized products and label generic structural controls separately from valid module-bound producer evidence (after T009).
- [X] T011 [US1] Collect/run the complete shared and US1 corpus on unchanged baseline schemas; capture the actual signed producer acceptance failure after its checked/runtime assertions succeeded, with original signed output, toolchain, source/test/schema/CLI identities and statuses in `specs/024-facts-witness-schema/evidence/producer-red.md` and `/home/kalle/validation-receipts/core024/producer-red/` (after T010).
- [X] T012 [US1] Review the asserting RED/positive preservation results and freeze the genuine before-correction producer bytes/hashes and current schema edit contract in `specs/024-facts-witness-schema/evidence/us1.md`; discovery script success or synthetic historical output is insufficient (after T011).

### Schema implementation and integration

- [X] T013 [P] [US1] Correct only `$defs/facts` and add the ten ordinary helpers in `schema/governance-v2.schema.json` according to `contracts/ordinary-facts.md`: six optional arrays, required/closed observation products, open id-bearing universe rows, unchanged json_data only at payload positions; preserve witness alternatives, bundle_* definitions, root union and all other definitions (after T012).
- [X] T014 [P] [US1] Apply the identical ordinary definition/helper correction to `schema/store-v2.schema.json`, preserving its distinct Store root union, embedded envelope placement, existing witnesses/bundle_* and every other definition; no runtime/hash/format change (after T012).
- [X] T015 [US1] Run `crates/behavior-verify/tests/facts_witness_schema.rs` against both corrected wrappers and compare original captured signed bytes/identities and DENY with T011; record actual acceptance and six-family normalized product outcomes in `specs/024-facts-witness-schema/evidence/us1.md` (after T013/T014).
- [X] T016 [US1] Verify both ordinary definition/helper sets agree and every old definition outside the allowed set plus protected runtime/other schemas remains unchanged; retain comparison output in `specs/024-facts-witness-schema/evidence/scope.md` and `/home/kalle/validation-receipts/core024/us1-protection/` (after T015).
- [X] T017 [US1] Reconcile S01/S03/S04, C01–C03/C11 and actual emitted-family evidence in `specs/024-facts-witness-schema/evidence/case-inventory.md`; flag any unproduced family/path instead of fabricating a signed report or expanding semantics (after T016).
- [X] T018 [US1] Record the independently demonstrated producer/schema MVP and its remaining US2/US3/US4/delivery obligations in `specs/024-facts-witness-schema/evidence/us1.md`; this checkpoint is not issue closure or release readiness (after T017).

## Phase 4: User Story 2 — Reject documents with the wrong structure (P1)

**Goal**: All required malformed structures fail the corrected public shape while legitimate generic payloads and independent semantic checks retain their domains.

**Independent test**: Execute C04–C06 using shared tests authored before schema correction; compare actual baseline RED/preservation classification and original checked-Core outcomes.

- [X] T019 [US2] Execute every C04 root/family/item required-field/basic-type/additional-property/result_hash negative in `crates/behavior-verify/tests/facts_witness_schema.rs`; prove corrected schemas reject the actual defect and distinguish baseline root-name masking from a historical failing assertion in `specs/024-facts-witness-schema/evidence/us2.md` (after T018).
- [X] T020 [US2] Execute C05 canonical payload boundaries and C06 omission/empty/false/null/open-universe/sequence controls in `crates/behavior-verify/tests/facts_witness_schema.rs`; preserve “missing means unknown,” “empty family array is an empty partial map,” explicit known-empty per-key observations and captures order; schemas do not prove lexical integer spelling/raw key uniqueness (after T019).
- [X] T021 [US2] Run bounded generation/metamorphic variants from the shared corpus in `crates/behavior-verify/tests/facts_witness_schema.rs`: reorder map/set inputs, preserve capture sequence, compare normalized serialization, and exercise all nested helper fields; any newly discovered correction behavior first receives an asserting test on the relevant real baseline before a fix (after T020).
- [X] T022 [US2] In disposable sources, demonstrate nested negative-test sensitivity with isolated removal of a required/closed constraint or accidental scalar-only payload/universe closure; require the intended existing behavioral assertions to kill each mutation and restored positives to pass, retaining commands/statuses/source/test digests under `/home/kalle/validation-receipts/core024/mutations/` and `specs/024-facts-witness-schema/evidence/us2.md`; never mutate the delivery checkout or fabricate baseline RED (after T021).
- [X] T023 [US2] Compare the checked ordinary consumer's basic structure/normalization results with the unchanged canonical wrapper carrier and document intentional schema-versus-semantic separations in `specs/024-facts-witness-schema/evidence/us2.md`, including structurally valid duplicate/contradictory facts and raw lexical constraints (after T022).
- [X] T024 [US2] Resolve any scoped test/schema gap with reviewed fresh asserting evidence before correcting the two wrapper files; if no correction is needed record that disposition in `specs/024-facts-witness-schema/evidence/us2.md`; runtime/API/other-schema findings remain separately recorded rather than silently fixed (after T023).
- [X] T025 [US2] Collect/run the final shared producer/structural target after all US2 edits in `crates/behavior-verify/tests/facts_witness_schema.rs`, record every mandatory executed category and any failure instead of counting uncollected/skipped cases in `specs/024-facts-witness-schema/evidence/us2.md` (after T024).
- [X] T026 [US2] Bind C04–C06 and P024-02–06/09 to source invariants and actual bounded outcomes in `specs/024-facts-witness-schema/evidence/case-inventory.md`; disclose that schema acceptance is not semantic truth/authority (after T025).

## Phase 5: User Story 3 — Preserve recorded meaning (P2)

**Goal**: Current and supported historical evidence retain exact Core interpretation, identity and refusal eligibility under their own profiles.

**Independent test**: C07–C09 with current fresh module/read/migration paths, original genuine0.8 archive custody, constructed0.7/0.8 codecs and explicit unsupported controls; no cross-profile equality or archive promotion.

- [X] T027 [P] [US3] Author `crates/behavior-verify/tests/facts_witness_compatibility.rs` from the explicit support matrix: current legal module versions, invocation/read/migration witness alternatives, genuine archived capture and constructed codec controls, unsupported verifier/solver/Wire and semantic/trust refusals; use immutable archive bytes and existing helpers without rewriting semantics or shared fixtures (after T008; may start beside US1).
- [X] T028 [US3] Characterize the checked/runtime outcomes of T027 in a separate temporary checkout of baseline `4f44fb83054d6d100f55e0b1466196b8cc94b151`, with only the reviewed compatibility tests and required fixtures added. Freeze that checkout during execution and retain its baseline SHA, test/fixture overlay digests, commands/results, exact bytes/hashes/refusal phases/categories/precedence and H/K producer labels in `specs/024-facts-witness-schema/evidence/us3.md` and `/home/kalle/validation-receipts/core024/compatibility-baseline/`; do not run baseline characterization against the actively edited 024 checkout or modify the frozen 023 checkout; passing preservation controls are not manufactured RED (after T027).
- [X] T029 [US3] Execute legal current0.9 S02/S04/S05/S06 cases in `crates/behavior-verify/tests/facts_witness_compatibility.rs`, bind each actual module/Wire/profile/subject and emitted-family subset, and validate unchanged computation against the corrected applicable schemas; no unsupported Cartesian combinations or silent INCONCLUSIVE-to-proof conversion (after T018/T028).
- [X] T030 [US3] Execute genuine current read and migration refusal producers in `crates/behavior-verify/tests/facts_witness_compatibility.rs`: original invocation Facts optionality, migration entity/value/refusal_code alternative without Facts, actual same-subject runtime/transform_one reproduction and correct governance/embedded Store boundaries (after T029).
- [X] T031 [US3] Execute H01 genuine0.8 archive and K01/K02 constructed0.7/0.8 controls in `crates/behavior-verify/tests/facts_witness_compatibility.rs`; preserve original document bytes/hashes/signatures and archive decoding while retaining fresh-current-subject refusal; do not claim historical all-family witness production from zero-witness archives (after T030).
- [X] T032 [US3] Execute C07 semantic-key/contradiction and exact subject/manifest/signature refusals with valid positives in `crates/behavior-verify/tests/facts_witness_compatibility.rs`; reach the intended checked boundary using public test resigning helpers where needed and compare the existing refusal category/phase with T028 (after T031).
- [X] T033 [US3] Run the existing core facts/queries/read goldens/replay, Verify trusted_verification/read_soundness/lifecycle/queries/migration and original023 Verify/Store strict_bundle*/Store trusted_governance controls listed in `specs/024-facts-witness-schema/quickstart.md`; record their exact source-bound statuses and original evidence preservation in `specs/024-facts-witness-schema/evidence/us3.md` (after T032; after T026 if shared test source changed).
- [X] T034 [US3] Resolve scoped compatibility discrepancies through intended baseline assertions before correction and record out-of-scope findings/gaps in `specs/024-facts-witness-schema/evidence/us3.md`; protect recorded profiles and do not add a new runtime interpretation or broaden unsupported support (after T033).
- [X] T035 [US3] Reconcile every S02/S05–S07/H01/K01–K03/N01–N03 row, current/historical bytes and P024-07–10 coverage in `specs/024-facts-witness-schema/evidence/case-inventory.md`; distinguish raw codec controls, actual current production and original archive evidence (after T034).

## Phase 6: User Story 4 — Adopt the corrected public contract knowingly (P2)

**Goal**: Public consumers can verify supported production/reproduction and understand the explicit schema acceptance-domain change and version-bound adoption.

**Independent test**: Facade/CLI-only C10 control under canonical consumer builds; reviewed migration/compatibility information and actual requirement-to-evidence traceability.

- [X] T036 [P] [US4] Author `consumer/tests/facts_witness_schema.rs` using behavior-engine and the exact source-bound CLI for the real issue producer, envelope decode/subject validation and DENY reproduction; use existing copied fixtures only, with no ../../schema/spec reads, internal crate imports, dependency override, copied schemas or new API (after T008; may start beside US1/US3).
- [X] T037 [US4] Build/use the current source CLI and collect/run the new facade consumer through unchanged `scripts/check-consumer.sh`, retaining CLI/consumer/fixture/source digests and actual results in `specs/024-facts-witness-schema/evidence/us4.md`; this is preservation/consumer evidence, not independent schema checking (after T036/T018).
- [X] T038 [P] [US4] Write the concrete accepted-domain/migration explanation in `docs/governance.md`: canonical six roots, strict observation products, generic canonical payloads, correct witness/enclosing boundaries and schema success versus semantic/trust obligations; do not copy large normative contracts or change semantics (after T018).
- [X] T039 [P] [US4] Finalize conservative minor-class/schema-asset consequences and consumer adoption notes in `specs/024-facts-witness-schema/compatibility-assessment.md` and a narrow reference in `docs/versioning.md`; preserve old release assets/tags, records/profiles/hash rules and exact ecosystem pins; select no numeric release (after T026/T035).
- [X] T040 [US4] Reconcile actual consumer, positive/negative family/profile coverage and changed public schema domain with FR-001–015/SC-001–006 in `specs/024-facts-witness-schema/evidence/coverage.md`; use workspace schema checks plus consumer checked reproduction, not temporary-relative asset assumptions (after T037/T038/T039).
- [X] T041 [US4] Verify doc/contract/quickstart commands, links, ownership and supported row claims against actual implemented files and evidence in `specs/024-facts-witness-schema/quickstart.md` and `specs/024-facts-witness-schema/evidence/us4.md`; identify remaining assumptions instead of implying universal proof or full016 closure (after T040).
- [X] T042 [US4] Record complete working-source consumer/compatibility readiness in `specs/024-facts-witness-schema/evidence/us4.md`, including the schema-versus-record identity distinction and pending frozen-revision delivery assurance (after T041).

## Phase 7: Polish, independent review and exact-revision delivery

**Purpose**: Reconcile implemented scope, then freeze all tracked changes before mandatory final checks. No merge, tag, release or ecosystem pin change is part of these tasks.

- [X] T043 Reconcile required collection/results from every quickstart group and case/proof row in `specs/024-facts-witness-schema/evidence/coverage.md`; run missing or invalidated focused checks only after all story writers finish, retaining current source/test/schema identities and no skipped mandatory case (after T026/T035/T042).
- [X] T044 [P] Produce `specs/024-facts-witness-schema/implementation-report.md` with the scoped correction, exact public acceptance changes, actual source-bound producer/structural/historical/consumer evidence, assumptions and final delivery pending; preserve immutable016/019/023 findings and receipts (after T043).
- [X] T045 [P] Independently review all P024-01–12 and requirements against schema/source/evidence in `specs/024-facts-witness-schema/evidence/targeted-re-audit.md`; reviewer differs from schema/test authors; distinguish construction/invariants/tests/assumptions and avoid full-Core/fullv2 conformance claims (after T043).
- [X] T046 Resolve review findings through their owning story with actual asserting evidence before corrections; reconcile `specs/024-facts-witness-schema/evidence/coverage.md` and `specs/024-facts-witness-schema/evidence/targeted-re-audit.md`, preserving unrelated findings and requiring new checks for any changed source (after T044/T045).
- [X] T047 Finalize tracked reports, links/whitespace, exact allowed/protected file comparison and T001–T047 bookkeeping in `specs/024-facts-witness-schema/tasks.md`; stage only the reviewed explicit file list, leave final tasks unchecked for external completion and keep the frozen023 checkout untouched (after T046).
- [ ] T048 Commit/push the explicit finalized implementation/test/schema/fixture/report file list, freeze its SHA/tree and initialize `/home/kalle/validation-receipts/core024/<candidate-sha>/receipt.json` with source/schema/test/fixture/CLI and environment/command/log identity plus T048–T052 statuses; never embed the containing commit SHA in its own tracked reports or modify the frozen checkout (after T047).
- [ ] T049 Run `nix develop -c scripts/gates.sh` from the clean unchanged frozen checkout; retain every canonical status/log and new-test collection in `/home/kalle/validation-receipts/core024/<candidate-sha>/receipt.json`; no dependency override, gate weakening or skipped required check (after T048).
- [ ] T050 Run unchanged `nix develop -c scripts/check-consumer.sh --rev <candidate-sha>` against the exact pushed SHA from that same frozen source; bind current CLI/fixture/schema/consumer identities and capture actual temporary Git Cargo.toml/Cargo.lock before cleanup, including Nix nested TMPDIR; all Core packages must resolve to that SHA in `/home/kalle/validation-receipts/core024/<candidate-sha>/receipt.json` (after T049).
- [ ] T051 Verify clean checkout/local HEAD/tree/remote SHA, original frozen023 identity, receipt/log/source/schema/fixture/CLI digests, resolved Git packages and actual FR/SC/C/P coverage in `/home/kalle/validation-receipts/core024/<candidate-sha>/receipt.json`; distinguish CI PR-merge revision evidence from exact candidate checks and classify remaining assumptions (after T050).
- [ ] T052 Seal external T048–T052 completion and final scoped assessment in `/home/kalle/validation-receipts/core024/<candidate-sha>/receipt.json`; report implemented/committed/pushed separately from merged/released and issue closure eligibility, without editing frozen tracked checkboxes. A failing final check or later source/report/integration SHA needs a new candidate and fresh applicable checks (after T051).

## Dependencies & Execution Order

### Phase/story graph

```text
Setup T001 → T002 + T003
                 ↓
Foundation T004 → T005 → T006 → T007 → T008
                 ↓                   ├─────────────┐
US1 tests T009 → T010 → T011 → T012    ↓             ↓
                 ↓                 US3 tests     US4 consumer
Schemas T013 + T014                 T027 → T028   T036
                 ↓                   │             │
US1 GREEN T015 → T016 → T017 → T018 ──┴─────────────┤
                 ├───────────────┐                 ↓
                 ↓               ↓                T037
US2 T019–T026              US3 T029–T035             │
                 └────────┬──────┘                 │
                        US4 T038–T042 ◀─────────────┘
                             ↓
            T043 → T044 + T045 → T046 → T047
                             ↓
      freeze → gates → exact Git consumer → verify → seal
                 T048 → T049 → T050 → T051 → T052
```

The sequential story order is independently executable; early `[P]` US3/US4 test-authoring may start after T008 on different files. US3 semantic characterization uses T028's separate frozen baseline checkout and can finish before schema edits; its corrected-domain result waits for T018. US2 shares the US1 test-file owner and runs after T018. US3/consumer need not wait for US2 except when a shared source edit invalidates their result. Final readiness joins all story outcomes.

### Exclusive ownership and parallel examples

| Lane | Exclusive write paths | Ready work and constraints |
|------|-----------------------|----------------------------|
| Coordinator/fixtures | `tests/fixtures/facts-witness-schema/`, shared evidence inventories/tasks/final runner | One writer; fixture contract T004/T005 frozen before other authors use it |
| Producer/structure | `crates/behavior-verify/tests/facts_witness_schema.rs`, us1/us2 evidence | T006, T009/T010, US2 all serialized; no two story writers on this file |
| Governance schema | `schema/governance-v2.schema.json` | T013 after joined genuine/structural REDs |
| Store schema | `schema/store-v2.schema.json` | T014 alongside T013, same agreed contract |
| Compatibility | `crates/behavior-verify/tests/facts_witness_compatibility.rs`, us3 evidence | T027 may accompany US1 authoring; T028 runs only in its isolated frozen baseline checkout; final runs after correction |
| Consumer | `consumer/tests/facts_witness_schema.rs`, us4 consumer evidence | T036 alongside US1/US3; no schema/spec dependency or shared-fixture edit |
| Adoption docs | `docs/governance.md` vs compatibility assessment/`docs/versioning.md` | T038 and T039 use separate files after their dependencies |
| Report/review | implementation report vs targeted re-audit | T044/T045 after all focused results, different owners |

**US1 example**: after T012, T013 and T014 can run concurrently. Each produces one schema file; join before T015 compares both.

**US2 example**: one source author serializes T019–T025. An independent reviewer may inspect retained baseline/negative/mutation evidence read-only while that author works; no concurrent test-file edits are authorized.

**US3 example**: T027 test authoring may proceed alongside T009/T010 on distinct files after T008. After T027, T028 may run concurrently only in its isolated, frozen baseline checkout. Corrected-domain validation still waits for T018.

**US4 example**: T036 uses its own consumer file while US1/US3 tests are authored. T038/T039 can proceed independently after their respective dependencies, then join T040.

A new fixture need is handed to the fixture owner; no lane silently edits common helpers/manifests. Tests, mutations, source freezes and final gates cannot share an actively mutated source. The final validation runner is a single owner.

## Implementation Strategy

### MVP first

Complete setup/foundation and US1. The issue's genuine signed witness becomes schema-valid without changing DENY, signed bytes or semantic identity; all six ordinary families are representable. This is a useful independently demonstrable checkpoint, **not** sufficient to close issue21 or deliver the entire feature: structural rejection, historical preservation, consumer adoption and frozen final checks remain mandatory.

### Incremental completion

US2 verifies the corrected structural domain and normalized laws. US3 demonstrates same-profile semantic/archival preservation and witness alternatives. US4 proves supported facade consumption and documents public adoption. Final review and exact-revision receipt establish scoped delivery readiness; no release is performed.

## Requirement and evidence coverage

| Requirement/outcome | Principal tasks |
|---------------------|-----------------|
| FR-001; SC-001 | T009–T015 |
| FR-002/003; SC-002 | T006/T007, T010, T013–T020 |
| FR-004/005 | T006/T007, T020/T021 |
| FR-006; SC-003 | T006/T007, T019/T022/T023, T033 |
| FR-007/009 | T009/T015/T016, T029/T030 |
| FR-008 | T023, T027/T028, T032 |
| FR-010/011; SC-004 | T004, T027–T035, T016/T023 |
| FR-012 | T006/T007, T019–T025 |
| FR-013; SC-002 | T004/T010/T017, T029/T030/T035, T040 |
| FR-014; SC-005 | T036–T042 |
| FR-015; SC-006 | T043–T052 |
| C01/C02/C03 | T006/T009–T017 |
| C04/C05/C06 | T006/T007, T019–T026 |
| C07/C08/C09 | T027–T035 |
| C10 | T036/T037, T050 |
| C11 | T002/T006/T016/T033/T051 |
| C12 | T038–T052 |
| P024-01/02/03/04/05/06 | T006–T026, corresponding case evidence |
| P024-07/08/09/10 | T016/T023, T027–T035 |
| P024-11/12 | T036–T052 |

## Completion notes

There are **52 tasks**: setup 3, foundation 5, US1 10, US2 8, US3 9, US4 7, final review/delivery 10. T001–T047 are performed and verified; final statuses are external. Mark only performed/verified work, never reviewer-owned quality checklists. T001–T047 are finalized before freeze; T048–T052 complete externally against the exact unchanged candidate. New tests cannot attest past test-first compliance; already-green preservation controls are honestly distinguished from intended REDs.

Task generation created this work list before analysis and implementation. Current checkbox states and feature evidence record performed work. Neither the broader016 audit nor frozen019/023 work is silently rewritten or globally closed.
