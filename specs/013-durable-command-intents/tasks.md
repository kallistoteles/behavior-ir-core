---
description: "Executable task list for Durable Command Intents"
---

# Tasks: Durable Command Intents

**Input**: Design documents in `specs/013-durable-command-intents/`.
**Prerequisites**: [spec.md](spec.md), [plan.md](plan.md), [research.md](research.md),
[data-model.md](data-model.md), [contracts](contracts/validation-matrix.md),
[quickstart.md](quickstart.md) and constitution1.0.1.
**Feature**: `013-durable-command-intents`. Generation preserves the current012 checkout;
implementation must work from the accepted012 baseline in a dedicated013 branch/worktree
and preserve existing user changes. Record the actual checkout/revision in the implementation log.

**Tests**: Required by the explicit scenarios/acceptance contracts and constitutional test-first
rule. Every new semantic implementation or repair requires a reviewed compiled test observed
failing for the intended semantic reason before code that makes it pass. A missing import or
compiler error is not that evidence. If a new API needs scaffolding, add only the minimal
reviewed nonpassing interface during the red task; do not implement semantic behavior there.
Already satisfied contract cases are useful regression evidence, not invented red history;
record them and implement only the remaining observed gaps. New tests never prove past TDD.

**Organization**: Setup → blocking foundation → six story phases → final acceptance.
The shared command model/safety encoder belongs to US1 because its atomic governed commit
needs it; US6 completes systematic safety/trust acceptance without duplicating that kernel.
Each story uses an isolated fixture/store and has independent acceptance criteria, while
explicit infrastructure dependencies remain mandatory.

## Format and execution rules

Every task uses `- [ ] TNNN [P?] [USn?] description with exact path`.
All file paths in tasks are relative to the behavior-ir-core implementation checkout.
Absent NEW files/targets/examples are deliberate implementation deliverables. Preserve all
legacy valid bytes/domains/diagnostics and prior admission/runtime; a new verifier version
may conservatively change proof outcomes. Rust1.98.1/edition2024, existing Cargo.lock deps,
Z3 4.16.0, typed errors and forbidden unsafe remain the baseline.

`[P]` means independent files after the stated dependencies pass, never permission to skip
red→green gates. Same-file source changes remain serial. The explicit dependency list is
normative even where another story's test-writing can begin earlier. Code tasks rely on their
preceding tests and transitive foundation. Test tasks write review/red evidence to their own `specs/013-durable-command-intents/evidence/TNNN.md`
files; serial checkpoints consolidate pass results in implementation-log.md. Parallel tasks never
write that shared log simultaneously. If a shared interface scaffold is necessary, establish it
in the earlier serial red task before launching dependent disjoint-file tests (as in US3).
Do not append claimed implementation results during task generation.
No new core dispatcher, callback, workflow, delivery-status store or authoritative outbox.

## Phase 1: Setup (B0 and predecessor acceptance)

**Purpose**: Confirm the existing workspace and completed 012 contract; freeze compatibility evidence before adding 013 code. No new workspace, crate or crypto dependency.

### Implementation / setup

- [X] T001 Verify the unified invocation implementation and acceptance checks in `specs/012-unified-invocation-model/tasks.md`, `crates/behavior-engine/src/lib.rs` and `consumer/tests/capabilities.rs`; record the accepted predecessor revision and reserved Wire0.8/record0.7/verifier0.7.0 versions in `specs/013-durable-command-intents/implementation-log.md`. If 012 is unfinished, complete its existing approved feature workflow before accepting this task; do not mark planning artifacts as implemented.

- [X] T002 [P] Freeze published valid wire/action/read/migration/store record bytes, hashes and diagnostics in `tests/fixtures/commands/legacy-baseline.json`, referencing existing `tests/fixtures/hash_vectors.json` and fixtures without rewriting them; distinguish new verifier-version outcomes from immutable historical attestations. Dependencies: T001.

- [X] T003 [P] Create deterministic nonsecret keys and complete none/deny-all/required policies/profile/Q in `tests/fixtures/governance-v2/authorizer.seed`, `tests/fixtures/governance-v2/verifier.seed`, `tests/fixtures/governance-v2/evidence-policy.json`, `tests/fixtures/governance-v2/policy.json`, `tests/fixtures/governance-v2/profile.json` and `tests/fixtures/governance-v2/context.json`; declare bind_commit_time/exact Bool-i64-String context product and fixed policy_time, derive public keys with existing ed25519-dalek and no environment key discovery. Dependencies: T001.

### Acceptance checkpoint

- [X] T004 Run the pinned toolchain/Z3 checks and `scripts/gates.sh`, capture baseline outcomes and establish per-task red→green evidence records in `specs/013-durable-command-intents/implementation-log.md`; record genuine failures rather than claiming baseline soundness or retroactive test-first compliance. Dependencies: T002, T003.

**Checkpoint**: Complete the listed dependency/acceptance evidence before advancing.

---

## Phase 2: Foundational (G1/G2/G3; blocks every story)

**Purpose**: Deliver and independently validate general trusted governance, justified proof assumptions and exact-history/replay integrity before enabling commands. All required tests precede the behavior they establish.

### Tests — observe intended red before dependent code

- [X] T005 [P] Write/review/run failing malformed-record and strict-decoding regressions in `crates/behavior-core/tests/record_validation.rs`: duplicate/unknown security keys, ambiguous versions, floats/invalid values, empty-fallback hash collisions and false evaluation-stage claims; record the intended semantic failures. Record review/red evidence in `specs/013-durable-command-intents/evidence/T005.md`. Dependencies: T004.

- [X] T006 [P] Write/review/run failing tests in `crates/behavior-verify/tests/trusted_governance.rs` for self-hashed ALLOW, untrusted/wrong-role issuer, weak/invalid/missing/cross-purpose signatures, changed content/signature identity, deny-all/none and complete documents; add full Q/ContextHash round-trips, missing/extra/wrong typed context, policy_time vs authorized_at contradiction, [start,end) boundaries for all roles/waiver expiry, bound-time mismatch and null when unbound. Record review/red evidence in `specs/013-durable-command-intents/evidence/T006.md`. Dependencies: T004.

- [X] T007 [P] Write/review/run failing tests in `crates/behavior-verify/tests/trusted_verification.rs` for poisoned cache, arbitrary caller reports, omitted/duplicate/extra obligations, wrong subject/profile/version/solver and forged aggregate; add semantic report/source-relocation/normalized-binder-alias invariance, versioned report/manifest/obligation golden vectors, distinct repeated legacy expression sites and shared findings without check loss. Inject timeout/cancellation/non-reproducible prefix abort (no envelope) versus deterministic resource-limit INCONCLUSIVE; include legitimate empty manifests and actual fresh signing. Command-specific duplicate sites are added in T042 after Wire0.8 exists. Record review/red evidence in `specs/013-durable-command-intents/evidence/T007.md`. Dependencies: T004.

- [X] T008 [P] Write/review/run failing audited nested Exact/Wrap/Rescale/fold-bound and read-alias counterexamples in `crates/behavior-verify/tests/soundness_regressions.rs`; acceptance is no false trusted PROVEN, allowing a justified INCONCLUSIVE/refusal. Record review/red evidence in `specs/013-durable-command-intents/evidence/T008.md`. Dependencies: T004.

- [X] T009 [P] Write/review/run failing tests in `crates/behavior-store/tests/behavior_validity.rs` for invalid seeds/entities/global invariants, equal schema with changed behavior, evaluation errors, inconsistent/missing universe facts and zero-binding bypass; require unchanged store on refusal. Record review/red evidence in `specs/013-durable-command-intents/evidence/T009.md`. Dependencies: T004.

