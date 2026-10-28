# Tasks: Scalable Execution and Evidence

**Input**: Design documents in `specs/031-scalable-execution-evidence/`.
**Prerequisites**: [plan.md](plan.md), [spec.md](spec.md), [research.md](research.md), [data-model.md](data-model.md), [contracts](contracts/) and [quickstart.md](quickstart.md).
**Tests**: Required by FR-013, the plan and constitution III. Observe meaningful failing controls before their implementation; retain red/green evidence.
**Organization**: Five independently reviewable user-story increments, shared prerequisites and final synthesis. Completed tasks are marked below; measurements, controls, limitations and final validation are indexed in [evidence/completion.json](evidence/completion.json).

## Format: `[ID] [P?] [Story] Description`

Each task has an ID and concrete repository-relative paths. `[P]` means it can overlap another identified task after its stated prerequisites, on different files. Story labels correspond to the five specification stories. No story label is used for shared setup/foundation/final work.

## Path Conventions

- All paths are relative to `/home/kalle/repos/behavior-ir-core-031`.
- `specs/031-scalable-execution-evidence/benchmarks/` holds minimal research tooling; `target/core031/` holds uniquely named disposable runs/experiment worktrees.
- `specs/031-scalable-execution-evidence/evidence/` holds selected public evidence, inventories and findings. Canonical observations may be compressed/deduplicated with byte-preserving recovery.
- Archived `specs/029-incremental-global-validation/`, published fixtures, releases and unrelated user work remain read-only. Do not run the old mutation script against its original paths.
- No production optimization, runtime library, new persistent evidence/authority, governance mechanism or lifecycle capability is authorized. A test-only or isolated experiment is not a product implementation.

## Phase 1: Setup — Scope and Reference Identity

**Purpose**: Establish exact subjects, reuse seams and a bounded research protocol without selecting an optimization.

- [X] T001 Record Core 0.16.0 release `63a8c164523275e06ac1d7dc5330db4a899c9d99`, planning merge `6e4602b04884edafb1123977fc22f7d88189fd06`, actual file-tree/patch and lock identities, prior 029 evidence scope and protected paths in `specs/031-scalable-execution-evidence/evidence/subject.json`; do not relabel historical measurements as current results.
- [X] T002 Define a draft case/profile inventory in `specs/031-scalable-execution-evidence/benchmarks/profile.json` from `specs/031-scalable-execution-evidence/contracts/campaign-artifacts.md`: N=128/512/2048/8192, prepared H=8/32/128 before a fixed eight-transition window, D=1/2/8, Q rule counts=1/4/16 with separate filter lengths=1/2/4, payload=16/256/4096 bytes, three primary timing repetitions, separate diagnostic/reference groups, all path/control families and one neutral combined workload; declare 120-second subprocess/8-GiB limits, actual enforcement, affinity/isolation, 2-GiB free-space preflight and retained interruption/rerun rules before measurements.
- [X] T003 [P] Map reusable 029 collector/probe/reference and Core/Store/history/recovery seams, their actual counter and observation coverage, and missing 031 measurements in `specs/031-scalable-execution-evidence/evidence/source-map.md`; identify read-only source paths and test-only integration points without assuming the dominant cost.

**Checkpoint**: Reference identity and draft factor design are explicit. T002 and T003 may overlap after T001; freezing occurs only after the foundation and probes exist.

## Phase 2: Foundational — Trusted Research Inputs and Full Observations

**Purpose**: Shared prerequisites for every story. Do not begin candidate experiments before this phase and the frozen baseline checkpoint.

