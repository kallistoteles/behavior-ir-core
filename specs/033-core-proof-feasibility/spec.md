# Feature Specification: Core G0–G1 Proof-Chain Feasibility

**Feature Branch**: `033-core-proof-feasibility`

**Created**: 2026-11-01

**Status**: Draft — ready for planning

**Input**: User description: "Pröva Core-arkitekturen genom G0–G1 före en full ombyggnad. Visa en verklig kedja från giltig start genom lokal regel och count-gräns till komprimerat bevis och en oberoende konsument. Etablera motsvarigheten till samma K-semantik och redovisa hela kostnaden. Prövningen ska kunna underkänna arkitekturen. De tidigare 22–31 procentens formatbevarande förbättring är jämförelseunderlag, inte en lösning på arkitekturmålet."

## User Scenarios & Testing *(mandatory)*

### User Story 1 - Fix the meaning and limits before construction (Priority: P1)

As a Core maintainer, I need a fixed account of the experiment's meaning and
limits, so that a fast result cannot silently certify a simpler property than
actual Core execution. This is gate G0.

**Why this priority**: An incomplete claim makes both correctness and speed
results unsuitable for deciding whether to rebuild Core.

**Independent Test**: A reviewer can inspect the declared semantics, initial
validity, supported subset, evidence meaning and trust assumptions without
running the prototype, and identify exactly which claims are in scope.

**Acceptance Scenarios**:

1. **Given** the architecture and previous studies, **When** G0 is reviewed,
   **Then** every existing language/operation category is classified as included
   in G1 or deferred with a reason; deferred categories inherit no proof claim.
2. **Given** an invalid initial population with accurate cached rule results,
   **When** initialization is checked, **Then** accurate caches do not make the
   population valid and the prescribed initialization failure is preserved.
3. **Given** identical semantic inputs with different valid derivations or cache
   choices, **When** event identities are compared, **Then** they agree and command
   occurrence identities have no circular dependence on the event identity.
4. **Given** a snapshot without checked earlier history, **When** its origin is
   described, **Then** it is a declared new trusted start or unsupported import,
   never proof of an unexamined earlier prefix.

---

### User Story 2 - Verify a real initialized transition chain independently (Priority: P1)

As a recipient, I need to verify a real initialized sequence and its exact final
subject without trusting the producer or replaying historical Core decisions.
This is G1's correctness outcome.

**Why this priority**: This tests whether retained correctness and accumulated
evidence can actually replace repeated full checking.

**Independent Test**: Produce a certified initialization and transition sequence.
A separately started recipient, with independently selected verification material
and expected subject, accepts its compressed certificate and rejects altered claims.

**Acceptance Scenarios**:

1. **Given** a valid start and the declared local-rule/count module, **When** an
   allowed creation or update is certified, **Then** the recipient verifies the
   exact outcome, state, history, observations and ordered commands, with maintained
   views still equal to their definitions.
2. **Given** population 999 and cap 1000, **When** creations 1000 and 1001 are
   attempted, **Then** 1000 is accepted, 1001 gets the exact refusal, and the refusal
   changes neither committed state nor committed history nor committed commands.
3. **Given** a local-rule violation, **When** it is assessed, **Then** the exact
   reference refusal/error and phase are preserved rather than substituted with
   a resource failure or a different business result.
4. **Given** a genuine certificate but changed expected origin, module, profile,
   input/context, endpoint, position or commands, **When** verification runs,
   **Then** the recipient rejects the mismatch.
5. **Given** safe but incorrect requested effects or an incomplete/stale count,
   **When** the real acceptance path checks the proposal, **Then** it is rejected.
6. **Given** model-level proofs without checked correspondence to the actually
   executed verifier and actual cryptographic proof relation, **When** G1 is
   assessed, **Then** correctness is not established, rather than passed.

---

### User Story 3 - Decide feasibility from complete latency and lifecycle costs (Priority: P1)

As the person deciding whether to fund the redesign, I need absolute times for
the promised finished result and all preparation/recovery work, so that deferred
work cannot be presented as eliminated work.

**Why this priority**: A cheap semantic check does not imply cheap synchronous
cryptographic certification. This is G1's performance and decision outcome.

**Independent Test**: Review a reproducible package of whole-request timings,
cold runs, lifecycle phases, resources and separate correctness/performance
verdicts against predeclared thresholds.

**Acceptance Scenarios**:

1. **Given** an ordinary successful request, **When** its latency is recorded,
   **Then** timing ends after proof production, compression, independent final
   verification and the declared durable publication barrier.
2. **Given** a new installation or process, **When** initialization, independent
   verification or restart is timed, **Then** actual parameter preparation,
   loading/validation and necessary data retrieval belong to that scenario.
