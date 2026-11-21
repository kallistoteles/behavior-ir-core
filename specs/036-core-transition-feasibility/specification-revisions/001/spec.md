# Feature Specification: Establish Exact and Efficient Core Transitions

**Feature Branch**: `research/034-ab-measurement-002` (existing research branch; feature selection is independent of branch naming)

**Feature**: `036-core-transition-feasibility`

**Created**: 2026-11-15

**Status**: Draft — ready for planning; no proof closure, experiment or integration approval is claimed.

**Input**: User review of Core 035: first close the formal connection for the actual restricted `finish` implementation and complete the blocked canonical quality gate; then diagnose the complete transition and lifecycle costs, and investigate separately versioned compact canonical transition evidence with exact reconstruction. Preserve GV's narrow construction and exact semantics.

## User Scenarios & Testing *(mandatory)*

### User Story 1 - Know what the running implementation actually proves (Priority: P1)

A Core integrator needs to distinguish a mathematical model of correct reuse from a proof that the running implementation follows that model. The reviewer wants the remaining connection established for the restricted `finish` operation, with the project's full quality gate completed before treating the candidate as eligible for further integration decisions.

**Why this priority**: Faster execution is useful only if it performs the requested operation exactly. The twelve checked model laws in 035 do not establish the missing implementation connection, and its full quality gate remains blocked.

**Independent Test**: Review a source-bound correspondence argument and independently check its proof obligations, assumptions and negative controls. Separately run the unchanged canonical quality gate under a newly declared, bounded resource envelope. This produces an actionable correctness and quality decision even if no performance candidate is accepted.

**Acceptance Scenarios**:

1. **Given** the frozen 035 implementation, model and original observation contract, **When** the actual restricted execution is connected to the model, **Then** projection, ground authorization, view maintenance, exact result and original observation encoding are covered for every admitted input in the declared fragment, without assuming the equivalence being proved.
2. **Given** a safe but incorrect result, a stale ground, or an incorrect observation encoder, **When** the correspondence controls are checked, **Then** each fails the relevant exactness obligation even if the resulting state satisfies Safety properties.
3. **Given** the recorded 035 cache stop, **When** the full unchanged canonical gate is run with an explicitly predeclared 036 resource budget, **Then** its actual completion or failure is retained; scoped checks and an enlarged budget do not retrospectively make 035 pass.
4. **Given** an unclosed implementation obligation or a stopped quality run, **When** readiness is assessed, **Then** the corresponding gate remains unmet and dependent acceptance is blocked, with the exact remaining work identified.

---

### User Story 2 - Find where a complete ordinary transition spends its work (Priority: P1)

An architecture owner wants to know what remains expensive after semantic reuse, and whether it can be reduced while preserving the complete existing observation and identities. The owner needs evidence separating necessary output work from avoidable materialization, copying and repeated identity work.

**Why this priority**: At 256 objects the complete GV operation still takes approximately 657 ms. Optimizing only the approximately 20 ms semantic interval cannot resolve most of the reported total.

**Independent Test**: Use a matched reference and GV on frozen inputs and endpoints, reconcile directly measured complete-operation costs with measured phases and work volumes, and test at least one justified same-contract improvement or document why no such candidate is justified. Diagnostic attribution may be reviewed independently; positive candidate acceptance depends on Story 1.

**Acceptance Scenarios**:

1. **Given** the same parent, request, authority and complete-output endpoint, **When** reference and GV are measured, **Then** both return the exact original result and their complete intervals include all work mandatory at that endpoint.
2. **Given** nested commit, encoding and history work, **When** costs are attributed, **Then** exclusive intervals are reconciled with the same measured operation, nested intervals are not added twice, and any unattributed remainder stays explicit.
3. **Given** large original observations, **When** improvement opportunities are assessed, **Then** the study measures actual byte work and processing costs instead of treating output size or subtraction of separate medians as an explanation.
4. **Given** a same-contract candidate, **When** it is compared, **Then** the executed mechanism and exact result are independently checked; moved preparation, maintenance or output work remains charged at its actual lifecycle point.