- [X] T004 [P] Write and run failing manifest/artifact controls in `specs/031-scalable-execution-evidence/benchmarks/test_artifacts.py` for duplicate identities, incomplete source/profile hashes, changed frozen manifests, evidence-root escape, missing/corrupt artifacts and invalid lifecycle transitions in separate manifest-bound append-only status events; reject lifecycle fields in frozen manifests; quote/enforce `core031.campaign.v1`, “unique identities, complete hashes/profile versions and declared levels; cannot silently change after freezing” and `Draft → Frozen → Collecting → Collected → Assessed`, with interrupted campaigns `Incomplete`.
- [X] T005 [P] Write and run failing complete-observation comparator controls in `specs/031-scalable-execution-evidence/benchmarks/test_compare.py` for `false` versus `0`, canonical-byte changes, missing observation families, wrong subject/history/profile, compression corruption and digest-only approval; enforce “preserve JSON types and exact canonical bytes; references cannot point outside the declared evidence root” and recover/verify original compressed bytes.
- [X] T006 Implement the minimal checked manifest/measurement/artifact/comparison helpers in `specs/031-scalable-execution-evidence/benchmarks/artifacts.py` until T004/T005 pass; enforce “finite nonnegative metrics; absent measurements are explicit, never fabricated zero” and keep separate collection `complete|timeout|memory-limit|disk-limit|tool-failure|incomplete`, actual Core outcome, equivalence `match|mismatch|not-compared` and assessment `supported-by-evidence|rejected|unresolved`; retain first-divergence diagnostics and make no hash imply semantic authority.
- [X] T007 Write and run failing subprocess/coverage controls in `specs/031-scalable-execution-evidence/benchmarks/test_run.py` for failed/timeout probes, missing or duplicate repetitions, wrong binary/mode, omitted drain, nonfinite metrics, absent limit enforcement, unsafe output reuse and stale passing assessments; distinguish a correctly observed DENY from collection failure and forbid timing/diagnostic sample mixing.
- [X] T008 Implement fresh-run freeze/collection/validation entrypoints in `specs/031-scalable-execution-evidence/benchmarks/run.py` using existing 029 mechanisms and T006 helpers until T007 passes; retain append-only per-attempt JSONL, stdout/stderr, commands, identities, effective resources and every failed attempt; keep “a changed protocol produces an explicitly related new manifest/campaign, retaining the old attempt,” require frozen reference artifacts before candidate observations and supply working help/small self-test commands without a new framework.
- [X] T009 Write and run failing full-reference coverage controls in `crates/behavior-store/src/store/incremental/research031_tests.rs` and retain red output in `specs/031-scalable-execution-evidence/evidence/foundation-red.txt`; independently reconstruct complete parents/children using the existing private test seam and require records/bundles/versions/head, ordered errors/traces, read/query evidence, commands and replay outcomes or explicit inapplicability, rather than only the old 029 digest.
- [X] T010 Add the minimal test-only reference adapter in `crates/behavior-store/src/store/incremental/research031_tests.rs`, registering it under existing test-only declarations in `crates/behavior-store/src/store/incremental/mod.rs`, and connect full-reference collection in `specs/031-scalable-execution-evidence/benchmarks/run.py`; pass T009 without a public forced-full API, weakening production validation or using the candidate to establish its own premises; record positive/negative/mode-parity results in `specs/031-scalable-execution-evidence/evidence/foundation-green.txt`.

**Checkpoint**: Manifest/runner/comparator controls and private full-reference observation path work. Preserve independent expected outcomes in addition to reference comparisons; shared Core evaluation is not a proof of Core itself.

## Phase 3: User Story 1 — Understand Complete Transition Cost (Priority: P1, MVP)

**Goal**: A reproducible complete-path baseline and cost model, including the five independent axes and work otherwise deferred outside a transition.

**Independent Test**: A fresh run reproduces the fixed eight-create/8,192-entity case, all primary axis coverage and phase observations, with three timing repetitions and complete reference/mode parity. Reviewers can attribute cost without summing phase medians or treating unmeasured work as zero.

### Tests and implementation

