# Feature Specification: Core Mathematical Soundness and Code Quality Audit

**Feature Branch**: `016-core-soundness-audit`

**Created**: 2026-10-10

**Status**: Draft

**Type**: Correctness and quality audit; no semantic feature or remediation implementation.

**Input**: User description: "Audit the complete current Core against its mathematical
model, semantic trust boundaries and code-quality requirements. Begin with semantic
inventory, invariants and findings; decide on corrections only after understanding
their shared causes. Do not proceed directly to implementation."

**Audit baseline**: Core Release `v0.12.1`, commit
`1e286ebcf1d61117320c57df155fa1ef9397e880`. The audit branch starts at merged main
commit `5949cb111cd6c5af34b0fc9083e78810df450fce`; both have the identical source tree
`6a9f9879a9fece5a001ca30ace483a8cde1addd9`. Findings and evidence MUST name the
audited immutable revision. A later revision requires an explicit new evidence
baseline, never an implicit change in what an earlier conclusion covers.

### Purpose

Give maintainers and consumers an evidence-based answer to whether the current
Core is mathematically coherent and faithfully implements its declared semantics.
The audit must make determinism, historical interpretation, integrity, trust and
optimization obligations inspectable, and identify code that makes those
obligations difficult to understand or maintain.

Core is a small deterministic semantic kernel. Passing its tests is necessary
evidence, not a proof of global soundness or readiness for a stable release.

> Implementation must be derived from semantics, not semantics inferred from implementation.

> Core defines meaning. Implementation techniques may change only if the observable semantics do not.

These principles govern the audit. This specification does not amend the existing
language contracts or declare any candidate invariant already established.

## User Scenarios & Testing *(mandatory)*

### User Story 1 - Understand the mathematical kernel (Priority: P1)

As a Core maintainer, I need a complete description of what each construct means
and which global invariants it depends on, so I can distinguish a faithful
implementation from an implementation detail that accidentally defines meaning.

**Why this priority**: Implementation review cannot establish correctness without
an independent reference meaning and explicit assumptions.

**Independent Test**: A reviewer can trace every scoped construct from its
mathematical object and semantic inputs through an existing contract, enforcing
code and evidence, or locate a concrete underspecification finding.

**Acceptance Scenarios**:

1. **Given** the frozen audited revision, **When** the inventory is reviewed,
   **Then** every scoped construct identifies its mathematical object, inputs,
   result/error domain, identity and semantic ordering without using a container
   type as its definition.
2. **Given** conflicting contracts or an unclear mathematical object, **When** the
   auditor cannot resolve meaning from existing authority, **Then** the conflict
   becomes an underspecification finding with its sources and affected obligations;
   implementation convenience does not choose the desired semantics.
3. **Given** a claimed global invariant, **When** its evidence is assessed,
   **Then** the report distinguishes construction, enforcing code, empirical
   evidence, documented assumptions and obligations not yet established.

---

### User Story 2 - Detect unsound proofs and semantic identities (Priority: P1)

As a consumer relying on verification and immutable identities, I need assurance
that proofs describe legal runtime executions and that records and hashes retain
every distinction their contracts claim to represent.

**Why this priority**: An accepted false proof or ambiguous identity can invalidate
decisions even when ordinary examples and quality gates pass.

**Independent Test**: A reviewer can inspect the correspondence and identity tables,
check every relied-on assumption and reproduce each reported mismatch or ambiguity.

**Acceptance Scenarios**:

1. **Given** a verifier assumption, **When** runtime and admission are examined,
   **Then** the report identifies exactly where it is guaranteed, its applicable
   version/path, and any missing guarantee.
2. **Given** a `PROVEN` claim contradicted by a legal runtime execution, **When**
   the case is reproduced, **Then** it is recorded as an S2 soundness defect;
   `INCONCLUSIVE` alone is not reported as unsoundness.
3. **Given** equivalent encodings or reordered unordered collections, **When**
   identities are compared, **Then** the report checks the applicable equivalence
   law and separates canonical ordering from semantic sequencing.

---

### User Story 3 - Establish trust across commit and replay (Priority: P1)

As a host or backend integrator, I need to know which evidence Core checks, which
backend guarantees it assumes, and what remains authoritative after failures,
concurrency, cache loss and replay.

**Why this priority**: Component correctness does not establish correctness at the
boundaries where evidence is bound, operations commit and history is interpreted.

