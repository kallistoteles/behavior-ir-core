# Feature Specification: Complete and Verify Exact Core Transitions

**Feature Branch**: `research/034-ab-measurement-002` (existing research branch; feature selection is independent of branch naming)

**Feature**: `036-core-transition-feasibility`

**Created**: 2026-11-15

**Revised**: 2026-11-16 — specification revision 2

**Status**: Revised requirements — ready for replanning. The implementation remains incomplete.

**Input**: Finish the scoped Core implementation, its actual implementation-to-model proof connection, quality checks, complete-operation diagnosis, lifecycle evaluation and compact-evidence experiment; then deliver a clear, independently reproducible result. Repair implementation and tooling blockers instead of ending the feature with an early Rework report.

**Revision and evidence boundary**: This revision supersedes the [previous specification](specification-revisions/001/spec.md). The existing [report](report.md), assessment, plans, contracts, task outcomes and sealed evidence describe revision 1 and its unfinished attempt. They do not establish completion of revision 2. Existing execution planning must be revised against this specification before further implementation; its earlier route from an unmet gate directly to final closure is superseded. Historical bytes, outcomes and budgets remain unchanged. See [the amendment record](AMENDMENT.md).

## User Scenarios & Testing *(mandatory)*

### User Story 1 - Obtain a finished and justified execution implementation (Priority: P1)

A Core integrator needs a working restricted transition implementation and a checked connection between its actual execution and the mathematical model. The integrator needs the complete original result, not merely a safe final state or a proof about a separate model.

**Why this priority**: All later comparisons depend on the implementation performing exactly the requested operation and preserving the authority under which prior work is reused.

**Independent Test**: Build and run the reference, reuse candidate and independent original oracle from recorded sources. Check the complete implementation-to-model obligations and their negative controls, and successfully run the unchanged whole project quality gate against the actual candidate.

**Acceptance Scenarios**:

1. **Given** the authoritative original semantics and the declared restricted `finish` domain, **When** a transition completes, **Then** its complete observation, identities, first errors, refusals and ordered commands agree with reference execution for the same inputs; the general correspondence is checked for arbitrary finite states in the admitted domain.
2. **Given** a stale ground, safe-but-wrong result, wrong projection, wrong encoder or substituted executable, **When** validation runs, **Then** the actual relevant control rejects it; producer-supplied success flags and matching finite examples do not replace the proof.
3. **Given** an unsupported input, failed publication or uncertain acknowledgement, **When** execution continues, **Then** justified original fallback or reconciliation preserves reference behavior, and no unconfirmed child acquires reuse authority.
4. **Given** an unavailable proof tool, incomplete source export, broken environment or failed quality check, **When** the problem is encountered, **Then** it is diagnosed and repaired, or the engineering approach is revised while preserving the same semantic obligations; the feature remains unfinished until its requirements are met.
5. **Given** the final source revision, **When** all quality checks run, **Then** the unchanged full project gate and scoped research checks succeed, and the checked proofs and executed binaries cover that same revision.

---

### User Story 2 - Explain and reduce the complete transition cost (Priority: P1)

An architecture owner needs a complete accounting of the work that remains after verified reuse and a real comparison of an implementation improvement that preserves the existing observation contract.

**Why this priority**: The historical semantic interval improved much more than the full operation. The owner needs to know which remaining work is avoidable before deciding on a different evidence format.

**Independent Test**: Run matched reference and reuse candidates over the frozen population/history matrix, retain at least three timing observations per required comparison cell, reconcile exclusive phases with each complete operation, and execute a justified same-contract improvement with independent correctness and mechanism controls.

**Acceptance Scenarios**:

1. **Given** identical parents, requests, authority, backend and full-output endpoints, **When** candidates execute, **Then** all required observation fields and identities agree and mandatory commit/output work is included in each directly measured total.
2. **Given** nested semantic, materialization, observation, identity, copy/hash, commit and output work, **When** costs are reported, **Then** the same operation's total is reconciled without double counting; instrumentation overhead and any remainder are explicit.
3. **Given** different object populations and history lengths, **When** timings and work counters are compared, **Then** the report distinguishes their effects and identifies whether local changes still cause population-wide or history-wide work.
4. **Given** a proposed same-contract improvement, **When** it is evaluated, **Then** its actual activation, full result preservation and complete cost are checked; a slower or ineffective improvement is retained as a measured result.

