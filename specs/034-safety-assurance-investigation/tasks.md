# Tasks: Safety Assurance and Core Architecture Investigation

**Input**: [spec.md](spec.md), [plan.md](plan.md), [research.md](research.md), [data-model.md](data-model.md), [contracts/](contracts/) and [quickstart.md](quickstart.md).

**Feature**: `034-safety-assurance-investigation`; current Git research branch `033-core-proof-feasibility`. All paths below are repository-relative. Feature selection remains `.specify/feature.json`.

**Tests**: Required by the specification's controlled-check/proof obligations, the plan and Constitution III. Write, review and observe each test's intended failure before implementing the corresponding behavior. Retain red/green receipts; an unavailable compiler or unrelated tool failure is not the intended red result or a semantic counterexample.

**Organization**: Setup → foundation → independently validated stories in priority order → final checks. All boxes are initially unchecked. Completing these tasks delivers a bounded investigation, not a new production Core or adoption of a trust/finality contract.

## Format and execution rules

- Every executable task uses `- [ ] Tnnn [P?] [USn?] description with exact paths`.
- `[P]` permits independent authoring/read-only work on different files after its stated prerequisites. It never permits concurrent heavy builds, proof processes or measurements; the campaign has one measured worker/CPU.
- Record development/TDD checks separately from campaign observations. They cannot count as a cold measurement or be reused as a prior accepted request result. The single final campaign clock starts at input freeze, includes its preparation/build/check work and never resets between commands.
- Finish implementation, schemas, expected semantic facts and profiles before the final freeze. Afterwards keep all bound input bytes unchanged. Progress checkboxes and newly produced report/evidence slots do not grant authority or rewrite frozen inputs.
- A task saying **attempt** is complete only with its actual receipt and truthful outcome. A conditionally skipped case requires a concrete blocking/gate reference and `not_run` disposition. This never completes missing implementation or passes an unexecuted positive check.
- Preserve original Core/Safety IDs, source versions and old evidence. Use no private Core interface, new proving backend, production storage engine, automatic retry or raised resource ceiling. A/B memory acknowledgements remain non-durable; Q6 stays unestablished unless actual additional evidence establishes it.

## Phase 1: Setup — research workspace

**Purpose**: Create an isolated, reproducible workspace without changing production behavior or historical artifacts.

- [X] T001 Create the standalone layout and ignored private output roots in `experiments/assurance-study034/Cargo.toml`, `experiments/assurance-study034/src/main.rs`, `experiments/assurance-study034/.gitignore` and `experiments/assurance-study034/README.md`; declare `#![forbid(unsafe_code)]`, typed research errors, create-once evidence and no production activation.
- [X] T002 Pin public `behavior-engine` to `63a8c164523275e06ac1d7dc5330db4a899c9d99` and `behavior-models` to `8c0849fb82343ddf5a4dd99b5070ee985f8ebff0` in `experiments/assurance-study034/Cargo.toml` and its committed `Cargo.lock`; verify direct/transitive engine resolution is one exact package identity, preserve full Safety workspace metadata for offline exports and use private Cargo/build roots.
- [X] T003 [P] Define the pinned Rust 1.98.1/Python 3.13/actual Safety-compatible Lean 4.30.0 environment and test commands in `experiments/assurance-study034/toolchain.json` and `experiments/assurance-study034/tests/README.md`; record real binary/derivation identities, installed dependency/cache conditions and no ambient-version/download fallback.
- [X] T004 Document development receipts versus frozen campaign work, protected historical inputs, eight planned lifecycle situations and the absence of production adoption in `experiments/assurance-study034/README.md`; declare retained executed binaries separately from disposable private build/cache outputs.

## Phase 2: Foundation — blocking record and execution infrastructure

**Purpose**: Provide strict shared records, bounded supervision and source provenance before implementing a story. Do not require a Safety proof result merely to review requirement origins.

