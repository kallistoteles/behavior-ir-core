# Feature Specification: Reuse Verified Core Work with Exact Semantics

**Feature Branch**: `research/034-ab-measurement-002` (existing research checkout; feature selection is independent of branch naming)

**Feature**: `035-verified-work-reuse`

**Created**: 2026-11-15

**Status**: Draft — specified for planning; no implementation or experimental result is claimed.

**Input**: User description: "hur Core återanvänder verifierat arbete med exakt samma semantik". Continue from measurement 034-002 with a bounded comparative investigation of retained verified grounds and incremental state/evidence work before rebuilding Core.

## User Scenarios & Testing *(mandatory)*

### User Story 1 - Trust reuse without changing a decision (Priority: P1)

A Core integrator wants a previously checked fact to remain useful after a change, while receiving exactly the result that ordinary reference execution requires. An architecture reviewer needs to know why reuse is legitimate, which dependencies it covers, and when that justification stops applying.

**Why this priority**: A faster calculation is unusable if it silently changes results, errors, evidence or the authority of earlier checks. A resulting state can satisfy its invariants and still be the wrong result for the requested action.

**Independent Test**: Freeze a representative transition and its exact reference contract. Review two separate mathematical obligations: equality of complete observable execution results, and preservation of validity from an established starting ground. Check positive cases and genuine counterexamples to invalid reuse, independently of performance measurements.

**Acceptance Scenarios**:

1. **Given** the same exact parent, behavior, schema, semantic interpretation, action, arguments and relevant context, **When** reference and reuse-enabled executions run, **Then** decisions, values, ordered commands, refusals, first evaluation errors, normative validation phases, required evidence and state/history identities agree.
2. **Given** an already valid parent and a justified account of every affected obligation, **When** a candidate reuses an unaffected result, **Then** a checkable argument establishes why its dependencies and evaluation outcome remain unchanged and why the affected checks suffice for the child. The argument does not assume the desired child validity or exact output.
3. **Given** a missing dependency, unsupported expression or unestablished starting ground, **When** the candidate cannot justify reuse, **Then** it performs the required reference work or returns an explicit research limitation without accepting an unchecked result.
4. **Given** a locally valid but incorrect candidate outcome, a wrong command order or a different first error, **When** conformance is checked, **Then** it fails even if the resulting state satisfies every Safety property.

---

### User Story 2 - Continue from an exact established ground (Priority: P1)

A continuing executor or consumer wants to extend a history it has genuinely checked without unnecessarily establishing the same facts again. It must retain the authority and exact subject of that work, and detect intervening changes that invalidate reuse.

**Why this priority**: Measurement 034-002 separates costly initial establishment from local continuation. The earlier cache comparison did not establish distinct executed treatments, so neither the correctness nor benefit of retained grounds has been demonstrated by that comparison.

**Independent Test**: Establish the same exact parent through the same accepted checking process, then compare discard/re-establish and retain/extend treatments. Change one binding or authority premise at a time and confirm invalidation before a dependent result is accepted. Charge establishment and any auxiliary preparation separately from extension.

**Acceptance Scenarios**:

1. **Given** an established ground for the exact expected history and admitted subject, **When** a local transition succeeds, **Then** the child ground is justified by the actual transition and can support the next continuation without silently replaying the whole prefix as ordinary extension work.
2. **Given** a changed behavior, schema, semantic interpretation, policy, history branch, command-only history position, authority context or relevant input, **When** the old ground is offered for reuse, **Then** it is rejected or the required facts are re-established under the correct new subject.
3. **Given** a rejected action, failed commit, stale parent, lost acknowledgement or unconfirmed publication, **When** the next operation starts, **Then** no speculative child ground authorizes it; the exact established parent is retained only where its premises still hold, otherwise authority is invalidated pending reconciliation.
4. **Given** a restart, untrusted transfer or serialized checked flag, **When** there is no separately justified retention mechanism, **Then** a new process does not inherit verification authority from the supplied bytes. Initial acquisition, retained continuation and lost-ground recovery have distinct cost records.

