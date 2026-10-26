# Tasks: Sound Verification of Ref-Target Removal

**Input:** [spec.md](spec.md), [plan.md](plan.md), [research.md](research.md),
[data-model.md](data-model.md), [contracts/](contracts/) and [quickstart.md](quickstart.md).

**Working directory:** `/home/kalle/repos/behavior-ir-core-030`. All task paths below
are relative to this Core checkout. Logical feature: `030-verify-ref-removals`;
planning began detached at `aff31ddda163e343be616cb378388e464b90933b`.
Set `SPECIFY_FEATURE=030-verify-ref-removals` and
`SPECIFY_FEATURE_DIRECTORY=/home/kalle/repos/behavior-ir-core-030/specs/030-verify-ref-removals`
for Spec Kit commands. Preserve existing uncommitted specifications and other worktrees.

**Tests:** Explicitly required by FR-011/012/017 and constitution III. Write tests
before implementation and observe nonempty behavioral failures for new support or
broken premises. Existing correct expectations may already pass. Compilation errors,
empty filters and fixture-construction failures are not proof of a reproduced defect.

**Organization:** Setup → shared foundation → US1 (P1) → US2 (P1) → US3 (P1)
→ US4 (P2) → final acceptance. Each story has its own test criterion. Shared encoder,
prefix and proof-identity changes require sequential story integration; this is not
permission to ship US1 alone. `[P]` denotes independent files in a stated wave, not
automatic delegation or simultaneous heavy solver/build runs.

## Phase 1: Setup and provenance

**Purpose:** Establish safe checkout, neutral inputs and reproducible baseline context
without changing verifier/runtime behavior.

- [X] T001 Verify checkout/source identity, detached/branch state, dirty boundaries, Rust 1.98.1, locked solver/profile and existing gate commands; establish the intended feature branch safely if needed and record commands/versions and read-only compatibility boundaries in `specs/030-verify-ref-removals/evidence/README.md`, without discarding user work or modifying Core 029.
- [X] T002 [P] Port minimal domain-neutral inputs into `tests/fixtures/verify/ref-removals/` with `guarded.json`, `joint.json`, `retarget.json`, unsafe variants and Id/no-referrer/actual-proved controls; retain original mixed examples as runtime controls, add separately named universally guarded mixed positives using filtered incoming counts, and record source provenance/digests in `tests/fixtures/verify/ref-removals/README.md` without an ecosystem build dependency.
- [X] T003 [P] Inventory the existing lifecycle/order/query/solver/cache/trusted-proof/CLI/consumer/version-history test seams and immutable artifact hashes in `specs/030-verify-ref-removals/evidence/baseline-context.md`; identify default per-call rlimit 20,000,000 / 60,000ms wall guard, archive versions, fresh-current assumptions and every current 0.10 canonicalization/policy dependency before changing them.

**Checkpoint:** T001 first; T002/T003 may then run independently. No runtime,
dependency, public API or historical artifact change.

## Phase 2: Foundational — baseline, correspondence and identity boundary

**Purpose:** Shared requirements for every story. Preserve genuine old evidence before
the version bump; establish the argument and typed summary boundary before lifting
the reference-removal refusal.