3. **Given** fast native execution but slow complete certification, **When**
   thresholds are evaluated, **Then** the certified path fails its target;
   background work is not substituted for the synchronous guarantee.
4. **Given** timeout, exhausted resources, missing correspondence or a failed
   target, **When** results are published, **Then** the failure remains visible
   and prevents a positive overall G1 verdict.
5. **Given** a failed complete proof-chain trial, **When** conclusions are drawn,
   **Then** the failed claim is identified separately from any supported benefits
   of incremental execution and compact observations.

---

### User Story 4 - Reproduce and inspect evidence without rewriting history (Priority: P2)

As a reviewer, I need to reproduce results and reconstruct promised observations
while retaining old evidence, so the decision is independently auditable.

**Why this priority**: A one-off fast proof or compact receipt is insufficient
without reproducible meaning and an honest account of omitted data access.

**Independent Test**: Follow the recorded procedure, check artifact identities,
reconstruct a complete observation, and distinguish proof validity from data availability.

**Acceptance Scenarios**:

1. **Given** a compact receipt and sufficient retained support, **When** a full
   observation is requested, **Then** its complete meaning matches reference
   execution, including order and multiplicity.
2. **Given** valid evidence but missing reconstruction data, **When** prefix
   verification and audit are requested, **Then** validity and audit unavailability
   are separate explicit results; missing data is not empty data.
3. **Given** two equal command payloads, **When** occurrences are inspected,
   **Then** they remain two ordered occurrences with distinct positions.
4. **Given** a command-only allowed event, **When** it commits, **Then** history
   and commands advance even if state content is unchanged.
5. **Given** a durable result and lost acknowledgement, **When** the identical
   request is resolved after restart, **Then** the original result returns without
   a new event or duplicate command occurrences.
6. **Given** old sealed reports and records, **When** the study completes,
   **Then** their bytes, identifiers and recorded claims are unchanged.

### Edge Cases

- Empty or invalid initial population; count exactly at the cap and one above.
  Scaling populations above 1000 use a separately declared higher cap.
- A correct count bound to the wrong population; an omitted changed obligation;
  an old proof at a new endpoint; an intermediate proof position presented as a
  completed business event.
- Repeated entity IDs; request-ID reuse with changed contents; identical retries;
  competing exact-parent publications; lost acknowledgement.
- Equal command payloads; command-only events; certified refusal without a new
  committed history event.
- Missing/corrupt support, stale head information, unavailable continuation state,
  and restart requiring actual reconstruction.
- Import, export or parameter preparation exceeding the predeclared resource
  ceiling: retain the measured limit, not a zero or missing cost.
- Overflow/lazy queries, empty-query invalidation, arbitrary reference-removal
  fanout and other categories outside G1: classify as deferred, with no G1 support claim.

## Requirements *(mandatory)*

### Functional Requirements

- **FR-001**: The study MUST deliver one G0 contract and one G1 feasibility
  assessment before proposing a full Core rebuild.
- **FR-002**: G0 MUST fix exact execution meaning, initial validity, maintained-view
  equality, transition acceptance, complete observation meaning and historical
  subject binding, with explicit trust/security assumptions and resource bounds.
- **FR-003**: G0 MUST inventory current language/public-operation categories,
  record old/new meaning and evidence-version boundaries, and distinguish included,
  deferred and unsupported claims. Old record bytes/identifiers MUST remain intact.
- **FR-004**: G1 MUST exercise typed entities with a checked signed-integer field,
  a local validity rule, exact count cap, creation, field update, refusal, ordered
  command emission and command-only events. The real 1000/1001 boundary and equal
  duplicate command occurrences MUST be included.
- **FR-005**: Accepted initialization MUST establish expected/authorized origin,
  initial semantic validity and exact maintained views. A trusted new start MUST
  be distinguished from proof of an older imported history.
- **FR-006**: Acceptance MUST establish exact requested effects, all applicable
  obligations, result/refusal/error, observations and commands, and preserve exact
  view meaning. Merely safe alternative effects and authentic but stale/incomplete
  summaries MUST be rejected.
- **FR-007**: Reuse MUST require established complete dependency coverage and the
  applicable parent/context. Unknown affectedness MUST mean affected; neither the
  producer's list nor a summary's hash establishes completeness by itself.
- **FR-008**: Semantic event identity MUST be independent of optimization strategy,
  cache layout and proof construction. Command occurrence identity MUST be acyclic
  and preserve ordered duplicates. Auxiliary/proof identities MUST remain separate.
- **FR-009**: Compact evidence MUST determine complete observations unambiguously
  from bound inputs and retained support. Reconstruction MUST preserve reference
  meaning; new identity MUST NOT be described as the old expanded-record hash.