---

### User Story 3 - Make a local change require local semantic work (Priority: P1)

A model author wants the cost of a local action to follow the changed objects and their actual semantic dependencies. Adding unrelated objects should not force the same complete state or historical evidence to be rebuilt for every ordinary transition.

**Why this priority**: In 034-002, changing one object still costs roughly half a second at 256 objects. Retaining validity alone does not eliminate population-sized execution, property checking or evidence work.

**Independent Test**: Use the same representative action with three or more populations, holding the change and its semantic dependency set fixed. Independently compare every complete original result and Safety outcome. Account for objects and historical records inspected, values materialized, bytes processed and work moved to initialization, maintenance or audit.

**Acceptance Scenarios**:

1. **Given** a declared local rule fragment with a complete dependency argument, **When** unrelated objects are added and one relevant object changes, **Then** the candidate updates its necessary maintained facts without enumerating every unrelated object during the claimed local semantic path. The locality claim identifies any bounded index/lookup overhead and excludes separately measured full-output work.
2. **Given** an empty query that gains its first member, a new matching object, changed capture or reference, deletion, or a count boundary crossing, **When** membership or an obligation changes, **Then** the affected set includes the new dependency even though it was absent from the previous positive read set.
3. **Given** a global rule or unknown dependency, **When** a local update can affect many obligations, **Then** the candidate performs all required work or falls back. It never claims all Core programs have constant-cost transitions.
4. **Given** ordered arithmetic overflow, a short-circuited error, duplicate commands, or identity reuse after removal, **When** incremental work is applied, **Then** the original outcome, error ordering and historical identity obligations remain exact.
5. **Given** population-shaped original evidence, **When** the full observation is requested, **Then** it is reproduced exactly and its cost stays visible. A compact auxiliary record does not replace required original evidence or change canonical identities in this investigation.

---

### User Story 4 - Decide the architecture from a valid comparison (Priority: P2)

A Core architecture owner wants a reproducible decision about which mechanism removes which cost. The study must distinguish an implementation limitation, a mathematical limitation and a measurement failure.

**Why this priority**: The next investment should depend on actual mechanisms and guarantees, rather than a faster isolated function, different output contract or accidentally identical executable.

**Independent Test**: Review the frozen four-variant comparison, actual implementation/treatment identities, raw observations, controls, cost accounting and separate correctness/locality/performance verdicts. A second checker can recompute published summaries and verify retained evidence without trusting the producer's success flags.

**Acceptance Scenarios**:

1. **Given** reference, retained-ground-only, incremental-views-only and combined treatments, **When** measurements begin, **Then** all four have demonstrably distinct executed implementations tied to their declared source and enabled mechanisms. A changed label or executable digest alone is insufficient to show the intended mechanism actually ran; identical executables invalidate the intended treatment comparison.
2. **Given** identical canonical parents and requests within a comparison cell, **When** the four treatments are measured under the same resources and authority premises, **Then** establishment, auxiliary preparation, ordinary extension, full observation and audit/recovery costs remain separately accountable and a comparable complete endpoint is also reported.
3. **Given** a faster component with slower complete operation or deferred audit work, **When** findings are reported, **Then** both effects are explicit. No omitted evidence, weaker guarantee or shifted work is described as an execution speedup under the original contract.
4. **Given** a semantic mismatch, missing proof premise, failed treatment control or resource stop, **When** the bounded investigation ends, **Then** the relevant candidate remains unsupported, rejected or inconclusive, with retained failure evidence. Completing the investigation does not mean demonstrating a successful architecture.

### Edge Cases