- [X] T011 [P] [US1] Write and run failing scaling/measurement-shape controls in `crates/behavior-store/tests/research031.rs` for independently prepared history versus measured-window length, distinct changed identities, unused payload versus actual evidence bytes, rule count versus predicate complexity, fixed timestamps and included final drain; specify valid/invalid/error expectations independently of the collectors.
- [X] T012 [US1] Implement neutral admitted fixtures and oracle inputs in `crates/behavior-store/tests/support/execution_evidence_fixtures.rs` and `specs/031-scalable-execution-evidence/benchmarks/cases.json` until T011 can exercise the planned factors; include meaningful affected-count boundaries (1000 ALLOW/1001 DENY), none/true/mixed-root controls, public parent/work-item references, ordinary lifecycle actions and command intents, without private application code, new Models or new Core semantics.
- [X] T013 [US1] Implement the public probe `crates/behavior-store/examples/execution_evidence_bench.rs` with shared driver `crates/behavior-store/tests/support/execution_evidence_workload.rs`, reusing the 029 contiguous evaluate/commit/final-drain mechanism; expose the frozen case inputs and complete observation artifacts, and keep setup/prepared history, process reporting and actual result bytes separately scoped.
- [X] T014 [US1] First write and observe failing known-work counter calibration assertions (including units/scope and an intentional offset control), then add only necessary conditional diagnostic counters at identified sites in `crates/behavior-core/src/eval/work.rs`, `crates/behavior-store/src/documents.rs` and the inspected evaluation/record/history paths; document exact units, sites, overlaps and absent metrics in `specs/031-scalable-execution-evidence/evidence/counter-map.md`, preserving production-like observations and distinguishing named JSON hashing counts, all hash work, unique output and retained-audit memory.
- [X] T015 [P] [US1] Write and run failing cold/recovery measurement controls in `consumer/tests/research031_recovery.rs`, reusing the existing persisted-before-lost-ack fixture: check exact committed history/time/context, command occurrence multiplicity, ordinary retry versus recovery, cache loss, reopen/first evaluation and data/behavior/reference replay; retain red evidence in `specs/031-scalable-execution-evidence/evidence/recovery-red.txt`.
- [X] T016 [US1] Extend the shared research driver in `crates/behavior-store/tests/support/execution_evidence_workload.rs` and the test-only helpers in `consumer/tests/research031_recovery.rs` to measure small reads, pinned command pages, cold reopen/first evaluation, lost-ack recovery and replay using existing semantics; pass T015, record green evidence and disclose the actual persistence fixture rather than claiming general fsync/network performance.
- [X] T017 [US1] Freeze the final reference case inventory, independent oracles, full canonical artifacts, exact baseline/diagnostic/reference sources and binaries, environment and profile under `specs/031-scalable-execution-evidence/evidence/baseline/manifest.json`, with bulky artifacts in a unique `target/core031/` run; verify “at least three levels per required axis across the campaign; fixed measured window for history scaling; byte size measured rather than inferred from the payload parameter” and semantic mode parity before any candidate experiment.
- [X] T018 [US1] Run focused new harness/Rust/consumer controls and the unchanged `scripts/gates.sh` for the exact research-harness source; retain commands, nonempty test counts, full result and source/file identities in `specs/031-scalable-execution-evidence/evidence/baseline/gates.txt` and `gates-source.json`; a failure blocks final baseline collection rather than being hidden by successful probes.
- [X] T019 [US1] Collect all frozen primary timing repetitions and separate diagnostic/reference observations via `specs/031-scalable-execution-evidence/benchmarks/run.py` into uniquely identified `target/core031/` runs; publish coverage, artifact inventory and retained failures in `specs/031-scalable-execution-evidence/evidence/baseline/assessment.json`, including all five axes, the 8192/eight-create case, one combined workload, cold/read/history/recovery/replay paths and actual resource/measurement limits.
- [X] T020 [US1] Analyze per-run contiguous totals, phase distributions, memory/counter scopes, growth and required-output versus redundant-processing work in `specs/031-scalable-execution-evidence/evidence/cost-model.md`; account for initialization, maintenance, final drain, recovery and replay, explain prior 029 median/counter differences and Ω(B) output work, and make no universal bound or unsupported attribution.
- [X] T021 [US1] Publish the US1 findings and reproducibility/coverage index in `specs/031-scalable-execution-evidence/evidence/us1.md`; require complete primary baseline coverage and zero unexplained normative mismatches, retain uncertainty/exhaustion as distinct findings and identify the measured evidence-processing sites to investigate next.

**Checkpoint / MVP**: US1 is an independently useful research deliverable. Missing required baseline levels, repetitions or paths prevents completion even if an optimization later has a sound no-go finding.

## Phase 4: User Story 2 — Assess Existing-Format Evidence Improvements (Priority: P1)

**Goal**: Determine which measured evidence-processing work can be avoided with identical current-profile output.