---

### User Story 3 - Know when retained verification pays for itself (Priority: P2)

A user operating a long-lived Core instance wants to know whether a retained verified ground saves time over an actual session, how much memory it retains, and what happens when it becomes invalid or the process loses certainty about a commit.

**Why this priority**: 035 measures acquisition and short continuations separately. Its acquisition premium and per-operation saving suggest a possible payback but do not measure one.

**Independent Test**: Compare directly timed reference and GV sessions of 1, 8, 32 and 128 operations, with the same initial authority and expected endpoints. Exercise declared invalidation and recovery cases, and account for peak memory, retained data and audit work. The lifecycle assessment is useful even if the compact representation is rejected.

**Acceptance Scenarios**:

1. **Given** matched sessions that include acquisition and all required work, **When** a saving or break-even point is reported, **Then** it comes from observed whole sessions, with raw observations and variability, rather than sums of separate medians.
2. **Given** both changing and unchanged-content operations, **When** longer sessions are measured, **Then** their mix and semantic work are explicit; repeated no-op operations do not stand in for a sequence of actual changes.
3. **Given** stale or incompatible grounds, changed dependencies or uncertain publication, **When** execution continues, **Then** authorization is invalidated or reconciled before reuse, with reference-equivalent results and separately visible recovery cost.
4. **Given** growing history and retained views, **When** session memory and audit reconstruction are assessed, **Then** retained evidence, history and deferred work are included; unmeasured allocation quantities are identified as unavailable rather than zero.

---

### User Story 4 - Decide whether compact transition evidence is justified (Priority: P2)

An architecture reviewer wants a bounded feasibility result for completing an operation without eagerly materializing its whole original observation. An auditor still needs to recover the exact original observation and understand which identities, availability obligations and publication guarantees apply.

**Why this priority**: A smaller transition representation may address remaining costs, but introduces a new contract. The result must be compared with improvements that retain the existing format before recommending a format change.

**Independent Test**: Review the versioned experimental contract, prove its reconstruction and identity obligations for the restricted fragment, and compare actual complete operations and subsequent audits on the same workload. Missing reconstruction inputs and reordered commands must be rejected. This decision does not require adopting the format in production.

**Acceptance Scenarios**:

1. **Given** a compact experimental record and its declared retained inputs, **When** a complete original observation is reconstructed, **Then** every required field, applicable canonical encoding and original identity agrees with independent reference execution.
2. **Given** a new representation with a different identity domain, **When** its relationship to legacy state, event and history identities is reported, **Then** equality or an explicit mapping is justified separately for each identity; no unchanged-identity claim is inferred from semantic equality alone.
3. **Given** missing, corrupt or substituted reconstruction inputs, **When** audit reconstruction is requested, **Then** it fails explicitly and does not certify an exact observation or advance reuse authority.
4. **Given** the same user-visible guarantee and declared availability requirements, **When** eager and compact operations are compared, **Then** retention, publication, later reconstruction and recovery costs are included or explicitly separated; any changed delivery/finality contract remains experimental and visible.

### Edge Cases

- A result is globally safe but fails to perform the requested `finish`, reports the wrong first error, changes command multiplicity/order, or loses a normative observation field.
- Identical state contents occur at different history positions or after an unchanged-content operation; state equality does not establish history equality or permit stale authorization.
- Empty domains, newly created membership/dependencies, missing or terminal children, non-open parents, changed ownership, captures or policies affect applicability or required fallback.
- A view is correct for the wrong parent, an observation encoder has a model-assumed fidelity premise, or measured code differs from the source covered by the proof.
- A conflicting writer, restart, changed semantic context, refusal, failed publication or lost acknowledgement leaves no justified child ground.
- A long session exhausts available distinct eligible objects; the workload must identify unchanged-content operations rather than silently replacing its state-changing workload.
- Full-output production is deferred and reconstruction data disappears, or an experimental record is valid under one version but consumed as another.
- Cache, disk, memory, proof-checking time or process limits are reached; failed and unrun dependent cases remain in the assessment.
- Repeated histories, retained observation templates or delayed cleanup reduce operation time while increasing memory or later audit cost.

