# Feature Specification: Sound Verification of Ref-Target Removal

**Feature Branch**: `030-verify-ref-removals`

**Created**: 2026-10-25

**Status**: Implemented and validated — G0–G4 passed; see [evidence](evidence/README.md)

**Input**: User description: "009" — remedy the reproduced verifier restriction on deleting a
reference target while preserving Core's reference integrity and execution semantics.

**Repository / baseline**: `kallistoteles/behavior-ir-core`; Core 0.15.0,
commit `6b93898a9375113f7a8946f23ab5535319b6f5d6`, verifier 0.10.0.
Consumer reproductions use Behavior 0.14.0. This is a verifier-coverage improvement;
no runtime or domain-model change is authorized.

## User Scenarios & Testing *(mandatory)*

### User Story 1 - Prove guarded removal without giving up Ref (Priority: P1)

An author uses a reference field because its target must exist. The author needs an action that
requires its target to be unreferenced before deletion to receive a meaningful preservation proof,
rather than an encoding refusal merely because the schema permits references to that type.

**Why this priority**: The minimal admitted single-action example currently returns an
inconclusive encoding result even when the author states the required guard.

**Independent Test**: Verify the neutral guarded-removal module through the normal consumer
path and execute its free-target and referenced-target controls with actual Core semantics.

**Acceptance Scenarios**:

1. **Given** a required `Ref[Target]` field and a removal action requiring the target to be
   unreferenced, **When** preservation is checked, **Then** the supported pattern discharges its
   actual reference obligations without replacing `Ref` or removing the referring declaration.
2. **Given** that same action, **When** executed against an unreferenced target, **Then** the
   baseline allowed removal remains possible; with a surviving reference it remains refused.
3. **Given** a report containing zero applicable reference checks, **When** assurance is assessed,
   **Then** that report is not accepted as the proof required by this story.

---

### User Story 2 - Account for the complete resulting reference world (Priority: P1)

An author removes or retargets referring entities in the same action as a target is removed.
The verifier must distinguish a safe complete transition from one that leaves an unbound or newly
created reference behind, regardless of how many entities exist outside the action's bindings.

**Why this priority**: One successful run with one known child says nothing about another
referring entity that was not bound to the action. A source-state guard alone can also be invalidated
by effects in the same action.

**Independent Test**: Pair complete guarded mixed-effect examples with variants containing
an extra unbound reference, an incomplete guard or a newly created surviving reference.

**Acceptance Scenarios**:

1. **Given** an action removing a referring entity and its target with sufficient guards excluding
   every other surviving incoming reference, **When** verified, **Then** the supported removal
   obligations are proved and the known allowed runtime case remains unchanged.
2. **Given** an action retargeting the relevant references to another existing target and removing
   the old target, with guards covering all other potential referrers, **When** verified, **Then**
   the supported pattern is proved without assuming that the bound referrer is the only one.
3. **Given** an initially unreferenced target but an action creating a surviving reference to it
   before removing it, **When** its relevant obligation is checked, **Then** no false proof is
   issued; execution retains the baseline refusal of the invalid resulting reference state.

---

### User Story 3 - Trust the proof across failures and unknown entities (Priority: P1)

A reviewer needs the symbolic model to cover every concrete behavior in its declared domain,
including reference failures and their normative order. Improving precision must not hide a real
failure, assume the success of the very check being proved, or silently restrict the world size.

**Why this priority**: The present refusal is deliberately conservative. Removing it without a
sound replacement could turn an acknowledged limitation into an incorrect proof.

**Independent Test**: Review the general semantic argument and exercise independent negative,
ordered-error and missing-premise controls against authoritative Core execution.

**Acceptance Scenarios**:

1. **Given** an unbound referring entity or another declared reference field/type, **When** it can
   invalidate the selected obligation, **Then** the abstraction includes that behavior or reports
   the case inconclusive; the entity cannot disappear through a finite fixture or binding list.
2. **Given** several failing checks, partial expressions or an earlier reference failure,
   **When** verification reasons about a later site, **Then** its reachability and definedness
   premises match the actual required prefix of Core execution.
3. **Given** an unsupported case, solver exhaustion or an abstract candidate that cannot be
   confirmed, **When** a result is emitted, **Then** that failure alone confers no proof authority; a claimed
   counterexample is confirmed by the real evaluator under the stated assumptions.

