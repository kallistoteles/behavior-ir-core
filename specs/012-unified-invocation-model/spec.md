# Feature Specification: Unified Invocation Model

**Feature Branch**: `012-unified-invocation-model`

**Created**: 2026-10-04

**Status**: Draft

**Input**: User description (2026-10-04), refined after a survey of the core:

> Feature 012 does not generalize binding cardinality; zero and multiple state bindings already
> work. It unifies invocation semantics across all capabilities. Reads and actions SHALL use the
> same identity-based binding model, binding resolution, intent representation and failure
> recording. Capability kind determines whether evaluation returns an observation or proposes a
> transition.

Scope test for every requirement: *is this needed for reads and actions to use the same
invocation model?* If not, it is not part of 012.

Principles:

- *Capabilities are invoked uniformly; capability kind determines what evaluation may produce.*
- *Bindings identify state; they do not transport state.* More precisely: *requested bindings
  identify state; resolved bindings contain state.*
- *Every invocation produces evidence; only committed transitions produce store history.*
- *Invocation evidence describes how evaluation was reached; evaluation records describe what
  evaluation determined.*
- *A failure before evaluation must not be represented as though evaluation occurred.*
- *A binding carries the identity the caller requested, including its type; resolution
  determines whether that identity denotes state at the exact snapshot.*
- *Compatibility paths preserve old semantics; current paths define future semantics.*
  Superseded interfaces are frozen, not evolved.

## Context

What exists at Core Release 0.10.2, from a survey of the core:

- **Binding cardinality is already general.**
  - Evaluation, decision records, replay, the store and the verifier treat zero, one and several
    state bindings by the same per-parameter rules.
  - Creating actions without bindings (`hire`, `register_customer`, `start_culture`) and actions
    with two or three bindings work in every path.
  - Binding two parameters to one entity is refused (`STATE_ALIAS_NOT_ALLOWED`).
- **The only cardinality rule** is at admission: an action with no state binding and no creation
  is refused as `ARITY_MISMATCH`, "an action needs at least one state parameter or a creation".
  It is phrased as a binding requirement. It is really a question of which capabilities count as
  actions, a language-design question that 012 deliberately leaves unchanged.
- **Invocation is not uniform across capability kinds.** There are three asymmetries:
  1. **Binding resolution.**
     - A read binds a state parameter by identity. The engine resolves it at the exact state
       position, and an unknown identity gives an `INVALID_BINDING` record.
     - An action's caller supplies every bound entity in full, so state is transported, not
       identified. Through the store, a missing or unknown binding fails before any record
       exists.
  2. **Failure evidence.** A read's binding failure is recorded. An action's binding failure
     through the store leaves no record, so exactly the failures that matter most to an AI
     interface and an audit disappear.
  3. **Intents.** The store has an entry point for read intents but none for action intents, and
     an action intent still needs the host to supply full entities. Intents with zero or several
     targets are untested.

## Clarifications

### Session 2026-10-04

- Q: Is 012 about allowing zero or several state bindings? → A: No. Cardinality already works.
  012 unifies invocation semantics across reads and actions: identity-based binding, one binding
  resolution, one intent representation and recorded failures. The feature is renamed from
  "General Invocation" to "Unified Invocation Model".
- Q: Do failed invocations leave evidence? → A: Yes. Every capability invocation produces a
  record, including when binding fails (for example `suspend_customer` with `customer: Customer#42`
  gives `INVALID_BINDING`), for actions and reads alike.
- Q: Do refused invocations enter the store's history? → A: No. Store history is the sequence of
  committed state and schema transitions, not every attempt to interact with the system.
  - A committed `ALLOW` appends a transition record and advances the history position.
  - `INVALID_BINDING`, `DENY` or any other refusal returns a canonical, replayable invocation
    record. It appends nothing, and the position stays where it was.
  - A host may keep refusal records in a separate audit log. Such a log is outside the canonical
    history; an official audit facility could be a later adapter.

  Principle: *every invocation produces evidence; only committed transitions produce store
  history.*