## Requirements *(mandatory)*

### Functional Requirements

- **FR-001 — Freeze the authority and baseline.** The investigation MUST identify immutable 035 reference/candidate sources, model laws, correspondence gaps, complete original observation contract, authority assumptions and evidence before new execution. Core semantics remains authoritative. The retained-ground and maintained-view construction remains restricted to the admitted `finish` fragment; unsupported inputs retain original behavior through justified fallback. No prior sealed artifact may be changed.

- **FR-002 — Establish the actual correspondence.** The investigation MUST seek a machine-checked formal correspondence proof from the actual selected implementation to the proven model over arbitrary finite states in the declared fragment. It MUST cover input selection/binding, typed state and Safety projections, ground checks, dependency/view relation and updates, exact transition/refusal/error behavior, original observation encoding, and the confirmed-parent/child advancement boundary. A rewritten model, finite comparison, matching source digest or reuse of a law with an assumed encoder is insufficient to close this obligation.

- **FR-003 — Expose the trusted boundary.** Every correspondence obligation MUST identify its exact source subject, proof statement, premises, status and independently checkable evidence. Compiler/runtime, backend, writer ownership and other external assumptions MUST be stated separately, justified where enforced, and not conceal the implementation equivalence being claimed. Checked artifacts and measured executables MUST be bound to the covered source; byte identity alone is not a semantic proof. Unclosed obligations remain explicit and block an unconditional native-correctness claim.

- **FR-004 — Preserve exact results and authority.** Correspondence and conformance MUST preserve the full original observation, applicable canonical bytes and identities, first errors, refusals, command order/multiplicity and Safety obligations, not merely a valid final state. They MUST cover ground invalidation, controlled advancement, failed or uncertain transitions and original fallback. Successful audit reconstruction or a supplied success flag MUST NOT create independent execution authority.

- **FR-005 — Complete the canonical quality gate.** The unchanged project-prescribed full quality gate MUST be run against the actual 036 candidate and complete successfully before its quality gate is marked met. Planning MUST justify a new bounded resource envelope capable of testing the 035 cache blocker, preserve the old stop and record actual resource use. Narrowed tests, scoped checks, an operational exception or a resource-limit increase alone MUST NOT count as a pass. Constitutional test-first, determinism and review requirements apply to any new code.

- **FR-006 — Enforce sequence and honest failure.** Planning MUST define and freeze stage entry/exit rules: correspondence plus canonical quality first; complete-cost and lifecycle evaluation next; compact-contract feasibility after that diagnosis. Reading prior evidence and diagnostic preparation MAY proceed earlier, but unmet prerequisite gates MUST block dependent accepted-candidate claims. Exhaustion or inability to close a gate MUST yield an explicit stopped, conditional or rework assessment; it MUST NOT be bypassed to declare success.

- **FR-007 — Freeze comparable endpoints.** Each comparison MUST declare the user-visible result, required evidence, initial authority, backend acknowledgement, output delivery and audit guarantees. Original-contract comparisons MUST retain all eight original observation fields without dropping normative nested content. Result-file flushing, in-memory state acknowledgement and durable application publication MUST be distinguished. Changing the endpoint creates a separately named comparison, not a faster result under the old endpoint.

- **FR-008 — Diagnose the complete operation directly.** The study MUST measure complete-operation time and non-overlapping attribution sufficient to distinguish semantic work, ground/view maintenance, state materialization, observation construction/encoding, state/event/history identity work, copying/hashing, actual commit, required output delivery and endpoint checking. Nested measurements MAY be retained but MUST NOT be double counted. Unattributed work and instrumentation overhead MUST be explicit; differences of independently aggregated intervals MUST NOT be represented as measured phases.

- **FR-009 — Measure work as well as time.** The diagnosis MUST account for objects/history records visited, observations/records materialized, relevant byte reads/writes, copy/hash work, peak memory, retained data and deferred work with precise units and endpoints. Serialized-payload proxies MUST NOT be called allocated bytes. Unknown quantities MUST retain a reason for unavailability. Output size alone MUST NOT establish a necessary latency or a lower bound for the current implementation.