- [X] T004 Add shared test assertions in `crates/behavior-verify/tests/support/ref_removals.rs` and collect original public preservation reports plus complete Core runtime/replay controls for T002 into `specs/030-verify-ref-removals/evidence/baseline.json`; independently distinguish inconclusive encoding refusal, Id/empty-check success, actual proof, allowed execution and reference refusal instead of treating exit 0 as proof.
- [X] T005 [P] Capture genuine nonempty signed verifier-0.10 action AND migration histories through the unchanged baseline into newly named `tests/fixtures/governance-v2/history-verifier-0.10/`, with original source/toolchain, policies, manifests, envelopes, backend/history state and expected replay/recovery results; record authenticity/provenance in `specs/030-verify-ref-removals/evidence/history-baseline.md` before T009 and never relabel a newly generated proof as old evidence.
- [X] T006 [P] Write the arbitrary-finite-state L1–L8 conservativity/preservation argument in `specs/030-verify-ref-removals/correctness.md` and the exact Core/SMT/site mapping in `specs/030-verify-ref-removals/construct-mapping.md`; cover complete incoming inventory, N=K+R, unbound frame, actual effects, total typed query bridge, Count errors, child existence, guarded prefix and site identity, explicitly retaining Rust/solver/backend correspondence assumptions and separating existing verified finite-set results from unverified Core implementation.
- [X] T007 Add baseline-red mandatory support tests in `crates/behavior-verify/tests/ref_removals.rs` for all three positive fixtures with nonempty relevant reference checks, all required obligations proved and concrete allowed controls; run them before encoder changes and retain actual nonempty encoding-refusal failures in `specs/030-verify-ref-removals/evidence/support-red.txt` rather than accepting empty checks or unreachable final-integrity proofs.
- [X] T008 Add version-boundary regressions in `crates/behavior-verify/tests/trusted_verification.rs` and `crates/behavior-store/tests/proof_version_history.rs` using T005 artifacts; require preserved 0.10 archive interpretation and distinct 0.11 fresh identity, quote the contract “Fresh eligibility is exact-current and exact-subject; archived validity does not confer new authorization.”, and retain the relevant pre-fix failures without editing historical fixtures.
- [X] T009 Establish verifier 0.11.0 in `crates/behavior-verify/src/lib.rs` and preserve explicit 0.10 plus all already-supported archive paths in `crates/behavior-verify/src/governance/trusted.rs`; retain exact-current fresh eligibility and existing versioned cache keys in `crates/behavior-verify/src/hashing.rs` / `cache.rs`, making T008 pass before new proof-authoritative encoding is enabled and introducing no release publication or automatic Store-policy adoption.
- [X] T010 Add compiling typed-inventory/summary correspondence tests in `crates/behavior-verify/src/encode/ref_world.rs` and register the private test/module seam in `crates/behavior-verify/src/encode.rs`; exercise complete field/type discovery, typed targets/captures, State-versus-Read roles, optional presence, known/residual membership, checked Count definedness and mismatched context. Observe behavioral failures with minimal unsupported stubs if necessary; missing APIs or compilation failure do not count as red evidence.
- [X] T011 Implement the private reference-class/context/residual-summary representation and justified query bridge in `crates/behavior-verify/src/encode/ref_world.rs`, reusing `encode/relational.rs` and `encode/count_congruence.rs`; enforce “One source with multiple Ref fields contributes distinct classes. Ordinary Id fields are excluded.”, “Optional absence contributes no edge. Read-role bindings do not become state replacements.” and “Counts are mathematical summaries; runtime Count errors and conversions remain ordinary.” Keep the production removal refusal until story integration establishes actual obligations.
- [X] T012 Review T004–T011 against the reference/evidence contracts and record baseline, genuine-history, version-boundary and typed-summary results in `specs/030-verify-ref-removals/evidence/foundation.md`; require the L1–L8 mapping and complete context binding, including “Unknown/mismatched context cannot reuse a summary, diagnostic cache result or current trusted claim.” This checkpoint does not claim G1 or complete removal support.

**Dependencies:** T004/T005/T006 follow setup and can be prepared independently;
T007 follows T004; T008 waits for T005; T009 waits for T007/T008. T010/T011 wait
for T006/T009; T012 blocks stories. Keep captures pinned to the old binary/source,
not whichever version happens to be current after T009.

## Phase 3: User Story 1 — Guarded removal without giving up Ref (P1)

**Goal:** Prove minimal guarded removal through ordinary preservation with actual
complete-world reference sites and unchanged allowed/refused execution.

**Independent test:** The guarded required-Ref module has nonempty relevant checks,
all required obligations proved and an allowed free-target execution; an existing
reference still prevents removal. Id/no-referrer empty success and a dead later site
cannot satisfy the story.

### Tests first

