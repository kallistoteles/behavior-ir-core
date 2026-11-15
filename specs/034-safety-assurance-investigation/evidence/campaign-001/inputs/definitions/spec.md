# Feature Specification: Safety Assurance and Core Architecture Investigation

**Feature Branch**: `033-core-proof-feasibility` (existing research checkout; feature selection is directory-based)

**Feature Directory**: `specs/034-safety-assurance-investigation`

**Created**: 2026-11-14

**Status**: Draft — ready for planning; investigation not executed

**Input**: User description: "on that basis use spec-kit specify skill to create a new investigation". The basis is the preceding discussion of Safety Models: independently checked program-safety guarantees, valid starting states and enforced deployment segments, and the later extension to replay-free verification of actual execution history with synchronous millisecond finality.

## User Scenarios & Testing *(mandatory)*

### User Story 1 - Know which guarantees the product actually needs (Priority: P1)

As the product owner, I need a source-backed account of the safety and history requirements so that architecture complexity follows an identified need rather than an inherited implementation choice.

**Why this priority**: Independent checking exists in the earlier Safety contracts. Its presence does not by itself establish a requirement to produce a compressed execution-history proof before every answer. Conversely, difficulty producing such a proof does not justify removing an established guarantee.

**Independent Test**: Review a requirement-origin register against the pinned Safety and Core sources. For every claimed requirement, identify its exact subject, beneficiary, trust assumptions, lifecycle phase, source and whether it was explicitly required, inferred, proposed or remains unresolved.

**Acceptance Scenarios**:

1. **Given** the Safety contracts and Core investigations 031–033, **When** origins are traced, **Then** documented requirements are distinguished from later architecture choices, and an earlier document occurrence is not misrepresented as proof of the user's original intent.
2. **Given** independent checking of a program-safety certificate, **When** its implications are described, **Then** the report does not silently extend it to proof of the actual executed history, an untrusted deployment or a particular response-time requirement.
3. **Given** an unresolved product need, **When** a candidate depends on it, **Then** the dependency is recorded as an explicit decision with alternatives and consequences; it is neither assumed approved nor grounds for weakening the existing contract.

---

### User Story 2 - Understand what establishes safety throughout operation (Priority: P1)

As a safety reviewer, I need to understand how checked rules, a valid starting state and actual enforcement combine, including what must be checked when those conditions change.

**Why this priority**: A theorem about permitted transitions is useful only under its premises. A safe current state, a rule-preservation theorem and evidence of what really happened establish different claims.

**Independent Test**: Inspect an assurance argument and challenge it with an invalid start, an omitted writer, an unauthorized rule change and an unsafe migration. Each challenge must expose the missing premise or be detected by the proposed arrangement.

**Acceptance Scenarios**:

1. **Given** a checked module and a valid state at an exact history position, **When** subsequent operations follow an enforced module/policy segment, **Then** the argument identifies the established preservation property, its coverage and every implementation or host assumption.
2. **Given** a migration, import or module/policy change, **When** operation resumes, **Then** the incoming validity and exact activation boundary have their own justification; a new valid segment makes no unsupported claim about earlier history.
3. **Given** an uncontrolled writer or a gap in activation evidence, **When** safety of the actual segment is assessed, **Then** the result is unestablished or rejected as appropriate, even if the program certificate and final state separately check.
4. **Given** a result that satisfies a safety predicate but differs from exact Core execution, **When** execution correctness is assessed, **Then** safety alone cannot authorize it as the correct result.

---

### User Story 3 - Compare simpler and stronger assurance arrangements fairly (Priority: P1)

As an architect, I need to compare arrangements that make their trust and verification work explicit, so that a simpler design is not accepted by concealing weaker guarantees and a stronger design is not imposed without a use case.

**Why this priority**: Fast local checking, independent program certification and independent historical verification solve related but distinct problems. Their costs and guarantees must be comparable before selecting a Core foundation.

**Independent Test**: Compare at least three assurance arrangements against the same guarantee and threat matrix, including the original strong 033 arrangement. For each required guarantee, show how it is established or explicitly identify the gap or changed assumption.

