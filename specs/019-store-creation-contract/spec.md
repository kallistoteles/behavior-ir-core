# Feature Specification: Initial Store Creation Contract

**Feature Branch**: `019-store-creation-contract`

**Created**: 2026-10-11

**Status**: Implemented — scoped source evidence and review are recorded in
[implementation-report.md](implementation-report.md). Final frozen-revision
validation and delivery task completion are bound by the external candidate receipt.

**Input**: User description: "Draft a separate correction for audit 016 RC-003.
Define the full initial Store creation contract, including error, crash, lost
acknowledgment, retry and reopen outcomes, before choosing an implementation."

This feature concerns **Backend::create of the entire Store**, not an action that
creates an entity. It addresses **F-PERSIST-002 (S4/Medium)** in the
[immutable 016 findings](https://github.com/kallistoteles/behavior-ir-core/blob/b28f9af1ba2e3afc641f6be6dda9eb5c5d9688d9/specs/016-core-soundness-audit/findings.md).
The audit inspected published v0.12.1 at
`1e286ebcf1d61117320c57df155fa1ef9397e880`. This draft starts from
`5949cb111cd6c5af34b0fc9083e78810df450fce`, with the same source tree.

The existing contract defines successful initialization and explicitly atomic,
crash-safe **commit**. It does not define allowed creation outcomes after error,
lost acknowledgment or retry. **O-PERSIST-012** is this missing outcome law;
**O-PERSIST-004** is separately missing creation fault/crash coverage. No partial
creation bug was reproduced, and commit fault tests prove no creation guarantee.

This draft specifies the decision boundary and acceptance obligations without
assuming the missing law already holds. See the
[discussion overview](https://github.com/kallistoteles/behavior-ir-core/blob/core-soundness-remediation-discussions/docs/core-remediation/README.md)
and [targeted re-audit scope](https://github.com/kallistoteles/behavior-ir-core/blob/core-soundness-remediation-discussions/docs/core-remediation/targeted-re-audit.md).

## Clarifications

### Session 2026-10-12

- Q: What may storage expose after Store creation is interrupted by an error or
  crash? → A: Choose A: one atomic publication point, with public state Absent or
  Complete only. Private staging never becomes a Store. Distinguish those states
  from caller knowledge KnownAbsent, KnownComplete and UnknownWhetherPublished.
  The answer also selects identity-bound idempotent retry: create if absent,
  recover the exact existing creation if equivalent, or reject a conflicting
  creation; preserve subsequent history and establish exact recovery evidence.
- Q: Should the creation law apply to all backends used with the corrected Core
  version, or be an optional separate contract? → A: Choose A: every Backend for
  that Core version must conform to one current creation contract. Treat this as
  a public Backend-contract change: update normative documentation, assess
  versioning, review all first-party implementations, extend shared conformance
  tests and document external migration. Compilation and prior tests alone do
  not establish semantic conformance; introduce no capability negotiation.

## User Scenarios & Testing *(mandatory)*

### User Story 1 - Know what successful initialization establishes (Priority: P1)

As a host integrator, I know exactly which complete initial Store is authoritative
when creation succeeds, so its genesis, initial head, seed and required views are
one coherent product rather than independent hints.

**Why this priority**: Every later Store/history obligation starts from this
initialization boundary. Neither current implementation order nor commit atomicity
can define its missing semantics.

**Independent Test**: Starting from an uninitialized target, submit a valid
initialization request with empty and nonempty seeds, required references and the
exact schema/policy. On success, independently reopen and check the complete
initial product and its existing identities. Invalid seeds must be rejected before
Core requests Backend creation.

**Acceptance Scenarios**:

1. **Given** an uninitialized target and a fully valid initialization request,
   **When** creation succeeds, **Then** reopen observes its exact immutable genesis,
   complete seed, position-zero head and coherent required views after one atomic
   publication, under the host's stated durability assumptions.
2. **Given** a seed violating typing, schema, reference, duplicate identity or
   applicable Behavior validity, **When** Core handles creation, **Then** it refuses
   before requesting a durable initialization.
3. **Given** a completed Store, **When** an initialization attempt supplies another
   genesis or seed, **Then** it cannot overwrite the original lineage or history.

---

### User Story 2 - Resolve failure and lost acknowledgment (Priority: P1)

As an integrator facing a storage failure or process interruption, I can determine
which outcomes are permitted and which evidence establishes whether my Store was
created, without treating every error as rollback or every found genesis as success.

**Why this priority**: A failure response and durable creation can differ when
acknowledgment is lost. An unspecified outcome relation makes safe recovery unclear.

**Independent Test**: Exercise the agreed outcome law's named
before-publication, during-private-write, after-durable-publication/before-ack and
restart observation cases. Check each visible result against the law, including
uncertain observation when recovery reads themselves fail. These are prospective
acceptance cases, not executed evidence of a current defect.

**Acceptance Scenarios**:

1. **Given** a legal initialization attempt that fails or is interrupted, **When**
   its result and subsequent reopen observations are examined, **Then** each outcome
   exposes only Absent or a Complete Store. Caller knowledge distinguishes known
   absence, known completion and uncertainty; a generic error proves no rollback.
2. **Given** a complete initialization persisted but its acknowledgment was lost,
   **When** the host resolves the outcome, **Then** the exact existing lineage can
   be recognized without publishing a second genesis or resetting the head.
3. **Given** required recovery reads also fail, **When** the caller lacks evidence
   of either completion or absence, **Then** the outcome remains unresolved under
   the agreed failure model; an unavailable check cannot count as proof of absence.
4. **Given** incomplete initialization material, **When** an ordinary Store is
   opened or evaluated, **Then** that material cannot be treated as a complete
   authoritative Store. Private staging cannot be opened, evaluated or replayed
   as a Store; its maintenance and cleanup are Backend implementation concerns.

---

### User Story 3 - Retry without replacing a lineage (Priority: P2)

As a host integrator, I can follow an explicit retry/reopen procedure after an
uncertain attempt without duplicating initialization or confusing current live
state with the original creation identity.

**Why this priority**: Safe recovery depends on an exact operation identity and
non-overwrite guarantee, not only physical write atomicity.

**Independent Test**: Exercise the agreed idempotent retry policy for identical and
conflicting requests, an already-initialized Store whose history has advanced,
and competing initializers. Check original genesis/seed/history preservation and
the required refusal, recovery or idempotent outcome for each case.

**Acceptance Scenarios**:

1. **Given** repeated copies of the same initialization request after uncertainty,
   **When** the accepted retry procedure runs, **Then** it establishes at most one
   authoritative lineage: an absent target is created, while the exact already
   published initialization is recovered without replacing data or adding a
   second semantic initialization event.
2. **Given** a different initialization request targeting an already-created Store,
   **When** it is retried or reopened, **Then** it cannot be mistaken for successful
   creation of the requested lineage merely because current live content matches;
   an established conflicting creation identity is deterministically refused.
3. **Given** the original initialization completed and ordinary history subsequently
   advanced, **When** creation recovery runs, **Then** it preserves that history and
   never resets the Store to position zero.
4. **Given** competing requests at one target, **When** initialization resolves,
   **Then** no observer sees a mixed genesis/seed/head assembled from two requests.
5. **Given** a Backend implementation that compiles against the trait but does not
   satisfy atomic publication, exact-identity retry or recovery preservation,
   **When** its compatibility with the corrected Core version is assessed,
   **Then** it is classified as nonconforming, with its migration requirements
   explicit; type compatibility and historical tests do not establish conformance.

### Edge Cases

- An empty seed still requires an exact schema, policy/genesis and correct head;
  equal empty StateIds do not establish equal Store lineage.
- Seed reference indexes are derived views, not separate semantic authority. They
  must answer coherently or be reconstructed before required use.
- An error before publication, a post-publication lost acknowledgment, and a process
  crash with no response are different observations, not synonyms for rollback.
- Private physical staging may survive a crash but is never a public Store state.
  Before atomic publication, this attempt exposes no Store; after publication,
  it exposes the complete product. Concurrent publication by another initializer
  must be distinguished from this attempt's failure to publish.
- Reopening after uncertainty may observe an already-advanced Store. Compare the
  original initialization identity rather than requiring current state equal seed.
- A foreign genesis/policy/schema or missing seed material must not be accepted as
  the requested initialization merely because a digest or one field matches.
- Required operational checks may fail again; this cannot prove successful recovery.
- A refusal before Backend creation proves that this attempt did not publish;
  it does not prove the target lacks a previously or concurrently created Store.
- Existing evidence/hash bytes remain immutable. Initialization does not dispatch
  commands, append a transition event, or bypass seed validity/freshness rules.
- In-memory success and commit-only BeforeWrite/AfterWrite wrappers provide no
  general proof about durable creation or every host's private write boundaries.

## Requirements *(mandatory)*

### Functional Requirements

- **FR-001**: The contract MUST apply to initial whole-Store creation and its
  recovery. Entity creation during ordinary transitions, migration and atomic
  commit semantics are outside this correction's meaning.
- **FR-002**: It MUST define the initialization request and complete successful
  product using existing genesis/Store identity, schema/policy, seed versions,
  initial state/head/history coordinate and required coherent derived views.
  Existing canonical bytes, hash domains and position-zero meaning are preserved.
- **FR-003**: Core MUST continue establishing seed typing, unique identities,
  schema applicability, resulting references and complete applicable Behavior
  validity before requesting Backend initialization. This is an existing success
  obligation, not a newly discovered partial-write defect.
- **FR-004**: Successful completion MUST establish the atomic publication and
  durability/visibility guarantee for the complete initial product, and no
  incomplete material may be
  used as an authoritative ordinary Store. Derived indexes/materializations remain
  reconstructible acceleration, never independent semantic truth.
- **FR-005**: Creation MUST have one atomic publication point. The public Store
  state is Absent before publication and Complete after publication, with no
  observable intermediate construction state. Backends MAY use private staging,
  including orphaned staging after a crash, but MUST NOT expose it as a Store
  through normal opening, evaluation or replay. See D019-01 in
  [decisions.md](decisions.md).
- **FR-006**: The outcome law MUST distinguish actual storage state from caller
  knowledge: KnownAbsent, KnownComplete or UnknownWhetherPublished. Success
  establishes complete publication; a crash, lost acknowledgment or generic
  Backend error may leave publication uncertain. Failed recovery reads establish
  neither absence nor completion. Known absence requires affirmative evidence
  at an identified observation point; proving that this attempt did not publish
  does not exclude prior or competing publication. These knowledge categories
  do not introduce a third Store state or prescribe public result signatures.
- **FR-007**: Retry with the same creation identity MUST be idempotent: create the
  target if absent; recover the exact already-published initialization if its
  identity and complete product match; deterministically refuse a conflicting
  published initialization once that conflict is established. Required Backend
  checks that fail remain operational failures, not invented conflicts or
  successful recovery. Retry MUST NOT add a second semantic initialization event.
  See D019-02.
- **FR-008**: Idempotent retry MUST preserve one immutable lineage,
  refuse conflicting requests, recognize the exact original initialization
  product when required, and preserve any subsequently committed history. It MUST
  NOT reset state/head, duplicate seed lifetimes or mix competing requests.
- **FR-009**: Recovery MUST distinguish immutable creation identity from current
  live StateId, head position and historical ever-used state. Recovery evidence
  MUST be bound to the expected target/lineage and its canonical initialization,
  under stated Backend/cryptographic trust premises.
  Creation identity uses the existing canonical genesis/StoreId contract and its
  exact bound initialization parameters, not a new hash domain. Target path/name,
  current StateId or finding a genesis alone is insufficient. Reopen/retry MUST
  establish the expected complete initialization and observe the actual current
  head without requiring later state or schema to equal the original seed.
- **FR-010**: Validation materialization MUST NOT become reusable merely because
  creation was attempted or returned an uncertain error. It may be established only
  from acknowledged complete creation or equivalent verified recovery evidence,
  bound to exact state/history/schema/behavior; an initial certificate cannot
  stand for an advanced current head.
- **FR-011**: Every Backend used with the corrected Core version MUST conform to
  one current Backend contract, including atomic creation publication,
  identity-bound idempotent retry, established-conflict refusal and exact
  original-creation recovery with subsequent history preserved. These obligations
  are not optional capabilities. A compiling implementation that violates them
  is nonconforming. Core MUST NOT introduce runtime negotiation between old and
  corrected creation semantics. See D019-03.
- **FR-012**: The approved contract MUST identify caller and Backend obligations,
  observable result/error distinctions, concurrency/reopen requirements, public
  consumer implications and versioning consequences. Existing historical genesis,
  schemas, records and hashes MUST NOT be rewritten.
  The correction MUST be delivered as an explicit public Backend-contract change,
  with normative contract updates, an assessment under the repository's existing
  release policy and migration notes for external Backend implementations.
  Planning must map the outcome law to supported result/error contracts without
  claiming that conceptual caller knowledge requires new public enum variants.
- **FR-013**: O-PERSIST-012 outcome specification and O-PERSIST-004 empirical fault
  coverage MUST remain separate. No fault test may be claimed to prove an undefined
  law; no written law alone may be claimed as executed physical durability evidence.
- **FR-014**: After clarification and before implementation, define acceptance
  coverage for every specified outcome category. Observe relevant behavioral
  failures before each implementation change; final acceptance evidence MUST
  exercise every specified outcome category, identical/conflicting
  retries, competing initializers, empty/nonempty seeds and complete reopen checks,
  including the selected Backend's disclosed interruption windows. No failure or
  skip is a pass. Core's test-first requirement applies to subsequent code changes.
  The shared Backend conformance suite MUST cover prepublication failure,
  successful complete publication, postpublication lost acknowledgment,
  equivalent and conflicting retries, private staging isolation, concurrent
  initialization and recovery after later commits. Backend-specific fault tests
  MUST supplement shared cases where private interruption or physical durability
  cannot be established by the generic harness.
- **FR-015**: Backend conformance and eventual public consumer evidence MUST state
  what they actually establish and their OS/storage/host assumptions. No finite
  corpus proves arbitrary adversarial Backend durability or all physical windows.
  All first-party Backend implementations MUST be inventoried and assessed against
  applicable obligations; deliberately nonconforming test doubles MUST be
  identified as such. Existing success or commit-only tests MUST NOT be presented
  as evidence for newly specified creation guarantees.
- **FR-016**: This feature MUST introduce no Behavior syntax, Wire IR meaning,
  entity-lifecycle rule, hash change, general storage engine or performance target.
  Draft specification publication approves no planning, code, tagging or release.

### Key Entities *(include if feature involves data)*

- **Initialization request**: Exact existing genesis/policy/schema and validated
  seed product intended for one Store target.
- **Creation identity**: Existing canonical genesis/StoreId identity, bound to
  the expected target and complete original initialization under existing hash
  and trust rules. Later commits do not change this identity.
- **Complete initial Store**: Coherent authoritative genesis, position-zero state,
  seed lifetimes/head and required views atomically published under the host's
  stated durability contract. Subsequent ordinary history may advance the head.
- **Public creation state**: Absent or Complete, with one semantic publication
  event per target. Private staging is implementation state outside this domain.
- **Caller knowledge**: KnownAbsent, KnownComplete or UnknownWhetherPublished,
  justified by actual responses/observations; uncertainty is not a Store state.
- **Creation outcome law**: Relation between request, response/interruption and
  subsequent observations; distinguishes completion, absence and uncertainty.
- **Recovery evidence**: Applicable exact-lineage observations used to resolve an
  uncertain attempt without confusing original identity with current state.
- **Retry policy**: Identity-bound idempotent creation/recovery, with established
  conflicting identity refused; preserves immutable lineage and later history.
- **Host conformance evidence**: Scoped observations supporting the selected
  persistence law, distinct from the law and from assumptions about other hosts.

## Success Criteria *(mandatory)*

### Measurable Outcomes

- **SC-001**: Every named creation response/interruption/reopen category has exactly
  specified allowed observations and certainty meaning; no case is left to infer
  from commit semantics or implementation write order. Every ordinary public
  observation is Absent or Complete; uncertainty is recorded as caller knowledge.
- **SC-002**: Every selected retry/concurrency case preserves exactly one original
  lineage with zero overwrites, duplicated seed lifetimes or lost later events;
  equivalent retries recover the original creation, and conflicting requests
  cannot be reported as creation of the requested Store.
- **SC-003**: Every specified fault outcome and disclosed selected-host interruption
  window has executed conformance evidence after approval, with scope and remaining
  gaps explicit; missing evidence never counts as a proven guarantee.
- **SC-004**: Every successful or verified-recovery compatibility case preserves
  canonical genesis/Store/state/schema/hash meaning and historical record bytes.
- **SC-005**: Public consumer and required gate evidence for any eventual correction
  covers its actual revision and selected contract version; no unsupported host
  compatibility or release readiness is inferred from this draft.
- **SC-006**: Every first-party Backend has a recorded creation-conformance
  assessment. Normative contract changes, release-version implications and external
  migration requirements are documented; all shared creation scenarios have
  executed evidence, with host-specific durability assumptions and gaps explicit.

## Assumptions

- Existing [005 commit atomicity](../005-persistence-contract/spec.md) and
  [creation success contract](../005-persistence-contract/data-model.md) do not
  establish creation failure semantics. This feature makes that missing policy
  explicit; F-PERSIST-002 remains S4, not a reproduced implementation bug.
- No creation fault injection was performed by this draft. The immutable audit's
  source/authority inspection E-PERSIST-003 differs from missing fault coverage
  O-PERSIST-004. Its commit-only tests cannot close either creation obligation.
- Public use remains through supported `behavior-engine` contracts. Host storage
  layout, staging and recovery implementation are not prescribed by this spec.
- A conforming host, coherent snapshot answers and cryptographic identity premises
  remain necessary; Core cannot force a malicious Backend to be physically durable.
- Atomic absent/complete publication and identity-bound idempotent retry are
  agreed. Creation may be operationally multi-step, but semantically publication
  is atomic. Uncertainty belongs to the observer, not the Store state.
- One current Backend contract is agreed in [decisions.md](decisions.md).
  Type compatibility is not semantic conformance. Core may depend on one Backend
  semantics; backends vary in implementation, not the meaning of Store creation.
  This clarification establishes no existing host compliance or release readiness.
- The plan must identify its exact implementation base, account for completed
  remediation features 017, 018 and 022, and distinguish it from the historical
  draft source above. Concrete public API mappings, storage techniques, fault
  injection mechanisms and the release-version assessment belong to planning.
- Draft discussion/publication does not authorize choosing the law on the user's
  behalf, planning, implementation, new persisted formats or release publication.