- Same state content with different history positions or branches; command-only events; stale expected parent; concurrent or bypass writers.
- Supplied validity metadata without checked provenance; changed semantic/profile, behavior, schema, policy or authority bindings; lost retained state.
- Missing, corrupt or stale maintained views; valid-looking but incomplete dependency sets; unsupported expressions; invalid starting state.
- Empty queries, insertions into previously empty domains, new members, relevant nonmembers becoming members, removals and changed captured values.
- Count thresholds, references to newly created or deleted targets, simultaneous source/target changes and reuse of an ever-used identity.
- First reachable errors, short-circuiting, intermediate numeric overflow, deterministic ordering, duplicate commands and unchanged-content commits.
- Rejected actions, backend errors on actually performed operations, stale-parent failures, partial auxiliary updates, process interruption and uncertain commit acknowledgement.
- A new consumer with no established ground; an apparently retained ground after an untrusted restart; policy changes and migrations without a preservation argument.
- Global rules with genuinely population-wide effects; full observations whose byte volume grows with population; measurements that exclude deferred required work.
- Different source variants yielding identical executables, distinct executables executing the wrong treatment, corrupted fixtures and measurements produced after a failed correctness gate.

## Requirements *(mandatory)*

### Functional Requirements

- **FR-001**: The investigation MUST freeze one representative existing Core transition family and its authoritative reference contract before comparative execution. Start from 034-002's parent/child lifecycle case, including its original Safety properties and a local transition; document the exact admitted restriction and why the selected case discriminates both hypotheses. Any reduced case MUST retain an explicit relationship to the original and MUST NOT be presented as full Core coverage.
- **FR-002**: The admitted Core semantics MUST remain the authority. For identical canonical inputs and applicable backend contracts, each accepted reuse path MUST preserve complete observable reference execution: decisions, values, commands with multiplicity/order, refusals, first errors, normative check phases, required original evidence and state/history identities. Execution strategy, cache history and evidence scheduling MUST NOT change canonical meaning or identities.
- **FR-003**: The study MUST establish and report two separate mathematical obligations for its declared fragment: exact execution equivalence and validity preservation from an established starting ground. Each argument MUST cover all inputs within that declared fragment, identify its premises and excluded cases, and have independently checkable evidence. Finite differential agreement MUST NOT substitute for either argument; missing correspondence between the argument and executed candidate MUST remain an explicit gap.
- **FR-004**: Every reused fact MUST identify its exact semantic subject, relevant inputs/dependencies, provenance and authority premises. A successful check, claimed validity, artifact digest or producer-selected endpoint MUST NOT manufacture independent authority. The expected subject/branch is chosen independently of any untrusted supplied candidate.
- **FR-005**: Reuse MUST start from genuinely established facts under the same authority contract used in the reference comparison. It MUST preserve that authority only across justified transitions. Rejected, failed, speculative or uncertain transitions MUST NOT establish an accepted child ground; reconciliation and invalidation MUST precede further dependent acceptance where continuity is uncertain.
- **FR-006**: Dependency coverage MUST include value changes, existence/nonexistence, domain membership, relevant captures, cross-object references and observable error dependencies. Unknown coverage means affected. Unsupported cases MUST retain complete reference semantics through justified fallback or an explicit research limitation; they MUST NOT gain a partial successful result.
- **FR-007**: Maintained views and their updates MUST be justified against reconstruction from canonical inputs. Missing, corrupt or incompatible views MUST trigger the required re-establishment or fallback. Child views MUST be usable only with the exact confirmed child transition; candidate updates MUST NOT leak authority after failure.
- **FR-008**: Changes of behavior, schema, semantic interpretation, policy, relevant context, history branch/position or control over writers MUST invalidate dependent grounds unless an explicit preservation argument covers that change. No rule/migration, restart or transfer preservation is assumed by this feature.
- **FR-009**: The experiment MUST compare four treatments: reference execution; retained established ground with otherwise reference work; incremental maintained views/dependencies without additional cross-operation authority retention beyond the shared starting premises; and their combination. Planning MUST define the treatment boundaries, permitted common machinery and shared starting knowledge before freezing. Any maintenance or preparation necessary for one treatment is charged to that treatment.
- **FR-010**: Treatment checks MUST establish exact executed implementation identity, its correspondence to frozen source, and activation of the intended mechanism before accepting measurements. Distinct executable bytes are necessary for the intended four-treatment experiment but insufficient without mechanism evidence and a control sensitive to each treatment. Identical executable treatments, label-only differences and substituted workers MUST fail the comparison gate.
- **FR-011**: All treatments within a cell MUST receive the same canonical parent, request, context, expected endpoint and applicable authority premises. Reference expected results MUST include separately authored semantic facts and adversarial controls, so candidates cannot define their own expected answer. Any common reference/model limitation MUST be named.
- **FR-012**: Conformance MUST cover successful changes, refusal, first-error behavior, duplicate/ordered commands, command-only history changes, newly introduced dependencies, invalid starts, wrong/stale subjects, global/unsupported cases and failed/uncertain transitions. Original Safety properties MUST remain checked or discharged by the explicit preservation argument; the comparison MUST retain independent reference checking of them outside candidate performance intervals.
- **FR-013**: The locality claim MUST identify the change set, complete affected semantic dependencies and necessary access overhead. For a supported local family, adding unrelated population/history MUST NOT cause repeated whole-population/prefix traversal in the claimed local semantic path. Work counters and a mathematical work account MUST distinguish logical work from timing noise; required global fallback and full-output costs remain explicit.
- **FR-014**: Measurements MUST vary population over at least three sizes and history over at least three lengths while holding the local action and affected dependencies fixed in the corresponding controlled comparison. Use the 034-002 sizes/lengths as the initial comparison points where compatible. The full cross-product is not mandatory; the frozen matrix MUST separately discriminate population and history effects, with at least three completed observations per runnable treatment/cell.
- **FR-015**: Report raw observations and diagnostic medians/ranges for the declared intervals: initial checking, acquisition of a historical ground, view preparation, ordinary transition, full original observation, recovery and audit reconstruction where implemented. Also report a comparable complete operation including all mandatory work. Native work, external supervision, memory acknowledgement and durable publication MUST NOT be conflated. Missing or stopped observations remain missing; three observations MUST NOT become p50/p95 or production SLA claims.
- **FR-016**: The study MUST account for objects and history records inspected, facts/views updated, records materialized, retained bytes, bytes read/written, maintenance and deferred work, with stated measurement boundaries and any unavailable fields. A reduction confined to one component MUST NOT establish a complete-operation improvement; unknown values MUST NOT become zero.
- **FR-017**: Under the existing observation contract, complete required results/evidence MUST remain available and exactly comparable. Full-output cost MUST be measured separately from reusable semantic work. A compact auxiliary research representation MAY be investigated only with an explicit reconstruction obligation and independent comparison of the reconstructed original observation. It MUST NOT replace the published format, change canonical identities or silently omit required work.
- **FR-018**: Planning MUST predeclare bounded resources, preparation conditions, treatment controls, correctness/locality gates, timing endpoints, growth cells, ordering and stop rules. Retain actual failures and gate-linked unrun cases; no retry-until-success, silent ceiling increase, sample substitution or relabelling of failed diagnostics. Research code and evidence MUST be isolated from sealed prior artifacts and production adoption.
- **FR-019**: The investigation MUST review existing 015 incremental validation, 029 global validation, 034 assurance arguments and 034-002 costs before selecting new machinery. Identify what can be reused, its exact premises, what still materializes globally and why the proposed experiment adds knowledge. Existing incremental validity and accumulator components MUST NOT be presented as newly invented or as proof that all execution is incremental.
- **FR-020**: The final assessment MUST give separate verdicts for retained-ground correctness/benefit, incremental-work correctness/locality/benefit, their interaction and full-observation cost. Map every requirement to evidence or a specific gap; distinguish a semantic counterexample, unsupported proof/correspondence, failed experimental treatment and operational exhaustion. End with the smallest justified next architecture step or a supported rejection.
- **FR-021**: Existing Core/Safety semantics, published formats/identities, historical proofs/reports and trust/finality contracts MUST remain unchanged. No cryptographic backend, replay-free new-consumer claim, durable publication guarantee, production replacement or full-language proof is adopted by completing this investigation. Any future proposal to change one of these contracts MUST be separately identified and remain unactivated.

