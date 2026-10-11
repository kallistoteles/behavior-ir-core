# Feature Specification: Initial Store Creation Contract

**Feature Branch**: `019-store-creation-contract`

**Created**: 2026-10-11

**Status**: Draft — initial outcome law awaits joint clarification; no plan or code

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
   complete seed, position-zero head and coherent required views, under the agreed
   visibility/durability law.
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

**Independent Test**: After the outcome law is accepted, exercise its named
before-publication, during-private-write, after-durable-publication/before-ack and
restart observation cases. Check each visible result against the law, including
uncertain observation when recovery reads themselves fail. These are prospective
acceptance cases, not executed evidence of a current defect.

**Acceptance Scenarios**:

1. **Given** a legal initialization attempt that fails or is interrupted, **When**
   its result and subsequent reopen observations are examined, **Then** each outcome
   is one explicitly allowed by the selected creation law, with no invented rollback
   or success conclusion.
2. **Given** a complete initialization persisted but its acknowledgment was lost,
   **When** the host resolves the outcome, **Then** the exact existing lineage can
   be recognized without publishing a second genesis or resetting the head.
3. **Given** required recovery reads also fail, **When** the caller lacks evidence
   of either completion or absence, **Then** the outcome remains unresolved under
   the agreed failure model; an unavailable check cannot count as proof of absence.
4. **Given** incomplete initialization material, **When** an ordinary Store is
   opened or evaluated, **Then** that material cannot be treated as a complete
   authoritative Store. Any permitted staged recovery must follow the chosen law.

---

### User Story 3 - Retry without replacing a lineage (Priority: P2)

As a host integrator, I can follow an explicit retry/reopen procedure after an
uncertain attempt without duplicating initialization or confusing current live
state with the original creation identity.

**Why this priority**: Safe recovery depends on an exact operation identity and
non-overwrite guarantee, not only physical write atomicity.

**Independent Test**: Once the retry policy is chosen, exercise identical and
conflicting requests, an already-initialized Store whose history has advanced,
and competing initializers. Check original genesis/seed/history preservation and
the required refusal, recovery or idempotent outcome for each case.

**Acceptance Scenarios**:

1. **Given** repeated copies of the same initialization request after uncertainty,
   **When** the accepted retry procedure runs, **Then** it establishes at most one
   authoritative lineage and returns the agreed outcome without replacing data.
2. **Given** a different initialization request targeting an already-created Store,
   **When** it is retried or reopened, **Then** it cannot be mistaken for successful
   creation of the requested lineage merely because current live content matches.
3. **Given** the original initialization completed and ordinary history subsequently
   advanced, **When** creation recovery runs, **Then** it preserves that history and
   never resets the Store to position zero.
4. **Given** competing requests at one target, **When** initialization resolves,
   **Then** no observer sees a mixed genesis/seed/head assembled from two requests.

### Edge Cases

- An empty seed still requires an exact schema, policy/genesis and correct head;
  equal empty StateIds do not establish equal Store lineage.
- Seed reference indexes are derived views, not separate semantic authority. They
  must answer coherently or be reconstructed before required use.
- An error before publication, a post-publication lost acknowledgment, and a process
  crash with no response are different observations, not synonyms for rollback.
- Partial physical staging is not automatically a partial semantic Store; whether
  staging/recovery is permitted remains a contract choice.
- Reopening after uncertainty may observe an already-advanced Store. Compare the
  original initialization identity rather than requiring current state equal seed.
- A foreign genesis/policy/schema or missing seed material must not be accepted as
  the requested initialization merely because a digest or one field matches.
- Required operational checks may fail again; this cannot prove successful recovery.
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
- **FR-004**: Successful completion MUST establish the selected durability/visibility
  guarantee for the complete initial product, and no incomplete material may be
  used as an authoritative ordinary Store. Derived indexes/materializations remain
  reconstructible acceleration, never independent semantic truth.
- **FR-005**: Before planning, the permitted observable post-error/crash outcomes
  MUST be chosen: [NEEDS CLARIFICATION: must creation atomically expose only an
  absent or complete Store while acknowledgment can be uncertain, or may it expose
  a separately identifiable recoverable initialization state that cannot be used
  as an ordinary Store?]. See D019-01 in [decisions.md](decisions.md).
- **FR-006**: The chosen law MUST specify success, known failure, lost acknowledgment,
  interruption, unavailable recovery reads and reopen evidence separately. It MUST
  say whether each response establishes absence, completion or uncertainty, rather
  than deriving a creation law from the existing atomic-commit contract.