---

### User Story 3 - Measure verified reuse over a complete lifecycle (Priority: P1)

An operator needs to know whether reuse pays for its establishment and maintenance over real sessions, how much data it retains, and how invalidation, uncertain commits and restart affect correctness and total cost.

**Why this priority**: A per-operation saving alone cannot establish that an approach is useful over a real lifetime.

**Independent Test**: Directly time matched reference/reuse sessions of 1, 8, 32 and 128 operations for changing, unchanged-content and invalidated workloads. Exercise the declared fault/recovery families and account for required final output, audit, reacquisition and retention.

**Acceptance Scenarios**:

1. **Given** matched fresh initial checking/acquisition and the same declared final endpoint, **When** sessions execute, **Then** their full totals include preparation, ordinary maintenance and all required final work; at least three observations exist per required timing cell.
2. **Given** changing and unchanged-content operation sequences, **When** their economics are reported, **Then** they remain separate, and a no-op sequence does not stand in for a state-changing workload.
3. **Given** stale/wrong-history grounds, changed dependencies, missing views, refusal, failed or uncertain publication, or restart, **When** execution resumes, **Then** authorization is checked or re-established and continuing results agree with the original reference; recovery cost is directly measured.
4. **Given** growing histories and retained data, **When** payback is assessed, **Then** it is based on whole observed sessions with memory, retention and audit accounts; no observed payback is a valid completed negative finding.

---

### User Story 4 - Build and evaluate exact compact transition evidence (Priority: P2)

An architecture reviewer needs an implemented minimal compact transition and exact reconstruction for the same restricted operation, so that a format decision follows working evidence rather than a smaller hypothetical record.

**Why this priority**: Compact evidence changes delivery, identity and availability obligations. These must be proven and measured alongside any operation-time saving.

**Independent Test**: After the baseline diagnosis and lifecycle results, freeze the compact contract, build the restricted implementation and reconstruction, check their general correspondence/reconstruction and identity obligations, execute missing/corrupt-input and publication controls, and measure both completion and completion-plus-required-audit lifecycles.

**Acceptance Scenarios**:

1. **Given** the declared compact record and retained inputs, **When** reconstruction completes, **Then** every original observation field, applicable canonical byte sequence, identity, error/refusal outcome and ordered command agrees with independent original execution.
2. **Given** missing, corrupt, incompatible or substituted inputs, wrong subjects or versions, **When** reconstruction is requested, **Then** it fails explicitly without certifying exact success or creating execution authority.
3. **Given** separate state, event, history and transport identities, **When** their relationship is evaluated, **Then** equality or an explicitly versioned mapping is justified; a cache or proof representation does not silently redefine canonical identity.
4. **Given** compact completion followed by mandatory reconstruction and audit, **When** the candidate is compared with the legacy endpoint, **Then** required retention, availability, publication, reconstruction and recovery work is charged honestly, and guarantee differences remain visible.
5. **Given** a correct implemented compact candidate that offers no useful total improvement, **When** the final decision is made, **Then** it may be rejected using its completed proof, control and measurement evidence; unbuilt code or missing proof is not such a rejection.

---

### User Story 5 - Receive a completed implementation and a decisive result (Priority: P1)

The project owner wants the scoped work completed and a final answer about correctness, complete cost, lifecycle economics and the value of compact evidence. A report of unfinished engineering does not deliver that answer.

**Why this priority**: The previous attempt produced useful failure records but left the main architecture questions unresolved.

**Independent Test**: Start from a recorded environment/tool/fixture failure or bounded-run exhaustion, follow the recorded repair and continuation to successful prerequisites and the complete experiment set, and independently reproduce the final result from retained subjects. Verify that every mandatory deliverable and final success criterion is met.

**Acceptance Scenarios**:

1. **Given** a recoverable tooling or implementation failure, **When** a bounded attempt stops, **Then** the attempt is retained, the root cause and corrective work are recorded, and development continues; the project is not marked complete by writing Rework.
2. **Given** a used-up per-run or stage allocation, **When** another attempt is needed, **Then** its justified prospective allocation and relation to earlier attempts are recorded before execution; previous clocks, outcomes and costs are preserved.
3. **Given** a missing mandatory implementation, proof, quality pass, measurement family or reproduction check, **When** completion is assessed, **Then** the feature remains unfinished, even if every missing item has a well-written gap report.
4. **Given** all mandatory deliverables and checks, **When** the final decision is issued, **Then** it states which implemented approach is supported for the declared fragment, which is not recommended and why, with measured trade-offs and the remaining gap to the millisecond objective. A negative performance decision can be final.