- Q: May plain evaluation keep accepting full entity values? → A: Yes. Those values are
  already-resolved snapshot facts, not the capability-boundary representation of bindings.
  - The store and intent boundaries take a **requested invocation**, whose bindings are entity
    identities only.
  - Store resolution turns it into a **resolved invocation**, whose bindings hold the entity values
    at the exact snapshot, together with the snapshot facts.
  - Plain evaluation is a lower-level path that starts from a resolved invocation whose values and
    facts the caller supplies.

  Principle: *requested bindings identify state; resolved bindings contain state.*
- Q: Is the invocation record a new wrapper or a new version of the decision record? → A: A new
  wrapper (**envelope**), shared by reads and actions.
  - The versioned, content-addressed **invocation record** represents the capability-boundary
    event: the capability identity and kind, the requested identity bindings, the exact data
    version, the binding-resolution facts and the invocation outcome.
  - If evaluation ran, the envelope binds the existing, unchanged decision record or read record
    by its existing identity, and may embed it for transport.
  - If binding resolution failed, there is no inner evaluation record.
  - The outcome distinguishes a refusal before evaluation from evaluation (`Evaluated(record
    hash)`). Evaluation results are never flattened into the envelope. The refusal's final shape
    is set by the analysis clarification below.
  - Information duplicated between the envelope and the inner record must agree exactly; a
    contradiction makes the record invalid, and neither side wins.
  - Existing decision, read and transition records keep their formats and hashes, and store
    history keeps exactly today's transition records.
- Q: How does a binding name an entity? → A: As a structured typed identity,
  `{"entity": "Customer", "id": "42"}`. It is not a bare id, and not a `Type:id` string.
  - The requested type must exactly match the entity type the capability parameter declares.
  - A mismatch is `INVALID_BINDING` with the reason `WRONG_ENTITY_TYPE`.
  - A correctly typed identity that is absent at the snapshot is `INVALID_BINDING` with the
    existing reason `UNKNOWN_BINDING`.
  - Ids are arbitrary strings, with no separator or escaping rules.
  - A requested identity is an `Id<T>`, not a `Ref<T>`: it may name an entity that does not
    exist, and existence is decided during resolution.
  - The entity type's meaning is bound to the invocation's behavior and schema identity, which
    the invocation record names, so type names are never a global namespace.
  - The redundancy with the parameter's declared type is deliberate evidence: both must agree.
- Q: What happens to today's `targets` intent formats? → A: They stay, as superseded
  compatibility paths.
  - The unified intent (`capability`, typed `bindings`, `input`) is a new versioned document with
    its own entry point, alongside the existing `targets` formats.
  - Legacy intents keep their current semantics and byte-identical records. They MUST NOT be
    translated into unified invocations if that would create invocation envelopes or otherwise
    change their observable records.
  - They are marked **superseded**: supported for compatibility, frozen, and given no new
    invocation features.
  - All new documentation, bindings, skills and integrations use the unified format.
  - Removing them is a separate, explicitly versioned breaking change, with no removal version
    set now.
  - Conformance preserves the published legacy fixtures byte for byte (compatibility
    conformance) and tests the full unified model independently (semantic conformance).
- Q: Does 012 change which actions are admitted (an effect rule, `EFFECTLESS_ACTION`, a new
  wire IR version)? → A: No. The effect rule is a language-design question on top of the
  invocation model, not needed to make invocation uniform.
  - Admission is unchanged: decision-only actions with bindings (`check_orders`, `check_margin`,
    `check_exists`, `review`, …) stay valid, and the zero-binding, non-creating action keeps its
    `ARITY_MISMATCH` diagnostic.
  - New models and guidance recommend declared reads for new observation-only capabilities.
  - Removing decision-only actions, or renaming the rule, is a possible later feature with its
    own language version.
  - This supersedes the earlier answers in this session that introduced `EFFECTLESS_ACTION` and
    wire IR 0.8 in 012.

### Session 2026-10-04 (analysis remediation)

- Q: Is every failure before evaluation a "binding" refusal? → A: No. The outcome is either a
  **pre-evaluation refusal** or **evaluated**.
  - A pre-evaluation refusal has a stage: `DECODE`, for document problems such as a bad format,
    an unexpected key, an invalid or unknown capability, or an invalid identity; or `BINDING`,
    for identity resolution problems such as missing or extra bindings, unknown identities,
    wrong entity types and aliases.
  - Only syntactically parseable documents get an invocation record. A transport or syntax
    failure that cannot be represented canonically is outside the record contract.
  - A refusal reports every independently determinable problem, in canonical order, and never
    invents cascading problems whose checks need an earlier step that failed.
  - Principle kept: *a failure before evaluation must not be represented as though evaluation
    occurred.*