- [X] T005 Write and observe failing record/parser tests in `experiments/assurance-study034/tests/artifact_contract.rs` and `experiments/assurance-study034/tests/test_artifact_contract.py`; cover duplicate keys, trailing bytes, unknown versions, wrong subject/history, malformed references, self-authority cycles, bounds, null resource values, serialized checked flags and separate semantic/assurance/operational/cost outcomes.
- [X] T006 Implement strict shared records and schemas in `experiments/assurance-study034/src/artifacts.rs` and `experiments/assurance-study034/schemas/`; preserve these contract limits verbatim: input/prepared/assessment JSON "16 MiB each", public-backend packet "64 MiB", one Core record "8 MiB", JSON nesting "128", identifiers "128 UTF-8 bytes", case/observation index "4096 / 16384", retained evidence "2 GiB". Unknown resource values are "`null` with a reason, never zero"; unevaluated semantic status is `not_evaluated`. Use deterministic integer-valued research records; diagnostics, floating-point times and environment paths do not enter semantic identity. Pass T005.
- [X] T007 Write and observe failing recorder tests in `experiments/assurance-study034/tests/test_recorder.py` using injected clocks/disk readings and actual short-lived child/grandchild helpers; cover inherited limits, remaining-budget clipping, boot change, no clock reset, one affinity, group kill/reap, empty-group confirmation, exhausted disk, preserved logs and post-close hashes.
- [X] T008 Implement `experiments/assurance-study034/recorder.py` and shared supervision in `experiments/assurance-study034/study.py` with "7200 s elapsed" campaign, "1800 s" preparation/scenario, "900 s" process, "180 s / 300 s" Safety tool/role, "8 GiB per process", one worker/CPU, "At least 16 GiB" start disk, "2 GiB / 2 GiB" artifact/cache ceilings, combined "4 GiB" growth and "2 GiB" emergency floor; every child also obeys remaining outer budgets. Pass T007 without editing old recorders.
- [X] T009 Write and observe failing DAG/archive tests in `experiments/assurance-study034/tests/test_manifest_archive.py`; reject invented future digests, path escape, overwritten output slots, supplied-tool execution, changed source bytes, incomplete logs and a file modified after a delayed close/checkpoint. A source hash must not establish proof validity.
- [X] T010 Implement input/prepared/output DAG validation, create-once paths, exact-byte research hashing and close-before-hash helpers in `experiments/assurance-study034/artifact_io.py`; use a distinct `core034` research identity domain, preserve original Core/Safety documents and store self-digests only in parent indexes. Pass T009.
- [X] T011 Acquire and bind the specification's pinned Safety/Core sources, exact public dependency metadata, reachable existing proof sources, selected prior receipts and source availability in `specs/034-safety-assurance-investigation/inputs/source-catalog.json`; use immutable Git objects/full verified exports, not the stale `behavior-ir-512` checkout identity, and do not scan the entire historical archive.
- [X] T012 Validate the foundation with its red/green tests and source-preservation checks and retain `specs/034-safety-assurance-investigation/evidence/development/foundation.json`; distinguish proof/tool readiness from accepted assurance and leave all campaign measurements unrun.

**Checkpoint**: Shared contracts and bounded tooling work. US1 can deliver independently without running the later Safety/runtime campaign.

## Phase 3: US1 — know which guarantees the product needs (P1, MVP)

**Goal**: Produce a defensible requirement-origin register, separating explicit requirements from deductions and proposals.

**Independent test**: Validate all eight categories against pinned sources; review an uncertain origin, a conditional program-safety certificate and the later replay-free runtime requirement without silently conflating them. This needs no successful cryptographic or runtime experiment.

### Tests first

- [X] T013 [P] [US1] Write and observe failing eight-category/source-binding tests in `experiments/assurance-study034/tests/test_origins.py`; require certification, initial validity, enforcement, history correctness, new recipient, replay restriction, finality and timing, and reject missing/dangling source or interpretation fields.
- [X] T014 [P] [US1] Write and observe failing attribution/decision tests in `experiments/assurance-study034/tests/test_origin_decisions.py`; earlier occurrence, experiment approval and repeated "fresh verification" wording must not automatically establish original user intent or production approval.

### Implementation and validation

- [X] T015 [US1] Extract exact source passages, revisions, locators and original claim scopes from Safety 510/511, Core 031–033 and the architecture proposal into `specs/034-safety-assurance-investigation/inputs/source-contexts.json`; retain gaps rather than manufacture a causal history of the user's intent.
- [X] T016 [US1] Define origin/product-decision schema rules in `experiments/assurance-study034/schemas/origins.schema.json`: classifications "`explicit`, `derived`, `proposal`, `unresolved`" and decision status "`unresolved`, `proposed`, `explicitly_decided`"; historical experiment approval cannot populate `explicitly_decided` for a product contract.
- [X] T017 [US1] Implement the origins/decision validation functions in `experiments/assurance-study034/validate_report.py`, including complete category coverage, source/locator binding and justification of classified intent; pass T013–T014 without inventing an automatic natural-language authority checker.
- [X] T018 [US1] Populate `specs/034-safety-assurance-investigation/requirement-origins.json` with every category's beneficiary, lifecycle, subject, premises, source meaning and classification; separately record independent program checking and replay-free executed-history checking.
- [X] T019 [US1] Record proposed/undecided authority, recipient, onboarding and finality choices in `specs/034-safety-assurance-investigation/product-decisions.json` and reusable primary proof/checking methods in `specs/034-safety-assurance-investigation/reuse-assessment.md`; name each contribution, premises, Core connection and unverified portions without choosing a backend.
- [X] T020 [US1] Independently validate and manually review the source-to-origin interpretations and all US1 acceptance scenarios; retain `specs/034-safety-assurance-investigation/evidence/development/us1-review.json` with source gaps and passed/failed quality checks, not an assertion that later product decisions were made.

