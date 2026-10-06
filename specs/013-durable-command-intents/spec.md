# Feature Specification: Durable Command Intents

**Feature Branch**: `013-durable-command-intents`

**Created**: 2026-10-05

**Status**: Draft

**Input**: User description dated 2026-10-05: Behavior Core must express an external request
as immutable, typed data produced by deterministic evaluation and made durable atomically
with a committed transition. External adapters execute requests only after commit. Core
creates and commits command intents; it never executes their external effects.

## Context

An application that commits an order and separately sends a confirmation has a failure
window: the order may commit without the confirmation being requested durably, or the
confirmation may be sent even though the order commit fails. The project needs a durable
boundary between deterministic transitions and external execution.

The existing kernel provides typed state, deterministic evaluation, verification,
persistence and replay, entity lifecycle, relational queries, schema migrations and
first-class reads. Core feature [012](../012-unified-invocation-model/spec.md) specifies the
unified capability invocation model on which this feature builds.

The semantic model is defined before its representation or evaluation strategy:

| Concept | Mathematical model |
| --- | --- |
| CommandDeclaration | Typed product definition. |
| CommandIntent | Immutable typed value. |
| CommandEmission | Product of declaration identity, guard expression and typed payload expressions. |
| An action's command effects | Finite multiset of CommandEmission definitions, preserving multiplicity. |
| Produced commands `K` | Finite multiset: membership and multiplicity matter; order does not. |
| State delta `ΔS` | Finite state-transformation description. |
| Transition result | Product of state delta, command multiset and evaluation evidence. |
| History | Ordered sequence of committed transitions; its order is semantic. |
| Canonical commit record | One committed history event, binding position, parent history and exact transition. |
| CommandOccurrence | An intent occurrence within that exact committed event, distinguished by multiplicity index. |
| TrustedAuthorization | A policy-indexed relation between authenticated authority, authorization content, exact candidate transition and explicit policy/commit context. |

In the new IR version, the command-emission component of an action is an unordered
multiset by definition, not a sequence later judged to be independent. Conceptually:

```text
Action = (Preconditions, StateEffects, CommandEffects, Postconditions)
CommandEffects : Multiset<CommandEmission>
CommandEmission = (CommandDeclarationId, GuardExpression, PayloadExpressions)
```

Each emission retains its semantic declaration, guard and typed payload expressions.
Canonicalization preserves duplicate definitions and derives their representation and
evaluation order from their semantic identities; it requires no analysis of arbitrary
program independence. This definition does not change the existing meaning of the other
action components. Definition identity and produced intent identity are distinct: a false
guard contributes no intent to `K` but remains part of its emission definition.

An action evaluation produces the transition result or an evaluation failure. Conceptually:

```text
T : S × I × C → Result(ΔS, K, Trace)
S' = apply(S, ΔS)
```

Here `S` is the exact evaluated snapshot, with its explicit facts; `I` is input; `C` is
context; and `K` is an unordered multiset of candidate command intents. Multiplicity is
preserved; emission order is not command sequencing. Commands do not modify `S'`.
Commit makes the state transition and its intents durable as one semantic transition.

For successful guarded emissions, the command algebra is:

```text
emit(g, k) = {k}  when g is true
           = ∅    when g is false
K = K₁ ⊎ K₂ ⊎ ... ⊎ Kₙ
{A, B} = {B, A}
{A, A, B} = {B, A, A}
{A, A, B} ≠ {A, B}
```

`⊎` is multiset union, which adds multiplicities without assigning a sequence. The value
`k` is constructed only after a true guard; a false guard does not evaluate its payload.
Guard and payload failures follow FR-009 rather than being converted into empty contributions.

Three notions of order are separate:

1. **Evaluation order** is operational: in the new IR version, command emissions are
   evaluated in canonical order derived from their semantic identities, with each guard
   evaluated before its payload. Error selection and semantic trace/observations follow
   this same order rather than source or incoming serialization order.
2. **Semantic command collection** is a finite unordered multiset; it promises no sequencing.
3. **Dispatch order** belongs to external adapters/infrastructure; core guarantees none.

Canonical serialization represents this multiset deterministically; it does not give the
commands a semantic order. Committed occurrences are derived after commitment, conceptually:

```text
CommitRecordHash = H(commit_record_domain_version, CanonicalCommitRecord)
CommandOccurrenceId = H(occurrence_domain_version, StoreId, CommitRecordHash,
                        CommandIntentHash, MultiplicityIndex)
MultiplicityIndex ∈ {0, ..., count(CommandIntentHash in that commit) - 1}
```

The canonical commit record binds the exact transition, its history position and its parent
record/history. Position remains enumeration/evidence data; it is not a separate input to
occurrence hashing because `CommitRecordHash` already binds it. The genesis-derived `StoreId`
identifies the store lineage, not a unique replica or a guarantee of one unforked history.

These indices distinguish equal committed values, not source emissions or execution steps.
Intent identity answers what was requested; occurrence identity answers which committed
occurrence requested it. The hash dependency is acyclic:

```text
CommandIntent → CanonicalCommitRecord → CommitRecordHash → CommandOccurrenceId
```

No occurrence ID is contained in, or contributes to the semantic hash of, its canonical commit
record. Copies of the same canonical history agree on occurrence identity. Different commits
at the same position after the same genesis, including histories converging on the same
`StateId`, remain distinct. Replica identifiers, backend identity and local configuration
are not inputs.

```text
capability invocation → evaluation → proposed ΔS and command intents
                                  → atomic commit → state and durable history
                                                  → committed command occurrences
                                                  → external adapter → outside world
                                                                     → explicit later invocation
```

A command says what Behavior requested. It never says the external effect succeeded.

Trusted authorization is a general governance prerequisite, not a command-specific operation.
For an evidence policy `P`, authorization `A`, exact candidate transition `T` and independently
supplied explicit policy/commit context `Q`:

```text
TrustedAuthorization(P, A, T, Q) iff
    ValidSignature(A.signature, A.content.issuer, AuthorizationHash(A.content))
    AND A.content.issuer ∈ TrustedAuthorities(P, Q.policy_time)
    AND A.content.decision = ALLOW
    AND BindsExactly(A.content, T, StoreId, EvaluatedStateAndHistoryHead, ContextHash(Q), Hash(P))
    AND RequiredEvidenceSatisfied(P, A.content.evidence, Q)

Q = (policy_time, requested_commit_time or null, policy-declared typed required_context)
ContextHash(Q) = H("behavior.authorization_context.v2", CanonicalAuthorizationContext(Q))

AuthorizationHash = H(authorization_domain_version, CanonicalAuthorizationContent)
Signature = sign(AuthorizationHash)

AuthorizationRequired(P) ⇒ commit requires TrustedAuthorization(P, A, T, Q)
```