- [X] T013 [US1] Extend `crates/behavior-verify/tests/ref_removals.rs` with minimal guarded-removal, wrong-target/OR-weakened/missing guard and no-instance controls under both admitted profiles; independently assert actual synthesized reference scope, complete relevant inventory, allowed execution and distinction from zero checks or vacuous final-integrity proof, reusing the T007 red baseline.
- [X] T014 [P] [US1] Add the minimal public-facade verification/Store/replay workflow under both IR 0.7 and 0.8 in `consumer/tests/ref_removals.rs`; assert free removal ALLOW, referenced removal refusal, unchanged refused head and identical canonical runtime results, using only `behavior-engine` and complete snapshots with no private verifier or ecosystem dependency.

### Implementation

- [X] T015 [US1] Implement sufficient complete-child Ref-validity obligations in `crates/behavior-verify/src/encode/ref_world.rs` from actual earlier guards, established effect/lifecycle/command definedness and applicable postconditions; prove zero residual refs into actual removed targets plus valid surviving bound/created targets without assuming child checks, later globals or final integrity success.
- [X] T016 [US1] Integrate the discharged lemma with `ActionEncoding::build`, `path` and `noerr` in `crates/behavior-verify/src/encode.rs`, lifting the removal refusal only for fully covered contexts and retaining its guarded conclusion only for later sites; enforce “Reuse cannot leak into earlier proof sites.” Preserve unchanged local-rule frame reasoning, concrete child order and unrelated unsupported scopes.
- [X] T017 [US1] Emit actual early complete-world reference preservation sites in `crates/behavior-verify/src/checks.rs` and derive their required trusted inventory independently in `crates/behavior-verify/src/governance/semantic_proof.rs`; identify exact action/class/scope/context with existing canonical site machinery, enforcing “It is not falsely bound to a made-up action parameter.” and keeping old selected-check meanings rather than treating the auxiliary lemma or final Integrity step as sufficient coverage. Bind these new sites conservatively to the exact full module from their first proof-authoritative use; US4 tests and completes dependency handling rather than authorizing an initially incomplete key.
- [X] T018 [US1] Connect residual summaries to complete concrete incoming facts and minimal unbound witnesses in `crates/behavior-verify/src/confirm.rs`, preserving “Finite slots are search resources only.”; confirm the real `constraint_post` / `CONSTRAINT_VIOLATED` site when applicable and keep unsupported, auxiliary SAT and failed confirmation distinct from proof or a claimed counterexample.
- [X] T019 [US1] Update fresh-version minimal lifecycle expectations in `crates/behavior-verify/tests/lifecycle.rs` without modifying immutable old tables, and execute T013/T014 with actual default-profile preservation; record nonempty results, exact reports, allowed/refused execution and budget context in `specs/030-verify-ref-removals/evidence/us1.md`.
- [X] T020 [US1] Reconcile the implemented minimal path/site/witness correspondence with `specs/030-verify-ref-removals/correctness.md` and `construct-mapping.md`, naming actual symbols and assumptions; leave unsupported contexts explicitly inconclusive and document that US1 is an internal increment, not completion of mandatory mixed-pattern gate G1.

**Checkpoint:** US1 is independently testable after foundation. G1 remains open
until US2 proves both mixed cases; no release or broad-hardening completion claim.

## Phase 4: User Story 2 — Complete resulting reference world (P1)

**Goal:** Prove guarded joint removal and guarded retarget/removal for arbitrary finite
unrelated populations, while rejecting effects that introduce surviving invalid refs.

**Independent test:** Both mixed patterns discharge actual reference obligations and
have allowed Core/Store executions. An extra unbound referrer, another relevant field
or a newly introduced surviving reference cannot disappear from the claim.

### Tests first