**Independent Test**: Each assessed shortcut has a complete-observation correspondence argument, explicit applicability and an executed bounded comparison or a precise unresolved feasibility gap; no unsafe control can be recommended as equivalent.

- [X] T022 [P] [US2] Rank measured construction/parsing/copying/serialization/traversal/hashing hypotheses from US1 in `specs/031-scalable-execution-evidence/evidence/evidence-processing.md`; state each exact site, preserved obligations, expected/necessary cost, mathematical premises and alternatives before selecting any bounded experiment.
- [X] T023 [P] [US2] Write and run failing shortcut/omission/staleness controls in `specs/031-scalable-execution-evidence/benchmarks/test_experiments.py` that detect altered canonical output, skipped normative fields/checks, mismatched parents/profiles and an experiment failure reported as success; use independent complete observations and require actual premise mutations for each subsequently implemented shortcut, not unrelated compile failures.
- [X] T024 [US2] After T022/T023, conduct only justified isolated current-format experiments, indexing exact patches, commands and correspondence arguments in `specs/031-scalable-execution-evidence/benchmarks/experiments/evidence-processing/manifest.json` and running disposable checkouts under `target/core031/`; preserve ordinary fallback for unknown premises, restore/check source isolation and record a concrete unresolved blocker instead of forcing an implementation when no shortcut is justified.
- [X] T025 [US2] Renew applicable source/harness gates, then compare each executed experiment with the frozen full reference across selected scaling points, errors, conflicts and recovery; retain all repeats/negative controls and complete-cycle/output/maintenance costs in `specs/031-scalable-execution-evidence/evidence/evidence-processing-results.json` without replacing slow points or using diagnostic timing as performance evidence.
- [X] T026 [US2] Finalize each `supported-by-evidence|rejected|unresolved` disposition in `specs/031-scalable-execution-evidence/evidence/us2.md`, including exact subject/patch, trust assumptions, counterexamples or missing experiments, compatibility and measured benefit; do not deliver a production fast path or infer that Ω(B) makes every existing copy necessary.

## Phase 5: User Story 3 — Assess Broader Incremental Queries (Priority: P2)

**Goal**: Establish applicability and limitations of existing incremental algorithms for Core's complete semantics.

**Independent Test**: Filtered count, existence, selected uniqueness and restricted sums each have a source/premise/correspondence assessment, independent valid/refusal/error cases and a clear experimental or unresolved disposition.

- [X] T027 [P] [US3] Reconfirm exact primary-source artifacts and selected theorem/implementation versions for DBSP, Differential Dataflow and Adapton in `specs/031-scalable-execution-evidence/evidence/algorithms/sources.json`; preserve the planning qualifications about Lean 3 versus Lean 4, actual admissions/target dependencies, written versus machine-checked claims and proof-model versus Rust-engine scope, without adding a runtime/proof dependency.
- [X] T028 [US3] Derive conditional arbitrary-finite-state query maintenance and construct-to-Core mappings in `specs/031-scalable-execution-evidence/evidence/algorithms/correspondence.md`, comparing simple summaries, identity-bearing typed deltas and dependency invalidation; cover complete simultaneous deltas, multiplicity, Ref/Option behavior, captures, intermediate overflow, definedness, laziness, order and initialization/rebuild costs; unknown dependencies remain affected.
- [X] T029 [P] [US3] Write and run the independent query oracle and negative-control cases in `crates/behavior-store/tests/research031_queries.rs` before adding an incremental research implementation: filter entry/exit, create/remove/reactivate, empty queries, duplicate/stale deltas, aliases/reused identities, wrong captures, missing edges, checked overflow, partial/lazy predicates and simultaneous effects; demonstrate how naive value-only shortcuts can disagree with complete Core observations; freeze any newly added cases and full-reference bytes in a separate supplemental profile under `specs/031-scalable-execution-evidence/evidence/algorithms/` before T030, retaining the original US1 campaign unchanged.
- [X] T030 [US3] Where T028 premises are justified, implement only bounded test-support experiments in `crates/behavior-store/tests/support/query_delta_experiments.rs`, beginning with filtered count and assessing existence/uniqueness/restricted sums; exercise T029 controls and full-reference comparison, retaining unknown-case fallback and exact patch identity; document unsupported fragments rather than narrowing Core's admitted language or importing a general engine.
- [X] T031 [US3] Record per-target theorem statement, pin, assumptions, transitive axiom/proof audit and independent checking results in `specs/031-scalable-execution-evidence/evidence/algorithms/proof-scope.md` if any theorem is relied on as independently machine-checked; otherwise explicitly record source-only/written-argument status and what remains unverified, never promote publisher claims or source scans to completed kernel checks.
- [X] T032 [US3] Renew applicable gates before any changed-harness experiment measurements, assess construction/update/query/rebuild/output costs against frozen references and record each fragment/algorithm disposition and retained negative/mutation outcomes in `specs/031-scalable-execution-evidence/evidence/us3.md`; distinguish soundness, covered language and measured capacity, and accept a precise no-go without claiming universal completeness or delta-proportional CPU time.