**Acceptance Scenarios**:

1. **Given** a continuing verifier with an already established basis, **When** a new transition is checked, **Then** any reused validity identifies its provenance, complete affectedness conditions, invalidation and recovery obligations.
2. **Given** a new independent recipient without prior verification state, **When** historical assurance is requested, **Then** the arrangement identifies the required history, evidence, accepted anchors and authorities, including work performed during onboarding.
3. **Given** an operator or producer that may be dishonest, **When** arrangements are compared, **Then** a trusted-host or checkpoint premise is visibly different from independently establishing the executed prefix; neither is presented as equivalent without justification.
4. **Given** missing evidence or lost verifier state, **When** recovery is attempted, **Then** the required reconstruction, rechecking or inability to establish the claim is explicit and included in the comparison.

---

### User Story 4 - Make an evidence-based architecture decision (Priority: P2)

As a maintainer, I need a bounded investigation with actual discriminating evidence and a clear stopping condition, so that we can choose the next buildable step without repeating rejected experiments or committing to a full rewrite prematurely.

**Why this priority**: Prior studies establish useful bounded results and failures, but no complete production Core solution. The next investigation must separate questions about product guarantees from questions about implementation feasibility.

**Independent Test**: Review a final decision report whose recommendation is traceable to the requirement register, assurance arguments, prior evidence and new controlled checks. A finding that no candidate is justified is an acceptable investigation outcome with explicit reasons and remaining decisions.

**Acceptance Scenarios**:

1. **Given** a declared small workload and frozen conditions, **When** a plausible arrangement is tested, **Then** actual success, refusal, tampering, rule changes and recovery outcomes are reported together with complete scoped costs and limitations.
2. **Given** an expensive procedure performed at certification, deployment or onboarding, **When** normal-operation cost is reported, **Then** the displaced work remains visible in its own phase and in complete lifecycle cost.
3. **Given** prior negative evidence, **When** another experiment is proposed, **Then** it has a materially different question and declared stopping rule; an unchanged failed backend is not rerun merely to seek a different outcome.
4. **Given** completed research, **When** a decision is issued, **Then** it distinguishes a supported direction, a conditional direction and rejection, with the next smallest discriminating test and any product decision that remains necessary.

### Edge Cases

- A certified module is applied to an invalid or unestablished starting state.
- A valid snapshot is imported and incorrectly described as proof of its preceding history.
- A writer, generated action or relevant policy is omitted from certification or enforcement.
- An approved certificate is used for a different module, policy set or interpretation.
- An intervening command-only commit preserves state content but changes the activation history position.
- An uncontrolled writer or a gap between policy validation and activation breaks continuity.
- A migration satisfies ordinary target constraints while violating a cross-entity safety property.
- A locally safe output differs from the exact requested transition or first required error.
- A checkpoint or serialized success flag is corrupt, stale, producer-selected or unverified.
- A continuing verifier loses its established basis during restart or transfer.
- Historical policy/proof/deployment evidence is missing although application state can still be replayed.
- A genuine proof establishes a different history branch, subject or endpoint.
- Refusals, duplicate commands, races or lost acknowledgements are misreported as new successful events.
- Resource exhaustion or an unsupported obligation is mislabeled as a semantic counterexample or successful proof.
- An old artifact is reproducible but its original checker has a known soundness problem.

## Requirements *(mandatory)*

### Functional Requirements

#### Origins and guarantee boundaries

- **FR-001**: The investigation MUST produce a requirement-origin register covering independent program certification, initial-state validity, deployment enforcement, actual history correctness, new-recipient verification, replay restrictions, finality and timing. Each entry MUST bind a source revision and distinguish explicit requirement, derived obligation, architecture proposal and unresolved need. Uncertain attribution MUST remain uncertain.
- **FR-002**: The investigation MUST use the Safety 510/511 contracts and Core 031–033 studies as starting evidence. It MUST reconcile differences in subjects and assumptions rather than treating repeated wording such as "fresh verification" as proof that the same operation is required.
- **FR-003**: The assurance model MUST separately state program preservation, validity at a particular state/history position, correctness of actual transitions, safety of a deployment segment, historical-prefix correctness and authoritative durable publication. It MUST explain which implications are established and which require additional premises.
- **FR-004**: Correct history and exact Core meaning MUST remain fixed goals; their assurance mechanism is under investigation. The comparison MUST preserve applicable decisions, refusals, errors, effects, command multiplicity and identity/observation obligations. It MUST NOT substitute invariant preservation, a hash chain, a signature or a safe-but-unrelated result for exact execution correctness.