- Q: Where does the alias refusal belong in the unified path? → A: In binding resolution
  (`BINDING` stage, `STATE_ALIAS_NOT_ALLOWED`, no inner record). The legacy paths are unchanged.
- Q: Can a host resolve invocations without a store? → A: Yes, against an explicit **snapshot**:
  entity values by typed identity, the data version and the evaluation facts. It is the
  store-less counterpart of a store position. The snapshot is host evidence, never capability
  input. It must be internally consistent: overlapping entity values, universe information and
  facts may add information but must not contradict (`INCONSISTENT_FACTS`).

## User Scenarios & Testing *(mandatory)*

### User Story 1 - Actions are bound by identity, like reads (Priority: P1)

A developer or an agent invokes any capability, read or action, by naming it and giving its
state bindings as identities (none, one or several), its inputs and its context. The store
resolves every identity at one exact state position, and the engine evaluates the resolved
invocation.

`read customer_summary(customer: Customer#42)` and
`action suspend_customer(customer: Customer#42)` take the same path. If `Customer#42` does not
exist, both produce a record with a binding-stage refusal whose problem is `INVALID_BINDING`.

**Why this priority**: This removes the central asymmetry. State comes from the snapshot the
engine owns, never from the caller.

**Independent Test**: Against one store, invoke a read and an action that both bind
`Customer#42`, once when it exists and once when it does not. In both cases the two kinds bind
identically: the same resolution, and for the missing identity the same binding-stage refusal
(`INVALID_BINDING`) and record shape. No entity value was supplied by the caller.

**Acceptance Scenarios**:

1. **Given** an action with one state parameter, **When** it is invoked with an existing identity,
   **Then** the store resolves the entity at the invocation's state position and the action is
   evaluated against it.
2. **Given** an identity that does not exist, or one of another entity type, **When** a read or an
   action is invoked with it, **Then** both give a recorded `INVALID_BINDING` naming the parameter
   and the identity, with the same reason code.
3. **Given** an action with zero bindings that creates an entity, and one with two bindings,
   **When** they are invoked by identity, **Then** both are evaluated through the same model as
   the one-binding action, with no special case.
4. **Given** two state parameters bound to the same identity, **When** the capability is invoked,
   **Then** it is refused at the binding stage with the reason `STATE_ALIAS_NOT_ALLOWED`, recorded,
   with no inner record.

---

### User Story 2 - Every invocation leaves evidence (Priority: P1)

An auditor or an agent's supervisor looks at what was attempted, not only at what succeeded.
Every capability invocation yields a content-addressed record that names:
- the capability and its kind;
- the requested bindings;
- the inputs and context;
- the exact state position;
- the outcome.

This holds when binding fails too. Each record replays and gives the same outcome.

**Why this priority**: Binding failures are often the most informative events in an AI interface
(a hallucinated identity, a stale reference). Today they vanish for actions.

**Independent Test**: Invoke an action and a read with an unknown identity through the store.
Each returns a record with a binding-stage refusal whose problem is `INVALID_BINDING`. Each
record replays from itself to the same bytes. Altering the requested identity in the record is detected by replay.

**Acceptance Scenarios**:

1. **Given** an action invocation whose binding fails, **When** it is evaluated through the store,
   **Then** the caller receives a record (no error without evidence) naming the capability, its
   kind, the requested bindings, the state position and the binding-stage refusal
   `INVALID_BINDING`.
2. **Given** any invocation record, including a failed one, **When** it is replayed against the
   same state, **Then** it reproduces byte for byte. Any altered field is reported.

---

### User Story 3 - One intent model for every capability (Priority: P1)

An agent proposes a capability intent:
- the capability;
- its bindings, as a map from parameter to identity;
- its input.

The trusted host supplies the store and the context. The same intent shape and the same checks
serve reads and actions, for zero, one or many bindings. Two examples:

```json
{ "capability": "transfer",
  "bindings": { "from": { "entity": "Account", "id": "a1" },
                "to":   { "entity": "Account", "id": "a2" } },
  "input": { "amount": "20.00" } }

{ "capability": "register_customer",
  "bindings": {},
  "input": { "customer_id": "c17" } }
```

**Why this priority**: Agents reach the system only through declared capabilities. Today the
action side of that boundary is weaker than the read side. External command intents, the next
core feature, build on this door.

**Independent Test**: Through the store, send intents for actions with zero, one and two
bindings, a read intent, and intents with a missing, an extra and an unknown binding. Valid ones
are evaluated. Invalid ones report every independently determinable problem before any
evaluation, and each yields a record.
No intent can carry entity contents.

**Acceptance Scenarios**:

1. **Given** the `register_customer` intent above, **When** it is sent, **Then** it is evaluated
   against the store with no bindings.
2. **Given** the `transfer` intent above, **When** it is sent, **Then** both identities are
   resolved at one state position and the action is evaluated.
3. **Given** an intent with a missing, extra, unknown or wrongly typed binding, **When** it is
   checked, **Then** every independently determinable problem is reported (FR-008c), nothing is
   evaluated, and the pre-evaluation refusal is recorded.
4. **Given** an intent that tries to supply entity values, **When** it is checked, **Then** it is
   refused: bindings identify state; they do not transport it.

---

### User Story 4 - Cross-capability conformance (Priority: P2)

A binding author, or a later core feature, relies on conformance fixtures. These show reads and
actions with zero to three bindings invoked the same way, through plain evaluation, store
invocation and intents, with identical binding outcomes.

**Why this priority**: The unification must stay true. The fixtures make it a contract every
binding reproduces.

**Independent Test**: The conformance suite pairs a read and an action over the same bindings
for each binding outcome: resolved, unknown, wrong type, alias, missing and extra. It covers zero,
one, two and three bindings. Every pair has the same binding outcome, and every record replays.

**Acceptance Scenarios**:

1. **Given** the conformance fixtures, **When** run through every entry point, **Then** reads and
   actions agree on every binding outcome.
2. **Given** a module with actions of zero to three bindings, **When** it is verified and a
   history using all of them is replayed, **Then** verification and both replays succeed.

### Edge Cases

- **Plain evaluation without a store.** The caller enters at the resolved level: it supplies
  the resolved bindings (entity values) and the snapshot facts, as today. These are explicit
  snapshot evidence, not capability payload. Existing plain requests keep working with identical
  records (FR-004a).
- **Refusals and history.** A refused invocation leaves the store's history position unchanged.
  Ten refused attempts followed by one commit advance the history by exactly one transition.
- **An identity missing from a supplied snapshot.** It is `UNKNOWN_BINDING`, exactly as for a store.
- **An unparseable document** (not JSON). It is a transport or syntax error, not an invocation
  record. A parseable document with semantic problems (for example `"capability": 17`) gets a
  `DECODE`-stage refusal with `capability: null`.
- **The entity changes between resolution and commit.** The existing optimistic concurrency
  applies: the commit is refused as a conflict, and the invocation record remains evidence.
- **A binding failure in a read and in an action.** Same outcome, same reason code, same record
  fields. Only the capability kind differs.
- **A legacy `targets` intent after this release.** It is evaluated exactly as before, with the
  same records and no invocation envelope. New features (for example a later command intent) are
  only available through unified intents.
- **An intent naming a capability that does not exist.** It is refused and recorded, listing the
  unknown capability.
- **A capability with no state parameters.** It takes an empty binding map; any binding given to
  it is an extra binding.
- **Identity form.** A requested identity is a structured pair `{"entity": T, "id": id}`. The id
  is any string; `"lab:2026:42"` is just an id.
  - A type other than the parameter's is refused as `WRONG_ENTITY_TYPE`.
  - An unknown entity type name is refused the same way, since it cannot match.
  - A well-typed identity that does not exist at the snapshot is `UNKNOWN_BINDING`.

## Requirements *(mandatory)*

### Functional Requirements

**One invocation model**

- **FR-001**: Every capability invocation at the capability boundary, read or action, MUST be a
  **requested invocation** with the same shape:
  - the capability identity;
  - state bindings (zero or more, each a parameter name and an entity identity);
  - input;
  - context.

  It runs against one exact state position.