## Phase 6: User Story 4 — Assess Compact Verifiable Evidence (Priority: P3)

**Goal**: Decide whether a prospective versioned evidence contract can preserve full audit/replay meaning; no new format or cryptographic runtime is implemented.

**Independent Test**: Each assessed family has explicit old/new interpretations, completeness/availability/authority premises and adversarial walkthroughs. Equal state alone, an inclusion path or a hash never establishes all omitted observations.

- [X] T033 [P] [US4] Define prospective interpretations for reconstructible history, authenticated dictionary/range evidence and append-only histories in `specs/031-scalable-execution-evidence/evidence/compact/interpretations.md`; identify complete observations, exact Behavior/policy/schema/profile/state/history binding, migration boundaries and consumer reconstruction/update/verification/storage costs without creating a persistent record format.
- [X] T034 [P] [US4] Specify public neutral tampering, omitted query members, missing incoming references, stale roots/checkpoints, wrong subject/history, corrupted support and unavailable-data walkthroughs in `specs/031-scalable-execution-evidence/evidence/compact/adversarial-cases.md`, referencing authoritative existing Core cases where applicable; list independently expected failures and distinguish missing evidence from an established semantic counterexample.
- [X] T035 [US4] Evaluate T033 interpretations against every T034 obligation in `specs/031-scalable-execution-evidence/evidence/compact/refinement.md`; explain membership/non-membership versus complete query/reference coverage, freshness, availability and governance authority, and state any unresolved interpretation/completeness premise as a blocker; neither MuHash StateId nor an authenticated log alone is a complete replay/safety proof.
- [X] T036 [US4] Publish compact-evidence dispositions and required future versioning/compatibility/trust decisions in `specs/031-scalable-execution-evidence/evidence/us4.md`, with costs, limitations and explicit `supported-by-evidence|rejected|unresolved` findings; preserve all old bytes/identities and prohibit unverified caches/checkpoints from acquiring authority.

## Phase 7: User Story 5 — Assess History and Live-State Retention (Priority: P3)

**Goal**: Explain independent historical verification/recovery costs and assess bounded live-state alternatives without new semantics.

**Independent Test**: Fixed-population history/page results distinguish returned bytes from validated intervals; corrupt/stale history and lost-ack controls preserve occurrence identity/order/multiplicity; retention examples preserve Ref integrity, permanent identities and replay.