### Edge Cases

- A globally safe child performs the wrong operation, reports the wrong first error, reorders or deduplicates commands, or loses normative observation content.
- Identical state contents have different history positions; a no-op does not authorize an unrelated history ground.
- Empty domains, new membership, missing/terminal children, non-open parents, changed ownership, policies or captures affect applicability and fallback.
- Proofs cover one source/configuration while measured code, observation encoding or commit behavior has changed.
- Conflict, refusal, precommit failure, lost acknowledgement or restart leaves no justified confirmed child ground.
- A state-changing session runs out of distinct eligible objects and is silently replaced by repeated unchanged-content work.
- The chosen verification front end lacks support; another justified engineering route must preserve the actual implementation obligations rather than replace them with a convenient handwritten model.
- A clean worker cannot reproduce a warm development environment, or test fixtures and transitive tools are omitted from a supposedly complete export.
- Disk, memory, cache or child-time limits stop a process; the attempt is preserved and the feature remains unfinished pending continuation.
- An unchanged failing attempt is repeatedly retried without a root-cause correction; this is not progress or a new sample.
- Compact inputs disappear before their promised lifetime ends, or full observations are still secretly materialized inside the alleged compact path.
- Later audit, deferred identity work or cleanup offsets an operation-time saving; this remains part of the measured result.
- A poor but fully measured result is suppressed in favor of a faster subset, a changed endpoint or incomplete resource accounting.

## Requirements *(mandatory)*

### Functional Requirements

- **FR-001 — Preserve and bind the authoritative baseline.** The implementation MUST preserve the selected 035 sources, original observation contract, mathematical laws, Core semantics and authority assumptions. It MUST identify the exact continuation source/model/profile and retain the previous 036 attempt and specification revision unchanged. Reuse remains restricted to the admitted `finish` fragment; unsupported inputs retain justified original fallback. No sealed historical artifact may be rewritten.

- **FR-002 — Complete the actual correspondence.** The actual selected implementation MUST have a machine-checked general correspondence proof to its mathematical model over arbitrary finite states in the declared fragment. Coverage MUST include selector/input binding, state and Safety projections, authorization, dependency/view relations and updates, exact transition/refusal/error behavior, original observation encoding, and confirmed-parent/child advancement. Finite comparisons, source hashes, separate model laws and assumed encoder/projection fidelity MUST NOT substitute for this connection. Failure of a selected proof tool MUST lead to engineering remediation or a justified verification-method revision; it does not discharge the obligation.

- **FR-003 — Expose and close the trusted boundary.** Each correspondence obligation MUST identify its exact source subject, statement, premises, verification context and independently checked evidence. Compiler/runtime, backend and writer assumptions MUST be explicit and enforced or justified at their declared scope. Actual checked sources and executed binaries MUST be bound to that scope. No undisclosed desired-equivalence premise or open mandatory bridge may remain in a completed result.

- **FR-004 — Preserve complete results and authority.** The implementation MUST preserve full original observations, applicable canonical bytes and identities, first errors, refusals, ordered duplicate commands and Safety obligations. It MUST correctly invalidate or advance grounds and views, reconcile uncertain transitions and retain original fallback. Reconstruction, imported checked flags and semantic safety alone MUST NOT grant reuse authority.

- **FR-005 — Achieve the whole canonical quality gate.** The final candidate MUST successfully complete the unchanged project-prescribed full quality gate and scoped research checks under declared resources. Missing fixtures, broken tools and quality failures MUST be repaired and rechecked. The successful gate MUST cover the same relevant final source as the proofs and measurements. Scoped success, a larger budget, an exception or an old pass cannot substitute; changed dependencies require affected checks to be rerun. Constitutional test-first, determinism and review requirements continue to apply.