- **FR-010 — Test the simpler contract-preserving option.** Before recommending a compact format, the study MUST evaluate at least one same-contract improvement supported by the diagnosis, or document an evidence-backed reason no candidate is justified. Any candidate MUST have a general correctness justification at the required scope, independent full original-result comparisons and positive/negative mechanism controls. Different labels or executable bytes without actual mechanism activation do not establish a treatment.

- **FR-011 — Discriminate population and history effects.** Reference and GV diagnosis MUST cover at least three population sizes and three history lengths, using the compatible 035 comparison points as defaults. A full cross-product is not required; the frozen cells MUST distinguish the two effects while keeping the selected action and semantic dependencies controlled. Every eligible timing cell MUST retain at least three completed observations or a specific gate-linked stopped/unrun disposition. Instrumented diagnostic observations MUST be distinguished from comparative timing observations.

- **FR-012 — Measure real lifecycle totals.** The study MUST compare reference and GV sessions of 1, 8, 32 and 128 operations, directly timed from matched initial checking/acquisition through the declared final endpoint. Ordinary maintenance, mandatory audit/output work and any required cleanup/reconciliation MUST be charged to the appropriate session. Each eligible session cell MUST retain at least three observations. Changed-content and unchanged-content cases MUST be identifiable, with a genuinely state-changing sequence at a compatible population. Required acquisition/view preparation cannot be amortized away by excluding it.

- **FR-013 — Make amortization falsifiable.** Session reports MUST include whole-session totals and ranges, acquisition/preparation, ordinary operation costs, memory/retention growth, audit and recovery costs. The report MUST state whether payback was observed at the measured lengths, separately for uninterrupted and invalidated sessions. An interpolated estimate MUST be labelled as such; sums of independent medians MUST NOT establish observed break-even. Absence of payback is a valid negative finding, not a missing result to omit.

- **FR-014 — Exercise invalidation and recovery.** Lifecycle correctness and cost cases MUST include stale/wrong history grounds, changed relevant context/dependencies, missing/incompatible views, refusal/failure, uncertain acknowledgement and restart/re-establishment. They MUST demonstrate that no unconfirmed child is promoted and that continuing execution agrees with the authoritative reference. Recovery and reacquisition MUST be directly measured when executed; unimplemented transfer, durability or recovery guarantees remain explicit gaps.

- **FR-015 — Specify compact evidence as a new experimental contract.** Any compact candidate MUST declare a separate version, exact bound inputs, transition meaning, authority/provenance, required retained reconstruction data, availability/lifetime obligations and an unambiguous completion endpoint before implementation or accepted measurements. The smallest restricted `finish` case is sufficient; no general-purpose replacement format or production migration is required. Its initial claim MUST NOT inherit unchanged legacy identities from 035.

- **FR-016 — Prove and test exact reconstruction.** For the declared compact domain, reconstruction from the compact record and retained inputs MUST be deterministic and reproduce the entire original observation, including all eight fields, applicable canonical bytes, error/refusal outcomes and ordered commands. The study MUST establish a machine-checked general reconstruction theorem with a checked correspondence to the actual reconstruction implementation, supplemented by independent original comparisons. Missing, corrupt, incompatible or substituted inputs MUST prevent an exact-success result. An audit MUST NOT claim that an original validator ran when its result was instead derived.

- **FR-017 — Separate the identities and guarantees.** The compact study MUST specify the relationship between semantic subject, canonical state, event, history and transport/record identities, with equality proofs or explicit versioned mappings and their limits. Legacy bytes and identities remain unchanged in legacy-contract execution. Any compact completion/delivery or identity change MUST remain explicitly experimental, with no silent change of trust, finality, independent-receiver requirements or durable-publication guarantees.