Authorization content binds issuer identity, exact candidate transition identity, store,
evaluated state/history head, the exact governing evidence policy, and any context, execution
policy, verification status/profile or conditions required by that policy. The candidate
transition identity binds its state delta, complete canonical command-intent multiset
including multiplicity, behavior version and semantically relevant evaluation evidence.
The evaluated history head includes state identity, position and canonical head-record identity,
not StateId alone. Candidate transition identity is fixed before governance authorization and
MUST NOT depend on that authorization, its own eventual committed record hash or its own
derived occurrence IDs. This keeps authorization and subsequent commit hashing acyclic.
Signatures are outside authorization content hashing; content identity and cryptographic
attestation remain separate. A self-hash supplies identity, not authority. A policy that
requires no authorization remains valid and permits commit without authorization, subject
to the ordinary commit checks. Required authorization cannot fall back to structural validity.

Authorization archives full `Q`. All trust-role intervals and waiver expiry use `Q.policy_time`;
`authorized_at` equals that value. Policy-bound requested commit time equals actual bundle
commit time; otherwise it is null. Live commit compares signed `Q` with independently supplied
host context rather than copying it from the authorization. Replay uses the archived compared
context. Invocation input/context/facts remain bound by the candidate. Neither policy time
nor commit time proves real-world freshness or depends on the current clock.

### Identity equivalence in Wire 0.8

`≡₀.₈` is the equivalence relation generated by the declared normalization laws: permutation
of command-emission bags and command-product fields, omitted guard versus literal true,
normalization of bound query/projection variables, resolution of equal dependency aliases,
and removal of diagnostic provenance. Multiplicity, public names, types, guards/payload
expressions and the existing ordering of other action components remain semantic. Alias
normalization applies to equivalent references, not removal/renaming of module declarations.

```text
x ≡₀.₈ y  iff  CanonicalSemanticForm(x) = CanonicalSemanticForm(y)
x ≡₀.₈ y  implies  equal semantic identity hashes
```

CanonicalSemanticForm is the normalized admitted semantic structure, before hashing, not the
source document or arbitrary denotational equivalence of programs. Equal output on one
invocation does not establish identity equivalence. Conclusions from hash equality rely on
the declared collision-resistance assumption; differing validated content under equal hashes
is refused. These laws do not reinterpret prior IR versions.

## Principles

- Evaluation may request external work; it never performs external-effect I/O.
- Commit makes a command durable, not successful.
- State changes and their command intents commit atomically.
- Replay reproduces intents; replay never repeats external effects.
- External results re-enter Behavior as explicit later input.
- Behavior specifies what is requested; adapters decide how it is executed.
- Exactly-once intent commitment is possible; exactly-once external execution is not claimed.
- A policy requirement for authorization means trusted authorization, not merely a valid document.
- Integrity proves what a document says; authentication proves who stands behind it;
  authorization requires both identity and policy.
- A hash can establish identity, never authority.
- History is the durable outbox.
- Occurrence identity follows committed history identity, not history position alone.
- Replicas of the same semantic history MUST agree on identities; divergent committed events
  MUST NOT collapse to one occurrence identity.
- `CommandOccurrenceId` is derived from a committed record and MUST NOT contribute to that
  record's semantic hash; the hash dependency graph is acyclic.
- A guard controls whether an effect exists; it does not control whether the transition exists.
- Command intents describe requested external effects, not an execution sequence.
- Ordering is semantic only when the language promises sequencing. Command intents promise none.
- Evaluation order is operational; command membership is semantic; delivery order is external.
- Canonical order does not create semantic order.
- Never encode incidental representation structure as semantic structure.
- Equivalence under an IR version's explicitly declared semantic normalization laws MUST
  imply identity equivalence wherever a hash claims to represent that semantic identity.
- In the new IR version, modules with the same `BehaviorHash`, evaluated for the same
  capability, state, input, context and facts, MUST have indistinguishable Core-observable
  semantic results, including semantic evidence and replay outcomes. Source provenance is
  diagnostic metadata and MUST NOT distinguish those results.

## Clarifications

### Initial design decisions — 2026-10-05

- **Command-only actions are transitions.** An action can emit a command without changing
  entity state. In the new IR version, a command-emission effect counts for action admission,
  including an action with zero state bindings. An action with neither possible state
  effects nor possible command effects is `EFFECTLESS_ACTION`. Older IR admission is frozen.
- **State identity and history remain separate.** A command-only commit advances history
  and the record chain while keeping `StateId`, entity revisions and the entity universe
  unchanged. History position identifies what happened; `StateId` identifies state content.
- **Execution belongs to adapters.** Core introduces no external executor, hidden callback
  or continuation. Existing storage-backend operations remain necessary for durability;
  they are not permission to dispatch a command during commit.
- **Delivery may repeat.** Every committed occurrence has a stable identity suitable for
  an idempotency key. Adapter retries and operational checkpoints are outside core semantics.
- **Results are later input.** An external response may inform another explicit invocation.
  It cannot rewrite the original transition or automatically mutate Behavior state.
- **Version assumptions follow current 012.** Its specification explicitly leaves Wire IR
  0.7 and action admission unchanged. Therefore the next available Wire IR version for 013
  is provisionally 0.8, rather than assuming that 012 introduced 0.8. Release and format
  numbers must be checked against the actual predecessor when planning this feature.

### Session 2026-10-05

- Q: May an action conditionally emit a command without refusing the rest of the transition?
  → A: Yes (A). An optional Boolean command guard is evaluated before any payload expression.
  False means no payload evaluation, no payload-only observations and no intent; other effects
  are unaffected. True requires successful payload construction and produces exactly one
  intent. A guard or payload evaluation error fails the action. Verification uses the same
  short-circuit semantics and checks payload safety only where the guard is true.
- Q: Do commands within a transition retain emission order or form an unordered collection?
  → A: B. They form an unordered multiset: order has no command semantics and multiplicity
  is preserved. Canonical serialization, hashing, replay and enumeration order intents by
  semantic content. Duplicate intent hashes use a canonical multiplicity index, never a
  source-code position. Evaluation order, semantic command order and external execution
  order are distinct; no sequencing or delivery-order promise is introduced. This is a finite
  mathematical multiset composed by multiset union. Canonical order is representation only.
  Occurrence IDs are derived commit-anchored identities outside intent and commit-record
  hashes; the exact commit-record binding is clarified below without a circular dependency.
- Q: Must reordering command emissions also preserve the action identity and module BehaviorHash?
  → A: Yes (A). In the new IR, an action's command effects are a finite unordered multiset
  of declaration/guard/payload-expression definitions, preserving multiplicity. Reordering
  them changes neither action identity nor BehaviorHash. Canonical semantic identity determines
  hashing, serialization and command-emission evaluation order, including error selection,
  observations and semantic trace/replay evidence; source order cannot distinguish equivalent
  collections. No arbitrary independence analysis is required. Earlier IR versions retain
  their identity and evaluation rules. Equivalence under the declared ≡₀.₈ normalization laws
  implies semantic identity equivalence; equal BehaviorHash with identical evaluation inputs cannot yield different
  Core-observable semantic results.