- [X] T021 [US2] Complete `tests/fixtures/verify/ref-removals/joint.json` and `retarget.json` plus independent unsafe variants with total typed incoming-field counts, actual bound-source contributions and exclusions for every other incoming class; add arbitrary unrelated holders and multiple field/type controls, never a whole-type-cardinality cap as the sole positive evidence.
- [X] T022 [US2] Extend `crates/behavior-verify/tests/ref_removals.rs` for joint removal, retarget/removal, extra unbound refs, another incoming type/field and same-action create/retarget toward a removed target under BOTH IR 0.7 and 0.8; assert all actual relevant checks for safe modules and no false proof for unsafe modules in each version, with exact typed captures, profile-specific target resolution and independently expected outcomes.
- [X] T023 [P] [US2] Extend `consumer/tests/ref_removals.rs` under both IR 0.7 and 0.8 for actual guarded joint and retarget commits, new-surviving-ref refusal, complete resulting state and data/behavior replay; compare canonical results with baseline runtime controls and prove that unrelated population growth does not change the intended guarded action contract.

### Implementation

- [X] T024 [US2] Complete the per-field N=K+R bridge for mixed guards in `crates/behavior-verify/src/encode/ref_world.rs` and its existing relational/count-congruence integration; account for distinct State-bound matching rows, source coordinate, total typed membership, real target captures and no-error conditions, without globally bounding population, inventing runtime subtraction or assuming textual/hash resemblance proves equality.
- [X] T025 [US2] Derive every surviving bound/created reference and removed source/target contribution from the actual admitted World in `crates/behavior-verify/src/encode.rs` and `encode/ref_world.rs`; handle simultaneous effects and typed identities, keeping residual private facts distinct from complete observed incoming facts and preserving actual freshness/alias/target-existence rules.
- [X] T026 [US2] Complete mixed-pattern reference-site and concrete-witness routing in `crates/behavior-verify/src/checks.rs` and `confirm.rs`, ensuring any newly introduced surviving reference is checked against the complete child and an earlier synthesized reference failure cannot be disguised as a proved later integrity site.
- [X] T027 [US2] Add optional None/present, self-reference, cycle, aliases, duplicate/fresh IDs, State/Read overlap and renamed/reordered binding controls in `crates/behavior-verify/tests/ref_removals.rs`; support existing recognized forms and preserve truthful fallback for optional membership syntax lacking a totality law, without broadening Core or silently making a mandatory required-Ref positive unsupported.
- [X] T028 [US2] Add independent class/effect-coverage expectations for multiple sources, multiple fields and repeated same-target references in `crates/behavior-verify/tests/ref_removals.rs`; verify every declaration/effect contributes and correcting one defect does not hide another, using expected inventories independent of the encoder's own inventory builder.
- [X] T029 [US2] Close G1 by running the explicit matrix {free removal, joint removal, retarget/removal} × {IR 0.7, IR 0.8}, with guard-removal/unbound-referrer controls and T014/T023 allowed-runtime/replay cases for each version under the default verification budget; record all six positive combinations, exact nonempty checks, complete coverage, unrelated-population cases and reviewed L1–L8 correspondence in `specs/030-verify-ref-removals/evidence/g1.md`, leaving the gate incomplete if any required combination or FR-003/004 is unmet rather than shrinking scope or relaxing budgets.

**Checkpoint / G1:** Simple, joint and retarget positives all prove under both IR 0.7
and 0.8, with real allowed executions and relevant negative controls in each version.
US3 hardening cannot substitute for a missing mandatory positive/profile combination.

## Phase 5: User Story 3 — Failures and arbitrary unbound entities (P1)

**Goal:** Establish sound prefix/correspondence reasoning and truthful classifications
under unknown entities, partial expressions, errors and missing premises.

**Independent test:** Independently specified unsafe or actually failing obligations
cannot receive false proof. Earlier Core failures keep their exact prefix; solver or
witness uncertainty confers no authority. Small-state checks supplement the general argument.

### Tests first