### Key Entities *(include if feature involves data)*

- **Reference contract**: The exact admitted meaning of the selected operation and its complete required observation, bound to canonical inputs and the applicable interpretation.
- **Established ground**: Checked facts for an exact state/history/subject, together with provenance, authority premises, applicable dependencies and invalidation conditions. It is not a serialized claim of success.
- **Affected dependency set**: All obligations and supporting facts that can change for the operation, including absence and membership facts; unsupported coverage is treated as affected.
- **Maintained view**: Reconstructible information that accelerates checking or execution, with an exact relation to canonical state and a justified update rule. It supplies no independent semantic authority.
- **Treatment**: One of the four controlled mechanisms, with frozen source/executed identity, enabled-mechanism evidence, initial knowledge and all preparation/maintenance costs.
- **Transition observation**: The complete original result and required evidence, including errors, commands and state/history identities. Any compact research representation has a separate exact reconstruction obligation.
- **Comparison cell**: A fixed canonical workload, population, history, affected set, authority context, expected result and repetition inventory shared by the treatments.
- **Assessment**: Evidence-backed, separately scoped correctness, locality, cost and feasibility conclusions, with explicit implementation-correspondence and product-contract gaps.

## Success Criteria *(mandatory)*

### Measurable Outcomes

- **SC-001**: Every claimed reuse rule has an independently checkable general argument for the declared domain, with separate exact-result and validity-preservation obligations. Zero claimed proofs rely on finite agreement, the desired outcome as a premise, a success flag or an unnamed implementation-correspondence assumption. Any missing obligation blocks a positive mathematical conclusion.
- **SC-002**: All admitted positive and negative conformance cases preserve the complete reference observation, with zero unexplained mismatches. Every mandatory boundary/control family in FR-012 receives actual evidence or a specific blocking disposition; an unrun positive case never counts as passing.
- **SC-003**: All four treatments have verified distinct executed identity and confirmed mechanism activation before their measurements are accepted. The published matrix separates at least three population sizes and three history lengths and retains at least three raw completed observations per runnable treatment/cell, or exact gate/resource reasons for incompleteness. Invalid treatment identity blocks the corresponding causal comparison.
- **SC-004**: A positive incremental-architecture result requires at least one representative local transition whose complete dependency coverage and work argument are established and whose observed semantic path avoids complete unrelated-population and old-prefix enumeration as those dimensions grow. Lower timing alone is insufficient. If no candidate achieves this, the investigation ends with an explicit unsupported/rejected result rather than claiming incremental success.
- **SC-005**: Every reported improvement identifies an equal-guarantee comparison and its complete measured endpoint. One-time establishment, maintenance, full observation, retained space and deferred recovery/audit work are separately accounted for. Zero component-only or shifted-work improvements are labelled as complete-operation gains.
- **SC-006**: For every supported test case, the complete original observation is independently compared with the reference; any claimed compact representation reconstructs that same observation exactly. Its size and reconstruction cost remain visible, so population-sized output is never hidden inside a population-independent latency claim.
- **SC-007**: Another checker can validate exact retained inputs, source/executed identities, completed/stopped outcomes and raw-to-summary calculations, and reproduce deterministic semantic observations. The final report gives distinct conclusions for both hypotheses and their combination, with every FR-001–FR-021 covered by evidence or an explicit gap.
- **SC-008**: Prior sealed evidence and published Core/Safety semantics/identities have zero changes. Investigation completion makes zero new claims of production adoption, durable publication, replay-free independent onboarding or cryptographic feasibility. A justified negative result is a completed investigation, while every unmet positive criterion remains visibly unmet.