**Independent Test**: A reviewer can follow each commit/replay path, its failure
boundaries and trust assumptions, and identify the authoritative state in each case.

**Acceptance Scenarios**:

1. **Given** a failure or concurrent head change during commit, **When** each
   mutation boundary is examined, **Then** evidence shows complete atomic durability
   or no authoritative commit, or records precisely which guarantee remains assumed
   or violated. A lost acknowledgment is distinguished from a failed commit.
2. **Given** stale, forged or incorrectly bound evidence, **When** the trust
   boundary is reviewed, **Then** mandatory rejection checks and any unchecked
   contract assumptions are identified. A hash is not treated as authorization.
3. **Given** a historical record and a changed current store/schema, **When** replay
   is checked, **Then** historical version selection and evidence are explicit;
   replay neither mutates state nor executes external commands.

---

### User Story 4 - Verify optimization without changing meaning (Priority: P1)

As a maintainer of 014/015, I need to know whether validation reuse preserves the
full reference result and every mandatory proof obligation, including cases where
the optimized and reference implementations might share a defect.

**Why this priority**: Faster agreement with an incorrect reference path does not
establish that the kernel satisfies its declared validity contract.

**Independent Test**: A reviewer can inspect the selected optimization's complete
dependency assumptions, exact state bindings, commit lifecycle and independent
reference evidence, including explicitly ineligible paths.

**Acceptance Scenarios**:

1. **Given** a changed/created entity or a transitively derived dependency,
   **When** reuse eligibility is assessed, **Then** every skipped obligation has a
   justification; unknown or cross-entity dependencies cannot count as unaffected.
2. **Given** a failed CAS, backend error or uncertain commit result, **When** the
   next operation is inspected, **Then** no uncommitted candidate supplies reusable
   validity evidence.
3. **Given** a correctly eliminated redundant read, **When** paths are compared,
   **Then** semantic outcomes/evidence are compared, not backend call traces or
   hypothetical errors from omitted calls. The eliminated call's obligation still
   requires equivalent evidence.
4. **Given** a reported non-local creation case that commits but fails subsequent
   full validation, **When** it is audited, **Then** the case is independently
   reproduced and classified against existing contracts without silently adding a
   new pre-commit refusal.

---

### User Story 5 - Decide on corrections from evidence (Priority: P2)

As a maintainer deciding whether Core can become stable, I need classified findings,
shared root causes, maintainability risks and a qualified final verdict before
approving any corrections.

**Why this priority**: Cleanup can change meaning, and an unsupported positive
verdict would hide the work needed to establish soundness.

**Independent Test**: A reviewer can trace each verdict and proposed correction to
an invariant, concrete finding and evidence without relying on a green test count.

**Acceptance Scenarios**:

1. **Given** several findings, **When** remediation is proposed, **Then** related
   causes are grouped and each proposal states its smallest correction, authority
   question, observable impact, historical compatibility and versioning consequences.
2. **Given** unresolved S0–S3 findings, **When** the final assessment is issued,
   **Then** neither `SOUND` nor `SOUND WITH NON-BLOCKING GAPS` is claimed.
3. **Given** only a readability preference or an inherent whole-state cost,
   **When** it is classified, **Then** it is not inflated into an architectural or
   correctness defect without a semantic reason.
4. **Given** a completed audit with blockers, **When** delivery is reviewed,
   **Then** the audit may be complete with `NOT YET SOUND`; it does not need to
   change code or manufacture a positive verdict to finish.

### Edge Cases

- Equal live-state content at different history positions: identity freshness,
  schema position and authorization must not be inferred from StateId alone.
- Legacy documents, records and proof envelopes: historical interpretation is
  distinct from eligibility for fresh current verification or trusted authorization.
- Empty, duplicated, reordered or contradictory query/fact inputs: membership,
  multiplicity, completeness and ordering obligations must be stated separately.
- Aliased parameters, nominal IDs with equal text and different types, or stale
  bindings: distinguish identity, binding and existence checks.
- A skipped branch, inactive command guard, false query filter or empty aggregate:
  short-circuit behavior and reachable errors must agree across applicable paths.
- Numeric boundaries, explicit rounding and optional values: check typed outcomes
  and Value-to-Error, Error-to-Value and Error-to-Error transitions.
- A backend violating its contract: separate mandatory detection from guarantees
  Core cannot establish without a trusted source; do not require recreating every
  redundant read to discover arbitrary backend dishonesty.