- **FR-007**: The required retry/reopen policy MUST be chosen before planning:
  [NEEDS CLARIFICATION: should an already-created target refuse repeated creation
  and require explicit identity-checked reopen, or should identical creation
  requests return an idempotent success/recovery outcome?]. See D019-02.
- **FR-008**: Whichever retry policy is selected MUST preserve one immutable lineage,
  refuse conflicting requests, recognize the exact original initialization
  product when required, and preserve any subsequently committed history. It MUST
  NOT reset state/head, duplicate seed lifetimes or mix competing requests.
- **FR-009**: Recovery MUST distinguish immutable creation identity from current
  live StateId, head position and historical ever-used state. Recovery evidence
  MUST be bound to the expected target/lineage and its canonical initialization,
  under stated Backend/cryptographic trust premises.
- **FR-010**: Validation materialization MUST NOT become reusable merely because
  creation was attempted or returned an uncertain error. It may be established only
  from acknowledged complete creation or equivalent verified recovery evidence,
  bound to exact state/history/schema/behavior; an initial certificate cannot
  stand for an advanced current head.
- **FR-011**: Adoption/compatibility MUST be decided before planning:
  [NEEDS CLARIFICATION: will the clarified creation law bind all implementations
  of the existing Backend contract, or require an explicitly versioned persistence
  contract while retaining older implementations' stated limits?]. See D019-03.
- **FR-012**: The approved contract MUST identify caller and Backend obligations,
  observable result/error distinctions, concurrency/reopen requirements, public
  consumer implications and versioning consequences. Existing historical genesis,
  schemas, records and hashes MUST NOT be rewritten.
- **FR-013**: O-PERSIST-012 outcome specification and O-PERSIST-004 empirical fault
  coverage MUST remain separate. No fault test may be claimed to prove an undefined
  law; no written law alone may be claimed as executed physical durability evidence.
- **FR-014**: After clarification and before implementation, future acceptance
  evidence MUST exercise every specified outcome category, identical/conflicting
  retries, competing initializers, empty/nonempty seeds and complete reopen checks,
  including the selected Backend's disclosed interruption windows. No failure or
  skip is a pass. Core's test-first requirement applies to subsequent code changes.
- **FR-015**: Backend conformance and eventual public consumer evidence MUST state
  what they actually establish and their OS/storage/host assumptions. No finite
  corpus proves arbitrary adversarial Backend durability or all physical windows.
- **FR-016**: This feature MUST introduce no Behavior syntax, Wire IR meaning,
  entity-lifecycle rule, hash change, general storage engine or performance target.
  Draft specification publication approves no planning, code, tagging or release.

### Key Entities *(include if feature involves data)*

- **Initialization request**: Exact existing genesis/policy/schema and validated
  seed product intended for one Store target.
- **Complete initial Store**: Coherent authoritative genesis, position-zero state,
  seed lifetimes/head and required views under the chosen durability contract.
- **Creation outcome law**: Relation between request, response/interruption and
  subsequent observations; distinguishes completion, absence and uncertainty.
- **Recovery evidence**: Applicable exact-lineage observations used to resolve an
  uncertain attempt without confusing original identity with current state.
- **Retry policy**: Agreed handling of identical/conflicting requests and already
  completed initialization; preserves immutable lineage and later history.
- **Host conformance evidence**: Scoped observations supporting the selected
  persistence law, distinct from the law and from assumptions about other hosts.

## Success Criteria *(mandatory)*

### Measurable Outcomes

- **SC-001**: Every named creation response/interruption/reopen category has exactly
  specified allowed observations and certainty meaning; no case is left to infer
  from commit semantics or implementation write order.
- **SC-002**: Every selected retry/concurrency case preserves exactly one original
  lineage with zero overwrites, duplicated seed lifetimes or lost later events;
  conflicting requests cannot be reported as creation of the requested Store.
- **SC-003**: Every specified fault outcome and disclosed selected-host interruption
  window has executed conformance evidence after approval, with scope and remaining
  gaps explicit; missing evidence never counts as a proven guarantee.
- **SC-004**: Every successful or verified-recovery compatibility case preserves
  canonical genesis/Store/state/schema/hash meaning and historical record bytes.
- **SC-005**: Public consumer and required gate evidence for any eventual correction
  covers its actual revision and selected contract version; no unsupported host
  compatibility or release readiness is inferred from this draft.

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
- Provisionally prefer atomic absent/complete visibility with possible uncertain
  acknowledgment, already-created refusal plus verified reopen, and an explicit
  strengthening of the existing contract with consumer compatibility assessment.
  All three recommendations remain unaccepted choices in [decisions.md](decisions.md).
- Draft discussion/publication does not authorize choosing the law on the user's
  behalf, planning, implementation, new persisted formats or release publication.