- [X] T010 [P] Write/review/run failing tests in `crates/behavior-store/tests/migration_context.rs` changing source/target derived behavior while SchemaHash stays equal; prepared delta, proof, authorization and replay must not be reusable under another exact behavior pair. Record review/red evidence in `specs/013-durable-command-intents/evidence/T010.md`. Dependencies: T004.

- [X] T011 [P] Write/review/run failing tests in `crates/behavior-store/tests/history_integrity.rs` for same-state/position forks, wrong genesis/final state/head, omitted/broken records, position/revision exhaustion and idempotent recovery after later commits. Record review/red evidence in `specs/013-durable-command-intents/evidence/T011.md`. Dependencies: T004.

- [X] T012 [P] Write/review/run failing tests in `crates/behavior-store/tests/trusted_governance.rs` for state/migration policy enforcement, cross-store/head/context reuse, missing proofs, independent Q vs signed Q substitution, context-less governed write refusal, bound bundle-time mismatch and legacy governed-write refusal; preserve structural historical/read-only recovery and test complete export/new-v2-genesis adoption without history rewrite. Record review/red evidence in `specs/013-durable-command-intents/evidence/T012.md`. Dependencies: T004.

- [X] T013 [P] Write/review/run failing shared-governance CLI tests in `crates/behavior-cli/tests/cli_trusted_governance.rs`: mutually exclusive subjects, explicit key files, fresh no-cache verification, --context full Q/--now equality, real-calendar time and detached report diagnostics. Assert exits0/1/2/3/64, timeout/non-reproducible abort emits no signed report and preserves pre-existing --out (including completed-prefix abort), deterministic resource exhaustion gives authenticated INCONCLUSIVE/exit1, atomic outputs and no key disclosure. Record review/red evidence in `specs/013-durable-command-intents/evidence/T013.md`. Dependencies: T004.

### Implementation / setup

- [X] T014 Implement a reusable strict new-document decoder in `crates/behavior-core/src/canonical.rs` and use it from governance/store new-format decoding: reject duplicate keys before Value reduction, unknown fields/floats/noncanonical hash-key-number forms; preserve published valid legacy decoding and insignificant JSON whitespace. Dependencies: T005.

- [X] T015 Remove invalid canonicalization-to-empty fallback paths in `crates/behavior-core/src/read.rs` and `crates/behavior-core/src/record.rs`; reject malformed typed records before producing identity/evaluation evidence and preserve every valid legacy record hash. Dependencies: T014, T005.

- [X] T016 Make trusted representation/safety justification traverse all numeric/derived/query intermediates in `crates/behavior-core/src/admit/bounds.rs` and `crates/behavior-verify/src/encode.rs`; never cap folds to conceal overflow. Preserve old admission/runtime contracts; conservatively block new certification when compatible proof is unavailable. Dependencies: T008.

- [X] T017 Repair trusted read cardinality/alias reasoning in `crates/behavior-verify/src/reads.rs` and `crates/behavior-verify/src/encode/relational.rs` so repeated bindings to one typed entity count once; use INCONCLUSIVE for unjustified cases without changing query runtime semantics. Dependencies: T016, T008.

- [X] T018 Implement deterministic complete behavior-valid snapshot/fact validation in `crates/behavior-core/src/eval.rs` and `crates/behavior-store/src/store.rs`, including zero bindings, entity/global rules and explicit observations; new-profile/runtime gates must establish Valid_B(S) before verifier invariant assumptions. Dependencies: T009, T017.

- [X] T019 Bind prepared/resolved trusted migration context and new proof/check identities to exact source/target BehaviorHashes in `crates/behavior-core/src/migration/apply.rs` and `crates/behavior-verify/src/migration.rs`; reject same-schema behavior substitution while retaining valid old migration bytes/domains. Dependencies: T010, T017.

- [X] T020 Implement checked EvidencePolicyV2/ExecutionPolicyV2 in `crates/behavior-verify/src/governance/trusted.rs` and domain constants in `crates/behavior-verify/src/hashing.rs`; register the trusted submodule in `crates/behavior-verify/src/governance.rs`; exact authority/policy/profile sets, distinct roles, optional inherited migration rule, explicit bind_commit_time and closed sorted Bool/i64/String required_context product with typed expected-value checks. Enforce “Require=true with no eligible authority is valid deny-all.” and “require=false needs no authorization; invalid supplied evidence still fails.” Dependencies: T014, T006.

- [X] T021 Implement AuthorizationContextV2/full Q/ContextHash and Gregorian UTC checks in `crates/behavior-verify/src/governance/trusted.rs`; enforce “Time uses explicit real-calendar UTC seconds and [start,end) key intervals; no current-clock lookup.” All roles/waiver expiry use Q.policy_time=authorized_at; bound time matches actual bundle time, otherwise null. Enforce canonical calendar ranges and exact typed context; no live revocation/freshness inference. Dependencies: T020, T006.

- [X] T022 Implement issuer-inside-content/detached purpose-separated Ed25519 strict signing/validation in `crates/behavior-verify/src/governance/trusted.rs` and integrate `crates/behavior-verify/src/governance.rs`; exact lowercase public-key/signature lengths, own hash/signature excluded from content identity and unchanged waiver.v1 domains. Dependencies: T021, T006.

- [X] T023 Derive the exact closed manifest/descriptors and verification_obligation.v1/verification_manifest.v1 domains in `crates/behavior-verify/src/checks.rs` and `crates/behavior-verify/src/hashing.rs`; bind full subject/profile/versions/category/owner/phase/tagged semantic path/predicate kind per governance contract, including migration behaviors and distinct repeated sites. Sort raw keys, reject duplicates/collisions/omissions/extras without deduplication, reconstruct truthful aggregate and preserve legacy keys/report formats. Dependencies: T022, T007, T016, T017, T019.

- [X] T024 Implement fresh cache=None authenticated module/migration verification APIs, verification_report.v2 domain/projection and canonical finding citations in `crates/behavior-verify/src/lib.rs`, `crates/behavior-verify/src/checks.rs`, `crates/behavior-verify/src/hashing.rs` and `crates/behavior-verify/src/governance/trusted.rs`; canonical SMT/sites/results/reasons/typed witnesses exclude all loc/pretty/alias/cache metadata and preserve legacy raw formats. Archive exact profile/manifest/report, validate then sign actual computation; no caller-report/cache promotion. Reject wall-clock/cancellation/transport/non-reproducible completed prefixes as infrastructure errors with no envelope; deterministic resource exhaustion may be INCONCLUSIVE. Bind verifier0.7.0/supported Z3. Dependencies: T023, T007, T018.

- [X] T025 Implement GovernanceSubject/GovernanceCandidate/AuthorizationContentV2/SignedAuthorizationV2/EvidenceV2 and authorize_trusted in `crates/behavior-verify/src/governance/trusted.rs`; archive full Q/ContextHash alongside exact candidate/store/history/subject/policies and complete semantic proofs/waivers. Apply TrustedAuthorization(P,A,T,Q), roles/expiry at policy_time, authorized_at equality and explicit bound/null commit time before allow/refuse; no hash/signature cycle. Dependencies: T024, T006.

- [X] T026 Add checked version dispatch for HistoryRef, v2 genesis/commit/migration/transition documents in `crates/behavior-store/src/documents.rs`; enforce “HistoryRef fields: format behavior.history_ref.v1, store,state,position:u64,record.” and “At position0 record=genesis StoreId; later it is the canonical commit hash.” without rehashing v1 under new domains. Dependencies: T025, T011, T012.