---

### User Story 4 - Understand and reuse the new verification evidence (Priority: P2)

A consumer needs reports that identify the exact proved reference obligation and distinguish it
from runtime protection, empty-check success, an unsupported encoding and a genuine counterexample.
Changed verification behavior must not reinterpret historical attestations or cached results.

**Why this priority**: The original public result combines an overall `not_verified` outcome
with an individual `inconclusive` check. Correct assurance depends on retaining that distinction.

**Independent Test**: Inspect consumer attestations, repeat exact requests, test stale evidence
and run the existing reference, replay, conformance and authenticated-evidence checks.

**Acceptance Scenarios**:

1. **Given** supported and unsupported removal modules, **When** reports are consumed, **Then**
   they identify the action, reference obligations, result, assumptions and relevant reason without
   calling an inconclusive check proved or a runtime refusal an unconditional verification failure.
2. **Given** historical evidence or an artifact from another module, schema, profile or verifier
   context, **When** the new model is used, **Then** it cannot silently acquire fresh proof or
   authorization authority; canonical runtime behavior and existing history remain unchanged.

### Edge Cases

- A schema declares a referring type but the concrete Store contains no instances of it.
- Required references and optional references where already admitted by Core; an absent optional
  value is not a surviving reference, and a present one retains its existing existence obligation.
- Multiple referring types or fields, multiple refs from one entity, unbound referrers, aliases,
  self references or reference cycles within existing semantics.
- Removing all known referrers while another unknown referrer survives; moving one reference
  while another field still points to the removed target.
- Creating a surviving referrer or retargeting a reference to the removed target in the same action.
- A guard for the wrong target, a weakened Boolean condition, a guard that is not required, or
  a valid source-state condition whose conclusion does not hold after all effects.
- Typed identities, already-used creation identities, complete-world facts and inconsistent input
  have their existing meanings; display names or string resemblance establish no reference fact.
- Partial expressions and multiple errors whose activation depends on earlier checks; a later
  check's success must not justify an earlier premise.
- A locally unreachable proof site: proof at that site does not prove an earlier obligation or
  establish that the action has an allowed execution.
- Zero applicable checks after removing `Ref`; unsupported input, timeout, finite witness search
  failure and concrete counterexamples are distinct outcomes.
- Equivalent supported bindings under renaming or declaration order; exact subject identities
  still bind evidence even when the semantic reasoning is isomorphic.

## Requirements *(mandatory)*

### Established Basis and Scope

The reproduced module has `Target`, `Holder.target: Ref[Target]`, and a single target-removal
operation with a required `not referenced(target.id)` guard. Core 0.15.0 returns an overall
`not_verified` attestation with one preservation check: `inconclusive`, reason `encoding_error`.
Its explanation is `cannot encode: complete-world reference obligations for removal target`.
No Holder instance, entity invariant or second action is required to encounter the limitation.

Neutral runtime controls allow free-target removal, joint referring-entity/target removal and
retargeting followed by old-target removal in the tested states. They refuse removal with a
surviving reference and creation of a surviving reference to the removed target. Their short
histories pass data and behavior replay. These particular executions are not universal proofs
of the mixed-effect actions: other incoming references must also be excluded or accounted for.

The no-referring-type and ordinary-Id controls report `verified` with zero applicable preservation
checks. They are not reference-safety proofs. A separate constrained-update control actually
produces a proved preservation check. Local provenance is the ecosystem investigation
`docs/research/core-0.15.0-gaps/` under `/home/kalle/repos/behaviour-ir`; it is not a required build
dependency or a published Core artifact.

This is a conservative verification-coverage gap, not an established runtime soundness defect.
The current refusal protects against incomplete complete-world/reference-failure modeling.
A remedy must establish the missing reasoning rather than only remove that refusal.

### Mathematical and Assurance Contract

For every supported obligation, let C be all concrete Core behaviors under the explicitly
established assumptions, and A the symbolic behaviors in the corresponding comparison domain.
Soundness requires C to be included in A. A precision refinement may exclude symbolic behaviors
only when it preserves that inclusion and justifies why the excluded behaviors are impossible.
A finite sample of stores or a fixed set of bound entities cannot establish universal coverage.

A proof at an obligation site must use the actual preceding reachability, definedness and
validation premises. It cannot assume its target condition or the success of a later integrity
check. The exact preservation/no-failure meaning of the existing selected check remains in force.