- Failed CAS, partial mutation attempts or a committed write with a lost response:
  candidate validity and uncommitted commands must not become authoritative.
- Discarded, rebuilt, reordered, stale or corrupted indexes/caches: specify which
  protections Core enforces and which internal-integrity assumptions are necessary.
- Diagnostic metadata relocation, duplicate keys, unknown fields, ambiguous
  encodings and semantically relevant record tampering: identify the applicable
  decoder/profile and identity or replay consequence.
- Optimized and reference paths agree but both violate an existing invariant:
  differential agreement is insufficient evidence of semantic soundness.
- Unavailable tooling, uncollected tests or an unresolved proof: retain the gap and
  its impact on the verdict; never report a skipped or inconclusive check as passed.

## Requirements *(mandatory)*

### Functional Requirements

#### Audit scope and authority

- **FR-001**: The audit MUST be bound to the immutable baseline above and record
  all applicable semantic, document, record, verifier and public-contract versions.
  Evidence from other revisions MUST be labeled historical, experimental or
  comparative. Reproduction overlays MUST identify their exact changes and base;
  they cannot be presented as an unmodified baseline execution.
- **FR-002**: The audit MUST cover semantic types/values; expressions/predicates;
  entity identity/lifecycle; state identity; exact arithmetic; effects/state deltas;
  actions/transitions; reads; queries; derived values; schemas/migrations; facts and
  observations; persistence/history/replay; canonicalization/hashes; invocation and
  binding; command declarations, intents and occurrences; evidence/governance;
  verifier/runtime correspondence; 014/015 reuse; the public `behavior-engine`
  facade and internal crate boundaries. Any absent concept MUST be explicitly
  recorded as absent in this revision with evidence, not silently omitted.
- **FR-003**: The audit MUST inspect cross-component paths in addition to individual
  components, including admission-to-evaluation, plain-to-store evaluation,
  evaluation-to-replay, runtime-to-verifier, invocation-to-governance-to-commit,
  schema-to-history and full-to-incremental validation.
- **FR-004**: The audit MUST NOT add syntax, Wire IR semantics, domain features,
  public capabilities or a general IVM/DBSP engine; redesign the language for
  elegance; weaken correctness for performance; rewrite historical IR; or silently
  alter hashes, canonical records, admission, errors or replay. Performance findings
  and internal cleanup proposals are recorded separately from semantic corrections.

#### Mathematical model and invariants

- **FR-005**: The semantic inventory MUST classify every construct using its
  mathematical object, such as set, multiset, sequence, mapping, product, sum type,
  partial/total function, relation, equivalence class, transition, predicate,
  immutable value or content-addressed identity. Implementation containers do not
  define the object. For example, command intents are a finite multiset where the
  existing contract says so, not a sequence because stored in a vector.
- **FR-006**: Each inventory entry MUST identify construct, mathematical object,
  semantic inputs, output/error domain, identity, whether ordering is semantic,
  normative source and reference implementation. Inputs MUST include explicit
  history-sensitive facts where required. Unclear meaning or conflicting authorities
  MUST create an S4 finding rather than being resolved by the current algorithm.
- **FR-007**: Each operation MUST have its full reference meaning documented
  independently of optimizations: evaluation, read, transition, apply, validation,
  migration, invocation, replay and verification. Example signatures such as
  `apply(S, delta) = S'` guide description but MUST NOT override the actual
  versioned contracts or omit refusals, errors, commands or evidence.
- **FR-008**: The audit MUST examine all twelve candidate global invariants below,
  document any additional kernel-wide invariants it discovers, and trace each to
  existing authority, applicable versions, enforcing locations, assumptions and
  proof status. Confirmed invariants are documented as existing obligations;
  documenting them does not silently create new normative semantics.