- [X] T027 Implement current_history/history_at and full-head v2 candidate identity in `crates/behavior-store/src/store.rs`; include exact rederived record/declarations/reads/facts/writes/lifecycle, exclude authorization/commit-time diagnostics/future commit/occurrence IDs and independently rederive caller claims against actual immutable state. Dependencies: T026, T018, T011.

- [X] T028 Integrate shared trusted-policy enforcement and exact-parent CAS into action/migration paths in `crates/behavior-store/src/store.rs`; add commit_with_context and prepared-migration independent Q arguments, compare signed Q/bound bundle time and archive the compared context before writing. Context-less governed fresh writes fail CONTEXT_REQUIRED; none/no-evidence behavior remains. Validate exact site coverage/report/policy/waiver trust, use one atomic primitive and original archived Q for read-only idempotent recovery. Dependencies: T027, T025, T019, T012.

- [X] T029 Implement export_seed_at/SnapshotExport/genesis_v2_for and explicit legacy gates in `crates/behavior-store/src/store.rs` and `crates/behavior-store/src/documents.rs`; enforce “All profile0.8 commits require v2 genesis, including none policies and empty K.” with HISTORY_FORMAT_UPGRADE_REQUIRED and legacy required-write TRUSTED_GOVERNANCE_UPGRADE_REQUIRED; validated live seed preserves StateId/schema/values in a new lineage, not revisions/history/removed-ID lifetime. Dependencies: T028, T012.

- [X] T030 Share strict genesis/range/chain/start/end validation between replay paths in `crates/behavior-store/src/replay.rs`; require full final HistoryRef, document/bundle/candidate/result-state integrity and checked increments. Data replay checks archived signed manifest/report coverage under original trust; Behavior replay additionally derives exact obligations. Preserve valid legacy replay and structural labels. Dependencies: T029, T011, T015.

- [X] T031 Adapt version-dispatched atomic documents/CAS and fault checks in `crates/behavior-store/src/memory.rs` and `crates/behavior-store/src/conformance.rs`; cover aborted/lost-response/partial-state/head/idempotency outcomes without adding a second write or authoritative outbox method. Dependencies: T028, T030, T011.

- [X] T032 Expose explicit trusted-governance/history/prepared-migration/export APIs, AuthorizationContextV2/commit_with_context and semantic report/manifest views in `crates/behavior-engine/src/lib.rs` and `api/engine-surface.txt`; keep context-less legacy paths and independently rederiving live commit distinct from archived-Q/module-free attestation-only replay. Dependencies: T031, T024.

- [X] T033 Implement store-free governance verify/verify-migration/authorize in `crates/behavior-cli/src/lib.rs` per `specs/013-durable-command-intents/contracts/cli.md`; explicit subject/profile/seed/full --context Q and --now equality, complete evidence and detached --diagnostics. No cache/report-signing shortcut; timeout/operational abort exits3 without semantic artifacts or touching existing --out, reproducible resource exhaustion exits1/INCONCLUSIVE, other exits0/1/2/64 and atomic writes follow the contract. Dependencies: T032, T013.

- [X] T034 Add strict new governance/store/history schemas in `schema/governance-v2.schema.json` and `schema/store-v2.schema.json`, after failing fixture-schema assertions in `crates/behavior-store/tests/trusted_governance.rs`; include full Q, bind_commit_time/typed product, semantic report/manifest/descriptor/site/result bodies, explicit nulls and compared-context bundles. Enforce decoder/schema parity and leave all legacy schemas unchanged. Dependencies: T033, T026.

### Acceptance checkpoint

- [X] T035 Run every prerequisite target listed in `specs/013-durable-command-intents/quickstart.md`, legacy-vector comparison, `scripts/check-boundary.sh`, `scripts/check-public-surface.sh` and the supported consumer; record red→green evidence and G1/G2/G3 acceptance in `specs/013-durable-command-intents/implementation-log.md`. Block stories if any false-proof, trust, atomicity or replay regression remains. Dependencies: T034, T016, T017, T018, T019, T015.

**Checkpoint**: All G1/G2/G3 acceptance must pass before any story.

---

## Phase 3: User Story 1 — Commit state and request atomically (P1; MVP checkpoint)

**Purpose**: Add the shared command semantic kernel and a mixed state/command transition on the existing atomic backend. Shared type/hash/guard/verifier machinery is introduced here once; later stories deepen their own behavior and conformance.

**Independent test**: On an isolated v2 order store, evaluate status=SUBMITTED plus one request. Committed history contains neither result before commit, both at one position after commit, and neither after conflict/evidence/pre-write failure. A second process reads the same durable event after response loss. False notification guard still permits the state transition. Inspect canonical committed records here; the supported adapter stream is completed in US3.

### Tests — observe intended red before dependent code

- [X] T036 [P] [US1] Write/review/run failing Wire0.8 declaration/guard/product/type/legacy-key tests in `crates/behavior-core/tests/command_admission.rs`; include empty products, wrong fields, non-Bool guards, forbidden read/derived/invariant/migration emission, lengths and inert Id payloads. Record review/red evidence in `specs/013-durable-command-intents/evidence/T036.md`. Dependencies: T035.

- [X] T037 [P] [US1] Write/review/run failing identity/metamorphic tests in `crates/behavior-core/tests/command_identity.rs` for every explicit ≡₀.₈ normalization law: permuted bags/products, omitted=true guard, normalized binders/equal references and detached provenance. Add negatives for changed public names/types/guards/payloads/multiplicity, same invocation output without definition equivalence, stable SchemaHash, checked encoding and golden domain vectors. Record review/red evidence in `specs/013-durable-command-intents/evidence/T037.md`. Dependencies: T035.

- [X] T038 [P] [US1] Write/review/run failing mixed/guard/error/observation tests in `crates/behavior-core/tests/command_evaluation.rs`; false cost!=0 must not read income/evaluate income/cost, true errors abort all intents, two errors select the same canonical first failure after permutation, and commands see original S. Record review/red evidence in `specs/013-durable-command-intents/evidence/T038.md`. Dependencies: T035.

- [X] T039 [P] [US1] Write/review/run failing new-profile builder/round-trip tests in `crates/behavior-core/tests/command_builder.rs`; empty command arrays retain0.8, cross-builder/scope misuse refuses, prior builders/serializations remain frozen. Record review/red evidence in `specs/013-durable-command-intents/evidence/T039.md`. Dependencies: T035.

- [X] T040 [P] [US1] Write/review/run failing atomic mixed-commit/trusted-binding tests in `crates/behavior-store/tests/durable_commands.rs`: precommit invisibility, canonical K tampering, conflict/evidence/backend abort and lost response; assert unchanged versions/reference indexes/head/idempotency on actual refusal. Record review/red evidence in `specs/013-durable-command-intents/evidence/T040.md`. Dependencies: T035.

- [X] T041 [P] [US1] Write/review/run failing two-process mixed-command durability tests in `consumer/tests/command_crash_recovery.rs` using a test-only host backend scaffold; terminate between durable commit and acknowledgment, reopen and prove one event/state+request. In-memory reopen is not the acceptance proof. Record review/red evidence in `specs/013-durable-command-intents/evidence/T041.md`. Dependencies: T035.