- Q: Must command occurrence IDs distinguish different commits at the same position in copies of one store?
  → A: B. Derive each occurrence ID from a versioned domain, StoreId, canonical CommitRecordHash,
  CommandIntentHash and the multiplicity index among equal intents in that commit. The commit
  record binds position, parent history and exact transition and contains no occurrence IDs;
  occurrence IDs never contribute to its semantic hash. Position remains evidence/enumeration
  data, not a separate occurrence-hash input. Copies of the same canonical committed history
  reproduce identical IDs; divergent commits from the same genesis and position produce
  different IDs, including when their resulting StateIds agree. No replica, backend or local
  identity is introduced.
- Q: Must required authorization establish trusted governance rather than structural validity alone?
  → A: B. General governance hardening is a prerequisite to 013. When the exact evidence
  policy requires authorization, commit requires a cryptographically valid authorization
  from an authority trusted by that policy, bound to the exact transition, store, evaluated
  state/history head and policy-required context/evidence. Transition identity includes the
  full canonical command multiset and its multiplicity. A self-authored, self-hashed or
  structurally valid but untrusted ALLOW is insufficient. Signatures attest the authorization
  content hash and remain outside it. Policies requiring no authorization remain valid.
  The same mechanism governs state-only and command-producing transitions; no separate
  command authorization is introduced.

## User Scenarios & Testing *(mandatory)*

### User Story 1 - Commit state and an external request atomically (Priority: P1)

An order submission changes its status to `SUBMITTED` and requests a confirmation message.
The application needs both to belong to one committed transition, even if its process
crashes immediately afterwards.

**Why this priority**: Eliminating the failure window between state commitment and a durable
external request is the feature's central value.

**Independent Test**: Evaluate one state change and one command. Check that neither proposed
result is committed before commit, both become durable at one position after success, and
an aborted commit exposes neither. Reopen a durable store after successful commit and
discover the same command.

**Acceptance Scenarios**:

1. **Given** a successful evaluation that changes state and emits a command, **When** commit
   has not occurred, **Then** the command is a candidate only and is absent from the committed
   command stream.
2. **Given** that candidate transition, **When** commit succeeds, **Then** the state change and
   command are durable atomically at the same new history position.
3. **Given** that candidate transition, **When** commit is refused for conflict or evidence
   failure, or the backend aborts the atomic write, **Then** neither proposed result becomes
   committed.
4. **Given** a successful durable commit followed immediately by process failure, **When**
   another process opens the store, **Then** it can discover the committed command.
5. **Given** an order submission with a guarded confirmation and notifications disabled,
   **When** its preconditions and remaining effects succeed, **Then** the order transition
   can commit with no confirmation intent; the false command guard does not refuse it.

---

### User Story 2 - Commit a command without changing state (Priority: P1)

An application requests a receipt, notification or report export without needing to change
a Behavior entity. This is a legitimate transition capability, including when it has no
state bindings.

**Why this priority**: Requiring artificial entity changes would confuse external requests
with state identity and prevent genuine command-only capabilities.

**Independent Test**: Admit and commit a zero-state-binding action that emits one command.
History advances by exactly one position, `StateId` and every entity revision remain
unchanged, and the committed record contains exactly one occurrence.

**Acceptance Scenarios**:

1. **Given** an action with one possible command effect and no state effects or state bindings,
   **When** admitted under the new IR version, **Then** it is valid and is refused by neither
   `EFFECTLESS_ACTION` nor the legacy zero-binding admission rule.
2. **Given** a successful command-only evaluation, **When** it commits, **Then** history and
   the record chain advance while state identity, revisions and entity universe stay unchanged.
3. **Given** an action with neither possible state effects nor possible command effects,
   **When** admitted under the new IR version, **Then** it is refused as `EFFECTLESS_ACTION`.
4. **Given** a legacy module, including a decision-only action that its version admits,
   **When** admitted or executed, **Then** its historical semantics and diagnostics remain
   unchanged.
5. **Given** two candidates evaluated at one history head, **When** the first command-only
   transition commits, **Then** the second cannot commit as a fresh transition against that
   stale head merely because `StateId` is unchanged.

---

### User Story 3 - Discover committed commands safely (Priority: P1)

A trusted adapter reads committed history and executes external requests. It may crash
before or after an external service accepts a request, so it needs a stable identity when
retrying observation or delivery.

**Why this priority**: Durable discovery and stable occurrence identity let hosts recover
without treating identical intentional requests as the same occurrence.

**Independent Test**: Read one committed command twice, recover an idempotent resubmission
of its transition, and compare occurrence identities. Then intentionally commit the same
payload again and confirm a different identity. Emit two identical commands in one
transition and confirm two distinct occurrences. Compare collections `[A, A, B]`,
`[B, A, A]` and `[A, B]`: the first two have identical canonical command collections;
the last has different multiplicity. Also permute the same emission definitions, including
guards and payload expressions: action identity, `BehaviorHash` and complete semantic
evaluation evidence remain identical for the same state, input, context and facts. Copy the
same canonical committed history to another conforming backend and compare occurrence IDs;
then fork the same genesis and parent at one position with different transitions requesting
the same intent, including equal resulting StateIds, and confirm distinct occurrence IDs.

**Acceptance Scenarios**:

1. **Given** a committed command, **When** enumerated repeatedly, **Then** its
   `CommandOccurrenceId` is identical each time.
2. **Given** a commit whose success response was lost, **When** the existing transition is
   recovered or idempotently resubmitted, **Then** the same occurrences are exposed and no
   second transition is appended.
3. **Given** two intentional commits with identical declaration and payload at different
   positions, **When** enumerated, **Then** their intent hashes match and their occurrence
   identities differ.
4. **Given** two identical commands in one transition, **When** committed, **Then** their
   multiplicity is preserved and their occurrence identities differ.
5. **Given** an adapter retry, **When** constructing an external request, **Then** it can use
   the committed occurrence identity as an idempotency key without core claiming exactly-once
   execution.
6. **Given** the same multiset of command-emission definitions in different source orders,
   **When** admitted and evaluated under the new IR with identical state, input, context and
   facts, **Then** action identity, `BehaviorHash`, canonical intent bytes and all semantic
   evaluation evidence match; removing a duplicate changes definition identity and changes
   the emitted multiset whenever that emission's guard is true.
7. **Given** two identical intents in one transition, **When** occurrence identities are
   derived, **Then** distinct multiplicity indices within their shared intent hash distinguish
   them without recording which identical source emission produced which index.
8. **Given** emission definitions differing in command declaration, guard or payload expression,
   **When** their semantic content differs under the new IR identity rules, **Then** they are
   distinct definitions even if one invocation happens to produce the same intent collection.
9. **Given** copies of the same canonical committed history on different conforming backends,
   **When** enumerated, **Then** their commit hashes and command occurrence IDs agree regardless
   of replica or backend identity.
10. **Given** divergent commits from the same genesis at the same position producing the same
    intent hash and multiplicity index, **When** occurrences are derived, **Then** different
    commit record hashes yield different occurrence IDs, even if both resulting StateIds agree.