| ID | Candidate global invariant to investigate |
| --- | --- |
| G1 | Determinism: identical canonical state, schema, behavior, input, context and required facts produce identical semantic results and canonical evidence. |
| G2 | Type preservation: admitted/evaluated operations cannot produce values outside their declared semantic types. |
| G3 | State validity: a committed ordinary transition preserves validity under its exact schema and applicable behavior semantics. |
| G4 | Historical meaning: historical state/documents retain their exact historical schema and semantic interpretation; an engine upgrade does not silently reinterpret them. |
| G5 | Identity correctness: each identity respects its claimed semantic equivalence and encodes all required distinctions without canonical ambiguity. |
| G6 | No hidden dependencies: every influence on evaluation is an explicitly defined semantic input. |
| G7 | Replay equivalence: immutable evidence reproduces the original contracted computation; historical store checks use the recorded position, not mutable current meaning. |
| G8 | Persistence neutrality: physical representation and indexing cannot alter meaning. |
| G9 | Atomicity: an authoritative committed operation is wholly durable; a partial transition never becomes authoritative. |
| G10 | Verifier/runtime correspondence: the verifier assumes exactly the guarantees supplied by the applicable admission/runtime contract. |
| G11 | Optimization transparency: observational equivalence preserves semantic outputs and proof obligations, not execution traces. |
| G12 | Cache non-authority: disposable indexes/caches/materializations accelerate meaning and never define it. |

#### Runtime and verifier

- **FR-009**: The correspondence table MUST enumerate every runtime/admission
  guarantee relevant to a verification obligation and every verifier assumption,
  with columns for guarantee, whether the verifier relies on it, exact enforcing
  code, exact verifier assumption, applicable version/path and status. It MUST
  inspect short-circuit paths, finite arithmetic bounds, aliases, state validity,
  query/reference semantics, schemas, command guards/payloads, transitive derived
  dependencies and error activation. Unmodeled cases and conservative refusals
  MUST be recorded explicitly.
- **FR-010**: A `PROVEN` claim that a legal execution can violate MUST be recorded
  as a critical S2 soundness defect with a reproducer and violated proposition.
  Verifier incompleteness yielding `INCONCLUSIVE` is not itself unsoundness;
  assumptions weaker than runtime guarantees MUST also be identified without
  mislabeling unreachable counterexamples as legal runtime defects.

#### Identity and ordering

- **FR-011**: Every semantic identity domain MUST be reviewed for included and
  excluded distinctions, semantic equivalence, canonical representation,
  domain-separation tag/version, metadata effects, omitted semantic data, ambiguous
  encodings and cyclic dependencies. The inventory MUST include BehaviorHash,
  SchemaHash, entity declarations/content, StateId, transitions/records, read and
  invocation records, migrations, command declarations/intents/occurrences,
  governance/evidence and relevant validation cache keys. Cryptographic assumptions
  MUST be distinguished from canonicalization correctness; the audit cannot claim
  that a finite hash is mathematically collision-free.
- **FR-012**: The ordering audit MUST classify query memberships, effects,
  emissions/command bags, observations, errors, canonical problem lists, maps,
  hash inputs, backend enumeration and entity universes as sets, multisets,
  sequences or mappings. It MUST test whether multiplicity and ordering match the
  existing contract. Serialization order for unordered objects is representation,
  not a new sequencing promise.
- **FR-013**: Equivalent representations and changes to non-semantic metadata
  MUST be checked against each domain's actual equivalence contract; semantic
  distinctions MUST remain distinguishable before hashing. Any incidental source,
  map or backend order that affects a supposedly unordered result MUST become a
  concrete finding, not be adopted as intended semantics.

#### Result and error algebra

- **FR-014**: The report MUST distinguish semantic refusal, evaluation error,
  input/binding rejection, invalid state, verification outcome, operational/backend
  failure and internal programming failure. It MUST identify which are semantic
  outputs, what evidence they carry and their ordering/precedence by version/path,
  including Value-to-Value, Value-to-Error, Error-to-Value and Error-to-Error cases.
- **FR-015**: Optimization equivalence MUST compare required semantic results,
  evaluation failures, evidence and identities for the same canonical inputs.
  Backend traces and hypothetical errors from soundly omitted operations are
  excluded; actually performed calls retain their error contract. Every eliminated
  operation's semantic, integrity, trust or concurrency obligation still requires
  equivalent evidence: operations may be eliminated; proof obligations may not.

#### Incremental validation: Core 014/015

- **FR-016**: Full validation MUST remain the normative reference for the audit's
  incremental equivalence claim:
  `IncrementalValidate(S, delta, M) ≡ FullValidate(apply(S, delta), M)` wherever the
  optimized path is selected. The report MUST identify the actual selected domain,
  the complete semantic inputs represented by `M`, and each proof assumption.
  Equality of two implementations is not proof that either satisfies the model.
- **FR-017**: The audit MUST check exact committed parent bindings to required
  store/state/history/schema/behavior and validation semantics; no reusable child
  evidence before successful atomic commit; failed/refused/uncertain outcomes;
  complete transitive dependency closure including aliases and derived values;
  unknown dependency as affected; resulting-state references; historical identity
  freshness; complete changed/created entity validation; and removal/migration rules.