- [X] T042 [P] [US1] Write/review/run failing guarded-command proof/path-coverage tests in `crates/behavior-verify/tests/command_safety.rs`; false guard is not a precondition, guard safety is checked normally and successful payload paths match canonical runtime. Repeated identical emissions and repeated payload-expression/child sites have distinct canonical site keys and full coverage; permutation/normalized aliases preserve manifest/report hashes, unsupported reasoning cannot return PROVEN. Record review/red evidence in `specs/013-durable-command-intents/evidence/T042.md`. Dependencies: T035.

- [X] T043 [P] [US1] Write/review/run failing admit/eval/invoke/diagnostic-sidecar CLI tests in `crates/behavior-cli/tests/cli_commands.rs`; malformed decode claims no evaluation, semantic stdout excludes loc/pretty aliases on0.8 and old output stays exact. Record review/red evidence in `specs/013-durable-command-intents/evidence/T043.md`. Dependencies: T035.

### Implementation / setup

- [X] T044 [US1] Retain SemanticProfile on Module and add commands/action command_effects to Wire0.8 in `crates/behavior-core/src/wire.rs`, `crates/behavior-core/src/semantic/module.rs` and `crates/behavior-core/src/semantic/types.rs`; required arrays may be empty, old versions reject new keys, Kind::Command=9 uses the existing namespace and `crates/behavior-core/src/lib.rs` registers the new commands module. Dependencies: T036, T039.

- [X] T045 [US1] Implement opaque CommandDeclaration/CommandField/CommandEmission and typed product codec in `crates/behavior-core/src/commands.rs`; enforce “Field names are unique and nonempty under ordinary name rules.”, “Empty product is valid.”, “Id<T> is inert identity data.” and “Exact expressions require lossless conversion or explicit rescale.” Enforce “Allowed scalar types: Bool, i64 Int, existing 28-digit Decimal, String, Enum, primitive/fixed-scale Nominal, Id<T>, and one-level Option of a supported non-Option scalar.” and “No Entity, Query, stored Exact, Ref<T>, nested Option, blob, array or arbitrary object.” Dependencies: T044, T036.

- [X] T046 [US1] Resolve/type-check/normalize declarations and emission definitions in `crates/behavior-core/src/admit/mod.rs`, `crates/behavior-core/src/admit/resolve.rs` and `crates/behavior-core/src/admit/typecheck.rs`; enforce “Payload keys exactly match fields and values convert losslessly.” and “New-profile names, scalar String/Id byte lengths and encoded collection counts fit checked u32 encoding; over-limit input is invalid before evaluation.” Reject wrong scope/type/dependencies before evaluation. Dependencies: T045, T036.

- [X] T047 [US1] Implement checked declaration.v1/emission.v1/action.v2/module.v2 encodings in `crates/behavior-core/src/admit/hash.rs`; enforce “Canonical definition key is (raw emission hash, semantic encoding bytes).”, “Normalize an omitted guard to literal true.” and “Product fields sort by UTF-8 name for hashing, payload evaluation and serialization.” Repeated entries remain and commands never enter SchemaHash. Freeze all earlier domains and hash vectors. Dependencies: T046, T037.

- [X] T048 [US1] Implement opaque CommandIntent, canonical value/product hashing and bag in `crates/behavior-core/src/commands.rs`; enforce “Canonical payload JSON uses booleans, i64 numbers, normalized decimal strings, strings, enum variants, typed identity strings and null for None.” and “Fixed-scale decimal text has its declared scale; Some serializes as its supported underlying value.” Preserve counts, exclude displayed hash from its body and refuse HASH_CONTENT_CONFLICT. Dependencies: T047, T037.

- [X] T049 [US1] Add explicit SemanticProfile/CommandEmissionSpec/add_command/add_action_with_commands and canonical0.8 serialization in `crates/behavior-core/src/builder.rs` and `crates/behavior-core/src/serialize.rs`; retain scope/ownership checks and finish re-admission, sorted field products/bags and all existing add_action paths. Dependencies: T048, T039.

- [X] T050 [US1] Implement canonical guard-first emission evaluation in `crates/behavior-core/src/eval.rs`: original S after normal incoming/precondition/state-effect steps, no false-guard payload reads, canonical payload fields, fail-fast construction errors and final S' checks. Enforce “Only ALLOW exposes complete K.” and “Non-ALLOW has no committable partial collection.” Dependencies: T049, T038.

- [X] T051 [US1] Implement record0.7/profile0.8 with canonical command/type archives in `crates/behavior-core/src/record.rs`; semantic evidence uses hashes/normalized binders/structured errors, while all loc/pretty/binder-alias provenance is detached, including noncommand evidence. Archive enum domains/nominal operations-scale/Id targets/Option descriptors; preserve every legacy record byte. Dependencies: T050, T038, T037.

- [X] T052 [US1] Integrate canonical emission guards and payload/conversion safety into `crates/behavior-verify/src/encode.rs`, `crates/behavior-verify/src/checks.rs` and `crates/behavior-verify/src/lib.rs`; true-path obligations require prior successful computation, false guards never constrain admission and env_post is unchanged. Complete manifest/site keys include emission hash/canonical multiplicity index/field/child path, preserve repeated obligations and canonical SMT/result identities under permutations/aliases. Dependencies: T051, T042.

- [X] T053 [US1] Thread new inner semantic record/K through both012 invocation paths in `crates/behavior-core/src/invocation.rs` and `crates/behavior-store/src/store.rs`; preserve binding/read/refusal stages and independently valid exact snapshots, never exposing resolved host state as committed truth. Dependencies: T052, T040.

- [X] T054 [US1] Bind full canonical K/record/declaration evidence into v2 candidate/bundle/record and trusted atomic mixed commit in `crates/behavior-store/src/documents.rs` and `crates/behavior-store/src/store.rs`; independently rederive exact ΔS/K/head, reject altered multiplicity/payload/authority, and use one backend CAS without a second outbox write or dispatch callback. Dependencies: T053, T040.

- [X] T055 [US1] Implement the test-only crash-safe host backend/process worker in `consumer/tests/support/durable_backend.rs` and `consumer/tests/command_crash_recovery.rs`; persist one atomic fsynced snapshot, expose controlled pre-write/lost-ack faults and reopen from another process. Use only behavior-engine/std and keep business-effect execution out of this backend. Dependencies: T054, T041.

- [X] T056 [US1] Explicitly export admitted command/candidate/diagnostic/builder accessors in `crates/behavior-engine/src/lib.rs` and `api/engine-surface.txt`, then integrate0.8 admit/eval/invoke and optional --diagnostics sidecar in `crates/behavior-cli/src/lib.rs`; default new output is semantic-only, legacy output unchanged. Dependencies: T055, T043.

- [X] T057 [US1] Add `schema/wire-ir-0.8.schema.json` and `schema/decision-record-0.7.schema.json` with strict field/type/product/guard/archive shapes; add schema assertions to `crates/behavior-core/tests/command_admission.rs` before schema implementation and preserve all old schemas. Dependencies: T056, T036.

### Acceptance checkpoint

- [X] T058 [US1] Run command_admission/identity/evaluation/builder/safety/durable_commands and two-process crash targets, compare frozen legacy vectors and record US1 red→green/atomicity acceptance in `specs/013-durable-command-intents/implementation-log.md`; do not present this checkpoint as a complete adapter/release surface. Dependencies: T057, T055.

**Checkpoint**: This story passes its independent test and prior completed contracts remain green.

---

## Phase 4: User Story 2 — Command-only transitions (P1)

**Purpose**: Admit zero-state-binding external requests without artificial entity writes, and advance exact history even when content state is unchanged.

**Independent test**: On an isolated v2 store, commit a zero-binding one-command action: position+1/new event, unchanged StateId/revisions/universe. A competing stale candidate refuses; retry recovers one event. New structural emptiness refuses, legacy decision-only behavior is frozen.