---

### User Story 4 - Replay without repeating the outside world (Priority: P1)

An auditor needs to reproduce the requests made by an old transition without sending
another message, charging another payment or otherwise repeating an external effect.

**Why this priority**: Replay must remain safe and reproduce evidence independently of
external systems and adapter availability.

**Independent Test**: Commit a command-producing action and replay its data and Behavior.
Compare canonical command intents byte for byte. Observe an external-execution boundary
that fails the test if called; neither replay path calls it. Alter commands in recorded
evidence and confirm replay divergence.

**Acceptance Scenarios**:

1. **Given** a command-producing transition, **When** Behavior replay occurs, **Then** it
   reproduces the same declaration identities, typed payloads and multiplicity as a canonical
   multiset; changing only its presentation order does not change the requested external work.
2. **Given** a record with an altered declaration, payload, count or occurrence semantics,
   **When** replayed, **Then** replay reports a mismatch.
3. **Given** data replay, Behavior replay, verification or counterfactual evaluation,
   **When** commands are encountered or produced as evidence, **Then** no command is executed,
   queued or dispatched and no external executor is called.
4. **Given** a legacy command-free transition, **When** replayed, **Then** its existing bytes,
   identities and outcomes remain unchanged.
5. **Given** a permutation of the same new-version command-emission definitions with different
   source provenance, **When** evaluated and replayed with identical explicit inputs and
   evidence, **Then** semantic trace, observations, identities and replay results are identical;
   diagnostic source metadata does not participate in semantic evidence equality.
6. **Given** the same canonical committed history restored on another conforming backend,
   **When** data replay validates its record chain and occurrences are enumerated, **Then**
   commit record hashes and derived occurrence IDs are reproduced exactly without replica data.

---

### User Story 5 - Receive an external result explicitly (Priority: P2)

An adapter obtains a payment authorization or failure from an external service. The host
submits that result as explicit input to a later capability, with any business correlation
represented as ordinary domain data.

**Why this priority**: Applications can incorporate results while keeping transitions
immutable and avoiding hidden workflow semantics.

**Independent Test**: Commit a payment command, simulate success and failure outside core,
then submit each as input to a later action. Replay the original transition without either
external response and obtain its original evidence.

**Acceptance Scenarios**:

1. **Given** an external response, **When** the adapter receives it, **Then** the original
   command intent and producing transition remain unchanged.
2. **Given** that response and no later invocation, **When** the store is observed, **Then**
   neither state nor history changes automatically.
3. **Given** a later capability accepting a result, **When** the host explicitly invokes it,
   **Then** ordinary admission, evaluation and commit rules govern any resulting transition.
4. **Given** business correlation between a request and result, **When** Behavior uses it,
   **Then** it is explicit supplied or stored domain data, not hidden adapter state.

---

### User Story 6 - Verify command-producing Behavior (Priority: P2)

A behavior author computes a command payload from state, input, context and facts. Those
computations need the same type and evaluation-safety guarantees as ordinary expressions.

**Why this priority**: Requesting external work must not create an unchecked computation
path or imply a proof about systems outside Behavior.

**Independent Test**: Verify actions with safe payload expressions and reachable division
by zero, overflow or invalid narrowing. Confirm findings for unsafe computations and apply
the store's evidence policy at commit, without modeling external delivery. Under a policy
requiring authorization, accept a correctly signed, policy-compliant authorization from a
trusted authority; refuse an untrusted/self-hashed ALLOW, invalid signature, wrong store,
evaluated history head, policy or required evidence/profile, and a changed command declaration,
payload or multiplicity. Every refusal leaves state/history and committed commands unchanged.
A policy requiring no authorization can commit without an authorization.

**Acceptance Scenarios**:

1. **Given** a command payload expression, **When** admitted and evaluated, **Then** normal
   typing, exact arithmetic and explicit conversion semantics apply.
2. **Given** a reachable payload evaluation error, **When** verified, **Then** it is reported
   under the same evaluation-safety contract as an ordinary expression.
3. **Given** a proven command-producing action, **When** its verification is interpreted,
   **Then** the proof makes no claim that an adapter, service or device accepts or executes
   the request.
4. **Given** a store policy requiring authorization, **When** a command-producing transition
   is committed, **Then** cryptographic provenance, trusted issuer, exact transition/store/
   evaluated history head, governing policy and policy-required evidence are validated;
   authorization covers the complete canonical command multiset and altered commands are refused.
5. **Given** a payload `income / cost` guarded by `cost != 0`, **When** `cost` is zero,
   **Then** evaluation observes `cost`, does not evaluate the payload, does not observe
   `income` if it is used only there, emits no intent and reports no division-by-zero error.
6. **Given** a true command guard and a payload evaluation failure, **When** the action runs,
   **Then** the action evaluation fails; it cannot ignore the error and continue by omitting
   that command.
7. **Given** a payload error possible only while its guard is false, **When** verified,
   **Then** that payload error is unreachable; a reachable combination of a true guard and
   a payload error is a verification finding. Guard evaluation errors are checked normally.
8. **Given** two command emissions whose true guards lead to different payload errors,
   **When** their source order is reversed with all semantic inputs unchanged, **Then** the
   same canonical emission is evaluated first, the selected error and semantic trace/
   observations are identical, and verification uses the same evaluation-path semantics.
9. **Given** a policy requiring authorization and an ALLOW document with a correct content hash,
   **When** its signature is invalid/missing or its issuer is not trusted by that exact policy,
   **Then** commit is refused with zero state/history changes and zero committed occurrences.
10. **Given** a trusted signed authorization, **When** its store, exact parent/history head,
    governing policy, required context/evidence/profile or candidate transition differs,
    **Then** commit is refused, including a changed command type, payload or multiplicity.
11. **Given** a policy requiring no authorization, **When** ordinary commit checks succeed,
    **Then** state-only and command-producing transitions can commit without authorization.
12. **Given** the same canonical authorization content with different signature bytes,
    **When** content identity is computed, **Then** AuthorizationHash is unchanged while
    signature validity is checked separately; changing authenticated content changes its identity.

### Edge Cases

- Evaluation succeeds but commit conflicts: no command becomes visible as committed.
  Re-evaluation at the new head may produce different commands.
- The atomic backend write aborts: neither state/history nor commands become durable.
  A response lost after the atomic write is an ambiguous acknowledgment, not proof of failure;
  recovery inspects history and preserves the existing idempotency semantics.
- Two identical payloads in one transition remain two occurrences. Identical payloads at
  successive positions are distinct occurrences too. `[A, A, B]` and `[B, A, A]` represent
  the same command multiset; `[A, B]` does not. Identical source emissions have no separate
  domain identity: any business distinction must be explicit in the declaration or payload.
- A required authorization is self-hashed but has no valid signature from a policy-trusted
  authority: commit refuses it before any state/history/command write. A valid signature for
  another transition, store, exact evaluated history head, evidence policy or required context
  cannot be reused. Reusing authorization while changing only command content/count also fails.