- **FR-002**: Resolution MUST turn a requested invocation into a **resolved invocation**:
  - the capability;
  - bindings mapped to the entity values read at that state position;
  - input and context;
  - the state position (data version);
  - the observed binding facts (which identities existed, with what type).

  Resolution MUST be the same procedure for every capability kind. Evaluation conceptually always
  starts from a resolved invocation.
- **FR-003**: The capability kind MUST determine only what evaluation may produce: a read returns
  an observation; an action proposes a transition. Nothing about binding, resolution, failure
  recording or intents may depend on the kind.
- **FR-004**: Requested bindings MUST identify state and never transport it. At the capability
  boundary (store invocation and intents), callers MUST supply identities only, and entity values
  come from the state at the invocation's position. Resolved bindings contain state.
- **FR-004a**: Plain evaluation (without a store) MUST remain available as a lower-level path. It
  starts from a resolved invocation whose entity values and snapshot facts the caller supplies
  explicitly, as snapshot evidence. Its existing request format and records MUST stay unchanged.
  It is not a capability-boundary entry point, and agents never reach it through an intent.
- **FR-004b**: A trusted host without a store MAY supply an explicit **snapshot**: entity values
  keyed by typed identity, the data version, and the evaluation facts.
  - A requested invocation or capability intent resolves against the snapshot exactly as against
    a store position, and its invocation record names the snapshot's data version.
  - The snapshot is host evidence, never capability input, and agents cannot supply it.
  - It MUST be internally consistent: overlapping entity values, universe information and facts
    may add information but MUST NOT contradict. A contradiction is reported as
    `INCONSISTENT_FACTS`, a `DECODE`-stage refusal of the invocation.

**Binding outcomes**

- **FR-005**: Every requested state binding MUST be a structured typed identity
  `{"entity": <type>, "id": <id>}`, representing an `Id<T>`: it may name an entity that does not
  exist. Resolution MUST distinguish three cases, identically for reads and actions:
  - the type matches the parameter's declared type and the entity exists at the snapshot: bound;
  - the type matches but the entity does not exist: `INVALID_BINDING` with reason
    `UNKNOWN_BINDING`;
  - the type differs from the parameter's declared type: `INVALID_BINDING` with reason
    `WRONG_ENTITY_TYPE`.

  Each refusal names the parameter, the expected type and the requested identity.
- **FR-006**: Missing bindings, extra bindings and bindings for non-state parameters MUST be
  refused at the binding stage before evaluation, reporting every independently determinable
  problem (FR-008c), identically for reads and actions.
- **FR-007**: Distinct state parameters bound to the same identity MUST be refused at the binding
  stage of the unified model, for reads and actions alike, as `INVALID_BINDING` with the reason
  `STATE_ALIAS_NOT_ALLOWED`, with no inner evaluation record. The legacy entry points keep their
  existing alias refusal unchanged (FR-013a, FR-016).

**Evidence**

- **FR-008**: Every invocation MUST yield a content-addressed **invocation record**, a new
  versioned envelope format shared by reads and actions, including invocations refused at
  binding. It holds:
  - the capability identity and kind, and the behavior and schema identity that give its entity
    types their meaning;
  - the requested identity bindings (parameter name, requested entity type, requested id), the
    input and the context;
  - the exact data version;
  - the binding-resolution facts;
  - the invocation outcome.
- **FR-008a**: The invocation outcome MUST be one of two kinds:
  - **Pre-evaluation refusal** with a stage, `DECODE` or `BINDING`, and its problems. The envelope
    then has no inner evaluation record. A failure before evaluation is never represented as
    though evaluation occurred.
  - `Evaluated(record)`: the envelope binds the decision record (actions) or read record (reads)
    that evaluation produced, by that record's existing identity. It may embed the record for
    transport. The inner record keeps its own result (for example `ALLOW`, `DENY`, `VALUE`), and
    the envelope does not repeat or flatten it.
- **FR-008b**: Information present both in the envelope and in its inner record (capability,
  data version, behavior identity, resolved bindings) MUST agree exactly. A record whose
  representations contradict each other is invalid; neither side takes precedence.