- **FR-010**: G1 MUST attempt the complete initialization→transition→compressed
  certificate→fresh-recipient chain. A positive correctness verdict requires that
  real chain with exact identity/observation/output binding. Full historical replay
  or full Core co-evaluation MUST NOT serve as a missing semantic bridge.
- **FR-011**: A positive correctness verdict MUST have machine-checkable mathematical
  evidence for initialization and preservation over the declared subset, and checked
  correspondence to the actually executed verifier, actual emitted proof relation
  and real encodings. Finite tests or a separate model alone MUST NOT suffice;
  all remaining assumptions MUST be enumerated.
- **FR-012**: A fresh recipient MUST independently select trusted verification
  material and check expected origin, complete program/profile, position and endpoint.
  Producer-selected keys or self-attestation MUST NOT be a trust premise.
- **FR-013**: The actual acceptance path MUST reject altered subjects, wrong outputs,
  incomplete/stale views, invalid starts and unfinished steps. Operational failures
  MUST remain distinct from semantic refusals and evidence of correctness.
- **FR-014**: A certified success MUST wait for proof production, compression and
  independent final verification. A committed success MUST also wait for durable
  exact-parent publication. Asynchronous success MUST NOT replace this contract.
- **FR-015**: The durable trial MUST publish state, history, evidence, request result
  and commands consistently at the exact parent. Request-ID uniqueness MUST be
  atomic, including refusals that do not change head. Conflicts and uncertain
  acknowledgements MUST NOT create duplicate canonical events.
- **FR-016**: G1 MUST record first installation/preparation, empty initialization,
  raw seed import, ordinary certified operations, cold restart with first useful
  operation, fresh verification, full observation reconstruction and recovery after
  missing continuation state. Unreached phases MUST have explicit blocking reasons,
  not omitted or assumed-zero durations.
- **FR-017**: Before measurement, the protocol MUST fix environment, exact module/
  input identities, security assumptions, storage guarantee, cold/resident conditions,
  workloads, sampling, time/resource ceilings and threshold evaluation. Changes
  require a separately identified campaign.
- **FR-018**: Measurement MUST retain whole-request wall time, distributions,
  preparation/proving/verification/publication work, transfer/evidence/continuation
  bytes, peak memory, failures, retries and lifecycle totals. Separately sampled
  phase medians MUST NOT be added into synthetic whole-request results.
- **FR-019**: The assessment MUST compare supported semantic claims with reference
  execution and the archived format-preserving candidate. Different evidence bytes/
  identity algorithms MUST be declared, not called byte-compatible or used for an
  unqualified speedup claim.
- **FR-020**: The decision MUST separately classify correctness and performance as
  passed, failed or not established, and recommend continue, rework or stop. No
  overall G1 pass is allowed unless both pass. A documented negative experiment
  is a completed assessment, not a passed gate.
- **FR-021**: Every result MUST be traceable to immutable source/artifact identities,
  reproducible instructions and retained raw evidence. Setup, import, recovery
  and export costs MUST retain their actual owner.

### Key Entities *(include if feature involves data)*

- **Feasibility contract**: Frozen G0 meaning, subset, assumptions and thresholds.
- **Certified subject**: Exact origin, program/profile, semantic state, lifetime
  identity facts, history position and ordered output being claimed.
- **Maintained view**: Exact derived facts with justified initialization/update;
  not an independent business truth.
- **Observation recipe**: Versioned binding determining complete reference
  observations from retained authoritative inputs.
- **Receipt and certificate**: Exact action/attempt result and independent evidence
  of its declared prefix, without implying latest-head freshness.
- **Command occurrence**: One ordered event-linked intent with position and
  multiplicity, distinct from physical external delivery.
- **Campaign evidence**: Frozen protocol, raw samples, immutable artifact identities,
  correspondence evidence, resource costs and negative controls.
- **Gate assessment**: Separate correctness/performance findings, unmet obligations
  and a justified continue/rework/stop recommendation.

## Success Criteria *(mandatory)*

### Measurable Outcomes

SC-001–SC-006 assess completeness of this feasibility study. SC-007–SC-009 are
proposed architecture trial targets, not measured results or general product
guarantees. A failed target remains a valid negative assessment under SC-006;
it prevents a positive G1 verdict.

- **SC-001**: A reviewer can account for 100% of current language/operation
  categories and all 21 requirements, each linked to scope, an acceptance result
  or an explicit unmet obligation.
- **SC-002**: Evidence either demonstrates the initialized, compressed, independently
  verified chain for every positive G1 scenario or identifies the exact failed/
  unestablished link reproducibly. Missing correspondence or a replay bridge
  never counts as a positive result.