- **FR-006 — Use gates to control claims and drive completion.** Planning MUST distinguish implementation progress, attempted-run status, scientific acceptance and feature completion. Unmet correspondence or quality gates block accepted candidate measurements and readiness claims, but MUST NOT automatically end the feature. Independent engineering, tooling repair, test-harness construction and other work without the failed dependency MUST continue. After repair, the affected gates MUST be rerun before dependent accepted comparisons. An unfinished, stopped or Rework disposition is an interim status only.

- **FR-007 — Declare and implement comparable endpoints.** Each comparison MUST specify and implement the user-visible result, required evidence, initial authority, backend acknowledgement, output delivery and audit guarantees. Legacy comparisons MUST retain all eight original observation fields and normative nested content. Result-file synchronization, in-memory acceptance and durable application publication MUST remain distinct. A changed endpoint MUST be separately named and cannot be reported as a faster implementation of the old endpoint.

- **FR-008 — Measure the complete operation directly.** Completed experiments MUST directly measure full operation cost and reconcile it with non-overlapping attribution for semantic work, ground/view maintenance, state materialization, observation construction/encoding, state/event/history identity work, copy/hash work, actual commit, mandatory delivery and endpoint checking. Nested intervals MUST NOT be counted twice. Unattributed time and instrumentation overhead MUST be explicit; differences of independently aggregated medians are not measured phases.

- **FR-009 — Measure work, bytes and retention.** Experiments MUST record objects/history records visited, records materialized, relevant byte reads/writes, copy/hash work, retained data, deferred work and available memory observations with precise units and endpoints. Serialized bytes are not allocated bytes. Unavailable quantities MUST have a nonempty reason and a stated effect on the conclusions; they cannot hide missing required work. Output size alone does not establish unavoidable latency.

- **FR-010 — Build and test a same-contract improvement.** The work MUST implement and evaluate at least one diagnosis-supported improvement that preserves the existing endpoint and observation contract before recommending compact evidence. Its correctness, full original-result equality, real mechanism activation and negative controls MUST be checked. A defective candidate MUST be repaired or replaced with a justified candidate, preserving failed attempts. A correct candidate with no useful saving is a valid measured negative result; an unbuilt candidate or an unsupported omission is not completion.

- **FR-011 — Complete the population/history matrix.** Reference, GV and the required same-contract comparison MUST cover at least three population sizes and three history lengths through predeclared comparable cells that distinguish those effects. Every required timing cell MUST retain at least three completed observations. Stopped/unrun slots MUST remain visible and be completed through tracked continuation before final completion. Separate diagnostic observations MUST NOT be mixed into timing samples or substituted for missing samples.

- **FR-012 — Execute the complete lifecycle matrix.** The study MUST compare reference and GV sessions of 1, 8, 32 and 128 operations from matched fresh checking/acquisition through the declared final endpoint. Required preparation, ordinary maintenance, output, audit and cleanup/reconciliation MUST be charged. Changing, unchanged-content and invalidated sessions MUST be identifiable, with at least three completed timing observations per required cell. Acquisition and view preparation MUST NOT be excluded to manufacture payback.

- **FR-013 — Determine observed amortization.** Results MUST report whole-session totals and ranges, acquisition/preparation, ordinary operations, retention/memory growth, required audit and recovery costs. They MUST state whether payback was observed at each measured length and workload, including invalidation. No observed payback is a valid final negative result. Interpolated estimates MUST be labelled and MUST NOT replace directly timed sessions or sums of independently measured medians for observed break-even.

- **FR-014 — Implement and measure invalidation/recovery.** Actual cases MUST cover stale/wrong-history grounds, changed relevant context/dependencies, absent/incompatible views, refusal/failure, uncertain acknowledgement and restart/re-establishment. No unconfirmed child may be promoted. Continued results MUST agree with the authoritative reference, and required recovery/reacquisition MUST be directly measured. The implemented backend's recovery boundary MUST be explicit; memory-only execution cannot establish disk durability.

- **FR-015 — Deliver a versioned compact experimental implementation.** After the baseline diagnosis and lifecycle evidence, the work MUST freeze and implement a minimal separate compact contract for the restricted `finish` domain. It MUST define exact bound inputs, transition meaning, authority/provenance, retained reconstruction data, lifetime/availability obligations and completion endpoint before accepted compact experiments. This is a required research deliverable, not a production format migration; legacy identity equality is not inherited by assumption.