- [X] T037 [P] [US5] Add public history/page/recovery controls in `consumer/tests/research031_history.rs` for one-record whole-event pages, duplicate commands, exact pinned endpoints, equal state at different positions, corrupted/missing history, concurrent commits and lost acknowledgement; specify expected results first and observe required failures before any new research helper or historical-reuse experiment.
- [X] T038 [US5] Reuse US1's H=8/32/128 fixed-population baseline and extend only justified diagnostic attribution through `crates/behavior-store/tests/support/execution_evidence_workload.rs`; pass T037, measure/identify endpoint validation, prefix reconstruction, snapshot verification and page extraction work separately, and retain interval/page-byte/occurrence observations and limitations in `specs/031-scalable-execution-evidence/evidence/history-costs.md`.
- [X] T039 [US5] Assess historical reuse/checkpoint candidates in `specs/031-scalable-execution-evidence/evidence/history-feasibility.md` against frozen exact history, independent validation, invalidation, corruption, cache loss/cold rebuild, concurrency, migration and acknowledgement-loss boundaries; any bounded test-only experiment must first have a correspondence argument, renewed code gates and retained full-reference/adversarial evidence, with no new authoritative persistent index.
- [X] T040 [P] [US5] Assess completed-but-referenced work, child/parent removal, permanent identities and replay availability in `specs/031-scalable-execution-evidence/evidence/retention.md`, using public ordinary-Core fixtures and recorded existing runtime/ref-integrity outcomes; distinguish terminality, physical deletion and archival retention, explicitly identify any future Model/semantic decision and introduce no automatic cleanup or production-application redesign.
- [X] T041 [US5] Produce two separate history-verification and bounded-retention dispositions in `specs/031-scalable-execution-evidence/evidence/us5.md`, linking T037–T040 evidence, costs, trust/availability assumptions and next decisions; no small response or bounded live-state claim may hide full-history recovery work or unavailable replay inputs.

## Phase 8: Synthesis and Cross-Cutting Validation

**Purpose**: Complete the research dossier and verify compatibility, reproducibility and honest completion.

- [X] T042 Write `specs/031-scalable-execution-evidence/investigation.md` with answers/evidence or precise unresolved findings for all seven FR-001 questions, the measured cost model, algorithm/correspondence matrix, all five research-area dispositions, failed attempts, remaining limits and ranked separately scoped follow-ups; a no-go finding does not waive mandatory baseline coverage or imply production authorization.
- [X] T043 Audit changes and protected historical artifacts in `specs/031-scalable-execution-evidence/evidence/compatibility.md`: verify no Core semantic/public-surface/record/profile/persistence/replay/governance/version change, no modified 029 fixtures/thresholds or user work, only identified test/diagnostic additions in the main worktree and isolated experiment patches; preserve evidence classes and explicit trust assumptions.
- [X] T044 Update `specs/031-scalable-execution-evidence/quickstart.md` with actual new collector/validator help, freeze/collect/assess commands, focused red/green tests and expected outcomes; execute its bounded smoke and artifact reconstruction in a fresh run workspace, retaining `specs/031-scalable-execution-evidence/evidence/quickstart.txt` without relabeling smoke as full scaling coverage.
- [X] T045 Run focused final research controls and the unchanged `scripts/gates.sh`, recording full results and exact final source/harness identities in `specs/031-scalable-execution-evidence/evidence/gates.txt` and `gates-source.json`; if measured code/harness changed, renew affected source/mode/reference comparisons and measurements rather than reusing incompatible acceptance, and retain any failures.
- [X] T046 Validate all required cases/levels/repetitions, canonical artifact recovery and digests, red/green/mutation evidence, first-divergence outcomes and source/manifest links using `specs/031-scalable-execution-evidence/benchmarks/artifacts.py`; publish `specs/031-scalable-execution-evidence/evidence/completion.json` with SC-001–006 status and a complete inventory, preserving incomplete/resource-limited findings and never reporting research complete with missing mandatory baseline coverage.

## Dependencies & Execution Order

### Phase dependencies

1. Setup: T001 establishes identity; T002 and T003 may then overlap.
2. Foundation: T004/T005 → T006 → T007 → T008 → T009 → T010. T004/T005 are independent red controls and may overlap; actual test implementation still follows recorded red evidence.
3. US1: T011 → T012 → T013 → T014, with independent T015 red controls; T012/T013/T015 → T016 → T017 → T018 → T019 → T020 → T021. T011 and T015 may overlap after foundation. No candidate runs before T017–T021 establish the required frozen baseline.
4. US2: US1 → T022/T023 → T024 → T025 → T026. Test helpers and premise arguments must precede experiments.
5. US3: prioritize after US2's disposition; T027 and T029 may overlap, then T028/T029 → T030; T031 qualifies any adopted proof before favorable claims; all → T032. Source-only literature/oracle work may start after foundation, but measurements never overlap another timed campaign.
6. US4: T033/T034 can overlap after baseline and prerequisite source understanding; both → T035 → T036. This story does not require a successful US2/US3 optimization.
7. US5: baseline and full-observation foundation → T037 → T038 → T039; independent T040 retention assessment; all → T041. US1 already measured basic history/recovery paths; this phase deepens attribution and feasibility rather than retroactively supplying missing MVP baseline coverage.
8. Final: US1–US5 dispositions → T042 → T043 → T044 → T045 → T046. Newly changed measured code invalidates affected old measurements until renewed; documentation alone does not require repeating valid code measurements.