- **FR-018 — Charge deferred work and availability.** Compact comparisons MUST show both the actual complete transition under its declared contract and a directly measured transition-plus-required-reconstruction lifecycle. They MUST include retention/publication work necessary for promised reconstruction and measure memory/storage growth. Where guarantees differ from eager original delivery, the result MUST say so and MUST NOT claim a like-for-like total speedup. The corresponding crash/availability boundary MUST be tested at the implemented backend scope; memory-only evidence cannot establish durability.

- **FR-019 — Freeze resources and preserve failures.** Before executing new proofs, quality runs or measurements, planning MUST predeclare a bounded whole-investigation budget, stage/process limits, disk/cache/artifact ownership, preservation rules, ordering, repetition policy and stop conditions. New 036 budgets MUST NOT rewrite 035 budgets or outcomes. Actual failed attempts, corrective revisions and dependent unrun cases remain accounted for; no silent clock reset, ceiling increase, replacement sample or cleanup of historical evidence is permitted.

- **FR-020 — Deliver separate reproducible verdicts.** The final assessment MUST map every requirement and success criterion to source-bound evidence or an explicit gap. It MUST separately decide implementation correspondence, canonical quality, same-contract complete cost, lifecycle amortization and compact-contract correctness/cost/availability. Distinguish semantic counterexamples, unproved assumptions, invalid treatments and resource exhaustion. Provide independent reproduction instructions and a checked reproduction record or explicit missing-reproduction limitation. Recommend the smallest justified next decision, including rejection or rework where warranted.

- **FR-021 — Keep adoption out of scope.** This feature MUST NOT introduce a new cryptographic backend, generalize GV to the full Core language, activate compact evidence in production, change the original trust/finality contract, claim replay-free new-receiver verification or claim Q6 durable publication. Such proposals require separate decisions. Completion of this investigation alone MUST NOT authorize production integration.

### Key Entities *(include if feature involves data)*

- **Reference observation contract**: Everything an ordinary caller is entitled to receive, including original document content, identities, errors and ordered commands, bound to the applicable semantic and backend context.
- **Established ground and maintained views (GV)**: Previously checked facts and dependency data that may be advanced only from the exact authorized parent through a confirmed, justified transition.
- **Correspondence obligation**: A precise connection between actual execution and its mathematical meaning, with source identity, premises, proof status and evidence. Model correctness and finite conformance are separate statuses.
- **Lifecycle session**: One matched initial acquisition followed by a declared sequence and final endpoint, including any required invalidation, recovery, output and audit work.
- **Cost observation**: A raw measurement with exact workload, executed subject, timing boundaries, work units, resource context and explicit unavailable quantities.
- **Compact experimental transition**: A separately versioned record and retained-input contract from which complete original observations can be recovered, with explicit identity and availability relationships.
- **Stage verdict**: An accepted, conditional, rejected or stopped result tied to prerequisites and evidence; it cannot promote unmet obligations into success.

## Success Criteria *(mandatory)*

### Measurable Outcomes