- **FR-016 — Complete exact reconstruction and its proof.** The actual compact/reconstruction implementation MUST have a machine-checked general correspondence and reconstruction theorem for its declared domain. Verified compact records and retained inputs MUST deterministically reproduce the full original observation, applicable bytes/identities, errors/refusals and ordered commands. Independent original comparisons MUST supplement the proof. Missing, corrupt, incompatible, substituted or wrongly bound inputs MUST prevent exact success, and derived outcomes MUST NOT falsely claim an original validator executed.

- **FR-017 — Justify identity and guarantee relationships.** The compact experiment MUST establish equality or explicit versioned mappings for semantic subject, canonical state, event, history and transport/record identities, including their limits. Legacy execution MUST preserve its existing bytes and identities. Cache plans, proof shapes and incidental provenance MUST NOT silently define canonical identity. Delivery and availability differences MUST be visible; no new trust, finality or receiver guarantee is implied.

- **FR-018 — Measure compact completion and its required future work.** Completed compact comparisons MUST include both their actual declared completion and directly measured completion-plus-required-reconstruction/audit lifecycles. Necessary retention, publication, availability, memory/storage growth and relevant failure/recovery work MUST be included. Hidden full legacy materialization MUST be detected. Different guarantees preclude a like-for-like total-speedup claim. A correct but slower or operationally unattractive compact result MUST remain part of the final decision.

- **FR-019 — Bound each attempt and continue transparently.** Planning MUST declare enforceable per-process/per-attempt resource limits, owned/shared storage and temporary/tool/cache boundaries, complete source/tool preparation, sampling rules, accounting and stop/checkpoint procedures before heavy execution. A resource stop MUST close the process safely, preserve actual failure and leave the feature unfinished. Necessary subsequent attempts MUST use explicitly declared prospective revisions/allocations, a correction or justified alternative and links to earlier attempts. Prior clocks, budgets and outcomes MUST NOT be reset, rewritten or hidden; all work and costs remain accounted for. A fixed elapsed-time allocation MUST NOT itself become a successful feature-completion criterion. Unlimited blind retries and hidden resource growth are prohibited.

- **FR-020 — Deliver a fully reproduced, decisive assessment.** The final assessment MUST map every functional requirement and success criterion to checked source-bound evidence and separately decide actual correspondence, canonical quality, complete legacy cost, observed lifecycle economics and compact correctness/identity/availability/cost. It MUST include an actual independent reproduction record, not only instructions or archive integrity checks. Reproduction MUST freshly check accepted proof subjects and obligations, rebuild/replay representative original/reference/GV/improvement/compact cases and changing-session boundaries, and recompute all result tables and requirement outcomes from retained raw data. Timing variation is expected and MUST be reported. Missing mandatory proof, quality, experiments or reproduction leaves the feature unfinished. Evaluation thresholds and decision rules MUST be fixed before accepted comparisons. The verdict MUST say which completed approach is supported or not recommended for the declared endpoint and why.

- **FR-021 — Keep the existing scope and adoption boundary.** Completion means the restricted research implementation and investigation are finished. It MUST NOT introduce a new cryptographic backend, generalize GV to the full language, activate compact evidence in production, change trust/finality, promise replay-free new-receiver verification or claim Q6 durable publication. Production integration or a broader Core rewrite requires a separate decision. Repairing verification/tooling or selecting a justified verification method within this scope does not waive semantic obligations.

- **FR-022 — Finish the required working deliverables.** Before final completion, all mandatory deliverables defined below MUST be implemented, built, exercised and checked at the same declared final revision or an explicitly proved compatible revision. No hardcoded refusal checker, empty theorem inventory, missing extraction/connection pipeline, unbuilt worker/oracle, declared-only experiment or gap report may stand in for a required deliverable. Negative scientific conclusions may concern the performance or usefulness of correctly implemented candidates; missing implementation and engineering failures remain unfinished work.

### Required deliverables and completion rule

The completed scoped system comprises:

1. A reproducible prepared environment, complete required source/fixture inventory, recorded native/verification tool closure and resource controller with working bounded continuation and accounting.
2. Working reference and GV execution roles, an independent original oracle, full observation comparisons, declared fallback, authority invalidation and confirmed-only advancement.
3. The actual implementation-to-model proof pipeline, all mandatory general obligations and genuine source/result/authorization/encoding negative controls, with checked proof and executable bindings.
4. A successful unchanged whole canonical gate plus scoped research quality and determinism checks for the final relevant subject.
5. A working complete-operation attribution/work-counter harness, the full reference/GV diagnosis matrix and at least one implemented same-contract improvement comparison.
6. A working session/recovery harness and completed changing, unchanged-content and invalidated lifecycle families at lengths 1/8/32/128, with required audit, retention and recovery accounts.
7. The minimal versioned compact implementation, exact reconstruction, general actual-code proof, identity relations, availability/failure controls and completed operation-plus-audit comparison.
8. An independently executed reproduction and a final evidence-backed decision covering all success criteria.

**Completion rule**: Every mandatory deliverable and SC-001–SC-008 MUST be satisfied before the feature is called complete. A checkpoint, blocked status, tool-support failure, budget stop, missing-reproduction limitation or Rework report cannot satisfy this rule. If execution is interrupted, the retained state MUST identify the exact pending work and how to resume; status remains unfinished. A final measured finding that no candidate is sufficiently fast or worthwhile is allowed once these deliverables and checks are complete. No performance gain or scientific success is promised in advance.

### Key Entities *(include if feature involves data)*

- **Original observation contract**: Everything the ordinary caller is entitled to receive, including complete documents, identities, errors and ordered commands under the relevant semantics and backend.
- **Established ground and maintained views (GV)**: Checked authorization and dependency information advanced only from the exact justified parent through confirmed transitions.
- **Correspondence obligation**: A general claim connecting actual execution to the model, with exact subject, premises and independently checked evidence.
- **Continuation attempt**: A bounded execution linked to prior attempts and their failures, with explicit source/tool revisions, resource allocation, corrective action and checkpoint.
- **Lifecycle session**: Fresh acquisition followed by a declared operation sequence and all mandatory final output/audit/recovery work.
- **Cost observation**: Raw timing/work/resource data bound to an executed subject and exact endpoints, with unavailable quantities and their consequences stated.
- **Compact experimental transition**: A versioned canonical record and retained-input contract that can reproduce the full original observation without importing execution authority.
- **Completion assessment**: The final decision over the completed implementation, formal obligations, quality, measurements and independent reproduction; an attempt outcome alone cannot establish it.

## Success Criteria *(mandatory)*

### Measurable Outcomes

- **SC-001 — Actual exactness established**: All mandatory general implementation-to-model obligations for the admitted fragment are freshly and independently checked with zero undisclosed desired-equivalence assumptions. Actual negative controls reject safe-but-wrong results, stale authorization, wrong observation encoding and wrong-source substitutions. No mandatory native bridge remains open.
- **SC-002 — Whole quality gate passes**: At least one source-bound execution of the full unchanged canonical quality gate and required scoped checks succeeds for the final relevant candidate under its prospectively declared resources. Every superseded failure remains recorded; neither an exhausted allowance nor an old result counts as this pass.
- **SC-003 — Complete cost measured and explained**: Every required comparable cell across at least three populations and three history lengths has at least three completed timing observations. Each measured total reconciles with exclusive phases plus an explicit remainder. All original-result comparisons have zero mismatches. At least one implemented same-contract improvement has checked mechanism/correctness and an actual measured outcome.
- **SC-004 — Lifecycle economics observed**: All three declared session families at all four lengths 1/8/32/128 have directly measured reference/GV totals with at least three timing observations per required cell, plus required audit, retention and recovery accounts. The result states where payback was or was not observed without substituting estimates for sessions.
- **SC-005 — Working compact alternative evaluated**: The implemented versioned restricted compact path and actual reconstruction have freshly checked general proofs and identity relations; admitted independent original comparisons have zero mismatches. Missing/corrupt/substituted-input and availability controls reject false success. Direct completion and completion-plus-required-audit costs are measured with their guarantee differences visible. A correctness/proof gap or unbuilt prototype does not satisfy this outcome.
- **SC-006 — Full evidence and independent reproduction**: Every FR-001–FR-022 and SC-001–SC-008 maps to actual completion evidence. A separate independently configured verification context freshly checks accepted proof obligations, rebuilds/replays representative candidate/original cases and changing-session boundaries, and derives all result tables from raw data. All mandatory checks are satisfied; integrity-only validation and missing-reproduction notes are insufficient. No claim exceeds the actual memory-backed/backend scope.
- **SC-007 — Clear decision toward milliseconds**: The final result names the supported and not-recommended implemented approaches, the measured reason, complete-operation and lifecycle trade-offs, relevant scaling effects and the remaining gap to the historical p50 ≤50 ms / p95 ≤100 ms ambition. Measured endpoint and guarantee differences are explicit. A negative feasibility/performance recommendation is acceptable; unfinished work is not a decision. Diagnostic triplets MUST NOT be presented as production latency quantiles.
- **SC-008 — Finished system before final closure**: All eight required deliverables are built, executed and checked; there are zero unimplemented mandatory components, unrun required comparison cells or unresolved prerequisite gates. At least one recorded engineering/environment/resource failure is followed through a justified correction and continuation to the affected successful checks. Final closure is based on the completed results rather than exhaustion or documentation of gaps.