- [X] T030 [US3] Extend `crates/behavior-verify/tests/resulting_state_order.rs` with canonical earlier unbound Ref failures, multiple failing rules, partial guard/effect expressions, earlier postcondition refusal and locally unreachable later sites; specify exact reachable Core phase/subject/reason and forbid success of a later check as an earlier premise.
- [X] T031 [P] [US3] Create independent small-typed-state/effect enumeration in `crates/behavior-verify/tests/ref_removals_semantics.rs`; compute the original reference property and actual Core transitions independently of summary extraction, matching each claimed obligation to its actual prefix instead of treating every runtime DENY as a counterexample to every claim. Exercise several finite sizes without turning them into proof assumptions.
- [X] T032 [P] [US3] Extend uncertainty controls in `crates/behavior-verify/tests/solver.rs` and focused `ref_removals.rs` for unknown/exhaustion, unsupported forms, unconfirmed auxiliary SAT and failed bounded witness construction; require honest inconclusive classifications and no proof from absence of a finite witness, while retaining at least one actual supported proof and confirmed failure control.

### Implementation and argument closure

- [X] T033 [US3] Resolve T030 prefix/definedness differences in `crates/behavior-verify/src/encode.rs` and `encode/ref_world.rs` using real earlier `path`/`noerr` conditions and justified unchanged-row frames; never globally assert Ref-validity, assume later globals/integrity, reorder runtime checks or broaden unsupported same-type/nonlocal semantics to manufacture proof.
- [X] T034 [US3] Resolve T031/T032 witness and classification differences in `crates/behavior-verify/src/confirm.rs` and `checks.rs`, requiring complete facts plus exact actual selected failure before issuing a counterexample, and preserving uncertainty rather than promoting failed confirmation into proof.
- [X] T035 [US3] Exercise actual source mutations of incoming-field inventory, target/context captures, bound/create delta, prefix guard and witness interpretation using the focused tests and retain a premise-to-detecting-test matrix/raw failing controls in `specs/030-verify-ref-removals/evidence/mutations.md`; require nonempty behavioral failure, restore exact production source after each mutation and rerun focused positive/negative controls.
- [X] T036 [US3] Run and complete the independent enumeration plus identifier/type/field/parameter renaming and declaration-order variants in `crates/behavior-verify/tests/ref_removals_semantics.rs`, retaining exact subject/context binding and meaningful supported proof outcomes rather than weakening assertions to overall report status alone.
- [X] T037 [US3] Finalize `specs/030-verify-ref-removals/correctness.md` and `construct-mapping.md` against implemented L1–L8, actual prefix simplifications, arbitrary-finite reference partition and independent witness confirmation; distinguish solver proofs, reviewed mathematics, finite tests, reused formal-library facts and unverified Rust/backend correspondence without claiming machine-checked end-to-end verification.
- [X] T038 [US3] Run the G2 focused reference/order/query/solver/counterexample/mutation matrix and record exact selectors, expected outcomes, actual failures and supported/unsupported boundaries in `specs/030-verify-ref-removals/evidence/us3.md`; rerun all mandatory positive controls and leave unexplained differences blocking rather than classifying them away.

**Checkpoint / G2:** Required positives remain green; no false proof or false
counterexample in required negatives; all actual premise controls detect broken assumptions.

## Phase 6: User Story 4 — Auditable and historically compatible evidence (P2)

**Goal:** Expose truthful reference claims through existing consumer/report interfaces
and preserve archive interpretation without granting fresh authority to stale artifacts.

**Independent test:** Real reference inventories and outcome reasons are visible;
new incoming declarations invalidate old results; independent trusted manifests reject
omissions; genuine signed 0.10 histories replay/recover while fresh reuse is denied.

### Tests first

- [X] T039 [US4] Extend `crates/behavior-verify/tests/cache.rs` with an unchanged removal action plus added/changed otherwise-unmentioned incoming type/field, typed capture/profile/schema/verifier mismatches and poisoned diagnostic entries; assert old proofs cannot be reused and cache/no-cache results preserve complete relevant inventory.
- [X] T040 [P] [US4] Extend `crates/behavior-verify/tests/trusted_verification.rs` with omitted, duplicated, changed-scope and wrong-subject complete-world Ref sites and fresh use of signed 0.10 artifacts; independently derive required sites from the admitted module and reject a producer/report's self-declared completeness.
- [X] T041 [P] [US4] Complete genuine signed 0.10 action/migration history tests in `crates/behavior-store/tests/proof_version_history.rs`, using T005 artifacts for data/behavior replay, read-only exact-original-event recovery, changed policy/context and rejected fresh action/migration/position reuse; assert existing Store policies and historical bytes are unchanged.