- **SC-001 — Exact implementation connection**: Every correspondence obligation required by FR-002–FR-004 is discharged by a freshly and independently checked formal proof for the declared fragment, with zero undisclosed implementation-equivalence premises. Negative controls detect at least a safe-but-wrong transition, stale authorization and wrong observation encoding. Finite test coverage alone cannot satisfy this outcome.
- **SC-002 — Canonical quality restored**: One source-bound execution of the full unchanged canonical quality gate completes successfully within the predeclared 036 envelope. The old 035 resource stop remains recorded as a stop. A failed or stopped 036 run leaves this criterion unmet.
- **SC-003 — Complete-cost explanation**: For every eligible comparison cell across at least three population sizes and three history lengths, at least three raw timing observations are retained and every measured complete interval is reconciled with non-overlapping phases plus an explicit remainder. Full original-result comparisons have zero mismatches. One same-contract candidate has an evidence-backed verdict, or its omission has an explicit evidence-backed justification.
- **SC-004 — Observed lifecycle economics**: All four session lengths (1, 8, 32, 128) have directly measured reference/GV totals with at least three observations per eligible cell, plus explicit retention, audit and recovery accounts. The reader can determine whether payback was actually observed and under which operation mix and invalidation conditions. Unavailable memory quantities and stopped cells are visible.
- **SC-005 — Compact feasibility decided**: The gated compact study delivers one versioned restricted contract, a freshly checked general reconstruction theorem and justified identity relationships, zero mismatches against complete original observations in admitted conformance cases, rejection of missing/corrupt/substituted reconstruction inputs, and direct operation plus audit-lifecycle costs. If a prerequisite, proof or availability condition fails, this criterion remains unmet and the compact verdict explicitly requires rework or rejection.
- **SC-006 — No false readiness**: Every functional requirement and success criterion has an evidence reference or explicit gap; no stopped quality run, finite conformance check, memory acknowledgement or absent reconstruction is reported as a stronger proof or publication guarantee. Independent reproduction status and all gate-linked unrun cases are visible.
- **SC-007 — Decision toward milliseconds**: The report compares measured complete legacy and separately declared compact endpoints with the historical p50 ≤ 50 ms / p95 ≤ 100 ms research objectives, including acquisition and audit trade-offs. It states the actual remaining gap and the smallest justified next step. These objectives are not assumed achievements or new acceptance promises; diagnostic triplets cannot establish production latency quantiles.

## Assumptions

- This is an architecture investigation for Core integrators and assurance reviewers, not a production rewrite. A completed report may recommend rework; that does not make unmet proof, quality or feasibility criteria pass. Planning defines bounded attempts and the concrete reproduction protocol without predetermining a favorable result.
- The immutable starting record is 035 at repository commit `6296d5e358034b19e6322eed44d69fffa318c326`. Its [report](../035-verified-work-reuse/report.md), [correspondence inventory](../035-verified-work-reuse/inputs/correspondence.json), [original observation contract](../035-verified-work-reuse/inputs/observation-contract.json), [assessment](../035-verified-work-reuse/assessment.json) and [independent validation](../035-verified-work-reuse/evidence/validation-001/result.json) are dependencies, not results of 036. Underlying reference Core and Safety revisions remain identified by those inputs.
- The baseline fragment is the admitted LD8 `finish` case, with its original policies, behavior outside the selector, and in-memory `Store<Capture>` backend. Mentioning the existing native Rust and Lean model identifies the connection to investigate; this specification does not select a new proof method, backend or implementation architecture.
- At 256 objects and history length 8, 035 reports diagnostic medians of approximately 126.6 to 19.9 ms for semantic work, 880.0 to 657.2 ms for the complete operation, and 1751 to 1375 ms for the directly measured two-operation cycle. Those are three-observation diagnostics, not established product latency quantiles. The difference between separate medians is not a measured residual phase.
- The 943,530 original-output bytes reported at that cell cover the first operation and its continuation together. They do not describe one operation, allocated memory, or a demonstrated lower bound on processing latency.
- Reference acquisition of approximately 10.66 s versus GV acquisition of approximately 11.42 s and their per-operation medians suggest roughly four operations under simplified arithmetic. No observed break-even was established. 036 measures complete sessions rather than adopting this estimate as fact.
- 035's twelve freshly checked model laws remain conditional on native correspondence. Its canonical quality gate passed formatting and linting but stopped during tests at the 2 GiB cache ceiling. A new justified envelope and actual full run are needed; the old record remains unchanged.
- Primary legacy comparisons retain the eight fields `invocation`, `bundle`, `commit_arguments`, `transition_record`, `before_history`, `after_history`, `post_state` and `original_property_outcomes`. A separately requested direct Safety report belongs to its own declared endpoint and must be produced and charged honestly. Provenance sidecars cannot masquerade as original validator output.
- The 50/100 ms values express the earlier complete certified/durable-transition ambition. This study's memory-backed endpoint does not establish that ambition or Q6. Format efficiency, history establishment and cryptographic prefix certification remain distinct questions.
- Existing prior research and source dependencies must be reviewed selectively. Historical artifacts and unrelated files are preserved; the investigation does not require copying or rehashing the entire historical archive.