**Checkpoint**: US1 is the first reviewable MVP. Correct history remains a fixed goal; the origin review has not adopted a trust/finality arrangement.

## Phase 4: US2 — establish safety throughout operation (P1)

**Goal**: Build the checked program/valid-boundary/enforced-segment argument and real representative Safety lifecycle, including explicit failures of its premises.

**Independent test**: Freshly check the exact primary module, validate a complete starting state, activate it at the exact boundary and exercise eight committed transitions plus refusals. Challenge invalid starts, missing mutation coverage, policy/authority changes and unsafe migration; inspect checked composition and explicit countermodels. No B or C result is needed to understand A's conditional claim.

### Tests and expected facts first

- [X] T021 [P] [US2] Write and observe failing fixture/deployment tests in `experiments/assurance-study034/tests/deployment_boundary.rs` for E01–E04 and E06–E07: exact module/full policies, valid versus detached/invalid start, complete mutation coverage, coordination, bypass handles, deactivation on migration/restart and no activation from a serialized flag.
- [X] T022 [P] [US2] Write and observe failing proof-audit contract tests in `experiments/assurance-study034/tests/test_proof_audit.py`; missing roots, weakened intended types, holes, custom/native-computation axioms and incomplete fresh replay must fail, while tool exhaustion stays operational rather than a semantic countermodel.
- [X] T023 [US2] Author complete business expectations for the LD8 sequence and separately identified LD8C command variant in `experiments/assurance-study034/expected/ld8.json` and `experiments/assurance-study034/expected/ld8c.json`; include before/after values, original outcomes/errors/refusals, eight committed positions and duplicate-command order. Mechanically derived full records must later identify their shared Core oracle and satisfy these authored facts.

### Implementation and formal argument

- [X] T024 [US2] Implement the public-Builder LD8 fixture in `experiments/assurance-study034/src/fixtures.rs`, preserving the pinned parent/child pattern, eight actions and complete three-policy set; compare any claimed reference identity with its exact source export and freshly certify the actual admitted subject if it differs.
- [X] T025 [US2] Implement actual public Safety analysis, certification and independent evidence rechecking in `experiments/assurance-study034/src/safety_check.rs`; bind complete action/policy inventories, selected tool derivation, intended theorem/proof inputs and checked certificate objects. Imported JSON, preinstalled bundles and version banners alone cannot authorize success.
- [X] T026 [US2] Implement A's single-coordinator activation/deactivation and controlled invocation in `experiments/assurance-study034/src/arrangements.rs`; check certificate, acquire the writer boundary, validate the full history-bound state, confirm that exact anchor and activate its exact module/policy tuple. Direct-handle bypass invalidates the stated premise rather than becoming magically prevented.
- [X] T027 [US2] Add public snapshot validation and incoming rule/import/migration boundary handling in `experiments/assurance-study034/src/boundaries.rs`; valid later anchors cover only their declared interval, failed activation never leaves an active segment and migration/restart clears active authority before writes. Pass the runtime behaviors in T021.
- [X] T028 [US2] Define claim classes "`program_preservation`, `state_validity`, `exact_transition`, `segment_safety`, `exact_prefix`, `authoritative_publication`", exact subjects, premise statuses "`checked`, `explicit_trust`, `unestablished`, `violated`" and segment/basis relations in `experiments/assurance-study034/proofs/Assurance034/Claims.lean`; do not assume the desired post-state or equate preservation with exact execution. Preserve the rule: "A known failed module-proof obligation cannot be moved to `explicit_trust`."
- [X] T029 [US2] Build the pinned Safety/Core032 import adapters and reachable-source manifest in `experiments/assurance-study034/proofs/Assurance034/Imports.lean` and `experiments/assurance-study034/proofs/imports.json`; bind original and any adapted source bytes, proposition identities, guard/projection/Core-condition premises and remaining runtime correspondence. Do not import 033's unsupported backend authority.
- [X] T030 [P] [US2] Prove `segment_safe`, `segments_compose` and `policy_change_global_claim` in `experiments/assurance-study034/proofs/Assurance034/Segments.lean` after T028–T029; require exact adjoining boundaries and explicit implication from each changed policy to any single global property.
- [X] T031 [P] [US2] Prove `checked_history_exact`, `history_length_position`, `continuation_equivalent`, `refusal_history_unchanged` and `duplicate_commands_preserved` in `experiments/assurance-study034/proofs/Assurance034/History.lean` after T028–T029; keep the accepted origin and exact result/coverage premises explicit and make no O(tail) implementation claim.
- [X] T032 [P] [US2] Prove `publication_conditional` in `experiments/assurance-study034/proofs/Assurance034/Publication.lean` after T028–T029; restrict it to the stated exact-parent atomic relation and explicitly leave actual fsync, host authority and memory-store durability outside the conclusion.
- [X] T033 [US2] Construct kernel-checked countermodels in `experiments/assurance-study034/proofs/Assurance034/Countermodels.lean` for current-valid⇒safe-past, preservation⇒exact-output, certificate⇒enforcement, metadata⇒verified-basis, valid-branch⇒expected/latest-branch, uncontrolled writers, unsafe migration and policy weakening; demonstrate actual invalid implications rather than compiler failures.
- [X] T034 [US2] Implement the bounded proof/type/axiom/fresh-replay runner in `experiments/assurance-study034/check_proofs.py`; permit only "`propext`, `Classical.choice`, `Quot.sound`", check actual transitive dependencies and `leanchecker --fresh`, reject supplied executable/proof-code substitution and pass T022.
- [X] T035 [US2] Freeze the complete expected root/countermodel/type/premise inventory in `experiments/assurance-study034/proofs/targets.json`; connect every declared assurance proposition to its exact root/source and ensure omitted or weakened targets cannot pass by retaining a correct unrelated theorem.
- [X] T036 [US2] Implement typed worker `prepare` and A `produce` commands in `experiments/assurance-study034/src/main.rs`, connecting fixtures, actual Safety checks, state boundaries, exact Core decisions and original records to the shared evidence model without granting authority from process exit0.
- [X] T037 [US2] Validate US2 independently with its real bounded integration tests and proof checks; retain red/green, exact sources, intended types, actual axioms, fresh replay and runtime E01–E04/E06–E07 outcomes in `specs/034-safety-assurance-investigation/evidence/development/us2-validation.json`. These development results are not final campaign cold pairs or proof of Rust/Core end-to-end correctness.
- [X] T038 [US2] Write Q1/Q2/Q4 arguments, all six claim boundaries and explicit extraction/encoding/Core/host/storage premises in `specs/034-safety-assurance-investigation/assurance-arguments.md`; include the invalid implications and each actual public-library correspondence gap, with unresolved Q6 clearly marked.