## Assumptions

- This feature is one bounded architecture feasibility investigation. The present command creates the specification; planning, task generation, implementation, mathematical checking and measurements follow separately.
- The user requires correct history and exact semantics and prioritizes a demonstrably incremental representative transition before a broad Core rebuild. The chosen fragment does not narrow the admitted Core language or authorize an incomplete production evaluator.
- “Verified work” means facts established by the actual accepted checks or mathematics under named implementation/authority premises. This feature does not assume those checks already have a complete formal correspondence to native execution.
- Observational equivalence excludes diagnostic timings, allocation counts, backend call traces and hypothetical failures of omitted redundant calls. Mandatory integrity, snapshot, identity, trust and concurrency obligations remain in force; actually performed operations retain their error contracts. Equivalent evidence must discharge any omitted semantic obligation.
- The common starting authority and guarantees remain fixed across the four treatments. A fresh independent consumer must genuinely establish its ground; the experiment may measure that cost but does not promise to eliminate it. No new product trust or finality decision is needed to specify this comparison.
- Complete original output can require population-sized work. The desired locality applies to the justified semantic path; it does not imply that emitting a population-sized original observation takes constant time. There is no preselected compact-format migration.
- Existing mechanisms and evidence are inputs to review, not proof of the proposed improvement. The earlier identical-binary cache comparison and failed component probes establish no benefit or arithmetic-level cost split.
- Planning selects resource ceilings, exact representative fragments, evidence/proof mechanisms, measurement endpoints and numerical feasibility thresholds before execution. The earlier 50/100 ms figures remain scoped research goals from their original contracts, not automatically adopted acceptance targets or achieved results here.
- No universal constant-time claim is possible for unrestricted global rules. Missing dependency coverage uses reference work; no requirement to optimize every operator is introduced.