#### Assumptions and enforcement

- **FR-005**: Every assurance claim MUST identify its exact program, complete policy set, start/anchor, history interval, expected endpoint, verifier role, authorities and assumptions. Actual Core-to-model/implementation correspondence MUST remain distinct from an abstract theorem or finite test agreement.
- **FR-006**: The investigation MUST establish what a valid start plus preservation and complete mutation control implies under each candidate's premises. It MUST account for enforcement over every writer, concurrency, exact activation boundaries, migration, import and module/policy change. No claim may assume the conclusion it purports to establish.
- **FR-007**: The investigation MUST distinguish an honest enforced host from an untrusted producer or compromised enforcement. It MUST identify who supplies an accepted anchor, how it acquires authority, and what is lost if that authority is wrong. Producer-provided completeness or prior success MUST NOT become evidence of validity by itself.
- **FR-008**: A claim beginning at a checked or trusted later anchor MUST name the covered interval and MUST NOT imply an unchecked earlier prefix. A valid prefix MUST NOT imply current-head freshness, availability of all support, or physical execution of external commands.
- **FR-009**: Historical artifacts and their meanings MUST remain unchanged. The investigation MUST distinguish application-state reconstruction from reconstruction of the historical safety argument, including the policies, proofs and host evidence needed for the latter. Reproducibility alone MUST NOT restore trust in an unsound checker.

#### Comparative scope

- **FR-010**: Compare at least three assurance arrangements: (a) independently checked program safety with validated starting boundaries, enforced deployment segments and auditable execution history; (b) a verifier establishing actual history through checking from an accepted origin or prior verified position; and (c) the strong 033 arrangement in which a new recipient verifies the actual prefix without historical replay and a certified success waits for completed proof and durable publication. Their mechanisms remain open.
- **FR-011**: The comparison MUST cover normal operation, program certification, initial deployment, a new independent recipient, transfer/restart with retained verified state, loss of that state, historical audit and a rule/migration boundary. Different arrangements MUST be compared against the same requested claim in each scenario; missing guarantees and extra trust MUST be visible.
- **FR-012**: The investigation MUST determine where expensive checking is necessary and how often it is required. Moving it outside normal operation MUST retain its lifecycle cost, guarantee boundary and required ordering. Expensive work MUST NOT disappear into an unexplained cache, setup phase or pending queue.
- **FR-013**: Retained validity or results MUST identify established provenance, complete affectedness coverage, updates, invalidation and recovery. Unknown affectedness MUST NOT permit unchecked reuse. Any fallback, rechecking or unavailable result MUST preserve the declared contract and be costed.
- **FR-014**: New-recipient onboarding, ordinary operation and program certification MUST receive separately justified timing requirements. The existing local p50 ≤ 50 ms / p95 ≤ 100 ms and fresh-recipient p95 ≤ 100 ms figures MUST remain named 033 comparison targets; they MUST NOT silently become identical mandatory budgets for every arrangement or be relabeled as achieved by measuring a weaker endpoint.

#### Evidence, cost and decision