- **FR-018**: The audit MUST examine global/query/cross-entity/ineligible paths,
  cache invalidation/reconstruction/corruption, fallback and differential evidence.
  It MUST identify where the full validator is actually invoked and whether every
  required parent/child validity obligation is discharged. It MUST NOT assume that
  an existing fallback validates the complete resulting state merely because it is
  called the full path. Record/hash/replay/admission preservation MUST be checked.
- **FR-019**: Delta/reference machinery MUST be assessed as private proof and
  implementation machinery, never required language semantics. Previously
  reported non-local creation and post-commit validity concerns MUST be independently
  reproduced and classified against the baseline's contracts; any repair belongs
  to a separately approved correction, not a new refusal silently added by this audit.

#### Persistence and atomicity

- **FR-020**: For every commit path, the report MUST map pre-state, candidate,
  observations, validation, governance, CAS, canonical history record, indexes,
  head and post-state. It MUST identify each mutation boundary, failure point,
  concurrency guarantee and the precise component responsible for durability.
- **FR-021**: Atomicity evidence MUST address failure injection at every backend
  mutation boundary and distinguish refusal, failed CAS, partial mutation attempts
  and lost acknowledgment. No path may expose partial semantic state or commands
  as committed. Guarantees supplied only by the backend contract MUST be labeled
  assumptions with their conformance evidence, not claimed as enforced by Core.
- **FR-022**: Index truth MUST be derivable from canonical state/history. The audit
  MUST assess stale, corrupt, reordered and reconstructed indexes and determine
  which validation protects against semantic substitution and which internal or
  external integrity guarantees are assumed.

#### Replay and historical interpretation

- **FR-023**: Every record/replay form MUST state exactly what it proves and what
  it assumes: standalone and store-backed transitions, migrations, reads,
  command-producing transitions, invocation/refusal records and historical forms.
  An intentionally weaker legacy contract MUST be identified with its limits,
  never represented as current stronger evidence.
- **FR-024**: Replay MUST be reviewed for immutable evidence, exact historical
  schema/semantic selection, non-mutation, absence of external command execution
  and independence from mutable current external systems or authoritative caches.
  Store-backed replay may check historical evidence only under its documented
  exact-position contract.
- **FR-025**: For each semantically relevant recorded field, the audit MUST show
  that tampering changes the relevant identity or fails the applicable replay
  equivalence check, or report an S3 finding. Excluded diagnostics/metadata and
  intentionally limited historical evidence MUST be explicitly distinguished.

#### Trust and security boundaries

- **FR-026**: The trust report MUST treat callers, serialized documents, hosts,
  backend implementations, adapters, governance producers and caches/indexes as
  potentially buggy or adversarial. For each boundary it MUST name trusted data,
  enforced checks, assumed contracts, rejection behavior and limits on detection.
  Arbitrary dishonesty outside a declared backend contract is not automatically an
  optimization defect; a missing mandatory integrity check is still a finding.
- **FR-027**: The boundary review MUST inspect type/identity confusion, malformed
  canonical documents, duplicate keys, unknown fields, ambiguous encodings,
  stale/contradictory facts, forged observations, aliases, wrong schema/behavior,
  replay substitution, hash-domain confusion, authorization reuse, evidence bound
  to the wrong store/state/behavior, candidate reuse before commit and dispatch of
  uncommitted commands. Each applicable case needs concrete evidence or an open
  proof obligation.
- **FR-028**: Governance analysis MUST distinguish integrity, authentication and
  authorization. Content identity, issuer names and structural decoding alone
  MUST NOT be accepted as proof of authority. Current required authorization and
  historical structural trust MUST be evaluated under their distinct contracts.

#### Code quality and complexity

- **FR-029**: Code-quality review MUST assess type-encoded invariants, primitive
  identity confusion, invalid boolean/option combinations, module responsibilities,
  conceptual cycles, naming and comments explaining mathematical obligations.
  Recommendations MUST name a concrete invariant or maintenance risk; style
  preference alone does not establish an architectural defect.
- **FR-030**: Semantic duplication MUST be examined across runtime/replay,
  runtime/verifier, store/plain, reads/actions, legacy/unified invocation and
  full/incremental validation. The report MUST distinguish required historical
  version separation from accidental duplicate authorities that can diverge.