### Integration

- [X] T042 [US4] Complete incoming-schema/effect/context dependencies in `crates/behavior-verify/src/checks.rs`, `hashing.rs` and `cache.rs`, and independent required-site derivation in `governance/semantic_proof.rs`; make T039/T040 pass with conservative exact-module binding where necessary, never trusting a diagnostic cache/report as authenticated proof authority.
- [X] T043 [US4] Complete fresh/archive proof eligibility and original-event recovery integration in `crates/behavior-verify/src/governance/trusted.rs` for T041 while retaining T009's explicit archive-version set; preserve original manifests/authentication and exact-current fresh checks, with no automatic policy replacement or historical trust upgrade.
- [X] T044 [US4] Create separately named `tests/fixtures/canonicalization/current-verifier-0.11/` expectations and current-0.11 policy fixtures in `tests/fixtures/governance-v2/`, then update fresh-only version assertions in `consumer/tests/canonicalization.rs`, `crates/behavior-verify/tests/migration.rs` and affected CLI/governance tests; preserve all published/current-verifier-0.10 bytes and do not relabel old outputs as new.
- [X] T045 [US4] Extend `crates/behavior-cli/tests/cli_verify.rs` and `cli_engine_info.rs` for the existing public command and 0/1/2 exits, exact 0.11 identity, all three nonempty reference proof reports, unsupported/invalid inputs and empty-check controls; surface actual action/class/scope/assumptions/results using the unchanged `behavior-engine` facade.
- [X] T046 [US4] Complete `consumer/tests/ref_removals.rs` with repeated exact verification, cache/no-cache parity, changed context, and runtime/data/behavior replay after discarding verifier artifacts; require at least two deterministic semantic runs, keeping resource timings nonsemantic and no new verification dependency for replay.
- [X] T047 [US4] After T042/T043 and the remaining US4 integration, run actual production-source mutations that (1) suppress a required reference site from the trusted inventory while the diagnostic report remains complete and (2) remove the incoming-schema/context dependency so a prior proof key can survive an otherwise-unmentioned Ref declaration change. Require nonempty behavioral failures from the independent trusted-inventory/cache controls, retain exact mutations, commands, raw failures and restored-source identities in `specs/030-verify-ref-removals/evidence/mutations.md`, and restore exact source after each mutation before rerunning normal controls; manipulated artifact inputs alone do not satisfy these source-mutation controls. Then run and record the complete G3 public/cache/trusted-manifest/version/history/canonicalization matrix in `specs/030-verify-ref-removals/evidence/us4.md`, including mutation results, complete reports and unchanged historical artifact hashes; distinguish overall attestation, actual check outcomes, archive interpretation and current authorization before declaring US4 complete.

**Checkpoint / G3:** All stories pass together. Old-model and other-subject evidence
cannot acquire fresh proof authority; historical replay and original-event recovery remain valid.
Both late source mutations must be detected against the final integrated manifest/cache
logic; T035's earlier semantic mutations and T039/T040's altered inputs do not replace them.

## Phase 7: Polish and cross-cutting acceptance

**Purpose:** Finish precise user guidance, mandatory resource evidence and existing
regression gates. No optional functionality, publication or unrelated cleanup.