## Assumptions

- “Build completely” applies to the existing restricted 036 research system and its required experiments. It does not authorize or require a production rewrite, whole-language GV or a new cryptographic architecture.
- Revision 1's early-stop route is superseded prospectively. Its [archived specification and checklist](specification-revisions/001/manifest.json), sealed attempts, reports, clocks and resource outcomes remain historical evidence. New continuation planning must bind revision 2 and explicitly map the intentional specification change; historical validators must use their original archived expected specification context rather than silently accepting changed bytes.
- The unchanged starting authority is 035 at `6296d5e358034b19e6322eed44d69fffa318c326`, original Core `63a8c164523275e06ac1d7dc5330db4a899c9d99` and Safety `8c0849fb82343ddf5a4dd99b5070ee985f8ebff0`. Its [report](../035-verified-work-reuse/report.md), [correspondence inventory](../035-verified-work-reuse/inputs/correspondence.json), [observation contract](../035-verified-work-reuse/inputs/observation-contract.json) and [independent validation](../035-verified-work-reuse/evidence/validation-001/result.json) remain baseline evidence.
- The admitted domain remains the LD8 `finish` fragment, its original policies and selector/fallback, and the existing in-memory backend. The existing native implementation and mathematical model identify the connection to prove; this specification selects no proof front end, extraction framework or new runtime architecture.
- Primary legacy comparisons retain all eight fields: `invocation`, `bundle`, `commit_arguments`, `transition_record`, `before_history`, `after_history`, `post_state` and `original_property_outcomes`. A separately requested direct Safety report has its own honest endpoint and cost; derived outcomes do not falsely claim original validator execution.
- The default diagnosis points remain `(N,H)=(2,8),(64,8),(256,8),(2,32),(2,128)`. Lifecycle defaults remain changing and invalidated-changing at N=256/H=8 and explicitly unchanged-content at N=2/H=8, each at lengths 1/8/32/128. Comparable same-contract and compact comparison workloads and sample rules must be fixed before their accepted runs; cherry-picking after seeing results is prohibited.
- The historical 035 N=256/H=8 medians of 126.6→19.9 ms semantic work and 880.0→657.2 ms complete operation are diagnostic triplets, not new 036 results or latency quantiles. Its 943,530 original-output bytes cover two operations, not one or allocated memory. Separate-median subtraction does not measure a residual phase.
- The prior acquisition/per-operation arithmetic suggesting roughly four-operation payback remains unmeasured historical arithmetic. Revision 2 requires directly observed sessions and charges establishment, maintenance, invalidation and audit work.
- The previous 036 attempt passed finite tests but left the native proof pipeline incomplete and the whole canonical gate unsuccessful. These are known starting obligations, not accepted substitutes for revision 2 success criteria.
- Per-run resource bounds remain necessary for responsible execution. This revision does not grant unlimited compute or spending. Subsequent planning must define realistic bounded attempts, complete accounting, repair/continuation rules and resumption checkpoints without treating an exhausted attempt as completed delivery or altering previous limits retrospectively.
- The 50/100 ms ambition belongs to an earlier complete certified/durable endpoint. This scoped investigation must expose the measured gap and guarantee differences; it is not required to fabricate attainment, infer production quantiles from three observations, or claim Q6. A fully measured negative performance result is allowed.