- **FR-015**: Before new experiments, planning MUST fix the exact question, workloads, expected complete results, adversarial controls, compared trust conditions, resource limits, sampling, measured endpoints and stopping rules. New measurements MUST retain actual source/artifact/environment identities, commands, raw observations and failures. Existing bounded failures MUST remain separate evidence.
- **FR-016**: New controlled checks MUST attempt at least one real end-to-end representative deployment/transition/history scenario for a plausible alternative, including genuine rejection and recovery/boundary cases. Existing evidence MAY discharge an obligation only when its exact subject and conditions match. A bounded failure MUST retain reproducible evidence and prevent a positive finding for the missing obligation. Analysis-only, unrun and unsupported portions MUST be explicit; a toy profile MUST NOT establish full-language coverage.
- **FR-017**: Any new mathematical result used to justify a positive assurance claim MUST be machine-checked against the stated property under enumerated premises. Implementation and encoding correspondence gaps MUST remain explicit. Finite observations, imported certificate flags and successful compilation MUST NOT acquire universal proof authority.
- **FR-018**: Cost accounting MUST separate and reconcile program certification/rechecking, deployment validation, ordinary execution/commit, onboarding/history checking, audit and restart/recovery. Report dependency on live population, history length, change/affectedness size and evidence/output size. Include necessary construction, transfer, loading, serialization and durable-publication work at the endpoint where actually performed.
- **FR-019**: Whole-operation latency claims MUST measure a complete declared result. Percentile claims MUST use at least 100 complete samples per declared comparison cell; single diagnostics MUST remain single diagnostics. Exhaustion, failed preparation and unrun controls MUST remain visible. A bounded negative investigation need not run an infeasible full percentile campaign to completion.
- **FR-020**: The final decision MUST map every required guarantee to its evidence or open obligation, compare at least three arrangements, explain necessary versus avoidable complexity, identify any changed product contract and recommend a supported next step or explain why none is justified. Compare distinct trusted authorities, verification obligations, lifecycle boundaries and recovery mechanisms as well as execution cost. Recommendations that change trust/finality MUST remain explicit proposals; this investigation MUST NOT activate them or rewrite 033's verdict.
- **FR-021**: Deliver a requirement-origin register, guarantee/assumption and scenario comparison, assurance arguments, scoped experiment evidence, lifecycle cost assessment and final architecture decision. These MUST be mutually traceable and readable without reconstructing the conversation.
- **FR-022**: Candidate research MUST examine existing primary-source methods and verified results that could reduce custom machinery. Any proposed reuse MUST name the guarantee it contributes, its premises, the required connection to Core and what remains unverified. A library's reputation or a superficially similar theorem MUST NOT establish that connection.

### Key Entities *(include if feature involves data)*

- **Requirement-origin entry**: A claim, beneficiary, source revision, original wording/context, interpretation, classification and unresolved decisions.
- **Assurance claim**: The property, program/policies, history interval, starting basis, endpoint, supporting evidence and precise premises.
- **Deployment segment**: An interval governed by an exact module/policy set with established activation and continuity conditions.
- **Verifier situation**: What a recipient already knows, trusts, retains and can access, and what it must newly establish.
- **Candidate arrangement**: Its supported claims, authorities, required checking work, lifecycle costs, failure behavior and gaps.
- **Experiment observation**: A frozen question and subject, expected outcome, actual result, complete cost scope, resources and retained raw evidence.
- **Decision record**: Compared claims and evidence, supported/rejected/conditional conclusions, unresolved product decisions and the next discriminating step.

## Success Criteria *(mandatory)*

### Measurable Outcomes

- **SC-001**: All eight requirement categories in FR-001 have source-backed entries; every recommendation traces to those entries. No unresolved user-intent attribution is presented as an established product requirement.
- **SC-002**: At least three arrangements are compared across all eight lifecycle situations in FR-011. Every cell states its established claim, missing evidence, trust and required work; no blank cell is interpreted as success.
- **SC-003**: Each of the six assurance classes in FR-003 has an explicit argument and boundary assessment. All fifteen declared edge cases receive a disposition with a detection/enforcement argument, observed control where required, or an explicit gap.
- **SC-004**: At least one genuine representative alternative completes the scoped end-to-end checks in FR-016, or a reproducible blocking result prevents that completion and the final decision remains conditional/rejected accordingly. No unrun case is reported as passing.
- **SC-005**: Every empirical claim identifies its workload, trust conditions and complete measured endpoint. All percentile claims satisfy FR-019; certification, onboarding and recovery costs remain visible even if excluded from ordinary response time.
- **SC-006**: Zero accepted assurance claims hide reliance on producer correctness, a success flag, a missing-premise assumption or finite agreement disguised as universal proof. All trusted correspondence and host obligations are named. An explicitly trusted execution authority is distinguished from an untrusted evidence producer; the comparison does not assume all arrangements must share one trust model.
- **SC-007**: The final report accounts for every requirement and guarantee, recommends a justified next build/test or an explicit negative result, and identifies each outstanding product decision with alternatives and consequences. Investigation completion is not labeled completion of a new Core implementation.
- **SC-008**: Published Safety/Core artifacts, existing runtime behavior and prior study verdicts have zero modifications. Any proposed change to trust, finality, evidence meaning or latency scope is separately identified and remains unactivated.