- Authorization is required but the policy supplies no usable trusted authority: no candidate
  can satisfy that requirement; structural ALLOW must not become a fallback. A policy requiring
  no authorization remains valid and does not create a cryptographic requirement by itself.
- External execution succeeds but the adapter crashes before checkpointing: delivery may
  repeat. Core cannot guarantee exactly-once execution.
- Permanent external failure leaves the producing transition committed. Compensation and
  retry decisions occur outside it or through explicit later Behavior transitions.
- Two copies share genesis and position but commit different transitions with equal intent
  content: commit record hashes and occurrence IDs differ. Restoring the same canonical
  committed history elsewhere reproduces the same IDs. State equality or history-position
  equality alone does not identify a committed event. No replica ID is required.
- A committed record attempts to contain or depend on its derived occurrence ID: the new
  record form refuses that circular representation rather than redefining the hash.
- Repeated command-only commits advance history even though their state identities match.
  Exact history-head concurrency prevents stale command-only commits from slipping through.
- An action has a conditional emission whose path is not taken: no intent is emitted.
  Its guard is evaluated before the payload, and payload-only dependencies are not observed.
  A true guard followed by a payload error fails the action rather than silently omitting
  the command. Structural admission and the existing runtime treatment of allowed no-op
  transitions remain separate questions.
- A read, derived value, invariant or migration tries to emit: admission refuses it.
  Migration remains a deterministic source-state to target-state operation.
- Adding, changing or removing only command declarations changes behavior identity, not
  state schema identity; replay of historical records uses their historical declarations.
- A derived command index contradicts history: it cannot establish a committed occurrence;
  backend conformance must detect invalid command visibility.
- Payloads use normal bounded canonical values. Arbitrary binary/blob transport is excluded.
  Durable payloads are audit data; deployment credentials and secret retrieval belong to adapters.
- Reordering command-emission definitions, including two failing emissions, cannot change
  new-version action/behavior identity, selected errors, observations or semantic trace.
  Canonical emission evaluation order is derived from definition identity, not source order.
  Source locations may support diagnostics but cannot participate in semantic identity or
  cause semantic replay divergence in the new command-bearing evidence form.
- Canonical enumeration order does not guarantee the order in which external effects occur.
  Neither canonical emission evaluation order nor canonical intent order sequences delivery.
  If B must await A's success, the host
  submits A's result explicitly to a later transition that requests B, or a higher-level
  model lowers to those transitions. Core SHALL NOT infer that causal relation from canonical
  command positions or multiplicity indices.

## Requirements *(mandatory)*

### Functional Requirements

#### Command declarations

- **FR-001**: A module MAY declare typed external command kinds. Each declaration has a name,
  typed payload fields and a semantic declaration identity. It has no entity identity and is
  not persisted entity state.
- **FR-002**: Command declarations and emission effects MUST contribute to `BehaviorHash`.
  In the new IR version, an action's command-emission effects SHALL form a finite unordered
  multiset in the semantic IR. Each definition includes its command declaration identity,
  guard expression and typed payload expressions; multiplicity is semantic. Reordering this
  multiset without changing any definition or its multiplicity MUST leave both action identity
  and module `BehaviorHash` unchanged. Canonical identity SHALL derive from those semantic
  definitions, not source or serialization order. Different semantic definitions remain
  distinct even if they produce identical intents for a particular invocation. No analysis
  of arbitrary emission independence is required. Earlier IR identity rules remain unchanged.
- **FR-003**: Command declarations MUST NOT contribute to `SchemaHash`. A command-only
  declaration change MUST NOT, by itself, require a store migration.
- **FR-004**: Payload fields MUST use canonically representable Behavior value types. Query
  values, bound entity objects and other non-storable semantic objects MUST NOT appear directly
  as payload values.

#### Command effects

- **FR-005**: The new IR SHALL support a declarative command-emission effect that names a
  declaration and supplies typed expressions for its payload fields.
- **FR-006**: Emission MAY occur only in action effect semantics. Reads, derived values,
  invariants and schema migrations MUST NOT emit commands.
- **FR-007**: Payloads MUST be evaluated from the same exact state, input, context and facts as
  the producing action. Field, query and context dependencies MUST be observed and recorded
  under the existing expression semantics.
- **FR-008**: Emission MUST perform no external-execution callback or external-effect I/O
  during evaluation.
- **FR-009**: A command-emission effect MAY have a Boolean guard. The guard MUST be evaluated
  before any payload expression. If false, no payload expression is evaluated, no dependency
  is observed solely for that payload, and no intent is produced; other effects are unaffected.
  If true, payload fields are evaluated normally and successful construction produces exactly
  one intent. Any guard or payload evaluation error MUST be an evaluation error for the action,
  not an ignored error or permission to omit the command and continue. An unguarded emission
  follows the true-guard behavior. Guard dependencies and all other actually evaluated
  dependencies MUST be observed under the normal semantics. A command guard MUST NOT be
  treated as an action precondition.
- **FR-010**: In the new IR version, an action is structurally effectful if it has at least
  one possible state-changing effect or command-emission effect. A command-only action MUST
  be admissible with zero state bindings. An action with neither kind of effect MUST be
  refused as `EFFECTLESS_ACTION`. Earlier IR admission rules and diagnostics MUST remain
  unchanged, including valid legacy decision-only actions.

#### Command intent identity

- **FR-011**: Evaluation SHALL produce immutable `CommandIntent` values containing at least
  the command declaration identity, canonical typed payload and `CommandIntentHash`.
- **FR-012**: Intent hashes SHALL be content-addressed and independent of host execution
  configuration. Identical declaration identities and payloads MUST have identical intent
  hashes.
- **FR-013**: Every committed command occurrence SHALL have a deterministic
  `CommandOccurrenceId` derived from the store identity, canonical `CommitRecordHash`,
  `CommandIntentHash` and canonical multiplicity index among equal intents in that commit,
  using a versioned, domain-separated canonical encoding. The committed record SHALL bind
  its exact transition, position and parent record/history; position remains evidence and
  enumeration data, not a separate occurrence-hash input. For an intent appearing `n` times
  in that commit, indices SHALL be exactly `0` through `n - 1`. The canonical committed record
  MUST NOT contain or depend on occurrence IDs, and occurrence IDs MUST NOT contribute to
  its semantic hash or `CommandIntentHash`; derivation MUST be acyclic. Copies of the same
  canonical committed history SHALL reproduce identical occurrence IDs. Divergent commits
  from the same genesis and history position SHALL produce different occurrence IDs for
  equal intent content, even if their resulting `StateId`s agree. Distinct committed events
  and duplicate occurrences MUST remain distinguishable. Replica/backend identifiers and
  local configuration MUST NOT influence identity. Indices SHALL NOT identify source-code
  emissions or promise execution order.