- **FR-031**: Every `unwrap`, `expect`, `panic` and `unreachable` in scoped
  non-test execution paths MUST be classified as backed by an established
  invariant, reachable from untrusted input, or an internal failure with a stated
  reachability argument. Every unsafe block MUST have its safety invariant,
  argument, caller obligations and supporting evidence reviewed. If none exists
  in scoped source, record that explicitly; do not imply dependencies were audited
  unless included in a separately stated scope.
- **FR-032**: Mutable state spanning semantic operations MUST be inventoried for
  lifetime, ownership, authority and snapshot compatibility. The report MUST
  examine whether aliases, shared materializations or updates can leak information
  or validity across incompatible stores, histories, schemas or behaviors.
- **FR-033**: Potentially non-local operations MUST have complexity described in
  semantic quantities, such as entity count `n`, references `r`, result size `q`,
  affected dependency closure `d` and commands `c`. Distinguish inherent lower
  bounds, current algorithmic work, binding/transport constants and avoidable
  repeated passes. Inherent record materialization is not a correctness defect;
  purely performance findings are S7 and create no optimization mandate.

#### Evidence and quality gates

- **FR-034**: The audit MUST assess coverage and collection of unit, negative,
  differential, property, metamorphic and fault-injection tests. Important
  invariants need rejection evidence or an explicitly open coverage obligation.
  Applicable laws include canonicalization idempotence, semantic encode/decode
  round trips, StateId independence from history position, enumeration-independent
  queries, optimized/full equivalence and original/replayed equivalence. Required
  differential comparisons include incremental/full, indexed/unindexed queries,
  plain/store evaluation where their contracts overlap, and replay/original
  evaluation. Metamorphic coverage MUST assess reordering unordered values,
  non-semantic metadata changes, backend enumeration changes, rebuilt indexes and
  caches, and equivalent histories where state identities should agree. Fault
  coverage MUST address backend read errors, failed CAS, partial mutation attempts,
  corrupted materializations, tampered records and wrong schema/behavior/evidence.
- **FR-035**: All existing required repository gates MUST be run in the pinned
  environment with the canonical scripts, recording command, revision/overlay,
  environment, collection and results. In particular use
  `nix develop -c scripts/gates.sh` from Core's root. Evaluate applicable format,
  lint, test and all-feature checks, and Miri, sanitizers, fuzzing or property tools
  only where they address identified risks. No heavy dependency is required merely
  to satisfy the audit, no required gate may be weakened, and unavailable/skipped
  checks remain visible gaps.
- **FR-036**: Evidence MUST distinguish tests from proofs and historical from
  current results. Differential evidence MUST name the comparator's independence
  and shared assumptions. Audit reproductions or additional tests may demonstrate
  existing defects without fixing them; they MUST preserve the baseline and obey
  the constitution's test-first rules for any newly implemented deterministic
  harness. New tests cannot establish missing historical test-first compliance.

#### Findings, deliverables and change policy

- **FR-037**: Every significant finding MUST have a stable ID, one category from
  the table below, severity, claim, mathematical/semantic reason, violated invariant
  or contract, exact revision/code locations, concrete evidence, reproducible test
  when applicable, affected versions/paths and recommended remediation. Duplicate
  symptoms MUST retain traceability when grouped under a shared root cause.
- **FR-038**: Severity MUST be one of Critical, High, Medium, Low or Observation,
  justified by the effect on legal executions and consumers. Reports MUST NOT
  inflate incompleteness into unsoundness, performance into correctness, or stylistic
  preferences into architectural failures.
- **FR-039**: Every important proof obligation MUST have one of five explicitly
  justified statuses: proven by construction; established by a code invariant;
  covered empirically by tests; assumed but documented; not yet established.
  Scope, premises and supporting evidence MUST accompany the status. Formal or
  machine-checked proof MUST NOT be claimed without its actual artifact and scope.

| Category | Meaning |
| --- | --- |
| S0 | Semantic unsoundness |
| S1 | Security / trust-boundary defect |
| S2 | Verifier/runtime soundness mismatch |
| S3 | Identity/canonicalization/replay defect |
| S4 | Mathematical underspecification |
| S5 | Implementation correctness defect |
| S6 | Code-quality / maintainability risk |
| S7 | Performance only |

- **FR-040**: The completed audit MUST provide all eleven deliverables below in
  this feature directory. They MUST agree on revision, finding IDs, assumptions and
  unresolved blockers. These are future audit outputs; this specify invocation
  creates requirements, not audit conclusions or placeholder claims of completion.