**Checkpoint**: The conditional safety argument and real A lifecycle are inspectable. No successful module certificate is called a certificate of actual historical enforcement or durable publication.

## Phase 5: US3 — compare assurance arrangements fairly (P1)

**Goal**: Compare actual A, independent B and scoped historical C evidence with exact subjects, explicit trust differences and all eight recipient/lifecycle situations.

**Independent test**: An independent B process checks the captured real A history against a separately expected origin/endpoint and rejects altered packets/branches; a resident B process extends its own verified Store and refuses unestablished bases. The comparison has all 24 explicit cells even where C or a stronger guarantee remains unestablished.

### Tests first

- [X] T039 [P] [US3] Write and observe failing public-backend packet tests in `experiments/assurance-study034/tests/backend_packet.rs`; cover every create/Applied-commit argument, original records/versions/references/removals, bounds, omitted/duplicate steps, wrong heads and same-state/different-history anchors.
- [X] T040 [P] [US3] Write and observe failing fresh/resident consumer and recovery tests in `experiments/assurance-study034/tests/independent_consumer.rs`; cover E08–E13, complete output/error comparison, wrong but safe results, producer flags, lost/stale bases, different valid branches, refusals, duplicate commands, stale CAS and interrupted memory acknowledgements without durability claims.
- [X] T041 [P] [US3] Write and observe failing comparison/prior-scope tests in `experiments/assurance-study034/tests/test_comparison.py`; reject missing/repeated A/B/C×S1–S8 cells, changed requested claims, hidden host trust, old identity/x-count proof promotion, unavailable C certificates passed as LD8 evidence and memory latency relabeled durable finality.

### Implementation and validation

