# Research: Unified Invocation Model

## R1. Where the boundary model lives

- **Decision**: a new module `behavior_core::invocation`. It owns:
  - `TypedIdentity`, `RequestedInvocation`, `CapabilityIntent` and `Snapshot`;
  - `resolve`, which turns a requested invocation into a resolved invocation or binding problems;
  - `InvocationRecord`, its id and replay.

  It uses the existing evaluators `evaluate_with` (actions) and `evaluate_read_with` (reads)
  through their current `EvaluationFacts` interface. The store implements resolution over its
  backend with the same resolver logic, via a small `Resolver` trait with `exists(key)` and
  `value(key)`, implemented by the store and by the plain snapshot.
- **Rationale**:
  - FR-002 and FR-003 call for one resolution procedure for every capability kind.
  - The CLI and the plain path need it without a store.
  - The evaluators stay untouched, which keeps FR-016.
- **Alternatives**:
  - Envelope logic in `behavior-store`: the plain and CLI paths would have to duplicate it.
  - Changing the evaluators to accept identities: that would alter records (FR-016).

## R2. The decision record's existing identity

- **Decision**: the envelope binds a decision record by its tagged transition hash,
  `document_hash("behavior.transition.v1", record)`, which commit bundles already use as
  `transition_hash`. It binds a read record by its `record_id` (`read:sha256:…`).

  The tagged-hash function moves from `behavior-verify::hashing` to `behavior_core::canonical`,
  and `behavior-verify` re-exports it. The existing `crates/behavior-verify/tests/hashing.rs` and
  hash vectors prove the bytes are unchanged.
- **Rationale**: clarification Q1 requires the inner record to keep its *existing* identity, and
  the transition hash is that identity in store history.
- **Alternatives**: a new `decision:sha256` id is a new identity, which contradicts Q1.

## R3. Admission stays unchanged

- **Decision**: 012 changes no admission rule. Decision-only actions with bindings stay valid,
  and the zero-binding, non-creating action keeps its `ARITY_MISMATCH` diagnostic. There is no
  new wire IR version.
- **Rationale**: the scope test. Which capabilities count as actions is a language-design
  question on top of the invocation model; it is not needed for uniform invocation (clarification
  of 2026-10-04, which supersedes the earlier `EFFECTLESS_ACTION` / IR 0.8 answers).
- **Guidance**: `docs/invocation.md` recommends declared reads for new observation-only
  capabilities.
- **Deferred**: a later language-version feature may refuse decision-only actions in a new IR
  version. Its design was explored here (structural rule, IR-gated, legacy diagnostics kept) and
  is recorded as a follow-up.

## R4. Invocation outcome: pre-evaluation refusal or evaluated

- **Decision**: `outcome` is one of two kinds.
  - `{"kind": "pre_evaluation_refusal", "stage": "DECODE" | "BINDING", "problems": [...]}`.
    The stages, codes, canonical order and no-cascade rule are in data-model.md.
  - `{"kind": "evaluated", "record_kind": "decision" | "read", "record_id": "...",
    "record": {...}}`.

  Input type errors, unknown facts, preconditions and the like stay inside the inner record, as
  today (`INVALID_INPUT`, `DENY`, `ERROR` and so on).
- **Rationale**: FR-008a and FR-008c. Decoding failures are not binding failures, and naming
  every pre-evaluation problem "binding" would blur the stage. The alias rule depends only on
  identities, so it is a `BINDING`-stage problem in the unified path (FR-007). Legacy paths keep
  detecting it in evaluation.
- **Boundary**: only syntactically parseable documents get a record. Unparseable input is a
  transport error returned to the caller, with no canonical evidence.
- **Consequence for reads**: with an unknown identity, the unified path refuses before
  evaluation and produces no read record. The legacy `Store::read` keeps producing its
  `INVALID_BINDING` read record (frozen).

## R5. Snapshot document for the plain and CLI paths

- **Decision**: a `behavior.snapshot.v1` document holds:
  - `data_version`;
  - `entities`, a list of `{entity, value}`;
  - the existing evaluation `facts` (universe, queries, existence…) that evaluation may need.

  The resolver looks typed identities up in `entities`. An absent identity is `UNKNOWN_BINDING`.
  A contradictory snapshot is `INCONSISTENT_FACTS` (FR-004b), detected when it is decoded,
  using the existing fact-consistency checks of evaluation facts.
- **Rationale**: the spec's edge case "plain evaluation without a store" says the caller enters
  at the resolved level with explicit snapshot evidence. The snapshot lets the CLI and tests
  exercise the requested→resolved pipeline without a store.
- **Alternatives**: reusing the request format's `state` would mix requested and resolved
  bindings (Q-plain-evaluation).

## R6. Unified intent vs requested invocation

- **Decision**:
  - The **capability intent** (`behavior.capability_intent.v1`) is the untrusted form: capability,
    `bindings`, `input` and optional `metadata` (any JSON object, recorded but never passed to
    evaluation and never hashed into the requested invocation).
  - The host turns it into a **requested invocation** (`behavior.invocation.v1`) by adding
    `context`.
  - Both use the same binding map and typed identities.
  - An intent that carries a `state` key, or entity values in place of identities, is refused at
    decode (FR-013).
- **Rationale**: FR-011 and FR-013. The same trust boundary as today, where context comes from
  the host.

## R7. Replay

- **Decision**: `replay_invocation(module, record)` checks the record in four steps:
  1. It recomputes `record_id`.
  2. It re-resolves the requested bindings against the record's own `binding_facts`
     (existence, type and, for bound entities, the resolved values).
  3. It re-runs evaluation through the inner record's existing replay (`replay` or
     `replay_read`).
  4. It checks the envelope/inner agreement (FR-008b).

  `Store::replay_invocation` additionally checks that the `data_version` is a state of this store
  and that the recorded binding facts equal the store's at that position.
- **Rationale**: FR-009 says replay works from recorded observations, never from today's store.

## R8. Versioning

- **Decision**: Core **0.11.0**. The changes:
  - **Additive:** the new document and record formats (a minor bump under the core's policy),
    and the new API items and CLI commands.
  - **Unchanged:** wire IR versions, admission, the verifier version and every existing format.

  `docs/versioning.md` gains the 0.11.0 paragraph and the superseded-format table. Status
  "superseded" applies to the `targets` intents and the identity-less store entry points as
  intent paths.

## Follow-ups (outside 012)

- **Effect rule in a new language version.** A later feature may refuse decision-only actions
  in a new wire IR version. The design explored in this session:
  - **Structural:** an action needs a field effect, creation or removal.
  - **Gated by IR version:** older IR keeps its exact admission and diagnostics.
  - **New code:** `EFFECTLESS_ACTION`.
  - **Migration:** decision-only actions become declared reads.
- **Optional state bindings**: only if real use cases need them.