### Tests — observe intended red before dependent code

- [X] T059 [P] [US2] Write/review/run failing zero-binding/command-only/structural EFFECTLESS_ACTION tests in `crates/behavior-core/tests/command_only_admission.rs`; declarations/preconditions alone are insufficient, all-false guards remain structurally effectful and old versions keep their admission/diagnostics. Record review/red evidence in `specs/013-durable-command-intents/evidence/T059.md`. Dependencies: T058.

- [X] T060 [P] [US2] Write/review/run failing unchanged-state history/CAS/idempotency tests in `crates/behavior-store/tests/command_only.rs`; competing candidates and empty realized K cannot bypass exact-head rules or mutate entity versions/indexes. Record review/red evidence in `specs/013-durable-command-intents/evidence/T060.md`. Dependencies: T058.

- [X] T061 [P] [US2] Write/review/run failing facade command-only invoke/invoke-intent tests in `consumer/tests/command_only.rs`; prove zero bindings and no synthetic entity ID/revision/field. Record review/red evidence in `specs/013-durable-command-intents/evidence/T061.md`. Dependencies: T058.

### Implementation / setup

- [X] T062 [US2] Implement profile0.8 structural effectfulness/zero-state-binding admission in `crates/behavior-core/src/admit/typecheck.rs` and `crates/behavior-core/src/eval.rs`; keep old-version algorithms/diagnostics and accept valid command-only guard paths. Dependencies: T059.

- [X] T063 [US2] Implement empty-version/removal/reference command-only history commits in `crates/behavior-store/src/store.rs` and `crates/behavior-store/src/memory.rs`; enforce “Command-only commits keep StateId/revisions/universe unchanged and advance history.” plus checked position/whole-head CAS, stable recovery and existing allowed ΔS=∅/K=∅ no-op behavior. Dependencies: T062, T060.

- [X] T064 [US2] Create the complete receipt module/invocation/snapshot fixtures at `tests/fixtures/commands/modules/receipt.json`, `tests/fixtures/commands/invocations/receipt.json` and `tests/fixtures/commands/snapshots/receipt.json`; exercise both public invocation forms in `consumer/tests/command_only.rs` without introducing entity writes. Dependencies: T063, T061.

### Acceptance checkpoint

- [X] T065 [US2] Run command_only_admission/command_only core-store-consumer targets and old admission vectors; record StateId/revisions/universe/history invariants and US2 acceptance in `specs/013-durable-command-intents/implementation-log.md`. Dependencies: T064.

**Checkpoint**: This story passes its independent test and prior completed contracts remain green.

---

## Phase 5: User Story 3 — Discover committed commands safely (P1)

**Purpose**: Derive committed occurrences from canonical history and expose read-only, pinned, whole-event enumeration with stable retry/copy/fork identity.

**Independent test**: Read one commit twice and recover it idempotently: same IDs. Intentional later equal request has a new ID; [A,A,B] and [B,A,A] agree while [A,B] differs. Copy canonical history across backends and fork equal genesis/position/state: copies agree, divergent commits differ. Empty/migration pages advance and never split a commit.

### Tests — observe intended red before dependent code

- [X] T066 [US3] Prepare only a compiled nonpassing stream/occurrence facade scaffold in `crates/behavior-store/src/commands.rs`, `crates/behavior-store/src/lib.rs` and `crates/behavior-engine/src/lib.rs`, then write/review/run failing occurrence/copy/fork/duplicate/idempotence tests in `crates/behavior-store/tests/command_occurrences.rs`, including equal StateId on distinct events, unrelated replica/backend configuration and acyclic candidate→commit→occurrence hashing. Record review/red evidence in `specs/013-durable-command-intents/evidence/T066.md`. Dependencies: T065.

- [X] T067 [P] [US3] Write/review/run failing request/page tests in `crates/behavior-store/tests/command_stream.rs`: exclusive after, pinned head, append between pages, whole-commit duplicates, empty/migration progress, wrong/fork/future/reversed endpoints, bad limits and missing/broken/uncommitted records. Record review/red evidence in `specs/013-durable-command-intents/evidence/T067.md`. Dependencies: T066.

- [X] T068 [P] [US3] Write/review/run failing public committed-type/adapter-boundary tests in `consumer/tests/durable_commands.rs`; candidates have no committed constructor, only checked store output reaches the host mock and IDs work as external idempotency keys without an exactly-once claim. Record review/red evidence in `specs/013-durable-command-intents/evidence/T068.md`. Dependencies: T066.

### Implementation / setup

- [X] T069 [US3] Implement opaque CommittedCommand and derived occurrence hash in `crates/behavior-store/src/commands.rs`, registering it in `crates/behavior-store/src/lib.rs`; hash behavior.command_occurrence.v1 canonical {store,commit_record_hash,intent_hash,multiplicity_index}, enforce “Index ranges 0..count-1 within equal intent hashes per commit.” and “Occurrence IDs never feed back into candidate/intent/commit hashes.” Position/replica/source order are not independent hash inputs. Dependencies: T066.

- [X] T070 [US3] Implement checked CommandStreamRequest/Page JSON in `crates/behavior-store/src/commands.rs`; enforce “Stream request: exclusive after HistoryRef, optional through HistoryRef, max_records default256 (range1–1024).” and “Page: after,observed_head,items,next_after,complete.” Require actual endpoint fields and typed u64 positions, preserve whole-commit counts. Dependencies: T069, T067.

- [X] T071 [US3] Implement Store::commands_since in `crates/behavior-store/src/store.rs` using `crates/behavior-store/src/commands.rs`: pin observed head once, validate full endpoints/chain, scan at most max_records whole events including empty/migrations, derive all canonical occurrences and return next_after/complete. Ignore optional indexes, exclude candidates/above-head records and mutate no state/history/checkpoint. Dependencies: T070, T067.

- [X] T072 [US3] Complete exact original-event resubmission recovery and committed occurrence reconstruction in `crates/behavior-store/src/store.rs`; recover after later history without append, distinguish fresh intentional repeats and compare full parent/bundle/event integrity rather than StateId alone. Dependencies: T071, T066.

- [X] T073 [US3] Add visibility/index-order/missing-record/partial-commit faults to `crates/behavior-store/src/conformance.rs` and tests in `crates/behavior-store/tests/conformance.rs`; write failing fault assertions before changing conformance logic, enforce history-owned truth and document that finite checks cannot prove arbitrary backend honesty. Dependencies: T072, T067.

- [X] T074 [US3] Export stream/occurrence/request/page accessors explicitly through `crates/behavior-engine/src/lib.rs`, register `crates/behavior-store/src/commands.rs` in `crates/behavior-store/src/lib.rs`, update `api/engine-surface.txt` and pass the facade-only tests without unchecked commitment constructors or executor methods. Dependencies: T073, T068.

- [X] T075 [US3] Add `schema/command-stream-v1.schema.json` and schema/typed-decoder parity assertions in `crates/behavior-store/tests/command_stream.rs` before schema implementation; all request/page/occurrence fields, nullable through, max_records defaults/range and ordered evidence match the contract. Dependencies: T074, T067.

### Acceptance checkpoint

- [X] T076 [US3] Run occurrence/stream/conformance/consumer suites and process recovery with committed enumeration; record US3 copy/fork/pagination/index/idempotency evidence in `specs/013-durable-command-intents/implementation-log.md` with no exactly-once delivery assertion. Dependencies: T075, T072.

**Checkpoint**: This story passes its independent test and prior completed contracts remain green.