- [X] T048 [P] Document recognized free/joint/retarget guard forms, actual early reference checks, optional-query fallback, failure classifications, conditional trust boundaries and fresh-versus-archive version policy in `docs/verification.md` and `docs/versioning.md`; identify verifier 0.11.0 and required future minor-release delivery without selecting/publishing an engine release or changing the ecosystem Core pin.
- [X] T049 [P] Measure all six mandatory pattern/version positive combinations through existing public verification under default rlimit 20,000,000 / 60,000ms per-call guard and retain exact inputs, source/module/solver/profile, all auxiliary/per-site query counts, resource outcomes, per-call measurements and whole-invocation time/memory in `specs/030-verify-ref-removals/evidence/resources.json`; keep failures visible and propose any budget revision explicitly before final evaluation, never accepting timeout/encoding failure as a proof or an implicit budget waiver.
- [X] T050 Run existing `scripts/gates.sh` after final production/test changes and retain tested source/environment/actual command/results in `specs/030-verify-ref-removals/evidence/gates.txt`; ensure fast new tests and the public consumer run in the existing pipeline, preserving fmt, Clippy, workspace/build, conformance, replay, determinism, boundary, facade, workflow and script gates without a parallel release process. Bind gate/resource evidence to the same final production source and rerun affected proof/resource comparisons if gate remediation changes that source.
- [X] T051 Audit unchanged runtime/admission, BehaviorHash/SchemaHash, canonical outputs, Backend/facade contracts, historical fixture hashes and governance/replay meaning against the immutable baseline in `specs/030-verify-ref-removals/evidence/compatibility.md`, referencing `crates/behavior-core/src/eval.rs`, `crates/behavior-engine/src/lib.rs`, old 0.10 artifacts and exact current-site changes; resolve any unauthorized runtime deviation rather than editing a fixture to conceal it.
- [X] T052 Verify `specs/030-verify-ref-removals/quickstart.md` commands/report links against actual nonempty execution, replace planned-only steps with accurate completed guidance, and close FR-001–019, SC-001–007 and all 11 story acceptance scenarios with exact argument/test/mutation/resource references in `specs/030-verify-ref-removals/evidence/README.md`; mark readiness only when G0–G4, T049/T050/T051 pass and leave unmet requirements incomplete, with no publication.

## Dependencies and execution order

### Blocking graph

```text
T001 -> {T002, T003}
      -> {T004, T005, T006}
T004 -> T007
T005 -> T008
{T007, T008} -> T009
{T006, T009} -> T010 -> T011 -> T012                  [foundation / G0]
T012 -> {T013, T014} -> T015 -> T016 -> T017 -> T018
      -> T019 -> T020                                  [US1]
T020 -> T021 -> {T022, T023} -> T024 -> T025 -> T026
      -> T027 -> T028 -> T029                           [US2 / G1]
T029 -> {T030, T031, T032} -> T033 -> T034 -> T035
      -> T036 -> T037 -> T038                           [US3 / G2]
T038 -> {T039, T040, T041} -> T042 -> T043 -> T044
      -> T045 -> T046 -> T047                           [US4 / G3]
T047 -> {T048, T049} -> T050 -> T051 -> T052             [G4 / acceptance]
```

Foundation before story implementation is mandatory. T005 occurs before T009 or any
changed-version artifact generation. T009 establishes version isolation before new proof
authority; US4 completes its adversarial/public compatibility matrix. G1 intentionally
spans US1+US2, requiring all three mandatory patterns before US3 hardening can close it.
Each implementation task waits for its corresponding tests and prerequisites in the
same phase, even where the graph abbreviates a chain. Run/review early correct tests
as they become available, but never mark a future gate complete from a partial run.

### Parallel opportunities and examples

| Phase/story | Independent preparation wave | Join before |
|---|---|---|
| Setup | T002 neutral fixtures; T003 baseline/version inventory | T004/T005/T006 |
| Foundation | T004 baseline/assertions; T005 old signed history capture; T006 argument/mapping | T007/T008/T010 as applicable |
| US1 | T013 verifier proof tests; T014 public consumer tests | T015 |
| US2 | T022 verifier mixed tests; T023 actual Store/replay consumer | T024 |
| US3 | T030 order tests; T031 independent enumeration; T032 solver/focused uncertainty | T033 |
| US4 | T039 cache tests; T040 trusted manifest tests; T041 old history tests | T042 |
| Final | T048 documentation; T049 isolated measurements after builds finish | T050 |

Tasks editing the same files are sequential. In each wave, an unmarked first task may
run with its `[P]` companions because their files are independent after the shared
prerequisites. `[P]` in one phase does not authorize overlap with incomplete earlier
phases. T032's focused test file is not edited by T030/T031; T005 owns old history
fixtures until capture completes. Serialize heavy builds, solver campaigns and mutation
runs; documentation work must not contaminate resource measurements.