| Required deliverable | Required content |
| --- | --- |
| `audit-summary.md` | Executive answer on semantic soundness, mathematical coherence, blockers, scope/assumptions and the final assessment. |
| `semantic-model.md` | Complete construct inventory, full meanings, ordering/result algebra and cross-component composition. |
| `global-invariants.md` | Existing normative global obligations, G1–G12 investigation, sources, scope and evidence status. |
| `runtime-verifier-correspondence.md` | Complete guarantee/assumption table and mismatches, including conservative incompleteness. |
| `identity-audit.md` | All identity domains, canonicalization, ordering, metadata and cyclic-dependency review. |
| `persistence-replay-audit.md` | Commit/mutation/failure paths, atomicity assumptions, indexes, historical interpretation and every replay contract. |
| `trust-boundary-audit.md` | Trust map, adversarial cases, evidence binding and integrity/authentication/authorization distinctions. |
| `incremental-validation-audit.md` | 014/015 equivalence domain, dependencies, lifecycle, reference/fallback checks and independent evidence. |
| `code-quality-audit.md` | Type modeling, boundaries, duplication, boolean/option modes, panic/unsafe inventory, mutation, naming/comments and complexity. |
| `findings.md` | All classified findings, exact evidence, root-cause grouping and proposed remediation with compatibility consequences. |
| `proof-obligations.md` | Complete obligation/status/evidence ledger, assumptions, coverage gaps and tooling results. |

- **FR-041**: The final assessment MUST contain an area matrix for Types,
  State/identity, Evaluation, Queries, Persistence, Replay, Verification,
  Governance, Invocation, Commands and Incremental validation. Each row MUST state
  mathematical-model clarity, implementation agreement and test sufficiency as
  Yes/No with evidence, and identify every open soundness issue. Unresolved or
  unestablished assessments cannot be disguised as Yes.
- **FR-042**: The audit MUST end with exactly one qualified verdict:
  `SOUND`, `SOUND WITH NON-BLOCKING GAPS` or `NOT YET SOUND`. `SOUND` requires no
  unresolved known S0–S3 issue and no unestablished blocking obligation; it is an
  audit conclusion within explicit scope/assumptions, not an unconditional formal
  theorem. `SOUND WITH NON-BLOCKING GAPS` requires that all remaining gaps are
  justified as non-blocking and none is unresolved S0–S3. Known blocking defects,
  ambiguous required semantics or missing evidence needed to establish soundness
  require `NOT YET SOUND`. Gate success alone cannot determine the verdict.
- **FR-043**: Existing soundness-remediation claims and the separately reported
  015 non-local creation gap MUST be tracked as prior leads. Each MUST be checked
  for relevance, reproduced or reassessed on the baseline, and linked to evidence.
  Prior claims of correction or scope acceptance do not close this audit's
  obligations automatically.
- **FR-044**: Discovery MUST precede remediation: first establish sufficient
  inventory, invariants and findings to identify shared root causes, then group
  proposed corrections. No finding may be silently fixed during discovery. Before
  any later change to semantics, hashes, records, admission or public APIs, identify
  the violated invariant, determine whether implementation or specification is
  wrong, propose the smallest correction, assess versioning and historical
  preservation, and obtain explicit approval for that correction before implementing
  it. Earlier general implementation/release permissions do not approve new audit
  corrections under this change policy.
- **FR-045**: Pure internal cleanup MAY be proposed for a separate later change
  only with an observational-equivalence argument. This audit does not authorize
  cleanup implementation, language redesign, remediation, publication, ecosystem
  pin changes or a declaration of stable/v1 readiness.

### Key Entities

- **Audit baseline**: Immutable source revision, applicable contract versions and
  environment against which conclusions are made.
- **Semantic inventory entry**: A construct's mathematical object, explicit inputs,
  output/errors, identity, ordering and authoritative reference meaning.
- **Global invariant / proof obligation**: A required proposition, its premises,
  affected paths, enforcing code and precisely qualified evidence status.
- **Correspondence entry**: A runtime/admission guarantee paired with a verifier
  assumption and an applicable version/path.
- **Identity domain**: Claimed semantic equivalence, canonical representation,
  included/excluded distinctions and versioned domain separation.
- **Trust boundary**: A producer/consumer boundary with explicit trust, enforcement,
  assumptions and failure behavior.