- **FR-014**: An occurrence identity is evidence identity, not entity identity or `Ref<T>`.
- **FR-015**: Intents produced by a transition SHALL form a finite unordered multiset;
  multiplicity MUST be preserved. In the new IR version, emission definitions SHALL be
  evaluated in deterministic canonical order derived from their semantic identities, with
  FR-009's guard-before-payload semantics. Selection of a first command-emission failure,
  observations and semantic evaluation trace SHALL follow this canonical evaluation order;
  source or incoming serialization order MUST NOT distinguish otherwise identical definition
  multisets. Canonical serialization, hashing, replay and enumeration of produced intents
  SHALL derive order from intent semantic content. Definition evaluation order and produced
  intent order are distinct representations; neither implies external dispatch ordering.
  Reordering the same definition multiset MUST preserve action identity, `BehaviorHash`,
  produced intent bytes and all Core-observable semantic evaluation/replay results for
  identical explicit evaluation inputs. Non-semantic source provenance MUST NOT participate
  in semantic evidence equality or cause semantic replay divergence. Earlier IR versions
  retain their existing identity, evaluation and record rules.

#### Evaluation records

- **FR-016**: A command-producing action SHALL use a new versioned decision-record form
  recording every emitted intent and its canonical multiplicity in the content-derived order
  required by FR-015, without adding source-position or execution-sequence identity. This
  semantic evaluation record SHALL contain intents, not derived committed occurrence IDs;
  the canonical committed history record SHALL also exclude those IDs and bind its exact
  transition, position and parent history before its `CommitRecordHash` is derived. Occurrence
  IDs become available afterwards as read-only evidence derived from that committed record.
  The candidate transition identity used by governance SHALL bind the exact state delta,
  complete canonical intent multiset including multiplicity, behavior version and relevant
  evaluation evidence. Changing a command declaration, payload or duplicate count MUST NOT
  preserve that identity or reuse its authorization. Its command-emission trace, observations
  and failure evidence SHALL follow FR-015's canonical definition evaluation order. Source positions and diagnostic provenance MUST NOT
  distinguish semantic records for otherwise equivalent command-emission multisets.
- **FR-017**: Command-free decision records from earlier IR versions MUST retain their exact
  existing bytes and identities. Where compatible with existing versioning rules, command-free
  actions using no new semantics SHOULD continue to use their existing record version.
- **FR-018**: Denial, refusal, binding failure or evaluation error MUST produce no committed
  command occurrences. Any returned evaluation evidence is not permission to dispatch.

#### Atomic commit and history

- **FR-019**: Commands SHALL become durable and discoverable as committed occurrences only
  through successful atomic store commit.
- **FR-020**: Commit SHALL atomically cover entity/version changes, reference/index changes,
  the transition record and its intents, the new history head and existing idempotency data.
  A backend MUST NOT expose a committed command unless its containing transition and history
  update also committed. Storage operations through the persistence contract MUST NOT execute
  the command's external effect.
- **FR-021**: Committed intents SHALL be derivable from canonical transition history. History
  is the authoritative durable outbox; indexes MAY accelerate access but MUST NOT define or
  override semantic truth. Occurrence identities SHALL be derivable from canonical committed
  record hashes and their intent multiplicities without replica-local metadata. Backend conformance SHALL detect commands made visible without
  their atomic transition commitment.
- **FR-022**: Core SHALL expose read-only enumeration of committed occurrences strictly after
  a supplied history position through an observed committed head. Results SHALL be ordered
  by history position and, within a transition, canonical semantic-content order and
  multiplicity index, and SHALL exclude candidates
  and records outside committed history.
- **FR-023**: Enumerating commands MUST NOT alter Behavior state or history or dispatch them.
- **FR-024**: Core MUST NOT introduce canonical delivery status, attempts or retries as
  Behavior state merely because a command exists. Operational consumer state belongs to the
  adapter or host unless an application explicitly models it through entities and actions.

#### Command-only transitions

- **FR-025**: A successful transition with no state changes and at least one command MAY
  commit.
- **FR-026**: Such a commit SHALL advance history and the record hash chain while leaving
  `StateId`, entity revisions and the entity universe unchanged, unless other effects in the
  same transition change them.
- **FR-027**: Whole-history concurrency and existing idempotency rules SHALL apply equally
  to command-only transitions. Unchanged state content MUST NOT allow commitment against a
  stale history head. Recovery of the same commit MUST NOT append duplicate occurrences.

#### Dispatch

- **FR-028**: External command execution SHALL remain outside the deterministic engine.
  Evaluation, verification, store commit, replay and migration MUST NOT execute or dispatch
  external requests. This prohibition does not remove the existing persistence-backend
  operations needed to read and atomically store canonical history.
- **FR-029**: An adapter MUST consume only committed occurrences. Candidate intents returned
  by evaluation MUST NOT be treated as dispatchable committed requests.
- **FR-030**: Core SHALL guarantee durability and stable occurrence identity under its
  persistence contract, but MUST NOT claim exactly-once external execution. The operational
  model permits at-least-once consumption and target-supported idempotency.
- **FR-031**: Endpoint selection, credentials, network configuration, retries and vendor
  behavior SHALL be adapter/deployment concerns and MUST NOT implicitly affect semantic
  hashes. Behavior specifies the command and typed payload. Values deliberately modeled
  as explicit Behavior data remain subject to normal semantic identity rules.

#### External results

- **FR-032**: External success or failure MUST NOT change an original intent or rewrite its
  producing transition.
- **FR-033**: External results MAY re-enter Behavior only through a later explicit capability
  invocation, as explicit input or context.
- **FR-034**: Core MUST NOT automatically continue a workflow, mutate state or invoke another
  capability when an adapter receives a result.
- **FR-035**: Business correlation across request/result transitions MUST be explicit domain
  data. The engine MUST NOT invent domain identities from external execution or interpret
  hidden adapter state as Behavior semantics.

#### Verification and governance

- **FR-036**: Admission SHALL type-check every command declaration and payload expression,
  including field agreement and canonical value representability, and require every command
  guard to be Boolean. An emission guard is a declarative effect condition, not general
  control flow, loops or procedures.
- **FR-037**: Verification SHALL model reachable payload computations and their evaluation
  failures, including division by zero, overflow and invalid narrowing, under the ordinary
  runtime expression and exact-arithmetic semantics. It SHALL analyze payload evaluation only
  on paths where the command guard is true and SHALL check the guard's own evaluation safety
  normally. Its assumptions MUST match runtime guarantees exactly, including canonical
  command-emission evaluation order, short-circuit observations and reachable failure paths.
- **FR-038**: Verification MUST NOT model or claim the behavior, availability or correctness
  of external systems. `PROVEN` describes Behavior semantics under the verifier's contract,
  not successful external execution; inconclusive results MUST NOT be reported as proven.
  Trusted v2 report identities SHALL exclude diagnostic provenance and use canonical semantic
  results and findings. Every expected obligation SHALL have a distinct canonical site key,
  including repeated identical emissions; the versioned complete manifest binds exact subject,
  profile and verifier encoding. Wall-clock timeout or other non-reproducible/infrastructure
  abort SHALL produce no semantic report or signed envelope; deterministic resource exhaustion
  MAY yield authenticated INCONCLUSIVE. Legacy report formats remain unchanged.