### Starting evidence and dependencies

These sources fix the question and prior boundaries. Their reported findings are not new results of feature 035.

| Source | Role in this investigation |
| --- | --- |
| [034-002 measurement](../034-safety-assurance-investigation/measurement-002.md) and [raw observations](../034-safety-assurance-investigation/measurement-002.json), published at Core commit `46a3e029e7087dce841b92c52dd8954865c86496` | Separate population and history effects, lifecycle costs and measurement scopes; the public Core/Safety pairing and frozen primary inputs are bound there. |
| [034-002 cost diagnosis](../034-safety-assurance-investigation/cost-diagnosis-002.md), [source bindings](../034-safety-assurance-investigation/inputs/measurement-002-sources.json) and [diagnostic dispositions](../034-safety-assurance-investigation/evidence/diagnostics-002/validity.json) at the same commit | Repeated prefix work, full-state/evidence processing, existing incremental accumulator and invalid cache-control treatment. |
| [015 incremental validation](../015-incremental-validation-semantics/spec.md) | Existing exact-equivalence, dependency, fallback and authority contract; review its actual implementation and evidence before reuse. |
| [029 global validation](../029-incremental-global-validation/spec.md) | Earlier preserved validity/global-rule work; determine its exact coverage and remaining full materialization without assuming the problem is already solved. |
| [034 assurance arguments](../034-safety-assurance-investigation/assurance-arguments.md) and [reuse assessment](../034-safety-assurance-investigation/reuse-assessment.md) | Established-ground premises, exact execution versus safety preservation, and remaining correspondence obligations. |
| [Project constitution](../../.specify/memory/constitution.md), version 1.1.0 | Semantic authority, complete observational equivalence, unknown-dependency fallback, reproducibility, explicit authority and test-first implementation. |