- [X] T042 [US3] Implement the public `Backend` capture adapter and bounded typed packet in `experiments/assurance-study034/src/capture.rs`; retain complete successful create/Applied-commit data, preserve immutable original identities and reconstruct only through public backend methods. Pass T039 without treating reconstruction success as verification authority.
- [X] T043 [US3] Implement fresh B reconstruction plus data and behavior replay in `experiments/assurance-study034/src/history_check.rs`; compare the independently expected full HistoryRef, exact request/result/record and complete module/migration/policy inventory. Charge required historical-prefix work and check certificate/validity/segment coverage when those claims are requested.
- [X] T044 [US3] Implement resident B checking in `experiments/assurance-study034/src/arrangements.rs`: compare the complete incoming candidate with actual public Core evaluation on the consumer's established Store, commit only the matching exact-parent result and confirm its full endpoint. Do not assume the public API avoids earlier-prefix work.
- [X] T045 [US3] Extend worker `check` and named `control` commands in `experiments/assurance-study034/src/main.rs` with bounded arguments and contract exits 0/1/2/3; output separate semantic, assurance, operational and cost results and product adoption `unactivated`. No arbitrary supplied code, implicit tools or producer-selected trusted head is accepted.
- [X] T046 [US3] Implement restart/transfer/lost-state behavior in `experiments/assurance-study034/src/recovery.rs`; preserve the basis lifecycle "`absent → supplied_unverified → checking → established_under_premises`", invalidate stale subjects and discard active coordinator authority on restart. Distinguish explicit trusted retained storage from untrusted serialized bytes requiring fresh establishment.
- [X] T047 [US3] Complete the separately admitted/freshly certified LD8C variant in `experiments/assurance-study034/src/fixtures.rs` and pass the command controls written red in T040's `experiments/assurance-study034/tests/independent_consumer.rs`; retain two equal ordered command occurrences and a changed history anchor with unchanged content state. The LD8 certificate must fail as authority for LD8C.
- [X] T048 [US3] Implement E13's controlled refusal/CAS/duplicate-packet/interruption/lost-ack scenarios in `experiments/assurance-study034/src/publication_controls.rs`; verify only the logical/memory properties actually provided, preserve original refusal codes, and leave durable request idempotency and full certified publication unestablished.
- [X] T049 [P] [US3] Bind and assess existing C receipts in `specs/034-safety-assurance-investigation/inputs/prior-study-index.json`; preserve exact old sources/subjects/limits and missing certificates, distinguish valid identities from actual prefix claims, and schedule no new C proving run or reinterpretation of SQLite/local-K evidence as LD8 coverage.
- [X] T050 [US3] Define all 24 arrangement/situation cells and same-requested-claim comparisons in `experiments/assurance-study034/profiles/comparison-plan.json`; identify authorities, established subsets, evidence needed, exclusions, Q6 gaps and expected non-comparability rather than presume every arrangement supplies every claim. Pass T041.
- [X] T051 [US3] Finalize the complete future case/output-slot registry and limits for the T060 input freeze in `experiments/assurance-study034/profiles/diagnostic.json`, including bootstrap/proofs/integration/controls, three cold certification/checking pairs and six growth cells `(P,H)=(1,8),(32,8),(128,8),(1,32),(1,128),(128,128)` with N=2P, D=one relevant operation and three observations per role/cell; include all fifteen E01–E15 controls and no percentile claim.
- [X] T052 [US3] Finish the `freeze` path in `experiments/assurance-study034/study.py` so it binds actual code/tools/source/profile/author expectations and starts one monotonic campaign clock with boot identity; later prepared outputs form the declared DAG without invented future digests, altered inputs, clock resets or deserialized verification authority.
- [X] T053 [US3] Validate actual fresh-process packet checking, independent expected subjects, resident continuation and lost-basis behavior; retain valid controls, targeted failures and unavoidable replay/prefix work in `specs/034-safety-assurance-investigation/evidence/development/us3-validation.json`. Use only declared consumer inputs, not the producer's private Store/cache, and pass T040.
- [X] T054 [US3] Extend `specs/034-safety-assurance-investigation/assurance-arguments.md` with B's exact claim/premise boundaries, C's scope-limited prior evidence and a traceable E01–E15 disposition map; distinguish checking historical execution, reconstructing historical safety evidence and controlling actual external enforcement.

**Checkpoint**: A/B have a real public-interface discriminator; C remains a truthful strong comparator with gaps. US3 has not declared a production winner or moved expensive work out of the accounting.

## Phase 6: US4 — make the evidence-based architecture decision (P2)

**Goal**: Execute one frozen bounded campaign, assess full lifecycle costs and necessary complexity, and issue a supported/conditional/rejected recommendation with explicit product decisions.

**Independent test**: A fresh validator can reconstruct the decision's source→claim→premise→observation path, find all 24 cells/fifteen control dispositions and distinguish complete research from missing positive assurance. A negative, reproducible investigation result is acceptable; an invented success is not.

### Tests first

- [X] T055 [P] [US4] Write and observe failing supervisor/CLI contract tests in `experiments/assurance-study034/tests/test_cli.py`; verify `freeze`, `run-case`, `collect`, prepared/gate prerequisites, exact role endpoints, contract case IDs, nested budget clipping, command summaries and create-once outputs, including expected exits 0/1/2/3 without equating exit0 to established assurance.
- [X] T056 [P] [US4] Write and observe failing final-assessment tests in `experiments/assurance-study034/tests/test_report_validation.py`; reject absent/repeated cells/controls, missing valid controls, dangling hashes, failed or weakened proof roots, fake certificates, hidden trust, unrun=passed, null=zero resource substitution, client RSS as whole-tree peak, summed unrelated medians and percentiles with fewer than 100 complete samples.