## Assumptions

- This is one bounded Core research feature. It specifies the investigation; it does not implement the investigation, rebuild all Core semantics or ship a production architecture.
- The user requires mathematically justified safety and correct history. The precise new-recipient and finality contract is an investigation question, not presumed waived or confirmed by this request.
- Safety's checked program, valid-start and deployment premises are substantive requirements. Whether they suffice for a particular history claim must be argued under the declared threat model.
- The original strong 033 contract remains the historical comparison baseline. A different arrangement may be simpler because it answers a different claim or trusts a different authority; that difference must remain explicit.
- Research may recommend an alternative contract but does not authorize adopting it. No new trust authority, external service, paid infrastructure or production migration is implied.
- Public synthetic/domain-neutral cases are sufficient for discrimination. Existing restricted examples and results do not establish full Core coverage or universal performance.
- Planning sets the experiment and resource budgets before running work. No new timeout, hardware or security profile is chosen by this specification.

### Pinned starting evidence

These are starting sources to examine, not findings that the new investigation has already established. Source selection does not settle causal attribution or user intent.

| Source | Revision and purpose |
| --- | --- |
| [Safety Models 510 specification](https://github.com/kallistoteles/behavior-ir/blob/8c0849fb82343ddf5a4dd99b5070ee985f8ebff0/specs/510-safety-models/spec.md) | Documented safety, independent checking, state validation and deployment decisions. |
| [Safety proof contract](https://github.com/kallistoteles/behavior-ir/blob/8c0849fb82343ddf5a4dd99b5070ee985f8ebff0/specs/510-safety-models/contracts/proof-contract.md) | Conditional preservation and explicit correspondence boundaries. |
| [Safety evidence and deployment contract](https://github.com/kallistoteles/behavior-ir/blob/8c0849fb82343ddf5a4dd99b5070ee985f8ebff0/specs/510-safety-models/contracts/evidence-and-deployment.md) | Exact history/state anchors, enforced segments, migration and historical audit. |
| [Safety certification 511 specification](https://github.com/kallistoteles/behavior-ir/blob/8c0849fb82343ddf5a4dd99b5070ee985f8ebff0/specs/511-safety-certification-scale/spec.md) | Independent certificate checking, cost scope and separation from ordinary execution. |
| [Safety reference cases](https://github.com/kallistoteles/behavior-ir/blob/8c0849fb82343ddf5a4dd99b5070ee985f8ebff0/models/examples/safety_models/README.md) | Established examples, assumptions and certification/deployment boundaries. |
| [Core 031](../031-scalable-execution-evidence/spec.md) and [Core 032](../032-transition-verification-study/spec.md) | Earlier evidence/history requirements and comparative proof investigation; Core baseline `5cad2ff5cb1c82abfdd6ad8f8a1d7b72c4425047`. |
| [Core architecture proposal](https://github.com/kallistoteles/behavior-ir-project/blob/7bc141f/docs/architecture/core/README.md) | The proposed accumulated-history and independent-recipient architecture. |
| [Core 033 contract](../033-core-proof-feasibility/spec.md) | The later mandatory replay-free recipient and synchronous certified-publication experiment. |
| [Latest bounded prefix result](../../docs/proposals/core-next-architecture/compact-prefix-20261110.md) | Real local prefix execution succeeded; proof production timed out without a certificate. Preserve its restricted scope and Rework verdict. |