- **FR-008c**: Every semantic problem found after an invocation document has been syntactically
  parsed, but before capability evaluation, MUST produce a pre-evaluation refusal with no inner
  evaluation record.
  - The refusal distinguishes at least document-decoding failures (`DECODE`) from
    binding-resolution failures (`BINDING`).
  - It records every independently determinable problem, from the information decoded so far, in
    canonical order. It MUST NOT invent cascading problems whose checks need an earlier step
    that failed (for example, no binding checks for an unknown capability).
  - Fields that were represented as JSON but could not be decoded are kept as received, or are
    `null` when absent.
  - Transport or syntax failures that cannot produce a canonical document are outside the
    invocation record contract.
- **FR-009**: Every invocation record, successful or refused, MUST contain:
  - the requested identities;
  - the exact snapshot (data version);
  - the resolved observations needed for replay;
  - the result.

  It MUST replay byte for byte from its own contents, never by asking the current store what an
  identity is now. Any altered field MUST be reported. A record from a store invocation MUST also
  replay against the store's history at its position.
- **FR-010**: Every invocation produces evidence; only committed transitions produce store
  history.
  - A refused invocation (`INVALID_BINDING`, `DENY`, `INVALID_INPUT`, `ERROR`) returns its record
    to the caller. It MUST NOT append anything to the store's history or advance its position.
  - A committed transition appends its transition record exactly as today.
  - A host MAY persist refusal records in a separate audit log, outside the canonical history.

**Intents**

- **FR-011**: There MUST be one intent representation for every capability:
  - the capability;
  - a map from state parameter to identity (`bindings`);
  - input;
  - optional caller-visible metadata that never influences evaluation.

  The host supplies the store and the context.
- **FR-012**: The store MUST offer intent evaluation for actions, equivalent to the existing one
  for reads. Intents with zero, one and several bindings MUST work without special cases and be
  covered by conformance fixtures.
- **FR-013**: A unified intent MUST NOT be able to supply entity values, and one that tries MUST be
  refused.
- **FR-013a**: The existing `targets` intent formats (read intents, and action intents with
  host-supplied entities) MUST keep their entry points, their semantics and byte-identical
  records.
  - They MUST NOT be routed through the unified model in any way that changes their observable
    records.
  - They are documented as superseded: status, version introduced, and the unified intent as
    their replacement.
  - They are frozen and receive no new invocation features.
  - Their removal is a separate, explicitly versioned breaking change.
- **FR-013b**: New documentation, examples, skills and language bindings MUST use only the unified
  intent format.
- **FR-013c**: Conformance MUST cover two separate promises:
  - **compatibility conformance**: the published legacy intent fixtures give byte-identical
    results;
  - **semantic conformance** of the unified model, covering zero, one and N bindings, wrong type,
    unknown identity, successful resolution, read and action invocations, binding refusal,
    replay and invocation record identity.

**Admission**

- **FR-014**: This feature MUST NOT change admission. Every module keeps its admission result,
  identity and diagnostics, including decision-only actions with bindings and the `ARITY_MISMATCH`
  refusal of an action with no binding and no creation.
- **FR-015**: Documentation and guidance MUST recommend declared reads for new observation-only
  capabilities. This is guidance, not an admission rule.

**Stability**

- **FR-016**: Every existing module, request, decision record, read record, store document, hash
  vector, golden file and attestation format MUST keep its bytes and identity. New record content
  for refused invocations, and any new invocation document, MUST be new versioned formats, never
  a change to existing ones.
- **FR-017**: Canonicalization and content hashing of invocations, intents and their records MUST
  follow one rule for every capability kind.

**Interfaces and documentation**

- **FR-018**: The public engine API (`behavior-engine`) and the command-line tool MUST expose:
  - identity-based invocation;
  - capability intents for reads and actions;
  - the replay of invocation records.

  New items are explicit re-exports.
- **FR-019**: The core's principles MUST state:
  - "Capabilities are invoked uniformly; capability kind determines what evaluation may produce."
  - "Requested bindings identify state; resolved bindings contain state."
  - "Every invocation produces evidence; only committed transitions produce store history."
  - "Invocation evidence describes how evaluation was reached; evaluation records describe what
    evaluation determined."
  - "A failure before evaluation must not be represented as though evaluation occurred."

  The invocation model MUST be documented with read and action examples for zero, one and
  several bindings.