### Implement orchestration and assessment

- [X] T057 [US4] Implement complete lifecycle interval/resource observations in `experiments/assurance-study034/measurements.py`, using the foundational recorder; separate launch/IPC/loading, preparation, certification, activation, execution/commit, fresh/resident checking, audit and recovery. Preserve sampled versus direct-child versus enforced resource scopes and unknown values; do not move displaced work into an unreported cache/setup phase.
- [X] T058 [US4] Implement gated case orchestration in `experiments/assurance-study034/study.py`: bootstrap retains actual binaries and the first fresh certification/checking pair before publishing a prepared manifest; subsequent frozen cases obey correctness/proof/subject and outer-budget gates. Ensure control failures and unrun work remain explicit; pass T055 without retries-until-success.
- [X] T059 [US4] Implement close-before-hash `collect` and complete independent assessment validation in `experiments/assurance-study034/study.py` and `experiments/assurance-study034/validate_report.py`; retain the exact assurance enum "`established_under_premises`, `refuted`, `unestablished`, `unsupported`, `operational_failure`, `not_run`", operational enum "`completed`, `build_failed`, `tool_failed`, `resource_stopped`, `interrupted`, `invalid_archive`, `not_run`", cost enum "`within_research_envelope`, `exceeded`, `not_comparable`, `not_measured`", candidate enum "`supported_for_declared_scope`, `conditional`, `rejected`, `undetermined`" and control-result enum "`targeted_rejection`, `unexpected_acceptance`, `unexpected_rejection`, `operationally_unresolved` or `not_applicable`". Validate all refs/statuses and pass T056.

### Execute the frozen investigation

- [X] T060 [US4] Freeze the completed implementation/profile/expected inputs at `specs/034-safety-assurance-investigation/evidence/campaign-001/input-manifest.json`; attempt bootstrap, proofs and primary integration using the contracted commands and retain actual receipts/prepared bindings. No later input/source edit or old-input rewrite is allowed; a bounded failed prerequisite produces a negative/conditional assessment and explicit blocked roles.
- [X] T061 [US4] If subject/formal/primary gates permit, run `certification-cold-2` and `certification-cold-3` into their declared `specs/034-safety-assurance-investigation/evidence/campaign-001/roles/` slots, giving three pairs including bootstrap; otherwise retain exact gate-linked `not_run` records. Fresh request workspaces do not imply cold OS/install state.
- [X] T062 [US4] Attempt the frozen controls case and separately certified command variant in `specs/034-safety-assurance-investigation/evidence/campaign-001/controls/`; account for E01–E15, each valid control and targeted reason, countermodel versus tool failure, and actual stage exhaustion. Preserve unrun or unsupported controls and stop growth on the contracted failures.
- [X] T063 [US4] If gates and remaining budgets permit, execute `growth-D1` through `growth-D6` into `specs/034-safety-assurance-investigation/evidence/campaign-001/growth/`; prepare identical exact parents for each repetition, measure the predeclared A/fresh-B/resident-B roles, charge parent preparation, and retain all three observations/failures with medians/ranges only. Otherwise record concrete skip reasons.
- [X] T064 [US4] Capture complete program/deployment/new-recipient/retained-state/lost-state/audit/rule-migration lifecycle outcomes and timing scopes in `specs/034-safety-assurance-investigation/evidence/campaign-001/lifecycle/`, using frozen integration/control roles and remaining budgets; link observations or explicit gaps to all eight situations and keep C's unrelated prior costs non-comparable.
- [X] T065 [US4] Close every campaign writer/handle and worker, verify empty process groups, create the closed role-artifact index and independently rehash its exact bytes in `specs/034-safety-assurance-investigation/evidence/campaign-001/closed-artifacts.json`; invalidate late-mutated/open archives and preserve every original stopped/failed attempt.
- [X] T066 [P] [US4] Write `specs/034-safety-assurance-investigation/cost-assessment.md` from the closed T065 evidence, reconciling full preparation/certification/normal-operation/onboarding/audit/recovery costs, N/H/D/output/work-counter scope and actual authorities/endpoints; reject causal speed or durable/percentile claims not supported by the observations.
- [X] T067 [P] [US4] Write `specs/034-safety-assurance-investigation/complexity-assessment.json` from the same closed evidence, counting and explaining trusted authorities, verification obligations, lifecycle boundaries and recovery mechanisms for A/B/C without assuming that a weaker contract is an equivalent simpler solution.
- [X] T068 [US4] Complete `specs/034-safety-assurance-investigation/comparison.json`, `assurance-arguments.md`, `product-decisions.json` and `decision.md` using origins, checked arguments and T066–T067; map all 24 cells/fifteen controls and FR/SC obligations, retain uncertain attribution, identify the supported/conditional/rejected scope and smallest next discriminator, and leave every proposed product contract unactivated.
- [X] T069 [US4] Run `collect` with the final authored analyses and original campaign receipts into the create-once `specs/034-safety-assurance-investigation/evidence/campaign-001/assessment/`; emit separate research completeness, candidate/implementation-gate status and product adoption, without converting a blocked positive role into success.
- [X] T070 [US4] Run the independent `validate_report.py` process against that assessment and retain `specs/034-safety-assurance-investigation/evidence/campaign-001/assessment/validation.json`; explicitly review US4 scenarios and all SC-001–SC-008, including the permissible fully documented negative outcome and every missing positive assurance obligation.