- **FR-039**: When the store's exact evidence policy requires authorization, commit SHALL
  require a cryptographically verifiable authorization issued by an authority trusted by
  that policy and bound to the exact candidate transition. The authorization MUST bind all
  semantically relevant transition content, including the state delta, complete canonical
  command-intent multiset and multiplicity, behavior version, store identity, exact evaluated
  state/history head, governing evidence policy identity and any context, execution policy,
  verification status/profile or conditions required by that policy. Core SHALL validate the
  signature, issuer trust, exact bindings and required evidence before the atomic commit.
  Authorization content SHALL include issuer identity and use a versioned canonical identity;
  its signature SHALL attest that content hash and remain outside content hashing. A self-authored,
  self-hashed or otherwise structurally valid but untrusted ALLOW MUST NOT satisfy a required
  authorization. A policy requiring no authorization MAY permit commit without it, subject
  to ordinary commit checks. Trust and historical evidence validation MUST derive from the
  exact bound policy/context, not mutable current host configuration.
  The signed authorization SHALL archive explicit `Q` and its canonical ContextHash and bind
  it alongside candidate identity. Trust-role intervals and waiver expiry SHALL use
  `Q.policy_time`; policy-bound requested commit time SHALL match actual bundle commit time.
  Live commit SHALL compare signed Q to independently supplied context; replay uses archived Q.
- **FR-040**: Feature 013 SHALL introduce no command-specific authorization mechanism.
  Command-producing transitions SHALL use the same trusted governance mechanism as state-only
  transitions. If existing governance cannot establish trusted authorization under FR-039,
  general governance hardening MUST be completed and verified as a prerequisite to 013;
  structural authorization MUST NOT be treated as satisfying that prerequisite. Adapter
  execution policy remains outside core and this feature's scope.

#### Replay

- **FR-041**: Behavior replay SHALL reproduce the exact intent collection from the recorded
  behavior, state, input, context and facts and compare canonical multisets, including their
  multiplicity, with the recorded collection. It SHALL reproduce semantic emission evidence
  under FR-015's canonical evaluation order. Source emission order or diagnostic provenance
  MUST NOT turn an otherwise identical definition multiset into semantic replay divergence.
- **FR-042**: Replay MUST NOT execute, queue, resend or otherwise dispatch commands.
- **FR-043**: Data replay SHALL validate command-bearing transition history without any
  external executor and with commands covered by the canonical history evidence.
- **FR-044**: Changed declarations, payloads, counts or occurrence semantics SHALL be replay
  divergences. A permutation alone is not a semantic command change; noncanonical record bytes
  remain subject to the existing canonical document and evidence validation rules.

### Key Entities *(include if feature involves data)*

- **CommandDeclaration**: A named, typed external request with payload fields and a semantic
  declaration identity. It belongs to Behavior semantics, not persisted-state schema.
- **CommandEmission**: A semantic definition comprising command declaration identity,
  guard expression and typed payload expressions. An action holds a finite multiset of these
  definitions, canonicalized with multiplicity for identity and evaluation. It is distinct
  from the evaluated multiset of intent values.
- **CommandIntent**: Immutable evaluation evidence containing the declaration identity,
  canonical typed payload and intent hash. It is a candidate until its transition commits.
  Evaluation collects these values as an unordered multiset and preserves duplicate counts.
- **CanonicalCommitRecord / CommitRecordHash**: The canonical record of one committed
  history event and its content-addressed identity. It binds the exact transition, position
  and parent history and excludes derived occurrence IDs. Equal state content is not equal
  committed history; copying an identical canonical record preserves its hash.
- **CommandOccurrence / CommittedCommand**: One intent anchored to store lineage and an exact
  committed record, with its intent-hash multiplicity index and stable derived identity.
  Its hash inputs are StoreId, CommitRecordHash, CommandIntentHash and that index under the
  occurrence hash domain. Position is retained as evidence/enumeration data. The ID is neither
  source position nor replica identity and does not feed back into the committed record.
  This is the request an adapter may consume.
- **Produced commands K**: A finite multiset of immutable intents. Equal intents remain
  repeated values with their full count; multiset union combines emission contributions.
  Canonical bytes are a representation of this object, not an execution sequence.
- **Transition history**: The canonical sequence of committed transitions and its hash chain.
  It is authoritative for discovering durable commands, including command-only transitions.
- **EvidencePolicy / TrustedAuthorization**: The exact governing policy and its trust relation
  over a cryptographically authenticated authority, authorization content, candidate transition
  and independently supplied explicit Q. Full Q is signed/archived; all trust-time judgments
  use policy_time and replay uses the original compared context.
  The policy identifies trusted authorities and required evidence/conditions. Content identity
  and signature are distinct; a hash alone cannot establish authority. This existing governance
  capability must be hardened generally before 013, not replaced with command-specific policy.
- **Command Adapter**: A host/ecosystem consumer that maps committed occurrences to external
  execution. Delivery checkpoints and execution results belong to the adapter or explicit
  application data, not implicit core state.

## Success Criteria *(mandatory)*

### Measurable Outcomes

- **SC-001**: Every tested successful state-and-command transition makes both results durable
  at one position; every injected abort exposes zero partially committed results. Every tested
  refusal for missing/untrusted/invalid required authorization or mismatched transition, store,
  exact evaluated history head, policy or required context/evidence/profile changes zero state/
  history components and exposes zero committed occurrences. A valid trusted authorization
  passes the same policy checks for state-only and command-producing transitions; a policy
  requiring no authorization permits both without one when ordinary checks succeed.
- **SC-002**: A command-only transition with one emitted command advances history by exactly
  one position and changes zero entity revisions, entity identities or state-content identity.
- **SC-003**: Evaluation, verification, both replay modes and counterfactual evaluation make
  zero calls to a monitored external executor that fails on any attempted invocation.
- **SC-004**: An auditor replaying a command-producing transition obtains byte-identical
  canonical command multisets, including declaration identities, payloads and multiplicity.
  Permuting the same emission definitions under the new IR produces identical action identity,
  `BehaviorHash`, canonical commands, semantic observations, trace and replay results for
  the same explicit evaluation inputs. The multi-error case selects the same canonical error.
  Adding or removing an emitted duplicate produces a different command collection.
  Under equal subject/profile/verifier/solver semantics, source relocation or normalized
  binder/alias changes preserve semantic verification report and envelope content hashes.
  Repeated emissions retain distinct canonical obligation keys with exact manifest coverage.
- **SC-005**: A refused, conflicting or aborted commit exposes zero new committed command
  occurrences, including after the store is reopened.
- **SC-006**: Repeated discovery and recovery of one committed occurrence yield exactly one
  stable occurrence identity and never append an extra history transition.