In particular, runtime's refusal to commit an invalid reference state is not, by itself, a proof
that an action can never reach a failing reference obligation. Conversely, runtime `DENY` is not
by itself a counterexample to every possible proof claim. Evidence must identify which property
was actually proved or refuted. Source validity, local preservation, global induction, migrations
and host authorization must not be silently conflated.

### Functional Requirements

- **FR-001**: Preserve and minimize the public consumer reproduction, including the exact admitted
  module, profile, versions, outcomes and encoding diagnostic, with real positive proof controls.
- **FR-002**: Establish the complete resulting-state reference and normative failure obligations
  before selecting a representation. Distinguish the demonstrated encoding limit from runtime
  defects and unrelated solver incompleteness.
- **FR-003**: Prove the relevant obligations of the minimal guarded Ref-target removal pattern
  through the ordinary preservation workflow. Schema-level possibility of incoming references
  alone must not force this supported pattern to be inconclusive.
- **FR-004**: Support guarded joint referrer/target removal and guarded retargeting followed by
  old-target removal as meaningful positive patterns. Their guards must account for all potential
  surviving incoming references, not merely the concrete or explicitly bound examples.
- **FR-005**: Include the complete admitted module's applicable reference fields and types, all
  relevant effects and unbound entities. Model resulting-state creations, removals, assignments,
  aliasing and simultaneous changes without replacing source guards with assumed post-state facts.
- **FR-006**: Retain the runtime meaning of `Ref`, ordinary `Id`, supported optional values,
  typed identities, freshness and complete-world facts. Replacing or weakening reference integrity
  is not a remedy, including when ordinary Id controls have empty proof obligations.
- **FR-007**: Preserve the existing selected checks' meaning and normative error activation/order.
  Encoding only a final reference Boolean is insufficient where earlier checks can change the
  relevant path, outcome or counterexample. Existing input/backend assumptions must be explicit.
- **FR-008**: Give every new proof-authoritative abstraction or refinement a general semantic
  conservativity argument and a justified connection to the concrete obligations. No desired
  safety property, target check or later-check success may enter as an unestablished assumption.
- **FR-009**: Supported universal proofs must cover arbitrary finite populations in the declared
  domain. A bound on witness slots, explored states or example referrers must not become an
  undeclared proof assumption. Lack of a concrete bounded witness is not proof.
- **FR-010**: State the supported action/guard domain and remaining unsupported cases precisely.
  Unrecognized constructs or missing premises must remain inconclusive rather than acquire proof
  authority. Bounded coverage is acceptable only when explicit and does not waive FR-003/004.
- **FR-011**: Provide independent valid, invalid and missing-premise controls. Include wrong-target
  and weakened guards, extra unbound references, and new surviving references introduced by
  simultaneous effects. Removing a necessary premise must not leave a falsely proved obligation.
- **FR-012**: Confirm counterexample claims against actual Core evaluation with complete applicable
  facts and the stated assumptions. Solver uncertainty, exhaustion or failed confirmation must
  not be converted to a proof; a separate sound proof is needed to establish the obligation.
- **FR-013**: Keep source-state, intermediate-check and resulting-state coordinates, typed domains,
  bindings, schema/module context and captured values coherent throughout the reasoning. Similar
  guard text or a matching desired outcome is not semantic correspondence.
- **FR-014**: Emit actual relevant reference checks for required positive cases, identifying their
  subject, assumptions and results. Distinguish overall attestation status, individual proof
  results, encoding refusal and runtime outcomes. Empty-check success does not satisfy acceptance.
- **FR-015**: Version changed verification models, outcome rules, implementation identities and
  cached/evidence contracts through existing policy. Prevent stale or mismatched artifacts from
  being accepted as fresh-model results. Preserve historical attestations' bytes and recorded claims.
- **FR-016**: Preserve admitted execution meaning, existing Behavior identities, runtime decisions,
  refusals, command/change outputs, Store state and canonical history/replay. New verifier evidence
  is not a new execution primitive, runtime state or governance authorization mechanism.
- **FR-017**: Reuse the existing verification, conformance, replay, determinism and release checks.
  Assess existing verified reasoning before new proof machinery; tests, mathematical arguments,
  any machine-checked claims and trusted implementation correspondence must remain distinguishable.