**Checkpoint**: The investigation has evidence-backed dispositions and a justified next decision. This checkpoint is not a production adoption, full Core implementation or proof that any unrun case passed.

## Phase 7: Polish and cross-cutting checks

**Purpose**: Confirm reproducibility, scope protection and reviewability; do not change frozen implementation/expectation bytes to improve an outcome.

- [X] T071 Run the standalone Rust/Python tests, formatter checks and Clippy with warnings as errors against frozen `experiments/assurance-study034/` inputs and private targets; retain actual scoped-gate receipts under `specs/034-safety-assurance-investigation/evidence/campaign-001/gates/`, with failed/unrun checks explicit and without formatting imported old source.
- [X] T072 Run the required repository `scripts/gates.sh` with a private `CARGO_TARGET_DIR` and remaining declared limits; retain its exact result in `specs/034-safety-assurance-investigation/evidence/campaign-001/gates/repository.json`. Record budget/baseline failures honestly; a standalone pass cannot replace this gate or confer integration readiness.
- [X] T073 Re-run the declared deterministic semantic-record cases on identical frozen inputs and compare canonical research and original Core/Safety meaning separately from timings/environment metadata; retain `specs/034-safety-assurance-investigation/evidence/campaign-001/determinism.json` or explicit remaining-budget/unavailable dispositions.
- [X] T074 Verify selected historical frozen-input bindings, exact public dependency/proof identities, current owned-file scope and absence of accidental cache/binary/source rewrites; retain `specs/034-safety-assurance-investigation/evidence/campaign-001/preservation.json` without full-archive rehash or deletion of unrelated untracked material.
- [X] T075 Write `specs/034-safety-assurance-investigation/reproduction.md` with actual command/tool/input identities, budget/installation/cache conditions, expected and actual outcomes, all deviations and links to the decision; assess the unchanged `quickstart.md` scenarios rather than rewriting frozen instructions or describing planned commands as previously passed.
- [ ] T076 Close/seal final report/gate/reproduction outputs in a new create-once `specs/034-safety-assurance-investigation/evidence/campaign-001/assessment-final/`, re-run independent full validation and publish only owned 034 research artifacts after byte-checking committed blobs; keep original assessment/attempts and all failed/unrun statuses, with no production merge, release or trust/finality activation.

## Dependencies and execution order

### Phase and story graph

```text
Setup T001–T004 → Foundation T005–T012
                           ├→ US1 T013–T020 ─────────────────┐
                           └→ US2 T021–T038 → US3 T039–T054 ─┼→ US4 T055–T070 → Polish T071–T076
                                                            ┘
```

US1 is independently useful after the foundation and is the suggested MVP. US2 can be developed independently of the US1 origin conclusions using the pinned shared source catalogue; it does not require any product option to be adopted. US3's real consumer integration requires US2's fixtures/checked boundaries, although its matrix/prior-evidence tests can be authored after the foundation. US4 requires US1's origins and US2/US3's actual subject/assurance work. No story claims independence from shared foundation or from a genuinely needed fixture.

Default implementation order is the numeric task order. Key within-phase dependencies:

| Tasks | Prerequisites and ordering |
| --- | --- |
| T006, T008, T010 | Corresponding T005, T007, T009 intended red tests observed first. |
| T015–T020 | T013/T014 red; source contexts and schemas before populated register validation. |
| T024–T027 | T021/T023 first; actual exact dependency/public API preflight before certificate/activation authority. |
| T030–T033 | T028/T029 definitions and pinned import premises; separate proof files may be authored independently. |
| T034–T037 | T022 red; concrete expected proof targets before acceptance; actual tests/proofs stay sequential. |
| T042–T048 | T039/T040 red; packet reconstruction before fresh/resident checking; actual separately certified command subject before its controls. |
| T049/T050 | T011 source bindings; T041 tests before comparison acceptance. C evidence never requires a new C proving attempt. |
| T052/T058/T059 | Foundational DAG/limits and final profiles; T055/T056 intended red tests before orchestration/assessment acceptance. |
| T060–T065 | Finish and freeze all implementation/profile/expected inputs first. Bootstrap/proof/integration correctness, then cold/control roles, then growth if gates and remaining time permit. Never mutate inputs or reset the campaign. |
| T066/T067 | Closed T065 observations; independent output files, neither depends on the other. |
| T068–T070 | Origins, arguments and cost/complexity analyses before collecting final authored decisions and independently validating them. |
| T076 | Include T071–T075 outcomes in a new final output slot; do not overwrite earlier archived assessments. |