### Story dependency graph

```text
Setup → Foundation → US1 (complete-path baseline / MVP)
                         ├→ US2 (existing-format evidence)
                         ├→ US3 (query algorithms; priority after US2)
                         ├→ US4 (compact-evidence contract assessment)
                         └→ US5 (history and retention assessment)
US1 + US2 + US3 + US4 + US5 → synthesis / compatibility / final gates / completion
```

Stories are independently reviewable after their baseline prerequisites. They do not depend on another story finding a successful optimization. Basic read/history/recovery/replay measurements belong to US1; US5 supplies deeper dedicated assessment. Keep measurements serial and isolate all builds, proof runs and auxiliary work from the measurement CPU.

### Within each story

Expected outcomes and meaningful red controls precede corresponding new helpers/shortcuts. Mathematical premise/correspondence analysis precedes experiments. Every implemented shortcut receives an actual omitted/stale/altered-premise control. Preserve reference fallback. After changed measured code/harness, renew required code gates and freeze compatible source/binaries before timings. A written proof or source inspection is never labeled a completed kernel run.

## Parallel Execution Examples

| Story | Safe example after prerequisites | Serial boundary |
|---|---|---|
| US1 | T011 scaling tests and T015 consumer recovery tests edit separate files after T010 | Join before T016; freeze, gates and collection T017–T019 are sequential |
| US2 | T022 cost-site/argument inventory and T023 experiment-harness red controls edit separate files after T021 | Both precede T024; all timing in T025 is isolated |
| US3 | T027 source/proof inventory and T029 independent oracle tests edit separate files | Mapping/prototype/proof claims must meet dependencies before T032 |
| US4 | T033 interpretations and T034 independent threat walkthroughs use separate documents | T035 joins both before any favorable feasibility disposition |
| US5 | T037 history tests and T040 retention assessment use separate files after baseline | T038 helper changes follow T037; T041 requires both streams |

These examples identify scheduling opportunities, not a requirement to spawn agents or run resource-heavy work concurrently.

## Implementation Strategy

### MVP first

Complete T001–T021. Deliver the complete-path baseline and cost model with all five axes, independent oracle/reference/mode evidence and required read/history/recovery/replay scopes. Stop to validate US1 independently; do not deploy, tag, publish or call the entire feature finished at this checkpoint.

### Incremental research delivery

Assess existing evidence work first (US2), broader queries second (US3), then versioned compact evidence (US4), using US5's separate historical/retention assessment. Source reading and independent oracle preparation may overlap as above. Favor the smallest justified experiment; record unsupported/inconclusive/resource-limited results and explicit no-go findings instead of building a general framework or forcing a successful optimization.

### Final completion

All five dispositions and the seven-question dossier must exist; all mandatory baseline measurements and controls must be present; actual code/compatibility checks must pass. Missing required measurements remain incomplete work. Candidate `unresolved` and `rejected` are legitimate assessed outcomes with exact blockers, not disguised successful optimizations. Any production implementation or new evidence/lifecycle contract requires a separate decision.

## Coverage and Review Notes

| Requirements | Main tasks |
|---|---|
| FR-001–003 | T001–T003, T042–T043 |
| FR-004–007 | T011–T021, T038–T041 |
| FR-008–010 | T004–T010, T022–T026, T028–T032 |
| FR-011–013 | T023–T025, T027–T032 |
| FR-014–015 | T033–T036 |
| FR-016–017 | T015–T016, T037–T041 |
| FR-018–020 | T026, T032, T036, T041–T046 |
| SC-001–006 | T042–T046, backed by story-specific independent criteria |

All 46 tasks follow checkbox/ID/optional parallel marker/story/path format. Story counts: US1=11, US2=5, US3=6, US4=4, US5=5; shared setup/foundation/final=15. No task is marked complete by generation.