## Implementation strategy and internal MVP

1. Finish safe setup, authentic baseline/history capture, reviewed argument and version
   boundary. Keep the removal gate until a complete replacement applies.
2. Deliver US1 as the smallest internal independently testable slice: real guarded
   removal proof and actual runtime/replay controls. It is not release readiness.
3. Complete US2 and G1 before claiming the proposed approach covers the specification.
   Mixed filtered-count guards must admit arbitrary unrelated populations.
4. Complete US3's prefix/mutation/independent semantic controls, then US4's authenticated
   inventory/cache/archive and public evidence matrix. Shared seams prevent whole-story
   parallel implementation without integration dependencies.
5. Pass final resources, existing gates, compatibility and exact requirement traceability.
   Any failed mandatory gate blocks completion; do not weaken the theorem, budget,
   supported mandatory cases or immutable artifacts to obtain green results.

No new proof framework, Core runtime primitive, persistent state, join language,
general first-failure model, private application integration, Core 029/unique(Option)
work, external issue filing or release publication is authorized by this list.

## Requirements and artifact coverage

| Requirements | Tasks |
|---|---|
| FR-001–002 | T001–T007; T013/T014 |
| FR-003 | T010–T020 |
| FR-004 | T007; T021–T029 |
| FR-005–006 | T006/T010–T011; T024–T028; T031/T036 |
| FR-007–009 | T006; T015–T018; T030–T038 |
| FR-010–013 | T010–T011; T018/T027; T030–T038; T047/T048 |
| FR-014 | T007/T013; T017; T029; T040/T045/T047 |
| FR-015 | T003/T005; T008–T009; T039–T044; T047/T051 |
| FR-016–017 | T004/T006; T014/T023/T037; T041/T046; T050–T052 |
| FR-018–019 | T019/T029; T048–T049; T052 |
| SC-001 | T007/T013–T020 |
| SC-002 | T021–T029 |
| SC-003–005 | T022/T027–T028; T030–T038; T047 |
| SC-006 | T008–T009; T039–T047; T050–T051 |
| SC-007 | T019/T029; T049/T052 |

| Story acceptance | Independent closure |
|---|---|
| US1.1 | T013/T015–T019: nonempty actual required-Ref preservation proofs |
| US1.2 | T014/T019: free removal allowed; surviving reference refused; runtime/replay unchanged |
| US1.3 | T007/T013/T017: empty checks and unreachable final integrity cannot substitute |
| US2.1 | T021–T029: guarded joint removal with complete residual exclusion |
| US2.2 | T021–T029: guarded retarget/removal, existing new target and arbitrary unrelated rows |
| US2.3 | T022/T025–T028: same-action surviving ref creation/retarget cannot falsely prove |
| US3.1 | T028/T031/T035–T038: all incoming types/fields and arbitrary unbound sources |
| US3.2 | T030/T033–T038: actual earlier errors, definedness and site prefixes |
| US3.3 | T018/T032/T034/T038: honest unsupported/exhaustion/confirmation results |
| US4.1 | T039/T040/T045–T047: exact reference inventory and per-check/overall outcomes |
| US4.2 | T005/T008–T009; T039–T044/T046–T047: archive/current separation and immutable runtime history |

The reference-preservation contract maps to foundation/US1–US3; evidence compatibility
to foundation/US4; validation to G0–G4 and final acceptance. All data-model concepts
have corresponding tasks: context/classes T010–T011/T039–T042, summaries T011/T024–T025,
sites T017/T026/T040/T042, guarded auxiliary result T015–T016/T033, witnesses T018/T034,
and historical/current artifacts T005/T008–T009/T041–T044.

**Inventory:** 52 tasks: setup 3, foundation 9, US1 8, US2 9, US3 9, US4 9, final 5.
All start unchecked. Quality-checklist markers remain reviewer-owned; task completion
requires actual results and evidence, not a report that a mandatory gate failed.