---

## Phase 6: User Story 4 — Replay without external execution (P1)

**Purpose**: Validate historical intent meaning with data replay and reproduce full semantic command/evidence output with exact Behavior replay, safely across copies and older versions.

**Independent test**: On isolated mixed/command-only histories, data and Behavior replay reproduce canonical K byte-for-byte with zero host-adapter calls. Mutating declaration/payload/count/descriptors/manifest/hash/endpoints diverges. Source permutations and detached provenance do not; legacy bytes/outcomes stay unchanged.

### Tests — observe intended red before dependent code

- [X] T077 [P] [US4] Write/review/run failing new semantic-record replay tests in `crates/behavior-core/tests/command_replay.rs`: definition permutations, location/binder/equal-alias changes, structured selected errors and altered declaration/value/count; legacy record comparison remains exact. Record review/red evidence in `specs/013-durable-command-intents/evidence/T077.md`. Dependencies: T076.

- [X] T078 [P] [US4] Write/review/run failing archived-command/trust/history replay tests in `crates/behavior-store/tests/command_replay.rs`: no current-module lookup in data replay, archived type tamper, exact migration behaviors, profile/manifest coverage and changed occurrence/end-state/parent evidence. Record review/red evidence in `specs/013-durable-command-intents/evidence/T078.md`. Dependencies: T076.

- [X] T079 [P] [US4] Write/review/run failing facade replay/counterfactual/no-business-I/O tests in `consumer/tests/command_replay.rs`; monitor host-only mock execution, assert replay never queues/calls/mutates source and copied histories reproduce IDs without current credentials/results. Record review/red evidence in `specs/013-durable-command-intents/evidence/T079.md`. Dependencies: T076.

- [X] T080 [P] [US4] Write/review/run failing replay/invoke-replay/--diagnostics transport tests in `crates/behavior-cli/tests/cli_command_replay.rs`; valid current-profile replay has canonical output, semantic tamper fails and historical output/exit conventions are preserved. Record review/red evidence in `specs/013-durable-command-intents/evidence/T080.md`. Dependencies: T076.

### Implementation / setup

- [X] T081 [US4] Implement canonical historical command/type descriptor validation in `crates/behavior-core/src/commands.rs` and `crates/behavior-core/src/record.rs`; resolve archived enum/nominal dependencies and scalar values/hashes/multiplicity without mutable current definitions, reject malformed/noncanonical assertions and empty-hash fallback. Dependencies: T077, T078.

- [X] T082 [US4] Dispatch replay by retained profile/record version in `crates/behavior-core/src/record.rs` and `crates/behavior-core/src/invocation.rs`; re-evaluate exact recorded S/I/C/facts and compare semantic trace/observations/delta/K, using canonical emissions and excluding only new-profile detached diagnostics. Dependencies: T081, T077.

- [X] T083 [US4] Integrate archived typed command/trusted-evidence validation and derived occurrences into data replay in `crates/behavior-store/src/replay.rs`; use original genesis/policy/profile/manifest/time, validate exact range/head/chain/state, and label module-free manifest completeness as attested rather than independently rederived. Dependencies: T082, T078.

- [X] T084 [US4] Integrate exact module/profile/migration-source-target Behavior replay in `crates/behavior-store/src/replay.rs`; independently derive proof manifest and reproduce full candidate/record/K before successful replay, with no current external results/policies or source-store mutation. Dependencies: T083, T078, T079.

- [X] T085 [US4] Wire semantic replay and optional diagnostic sidecars into `crates/behavior-cli/src/lib.rs`; add canonical receipt invocation replay fixture at `tests/fixtures/commands/records/receipt.invocation.json` and semantic hash/round-trip golden vectors in `tests/fixtures/commands/records/receipt.json`. Dependencies: T084, T080.

### Acceptance checkpoint

- [X] T086 [US4] Run command_replay core/store/consumer/CLI suites, archived-evidence negatives and copied-history/legacy comparisons; record byte-identical K, endpoint rejection and zero-business-I/O evidence in `specs/013-durable-command-intents/implementation-log.md`. Dependencies: T085, T079.

**Checkpoint**: This story passes its independent test and prior completed contracts remain green.

---

## Phase 7: User Story 5 — Explicit external result input (P2)

**Purpose**: Demonstrate host execution and explicit later result invocation using existing primitives, with explicit domain correlation and immutable producing history. Add no callback/workflow primitive.

**Independent test**: From isolated committed payment-command stores, simulate host success/failure. Before a later invocation state/history stay unchanged; explicit result actions change them normally. Original event hash/K replay identically without the response; business attempt ID is ordinary input/state/payload data.

### Tests — observe intended red before dependent code

- [ ] T087 [P] [US5] Write/review/run failing facade result/correlation/immutability scenarios in `consumer/tests/command_results.rs`; success and failure are explicit later input, original intent/event is unchanged and neither result arrival nor hidden adapter state mutates/invokes Core. Record review/red evidence in `specs/013-durable-command-intents/evidence/T087.md`. Dependencies: T076.

- [ ] T088 [P] [US5] Write/review/run failing host-result example acceptance in `consumer/tests/command_result_example.rs`: compiled success/failure paths must wait for explicit later invocation and emit the correct correlated state/result evidence without rewriting the original command event; only nonpassing example scaffolding may precede semantic implementation. Record review/red evidence in `specs/013-durable-command-intents/evidence/T088.md`. Dependencies: T076.

### Implementation / setup

- [ ] T089 [US5] Create payment-request/result module and explicit correlation/input/context fixtures in `tests/fixtures/commands/modules/payment.json` and `tests/fixtures/commands/invocations/payment-results.json`; use ordinary domain attempt IDs and no engine-generated business identity, endpoint credential or automatic continuation. Dependencies: T087.

- [ ] T090 [US5] Implement host-only mock execution and explicit result invocation in `consumer/examples/command_results.rs`; consume checked committed occurrences, use occurrence ID for target idempotency separately from explicit business correlation, preserve the original event and keep retries/status outside Core. Dependencies: T089, T088.

- [ ] T091 [US5] Document the explicit result/compensation boundary and stable intent vs occurrence identity in `docs/command-results.md`; show two transitions separated by host execution and explain that no response alters the original commit or causes implicit workflow ordering. Dependencies: T090.

### Acceptance checkpoint

- [ ] T092 [US5] Run `consumer/tests/command_results.rs`, `consumer/tests/command_result_example.rs` and both mock example outcomes; replay originals without results and record immutable-event/explicit-input acceptance in `specs/013-durable-command-intents/implementation-log.md`. Dependencies: T091, T086.

**Checkpoint**: This story passes its independent test and prior completed contracts remain green.

---

## Phase 8: User Story 6 — Verify command-producing Behavior (P2)

**Purpose**: Complete systematic safety/governance correspondence and acceptance coverage on the shared encoder introduced for US1. Repair only uncovered paths; proven claims concern Behavior, never external delivery.

**Independent test**: Verify safe and reachable unsafe command expressions (division/overflow/narrowing/grid/exact/query/derived). False guards exclude payload errors; true guards and canonical earlier-success paths agree with runtime. Trusted exact signed policy passes, altered commands/count/context/head/profile or untrusted evidence refuses without mutation; none needs no signature.

### Tests — observe intended red before dependent code

- [ ] T093 [P] [US6] Extend `crates/behavior-verify/tests/command_safety.rs` with reviewed regressions for nested exact/nominal/rescale/query/derived payload paths, overflow/narrowing, guard errors and canonical earlier-failure reachability; run paired concrete evaluations and record intended red cases before any new encoder repair, distinguishing already covered cases. Record review/red evidence in `specs/013-durable-command-intents/evidence/T093.md`. Dependencies: T076.