All heavy execution is sequential even when task authoring is marked `[P]`. A blocking operational result may prevent downstream experiments, but not their required truthful dispositions, source analysis or final negative assessment. Do not mark an unimplemented validator/worker as complete merely because a different experiment failed.

## Parallel examples by story

- **US1:** After foundation, author T013 `tests/test_origins.py` and T014 `tests/test_origin_decisions.py` independently. Observe both intended failures before T016/T017.
- **US2:** After T028/T029, author T030 `Segments.lean`, T031 `History.lean` and T032 `Publication.lean` independently. Build and kernel-check them sequentially.
- **US3:** Author T039 `tests/backend_packet.rs`, T040 `tests/independent_consumer.rs` and T041 `tests/test_comparison.py` independently after their shared prerequisites. Once the exact source/subject is known, T049's immutable prior-evidence index can be prepared independently of runtime implementation files.
- **US4:** Author T055 `tests/test_cli.py` and T056 `tests/test_report_validation.py` independently. After T065, T066 cost analysis and T067 complexity analysis use the same read-only evidence but write different files; T068 waits for both.

These are authoring opportunities, not an instruction to start agents or overlapping measured processes.

## Implementation strategy

### MVP first

Complete setup, shared foundation and US1, then inspect the independently validated requirement-origin register and unresolved product choices. This produces useful evidence before any recommendation to expand Core or repeat proof experiments. US1 completion does not pause or cancel the remaining authorized investigation; its checkpoint is an opportunity to assess the findings.

### Incremental delivery

1. US1 establishes provenance without deciding intent from document age.
2. US2 demonstrates the conditional safety argument and its real enforcement boundaries.
3. US3 establishes what independent actual-history checking adds, its costs/work requirements and where C still has no matching evidence.
4. US4 runs the single bounded campaign and produces the final comparative decision.
5. Cross-cutting checks protect original evidence, scope, reproducibility and reviewability. Research code/gate failures remain visible and cannot authorize production adoption.

### Coverage and completion criteria

| Spec obligations | Task coverage |
| --- | --- |
| FR-001–FR-002; SC-001 | T011, T013–T020, T068/T070 |
| FR-003–FR-009; SC-003/SC-006/SC-008 | T005–T010, T021–T038, T040–T048, T054, T068/T074 |
| FR-010–FR-014; SC-002/SC-005 | T039–T054, T057, T061–T068 |
| FR-015–FR-019; SC-004–SC-006 | T001–T012, T021/T022, T034–T037, T051–T065, T069–T073 |
| FR-020–FR-022; SC-001/SC-006–SC-008 | T015/T019, T029–T038, T049/T054, T066–T076 |

All fifteen E01–E15 groups, nine named positive formal targets and explicit invalid-implication countermodels are addressed in the referenced tasks. Every checked task must point to its concrete changed file, proof/test receipt or reviewed research artifact. A completed bounded negative investigation remains distinct from missing implementation, an accepted assurance claim and a finished production Core.

## Final execution ledger

T060–T065 completed as a bounded negative campaign: bootstrap's Nix dispatch-name defect blocked preparation, all later scientific roles were retained as not-run, and the exact archive was closed without input edits/retries. T066–T070 supply the cost/complexity/decision and all 24 cells, fifteen controls and FR/SC dispositions; independent initial assessment validation passed with the formal gate explicitly blocked.

T071 passed 25 frozen-source Rust tests, 52 Python tests, scoped format and Clippy. T072's actual repository gate passed format/Clippy and then stopped at CacheGrowthLimit during test compilation; it is not a passing integration gate. The original failed Nix launcher probe remains at gates/repository.json; the actual script execution is separately retained at gates/repository-named-tool/. T073's original prepared-worker helper remains not-run; a separately identified quality-only frozen-source LD8 replay passed twice with identical original/native and research semantics. T074's read-only legacy audit verified 185 selected historical input bindings and 44 primary Git sources. T075 records all deviations and the unapplied two-regression-tested follow-up patch.

These checked tasks mean their implementation, review, actual attempt or required truthful disposition is complete. They do not mean unrun experiments passed, a release gate passed, millisecond feasibility was demonstrated, native/circuit correspondence was proved, or a product contract was activated. T076 remains pending until final sealing, independent validation, byte-checked commits and authorized research publication finish.