- **SC-003**: Every positive case and negative control records expected and actual
  outcomes or an exact blocking condition. Positive correctness requires all
  negative controls to be rejected for their declared reason and all genuine
  supported cases to match full reference meaning, including observations and
  ordered commands. Any disagreement blocks positive correctness.
- **SC-004**: Every scenario has its whole observed interval/raw evidence or explicit
  blocking condition. Completed timing scenarios have at least 100 observations
  and reported p50/p95 with uncertainty. Failures/timeouts/exhaustion and slower
  successful samples remain visible.
- **SC-005**: A second reviewer can use retained instructions and immutable artifacts
  to reproduce the correctness verdict and re-evaluate costs on the declared
  environment. Previous sealed evidence has zero modified bytes.
- **SC-006**: One assessment states separate correctness/performance outcomes,
  every unmet obligation and continue/rework/stop. It distinguishes supported
  incremental/observation benefits from a failed complete synchronous proof chain.
- **SC-007**: In each bounded local workload, the requester receives a completely
  certified, durably published result with p50 ≤ 50 ms and p95 ≤ 100 ms, including
  final independent verification. Native-only timings do not qualify.
- **SC-008**: A newly started independent recipient verifies the exact prefix with
  p95 ≤ 100 ms from its request to the final expected-subject verdict, including
  cold loading/validation of installed verification material and any certificate
  transfer needed in the declared deployment. Transfer time is also reported as a
  component; no resident recipient is hidden.
- **SC-009**: First empty certified initialization and cold restart plus first
  useful bounded operation each have p95 ≤ 250 ms with actual runtime preparation/
  data costs included. Missing-continuation recovery and raw import/export have
  separately reported absolute time, byte volume and resources, without a
  size-independent millisecond claim.

## Assumptions

- **Ownership/baseline**: This specification belongs to Core, with retained source
  baseline `1a3ae37623cf90b4608a678ef283ee313306d9bb`. The project repository owns
  architecture/research navigation. Planning records deliberate baseline changes.
- **Scope**: G0 inventories the proposed Core's meaning and boundaries; G1 covers
  only the declared subset. Full-language replacement, broad change compilation,
  production rollout, legacy adoption, the full adversarial-language suite and
  comprehensive storage certification remain gates G2–G6.
- **Durability**: G1 needs a real declared durable path with basic exact-parent,
  retry and restart controls for its latency claim; it does not complete the later
  comprehensive crash/fault campaign.
- **Workloads**: Initial live populations are 128, 2048 and 8192; prefix lengths
  are 1, 128 and 8192; lifetime IDs vary independently at N, 16N and 128N with their
  origin established. IDs are at most 64 bytes; entity payload, context and command
  output are each at most 1 KiB; local affected obligations are at most 16. Scaling
  modules use a cap allowing their population; cap 1000 is a separate boundary case.
  Building reused seeds/prefixes is charged, not inferred to be free.
- **Boundaries**: Outside-subset/global-fanout cases are classified, not assigned
  bounded local targets. Import/export costs follow bytes/meaning checked. Large
  lifetime identity inventories are not inferred from live population alone.
- **Authority/availability**: Expected origin and canonical head have explicit
  trusted deployment/storage premises. Prefix validity does not establish freshness,
  current external authorization, data availability, physical command delivery
  or safety of all future operations.
- **Determinism**: Equal semantic inputs determine equal results/event identities.
  Allowed proof-artifact randomness is recorded, does not change those meanings,
  and remains subject to constitutional review.
- **Planning choices**: No proof system, language, storage product, internal API or
  formal toolchain is selected here. Planning justifies choices against these
  requirements and the constitution.
- **Completion boundary**: This invocation creates a specification and quality review;
  it does not run G0/G1, establish theorems, measure the new chain, merge the old
  optimization patch or activate a production migration.

### Source context

- [Architecture](https://github.com/kallistoteles/behavior-ir-project/blob/7bc141fbc1b110dcac88d5c6702083d40733db8e/docs/architecture/core/README.md).
- [Correctness contract](https://github.com/kallistoteles/behavior-ir-project/blob/7bc141fbc1b110dcac88d5c6702083d40733db8e/docs/architecture/core/correctness.md).
- [Costs and gates](https://github.com/kallistoteles/behavior-ir-project/blob/7bc141fbc1b110dcac88d5c6702083d40733db8e/docs/architecture/core/validation-and-cost.md).
- [Old-format optimization](https://github.com/kallistoteles/behavior-ir-project/blob/7bc141fbc1b110dcac88d5c6702083d40733db8e/docs/research/core-final-investigation-20261031/report.md).
- [Study 032](../032-transition-verification-study/spec.md) is prior evidence, not
  proof that this complete chain or its absolute targets are satisfied.