- [ ] T094 [P] [US6] Write/review/run command-specific use of the shared trust contract in `crates/behavior-store/tests/command_governance.rs`: changed declaration/payload/count, store/head/policy/context/profile, missing/wrong-role signatures, altered signature-only content identity, valid trusted allow and none policy; every refusal preserves all atomic components. Record review/red evidence in `specs/013-durable-command-intents/evidence/T094.md`. Dependencies: T076.

- [ ] T095 [P] [US6] Write/review/run public verify/authorize/commit/no-delivery-theorem scenarios in `consumer/tests/command_verification.rs`; prove same-policy state/command behavior and that authenticated INCONCLUSIVE/failed reports are never presented as PROVEN. Record review/red evidence in `specs/013-durable-command-intents/evidence/T095.md`. Dependencies: T076.

- [ ] T096 [P] [US6] Write/review/run full authenticated command proof/authorize CLI scenarios in `crates/behavior-cli/tests/cli_command_verification.rs`; cover truthful report outcomes, complete archived manifests, required time/evidence/profile and candidate K tamper without arbitrary report signing. Record review/red evidence in `specs/013-durable-command-intents/evidence/T096.md`. Dependencies: T076.

### Implementation / setup

- [ ] T097 [US6] Complete all uncovered guarded payload/error/conversion obligations in `crates/behavior-verify/src/encode.rs`, `crates/behavior-verify/src/encode/relational.rs` and `crates/behavior-verify/src/checks.rs` against runtime0.8; use exact true-guard/prior-success paths and no env_post/dispatch theorem. Source repairs require corresponding observed red evidence; keep already-correct shared implementation unchanged. Dependencies: T093.

- [ ] T098 [US6] Complete uncovered command proof/waiver/authorization rederivation and exact K binding in `crates/behavior-verify/src/governance/trusted.rs` and `crates/behavior-store/src/store.rs`, using the same mechanism for state/migration/commands; never add a command authority or promote untrusted structural evidence. Dependencies: T097, T094.

- [ ] T099 [US6] Complete public authenticated proof/CLI integration in `crates/behavior-engine/src/lib.rs`, `api/engine-surface.txt` and `crates/behavior-cli/src/lib.rs` from observed consumer/CLI gaps; exact manifests/versions/outcomes and atomic output follow the shared contract. Dependencies: T098, T095, T096, T086.

- [ ] T100 [US6] Populate the runtime/verifier guarantee table with exact functions/check categories and evidence in `docs/verification.md`; document ≡₀.₈ laws, semantic report vs diagnostics, unique canonical proof sites/shared findings, explicit Q/time eligibility and infrastructure abort vs deterministic INCONCLUSIVE. Separate trusted-module manifest derivation and data-replay attestations from guarantees/external-system behavior. Dependencies: T099.

### Acceptance checkpoint

- [ ] T101 [US6] Run command_safety/command_governance/command_verification/CLI suites plus prerequisite soundness regressions; accept only justified outcomes and record complete US6 runtime/verifier/policy evidence in `specs/013-durable-command-intents/implementation-log.md`. Dependencies: T100, T092.

**Checkpoint**: This story passes its independent test and prior completed contracts remain green.

---

## Phase 9: Polish and cross-cutting acceptance

**Purpose**: Finish supported examples, deterministic script coverage, metadata/docs and exact-revision release verification after every story passes. Publication is outside this implementation task list.

### Tests — observe intended red before dependent code

- [ ] T102 [P] Write/review/run failing command-fixture/digest/order/error-propagation tests in `scripts/tests/test_command_determinism.sh`; canonical fixture order and changed output must be detected, unexpected CLI failure cannot yield a green deterministic section and no product release tag is created/moved/reused. Record review/red evidence in `specs/013-durable-command-intents/evidence/T102.md`. Dependencies: T101.

- [ ] T103 [P] Write/review/run failing prepare→CLI-proof→authorize→commit→stream/crash-recovery example tests in `consumer/tests/command_demo.rs`, matching every argument/file/output in `specs/013-durable-command-intents/quickstart.md`; run the host mock only on validated committed output. Record review/red evidence in `specs/013-durable-command-intents/evidence/T103.md`. Dependencies: T101.

### Implementation / setup

- [ ] T104 Implement `consumer/examples/durable_commands.rs` prepare/commit/stream/crash-recovery using only behavior-engine/std, receipt/governance fixtures and the test-only backend; no internal dependency/new crate/key discovery. Export candidate.json and independent context.json before commit; --context reads host Q and commit_with_context compares it with complete evidence, rather than copying Q from authorization. Emit only canonical semantic demo outputs. Dependencies: T103.

- [ ] T105 Add new admission/invocation/replay/trusted-governance/store-stream scenarios to `scripts/determinism-check.sh` and make `scripts/tests/test_command_determinism.sh` executable so the existing test_*.sh script gate discovers it; run fixed keys/time/profile/cache=None and compare bytes/status/digests against each expected fixture outcome outcome while keeping the `scripts/gates.sh` ordered gate list unchanged. Dependencies: T104, T102.

- [ ] T106 First extend `crates/behavior-cli/tests/cli_engine_info.rs` with failing accepted-wire/new-format/verifier metadata assertions, then update `crates/behavior-engine/src/lib.rs`, `Cargo.toml`, `Cargo.lock`, `consumer/Cargo.lock` and `docs/versioning.md` for the agreed unused release/format versions; retain historical wire_ir and add accepted_wire_ir from decoder constants, preserve legacy bytes. Dependencies: T105.

- [ ] T107 [P] Publish the implemented semantic/trust/backend/adapter boundary in `docs/commands.md`, `docs/governance.md`, `docs/persistence.md`, `PRINCIPLES.md` and `README.md`; cover bag vs history order, identity acyclicity, explicit results, immutable trust/adoption and no delivery-success/exactly-once claim. Keep unresolved wider audit issues visible. Dependencies: T106.

### Acceptance checkpoint

- [ ] T108 [P] Measure representative state-only/command-only/mixed admission/evaluation/commit/stream behavior with `crates/behavior-store/tests/command_perf.rs` and report scaling in `docs/command-performance.md`; verify semantics while varying counts, disclose complete-snapshot validation cost and whole-commit page bytes without inventing an SLA or optimizing without evidence. Dependencies: T106.

- [ ] T109 Run every scenario/CLI/example from `specs/013-durable-command-intents/quickstart.md`, all story checkpoints and final contract/schema/facade parity; record executed commands/outcomes and every FR/SC obligation in `specs/013-durable-command-intents/implementation-log.md` without editing specification-quality markers as implementation proof. Dependencies: T107, T108.

- [ ] T110 Run the unchanged ordered `scripts/gates.sh` once against the complete candidate; record fmt/clippy/workspace build-tests/determinism/boundary/surface/consumer/workflow/terms/script outcomes and exact revision in `specs/013-durable-command-intents/implementation-log.md`. Repeat only after changes/failures; do not substitute isolated passes for the shared gate. Dependencies: T109.

- [ ] T111 For an exact already-pushed candidate containing the new schemas/fixtures, run `scripts/check-consumer.sh --rev SHA` before artifact construction, then `scripts/release-check.sh --skip-gates` only if the documented same-revision full gate just passed. Validate rejection/order with `scripts/tests/test_release_order.sh` and `scripts/tests/test_check_tag.sh` in disposable repos; record actual consumer/reproducible/clean-environment/conformance results in `specs/013-durable-command-intents/implementation-log.md`. Do not publish assets/create or alter product release tags; missing revision proof remains uncompleted. Dependencies: T110.