- **FR-020**: Language bindings adopt the model in a following ecosystem feature that pins the
  resulting Core Release; this feature changes no binding.

### Key Entities

- **Requested invocation**: capability identity, state bindings (0..n entity identities), input
  and context, against one exact state position. It is the same shape for reads and actions, and
  it is the only form accepted at the capability boundary (store invocation, intents).
- **Resolved invocation**: the capability, bindings mapped to entity values at the state
  position, input, context, the state position, and the observed binding facts. Store
  resolution produces it; plain evaluation starts from it.
- **Capability result**: an observation (read result) or a proposed transition (transition
  result), or a refusal at binding.
- **Invocation record**: the versioned, content-addressed envelope describing one invocation at
  the capability boundary, for reads and actions alike.
  - It holds the capability and kind, the requested identities, the data version, the binding
    facts and the outcome: a pre-evaluation refusal (`DECODE` or `BINDING`) or `Evaluated(record)`.
  - When evaluation ran, it binds the unchanged decision or read record by that record's own
    identity.
  - It replays from itself, and it never becomes store history.
- **Evaluation record**: the existing decision record (action) or read record (read). It
  describes what evaluation determined and knows nothing of the envelope. Its format and hash
  are unchanged.
- **Capability intent (unified)**: a new versioned document with the capability, the binding map
  of requested identities, the input and optional metadata. It is checked as a whole before
  evaluation, and it is the current format.
- **Legacy `targets` intent**: today's read and action intent formats. Superseded and frozen,
  they are kept with identical semantics and records for existing consumers.
- **Snapshot**: host-supplied state evidence for resolution without a store (entity values by
  typed identity, the data version, facts). It is the store-less counterpart of a store position,
  must be internally consistent, and is never capability input.
- **Requested identity**: a structured pair of entity type and id (`Id<T>`, never `Ref<T>`). It
  identifies state and never carries it. It may name an entity that does not exist, and its type
  is interpreted under the invocation's behavior and schema identity.

## Success Criteria *(mandatory)*

### Measurable Outcomes

- **SC-001**: For every binding outcome (resolved, unknown, wrong type, alias, missing, extra),
  reads and actions give the same outcome and reason in 100% of conformance cases, for zero, one,
  two and three bindings.
- **SC-002**: 100% of invocations, including those refused at binding, yield a record, and 100%
  of records replay byte for byte. An altered field is detected in every tested case.
- **SC-003**: An agent can invoke every declared capability through one intent shape without ever
  supplying an entity value, and no entry point at the capability boundary accepts entity
  contents.
- **SC-004**: Every existing module keeps its admission result, identity and diagnostics (100%).
  No admission rule changes.
- **SC-005**: Every existing fixture, golden, hash vector and attestation format keeps its bytes
  (100%).
- **SC-006**: Verification outcomes for actions with zero to three bindings are unchanged, and a
  history using all of them replays (data and behavior).
- **SC-007**: After any sequence of refused invocations, the store's history position and contents
  are unchanged in 100% of tested cases. Every refused invocation still returned a replayable
  record.

## Assumptions

- **Repository and release.** This is a core feature: it changes invocation semantics. It lives in
  behavior-ir-core and ends in a Core Release. The release is a minor bump under the core's
  policy, because it adds new document and record formats (invocation, capability intent,
  invocation record, snapshot). No wire IR version is added, and no existing document changes
  meaning. The Python binding adopts the model in an ecosystem feature (500+).
- **Plain evaluation stays, one level lower.** Requests that supply facts directly (no store) keep
  their format and records. They are resolved invocations with caller-supplied snapshot evidence.
  The identity-only rule applies at the capability boundary: store invocation and intents.
- **Cardinality needs no new semantics.** Zero to three bindings already work everywhere; the
  feature adds the conformance coverage that keeps this true.
- **Out of scope:**
  - any change to which actions are admitted (an effect rule for decision-only actions,
    `EFFECTLESS_ACTION`, a new wire IR version); possibly a later language-version feature;
  - optional state bindings;
  - dynamic binding discovery;
  - queries as bindings;
  - bulk invocation;
  - external command intents (the next core feature);
  - authorization redesign;
  - binding changes;
  - the release-hardening task (011 T079), which stays separate.