- **SC-007**: Two intentional identical requests committed at successive positions yield two
  different occurrence identities; two identical requests within one transition also yield
  two different identities while retaining the same intent hash, distinguished by multiplicity
  indices within that hash rather than source emission position. Copies of the same canonical
  committed history reproduce identical occurrence IDs across conforming backends; divergent
  commits from the same genesis and position yield distinct IDs for equal intents, including
  when StateIds agree. Occurrence derivation uses the canonical committed record hash,
  and zero occurrence IDs appear in or contribute to that record's or the intent's semantic hash.
- **SC-008**: All published legacy command-free conformance examples retain identical bytes,
  hashes, admission diagnostics and execution/replay outcomes.
- **SC-009**: Conformance detects a persistence implementation that exposes a command without
  its containing transition's atomic commitment.
- **SC-010**: Every reachable unsafe payload computation in the safety acceptance cases is
  reported; every safe case follows the ordinary proof contract, with zero claims about
  external service success. A false guard causes zero payload evaluations and zero observations
  made solely for the payload; a reachable true-guard payload failure fails action evaluation
  and is reported by verification.
  An injected wall-clock/operational abort emits zero signed semantic artifacts and preserves
  existing output files; deterministic resource exhaustion is reported only as INCONCLUSIVE.

## Assumptions

- Core 012's unified invocation model is a prerequisite. Its current specification and
  plan are design artifacts, not evidence that it has shipped. This feature extends transition
  results without introducing another invocation format or flattening evaluation into the
  invocation envelope.
- StoreId is the genesis-derived store lineage identity. A position alone does not identify
  an event across divergent histories; CommitRecordHash binds the event and its parent chain.
  Copies of one canonical committed history retain identity across replicas/backends. This
  feature does not add replica identities or history merging semantics.
- The existing persistence contract supplies immutable history, exact history-head
  concurrency, atomic crash-safe commit and idempotent resubmission. Durability claims are
  conditional on a conforming backend; an in-memory backend alone cannot prove process-crash
  durability for a persistent host implementation.
- Admission effectfulness is structural. If no command is emitted and no actual state
  change occurs, the existing treatment of an allowed no-op transition is
  preserved. This feature does not invent a runtime requirement that every admitted action
  must emit a command on every invocation.
- Command enumeration uses an exclusive position: commands at that position are excluded.
  Its observation is bounded by a committed head; later commits can be discovered on a later
  read. Cursor representation, batching and concrete consumer interfaces are planning details.
- The command multiset describes requested external work, not a workflow or sequence.
  Domain distinctions between otherwise identical requests must be explicit payload data;
  source position is not a domain identity. Canonical definition order governs command-emission
  evaluation, including errors and semantic trace/observations; canonical intent order governs
  the representation of `K`. Neither promises dispatch sequencing. Non-semantic provenance
  may accompany diagnostics but does not affect semantic identity or replay comparison.
- Payload values are immutable request data, not live entity objects or deferred expressions.
  Command-specific operational state and external execution configuration remain outside
  core semantics unless deliberately supplied as domain data.
- General trusted-governance hardening is an explicit prerequisite to 013, applicable to
  existing governed commit paths as well as command-producing transitions. Its policy-indexed
  trust relation, canonical signed authorization and exact binding checks must be implemented
  and verified before this feature can satisfy FR-039/FR-040. Current structural checks are not
  evidence that this prerequisite is complete. Its concrete formats, cryptographic suite and
  key-lifecycle rules belong to the prerequisite's plan/contracts, not a new command authority.
- Required authorization is conditional on the exact evidence policy. Policies requiring none
  remain valid; policies requiring authorization cannot be satisfied through a trusted-host
  assumption alone, a claimed issuer name or a self-hashed ALLOW. Any policy-required time or
  context is explicit bound data, not an implicit read from the current host environment.
- No new live AI interaction is required by this feature.
- Mathematical semantics take precedence over wire layout, in-memory representation and
  evaluation strategy. History ordering is meaningful; command representation ordering is
  not. This feature introduces no general sequencing, branching, loops or procedure language.
- Canonical declaration, intent and occurrence encodings and exact new record format numbers
  will be fixed by the plan and contracts. Their required identities, compatibility and
  observable behavior are specified above.

### Versioning and Compatibility

- New command declarations, emission effects and effect-based action admission require a
  new Wire IR version. Based on the current 012 design, which retains 0.7, the provisional
  version is **0.8**. If the predecessor changes before implementation, choose the next
  unused version explicitly; never reinterpret an existing version.
- This is a minor Core release under the pre-1.0 policy in
  [docs/versioning.md](../../docs/versioning.md). **0.12.0** is the expected release after
  012's planned 0.11.0, not a claim that either release already exists.
- All earlier Wire IR versions retain their exact admission and runtime semantics. Command
  syntax and `EFFECTLESS_ACTION`'s new admission rule are legal only in the new version.
- Existing command-free module hashes, records, fixtures and replay behavior remain unchanged.
  New command-bearing record forms have new versions; old forms are never reinterpreted.
- The new IR makes command-emission definitions a finite unordered multiset and derives
  their canonical hashing, serialization, evaluation and semantic evidence from the same
  definition identities. These rules MUST NOT retroactively change earlier IR identities,
  evaluation order, diagnostics or record bytes.
- Declaration and intent identities follow canonical semantic content; occurrence identity
  has its own versioned, domain-separated hash over store lineage, canonical committed record
  hash, intent hash and multiplicity index, and is not part of entity schema identity.
  The new committed record form excludes occurrence IDs; existing legacy record/hash forms
  remain unchanged.
- Governance hardening SHALL use an explicit versioned policy/authorization contract rather
  than reinterpret historical structural documents as trusted evidence. Historical bytes,
  identities and replay interpretation remain preserved. The prerequisite's plan must define
  adoption/compatibility for existing stores and policies; no legacy unsigned ALLOW may silently
  satisfy the new trusted-authorization requirement.

### Non-Goals / Out of Scope

This feature adds no external executor or implementations for HTTP, message brokers, email,
payments, devices, filesystem effects or subprocesses. It adds no credentials or secret
management, exactly-once external delivery, distributed transactions, automatic sagas,
compensation, callbacks, scheduling, timers, cron, core delivery retries, delivery-status
mutation or adapter-specific configuration. Arbitrary binary/blob transport is also excluded.

State machines, workflows and sagas remain candidate models above core. Actual integrations
remain adapters in the ecosystem or host applications. Their implementation is not part of
this core feature.

### Architectural Result

Core continues to expose three fundamental kinds of semantic operation: reads observe
state, transitions commit state changes and/or durable external requests, and migrations
change the schema under which state is meaningful. Command dispatch is an adapter operation
outside the deterministic boundary, not a fourth core operation.

The intended milestone is a conceptually complete deterministic semantic kernel. Future
proposals should first explain why a model, binding, adapter or composition of existing
semantics cannot faithfully express the needed meaning. A new core primitive requires that
semantic justification; the milestone is not a claim that every host or product is complete.