- **Evidence item**: Revision-bound reasoning, code invariant, test/reproducer,
  collection/result log or documented external contract assumption.
- **Finding**: A classified, severity-qualified claim linked to an invariant,
  exact location, evidence and proposed correction.
- **Audit verdict**: A conclusion limited to the declared baseline, scope and
  assumptions, with a complete unresolved-obligation matrix.

## Success Criteria *(mandatory)*

### Measurable Outcomes

- **SC-001**: 100% of constructs in FR-002 are classified in the semantic inventory
  with all required columns, or explicitly evidenced as absent. Zero unclear
  mathematical objects are silently treated as defined.
- **SC-002**: All G1–G12 candidates and every additional discovered global invariant
  have an authority, applicability and qualified proof status. A reviewer can trace
  each established claim from meaning to enforcing code to evidence.
- **SC-003**: 100% of relevant verifier assumptions and identity domains have their
  required correspondence/review entries. Every mismatch, ambiguity or incomplete
  assessment is linked to a finding or open obligation.
- **SC-004**: Every applicable commit/replay path and mutation boundary has its
  atomicity, historical interpretation, failure evidence and trust assumptions
  accounted for. Every 014/015 reuse/fallback obligation has explicit evidence
  status rather than presumed equivalence.
- **SC-005**: All significant findings have every field required by FR-037,
  a justified category/severity and an independently inspectable reason. No prior
  relevant lead is omitted, no inconclusive result is called a proof, and no
  performance/style issue is called a correctness defect without a semantic basis.
- **SC-006**: All eleven required audit deliverables and all eleven assessment
  areas are present and mutually consistent. A reviewer can determine the verdict,
  blockers and proposed next work from the delivered evidence without reconstructing
  conversational history.
- **SC-007**: 100% of required quality checks have recorded outcomes bound to the
  actual audited revision or disclosed reproduction overlay. Coverage collection,
  negative cases and missing/unavailable checks are explicit; zero skipped checks
  are counted as passes.
- **SC-008**: The audit introduces zero unapproved changes to observable semantics,
  identity, historical interpretation or public contracts, and silently repairs
  zero findings. Remediation and cleanup remain separately reviewable proposals.
- **SC-009**: The final verdict is justified by the obligation ledger rather than
  by test counts. Any unresolved S0–S3 finding or blocking soundness obligation
  produces `NOT YET SOUND`. Audit completion is independent of a positive verdict.

## Assumptions

- This invocation is the specification phase only. The audit's semantic inventory,
  invariants, evidence and findings are later work in the normal specify → clarify
  → plan → tasks → implement workflow; here, implement means executing the approved
  audit tasks, not automatically fixing findings. No plan, task list or audit
  deliverable is asserted complete by creating this specification.
- The owner is `behavior-ir-core`. The public facade, CLI, schemas, fixtures,
  historical profiles and relevant internal boundaries are in scope; ecosystem
  bindings, TCUP delivery and dependency-pin changes are outside this audit.
- The audience is maintainers, reviewers and consumers assessing semantic trust.
  Mathematical and technical names identify audit subjects and required evidence;
  they do not prescribe a new implementation architecture.
- The [constitution](../../.specify/memory/constitution.md),
  [PRINCIPLES](../../PRINCIPLES.md), [architecture](../../ARCHITECTURE.md),
  existing feature contracts and [versioning rules](../../docs/versioning.md)
  remain authoritative. Conflicts are findings, not permission to infer a new
  contract from implementation behavior.
- [Previous soundness remediation](../../docs/soundness-remediation.md) and
  [015's evidence](../015-incremental-validation-semantics/evidence.md) provide
  audit leads, not proof of whole-kernel soundness. Existing 014/015 scope acceptance
  does not waive the global ordinary-transition validity question.
- Backend durability, solver correctness, cryptographic security and trusted-key
  custody may remain explicit contract assumptions where the kernel cannot establish
  them itself. Their exact scope and available evidence must be reviewed; naming
  an assumption does not excuse a missing obligation Core promises to enforce.
- A complete machine-checked proof of the kernel is not required or implied.
  Reasoning, construction, code invariants and tests retain distinct evidence status.
- Read-only source inspection, required checks and disclosed reproduction tests
  support the later audit. A semantic correction requires the explicit decision
  described in FR-044, even if its reproducer is small or its intended fix appears
  obvious. Performance improvements and internal cleanup also remain separate work.