- **FR-018**: Evaluate required positive cases under the baseline default verification budget,
  retain complete input/outcome/resource records and characterize any introduced limits. Any
  proposed budget change must be explicit and justified before final candidate evaluation; increasing a
  solver limit cannot fix an encoding that excludes the required semantics.
- **FR-019**: Document the supported patterns, per-obligation interpretation, safe authoring
  requirements and remaining limits. Do not claim general relational completeness, whole-system
  safety or resolution of private-application scenarios not actually evaluated.

### Key Entities *(include if feature involves data)*

- **Reference relationship**: a declared typed field whose present value must refer to an existing
  target under Core's reference-integrity rules; it differs from an ordinary identity value.
- **Concrete reference world**: all applicable live entities and reference fields, not only action
  bindings or finite test fixtures.
- **Transition**: the complete action, its required guards and all resulting effects.
- **Proof obligation and site**: the exact existing preservation/no-failure claim and its normative
  execution position, with established premises and relevant definedness.
- **Verification domain**: the supported semantic patterns and explicit assumptions under which a
  proof applies; it cannot hide restrictions on otherwise possible concrete behavior.
- **Verification evidence**: a result bound to the exact subject, obligations, profile, assumptions
  and verifier context, distinct from runtime records and authority to deploy or commit.

## Success Criteria *(mandatory)*

### Measurable Outcomes

- **SC-001**: The minimal guarded-removal reference has at least one actual relevant reference
  proof obligation, all required obligations are proved, and a concrete free-target execution
  remains allowed. No empty-check report or dead-action proof substitutes for this result.
- **SC-002**: The two guarded mixed-effect positive patterns in FR-004 discharge their required
  reference obligations, including complete exclusion/accounting of other possible referrers.
  Their allowed runtime controls retain the baseline committed state and replay behavior.
- **SC-003**: Zero false proofs occur in the required negative controls for wrong/incomplete
  guards, additional unbound references and surviving references introduced by same-action effects.
  Each group includes a valid control; any reported counterexample has concrete confirmation.
- **SC-004**: Every introduced abstraction has a reviewable general conservativity argument,
  complete stated premises and explicit correspondence/trust boundaries. Finite differential or
  exhaustive small-state tests support, but do not replace, arbitrary-finite-domain reasoning.
- **SC-005**: All ordered-error, unsupported, exhausted and missing-premise cases retain truthful
  classifications and no unintended proof authority. Positive outcomes are reproduced for supported
  renamings/declaration orders without losing exact evidence-subject identity.
- **SC-006**: All required existing compatibility, runtime, conformance, replay, determinism and
  authenticated-evidence checks pass with zero changed normative runtime outcomes or historical
  artifacts. Old-model or other-subject evidence never silently certifies a fresh request.
- **SC-007**: Every mandatory positive fixture finishes within the declared default budget or an
  explicitly justified pre-evaluation revision; the final report separates encoding coverage,
  proof validity, computational limits and remaining unsupported patterns.

## Assumptions

- Core 0.15.0 and verifier 0.10.0 are immutable baseline artifacts. The existing default profile
  uses a 20,000,000 solver resource limit and a 60,000 ms wall guard. Future release/model version
  selection follows Core policy; this command does not publish or change a dependency pin.
- The required mixed-effect proof fixtures may strengthen the neutral examples with sufficient
  guards expressible in the existing language. The earlier successful one-referrer executions
  are runtime controls, not a claim that their original guards already prove universal safety.
- Only reference forms and lifecycle operations already admitted by Core are required. No new
  optional-reference syntax, relational query primitive, join or general proof framework is implied.
- The original runtime is authoritative, including short-circuiting, failure order and facts
  consistency. Improved symbolic precision must not change it to fit a preferred proof model.
- Proof-model design and tooling are planning/research decisions. No algorithm, representation,
  new proof assistant, runtime mechanism or public API extension is selected here.
- Gap 008/Core feature 029 (validation performance) and Gap 006 (`unique(Option)` verification)
  remain independent. Feature 030 does not require changing their contracts or completing them first.
- Existing Safety Models retain their own proof/host boundaries. This work does not extend their
  language or certify genesis, migrations, deployment authorization or physical host behavior.
- No private application access, external production integration, issue filing, release publication
  or rewriting of historical evidence is authorized by this specification.