**Checkpoint**: Complete the listed dependency/acceptance evidence before advancing.

---

## Dependencies and execution order

~~~mermaid
graph TD
    S[Setup / accepted 012] --> F[G1 + G2 + G3 foundation]
    F --> U1[US1 atomic state + command]
    U1 --> U2[US2 command-only]
    U2 --> U3[US3 committed stream / occurrence identity]
    U3 --> U4[US4 replay]
    U3 --> U5[US5 explicit results]
    U3 --> U6[US6 complete safety / governance coverage]
    U4 --> U5done[US5 final replay acceptance]
    U5 --> U5done
    U4 --> U6done[US6 final facade / acceptance]
    U6 --> U6done
    U5done --> U6done
    U6done --> P[Full acceptance / exact-revision release verification]
~~~

The graph describes acceptance dependencies; task-level dependencies give precise scheduling.
G2 soundness repairs precede trusted certification; G1 signing never makes old false proofs
sound. G3 exact-head/replay/CAS is shared by state, migration and commands. US4/US5/US6 may
write disjoint tests after US3; their source changes to store/CLI/encoder/facade are serialized.
US5's final original-event replay and US6's final surface rely on US4. Foundation and story
checkpoints are acceptance work, not permission to publish an incomplete feature.

### Within each story

Write/review/observe intended failures → semantic model/codecs → runtime/verifier → store/
public integration → isolated acceptance. Before later edits to a shared file, run the earlier
story's relevant regressions. Full gate remains one unchanged scripts/gates.sh list.

## Parallel execution examples

The examples below pair distinct write files and share only already completed dependencies.
Do not edit the same source/helper/log file simultaneously.

### Setup

After T001, run T002 and T003 independently:

~~~text
T002: tests/fixtures/commands/legacy-baseline.json
T003: tests/fixtures/governance-v2/authorizer.seed
~~~

### Foundation

After T004, run T005 and T006 independently:

~~~text
T005: crates/behavior-core/tests/record_validation.rs
T006: crates/behavior-verify/tests/trusted_governance.rs
~~~

### US1

After T035, run T036 and T037 independently:

~~~text
T036: crates/behavior-core/tests/command_admission.rs
T037: crates/behavior-core/tests/command_identity.rs
~~~

### US2

After T058, run T059 and T060 independently:

~~~text
T059: crates/behavior-core/tests/command_only_admission.rs
T060: crates/behavior-store/tests/command_only.rs
~~~

### US3

After T066, run T067 and T068 independently:

~~~text
T067: crates/behavior-store/tests/command_stream.rs
T068: consumer/tests/durable_commands.rs
~~~

### US4

After T076, run T077 and T078 independently:

~~~text
T077: crates/behavior-core/tests/command_replay.rs
T078: crates/behavior-store/tests/command_replay.rs
~~~

### US5

After T076, run T087 and T088 independently:

~~~text
T087: consumer/tests/command_results.rs
T088: consumer/tests/command_result_example.rs
~~~

### US6

After T076, run T093 and T094 independently:

~~~text
T093: crates/behavior-verify/tests/command_safety.rs
T094: crates/behavior-store/tests/command_governance.rs
~~~

### Cross-cutting

After T101, run T102 and T103 independently:

~~~text
T102: scripts/tests/test_command_determinism.sh
T103: consumer/tests/command_demo.rs
~~~

## Requirements, contracts and deliverable coverage

| Area / contract | Stories / foundation | Tasks |
|---|---|---|
| FR-001–009/011/012/015–018/036: semantic IR, definitions/values/records | US1 shared kernel | T036, T037, T045, T046, T047, T048, T050, T051 |
| FR-010/025–027: admission and unchanged-state history | US2 | T059, T060, T062, T063, T065 |
| FR-019–021/028/029: atomic durability and candidate boundary | G3 + US1 | T028, T031, T040, T054, T055, T058 |
| FR-013/014/021–024/030/031: occurrence/stream/adapter concerns | US3 | T066, T067, T069, T070, T071, T072, T074, T076 |
| FR-041–044/028: archived evidence and replay | G3 + US4 | T030, T081, T082, T083, T084, T086 |
| FR-032–035: external results only as later explicit input | US5 | T087, T089, T090, T092 |
| FR-037/038: justified payload safety and no delivery theorem | G2 + US1 + US6 | T016, T017, T018, T019, T052, T093, T097, T100, T101 |
| FR-039/040: shared trusted governance | G1 + G2 + G3 + US6 | T020, T022, T023, T024, T025, T028, T029, T035, T094, T098 |
| engine-api.md / cli.md / schemas / quickstart.md | Foundation + each story + polish | T032, T033, T034, T056, T057, T074, T075, T085, T099, T104, T106, T109 |
| SC-001/005/009: atomicity and visibility failures | US1 + US3 | T040, T041, T058, T073, T076 |
| SC-002: command-only identity/history | US2 | T060, T065 |
| SC-003/004: no external effects and exact replay | US4 + US6 | T079, T082, T083, T084, T086, T101 |
| SC-006/007: stable observation and distinct intentional repeats | US3 | T066, T072, T076 |
| SC-008: frozen legacy evidence | B0 + all phases | T002, T015, T030, T058, T065, T086, T109 |
| SC-010: reachable safety findings and proof limits | US6 | T093, T097, T101 |

Every new fixture/test target/example named in quickstart is created by its corresponding
story/prerequisite task. Schema/codec parity uses new format files only. The durable host backend
and mock adapter are consumer/test code, not new Core capabilities. implementation-log.md is
future evidence, not supplied by task generation. Version reservations are rechecked against
accepted012 before coding. The mathematical contracts, including checked u32 payload domains,
finite multisets, exact history identity and immutable policy/time, remain normative.

## Implementation strategy

### MVP first

Complete Setup + Foundation, then US1. Demonstrate mixed state/request atomicity and real
process recovery; validate via isolated fixtures and canonical committed history. This is a
reviewable durability MVP, not the complete adapter/release API. For a supported external
consumer, add US2 + US3 and US4 before deployment; complete US6 and all required gates before
certifying/releasing the full feature. Never bypass G1/G2/G3 for a faster demo.

### Incremental delivery

Accept each story checkpoint; later increments use the same semantic kernel and re-run
relevant earlier regressions. US5 adds host demonstration, not a Core workflow primitive.
US6 extends proof/governance coverage rather than duplicating shared authorization. Keep
legacy interpretation and new verifier provenance separate throughout. Keep any broader audit
issues explicitly open rather than declaring Core conceptually complete from this feature.

### Final verification and publication boundary

Validate quickstart and the unchanged full gate, then verify the exact already-pushed
revision with the external consumer before constructing release artifacts. Release checks
may reuse a documented same-revision successful full gate with --skip-gates; a new revision
or change requires fresh gate evidence. Missing pushed-revision proof remains pending, never
passed by assertion. Product tags/assets/publication are outside this task list. Tests of
release/tag refusal use disposable repositories. No task is checked by this generation step.

## Task summary

| Phase/story | Count |
|---|---|
| Setup | 4 |
| Foundation | 31 |
| US1 | 23 |
| US2 | 7 |
| US3 | 11 |
| US4 | 10 |
| US5 | 6 |
| US6 | 9 |
| Polish / acceptance | 10 |
| Total | 111 |

38 tasks have [P] markers, restricted to documented disjoint-file dependency bands.
