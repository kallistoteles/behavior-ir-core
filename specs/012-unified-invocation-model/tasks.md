---
description: "Task list for core feature 012: Unified Invocation Model"
---

# Tasks: Unified Invocation Model

**Input**: Design documents from `/specs/012-unified-invocation-model/`

**Prerequisites**: plan.md, spec.md, research.md, data-model.md, contracts/, quickstart.md

**Tests**: Required. The constitution says Principle III, test-first, is NON-NEGOTIABLE. Every
test task is written and seen failing before the code that makes it pass.

**Scope test** (applies to every task): *is this needed for reads and actions to use the same
invocation model?* If not, it is not part of 012 (plan.md).

**Paths**: the repository root is `behavior-ir-core`.
- Core crate: `crates/behavior-core/`
- Store: `crates/behavior-store/`
- Fixtures: `tests/fixtures/invocation/`

## Format: `[ID] [P?] [Story] Description`

- **[P]**: can run in parallel (different files, no dependency on an incomplete task)
- **[Story]**: US1–US4 from spec.md

---

## Phase 1: Setup

- [X] T001 Record the compatibility baseline on the unchanged 0.10.2 tree.
  - Run `scripts/conformance-digest.sh > specs/012-unified-invocation-model/digest-before.json`
    and commit the file.
  - It is the reference for FR-014, FR-016 and SC-004/SC-005.
- [X] T002 [P] Write `scripts/digest-subset.py <before.json>`. It reads a digest on stdin and
  fails, listing the keys, if any key of `<before>` is missing or has a different hash. New keys
  are allowed only under `file:tests/fixtures/invocation/` and `file:schema/invocation-`,
  `file:schema/capability-intent-` and `file:schema/snapshot-`.
  - Test it first in `scripts/tests/test_digest_subset.sh` with three cases: identical (passes),
    a changed hash (fails, naming the key) and a new key in a forbidden place (fails).
  - The new test is a `test_*.sh`, so `scripts/gates.sh` runs it.
- [X] T003 [P] Write the fixture generator `tests/fixtures/invocation/build_invocation.py`. It
  writes JSON directly, never through a DSL, and regenerating leaves files byte-identical.
  - It writes the module `tests/fixtures/invocation/modules/ledger.json` (wire IR 0.7) with:
    - entities `Customer` (`name`, `status` enum `ACTIVE`/`SUSPENDED`) and `Account` (`owner`
      `Ref[Customer]`, `balance` Int);
    - actions with zero, one, two and three state bindings:
      - `register_customer` (0 bindings, creates);
      - `suspend_customer(customer)` (1);
      - `transfer(from_, to)` (2; precondition `from_.balance >= amount`);
      - `settle(a, b, c)` (3);
      - the decision-only `check_standing(customer)` (1, no effects; admitted today and kept);
    - reads with zero, one and two bindings: `customer_count` (0), `customer_summary(customer)`
      (1, projection), `pair_total(a, b)` (2).
  - It writes the snapshot `tests/fixtures/invocation/snapshots/s1.json` with customers `c1` and
    `c2` and accounts `a1`, `a2` and `a3`.
  - Add the directory to `tests/fixtures/README.md`.

---

## Phase 2: Foundational (blocking)

**⚠️ No user story starts before this phase is complete.**

- [X] T004 Write `crates/behavior-core/tests/canonical_tagged_hash.rs`. It asserts that
  `behavior_core::canonical::tagged_hash(TAG, doc)` equals
  `behavior_verify::hashing::document_hash(TAG, doc)` for every tag and document in
  `tests/fixtures/hash_vectors.json`, and for one decision record of each record version
  (0.4, 0.5, 0.6) from `tests/fixtures/records/`. It fails: `tagged_hash` does not exist.
- [X] T005 Move the tagged-hash function into `crates/behavior-core/src/canonical.rs` as
  `pub fn tagged_hash(tag: &str, doc: &Value) -> Result<String, CanonicalError>`, with the same
  algorithm and the same handling of the `hash` field.
  - `crates/behavior-verify/src/hashing.rs::document_hash` becomes a thin call to it.
  - Make T004 pass. `crates/behavior-verify/tests/hashing.rs` and the hash vectors must stay
    green.
- [X] T006 [P] Write decoding tests in `crates/behavior-core/tests/invocation_documents.rs`, one
  per rule of `contracts/invocation-documents.md` §Decoding:
  - typed identity: exactly `entity` and `id`; `id` is a non-empty string; extra keys, a bare
    string or an empty id give `INVALID_IDENTITY` at `bindings.<param>`;
  - `format` must equal the tag, otherwise `UNSUPPORTED_FORMAT` naming both;
  - unknown top-level keys give `UNEXPECTED_KEY`;
  - a capability intent with `state`, `context` or `targets` gives `STATE_NOT_ALLOWED`,
    `CONTEXT_FROM_HOST` or `LEGACY_TARGETS`;
  - a snapshot with a duplicate `(entity, id)` is a decode error;
  - an `id` with separators (`"lab:2026:42"`) round-trips unchanged;
  - every independently determinable problem is listed with its path, in canonical order
    (FR-008c), with no cascading problems;
  - a non-JSON text is a transport error with no record; `"capability": 17` is a `DECODE`
    problem `INVALID_CAPABILITY`, with `capability: null` in the eventual record.

  They fail: the module does not exist.
- [X] T007 Create `crates/behavior-core/src/invocation.rs` (`pub mod invocation` in
  `crates/behavior-core/src/lib.rs`) with:
  - `TypedIdentity { entity, id }`;
  - `RequestedInvocation` (tag `behavior.invocation.v1`);
  - `CapabilityIntent` (tag `behavior.capability_intent.v1`, with `metadata: Option<Map>` and
    `into_invocation(context)`);
  - `Snapshot` (tag `behavior.snapshot.v1`);
  - their decoders, which return `(Option<T>, Vec<IntentError>)` and list every independently
    determinable problem, each tagged with its stage (`DECODE`);
  - the snapshot's consistency check (`INCONSISTENT_FACTS`, FR-004b), using the existing
    fact-consistency checks;
  - canonical serialization.

  Make T006 pass. Use no unwrap or expect, and BTreeMap for every map.
- [X] T008 [P] Write JSON Schemas `schema/invocation-0.1.schema.json`,
  `schema/capability-intent-0.1.schema.json`, `schema/snapshot-0.1.schema.json` and
  `schema/invocation-record-0.1.schema.json`, matching `data-model.md`. Test in
  `crates/behavior-core/tests/invocation_schema.rs` that every fixture under
  `tests/fixtures/invocation/` validates, using the same validation approach as the existing
  schema tests in `crates/behavior-core/tests/schema.rs`.
- [X] T009 Write `crates/behavior-core/tests/invocation_resolve.rs`, the resolver contract over
  a `Resolver` stub. It asserts the resolution order and problem codes of
  `contracts/invocation-documents.md` §Pipeline:
  1. `UNKNOWN_CAPABILITY` (stage `DECODE`; no binding checks follow);
  2. `MISSING_BINDING`, `EXTRA_BINDING` and `NOT_A_STATE_PARAMETER` (stage `BINDING`);
  3. per identity: a type differing from the parameter's gives `INVALID_BINDING` /
     `WRONG_ENTITY_TYPE`; an absent identity gives `INVALID_BINDING` / `UNKNOWN_BINDING`;
  4. alias gives `INVALID_BINDING` / `STATE_ALIAS_NOT_ALLOWED` (stage `BINDING`, FR-007).

  It also asserts:
  - all independently determinable problems are reported together, in canonical order, without
    cascading (FR-008c);
  - binding facts are one entry per requested binding in parameter order, with `status`
    `bound` / `unknown` / `wrong_type`;
  - zero, one, two and three bindings resolve through the same code path;
  - a read and an action with the same parameters give identical problems.

  It fails before T010.
- [X] T010 Implement the `Resolver` trait (`exists(&EntityKey) -> bool`,
  `value(&EntityKey) -> Option<Value>`, `data_version() -> String`) and
  `resolve(module, &RequestedInvocation, &dyn Resolver) -> Result<ResolvedInvocation, Refusal>`
  in `crates/behavior-core/src/invocation.rs`.
  - `ResolvedInvocation` holds the capability and kind (`action` | `read`), resolved values per
    state parameter, input, context, `data_version` and the binding facts.
  - Implement `Resolver` for `Snapshot`.
  - Make T009 pass.

**Checkpoint**: documents decode, the tagged hash is shared, and resolution is one procedure for
reads and actions.

---

## Phase 3: User Story 1, actions bound by identity like reads (P1) 🎯 MVP

**Goal**: one requested→resolved→evaluated pipeline for both kinds. The plain path is
`invoke_with_snapshot`; the store path is `Store::invoke`.

**Independent Test**: quickstart §1–2. Zero to three bindings are evaluated. An unknown or
wrong-type identity is refused identically for a read and an action, and no entity value comes
from the caller.

- [X] T011 [P] [US1] Write golden expectations in `tests/fixtures/invocation/invocations/*.json`
  and `tests/fixtures/invocation/records/*.expected.json`, using the T003 builder:
  - `register` (0 bindings), `suspend` (1), `transfer` (2), `settle3` (3) and `check_standing`
    (decision-only, 1);
  - `summary` (read, 1), `pair_total` (read, 2) and `customer_count` (read, 0);
  - `suspend_unknown` and `summary_unknown` (`Customer#zz`);
  - `suspend_wrongtype` and `summary_wrongtype` (`Account#a1` for a `Customer` parameter);
  - `transfer_alias` (`from_` = `to` = `Account#a1`).

  Each expected record follows `data-model.md` §Invocation record. Evaluated ones embed the
  decision or read record, which the builder takes from the legacy path for the same resolved
  state.
- [X] T012 [US1] Write `crates/behavior-core/tests/invocation_plain.rs`. For every T011 case,
  `invoke_with_snapshot(module, invocation, snapshot)` equals the golden byte for byte. It also
  asserts:
  - evaluated records embed an inner record **byte-identical** to the legacy evaluator's output
    for the same resolved state (`evaluate` / `evaluate_read` over a request built from the
    resolved values), so FR-016 holds;
  - a read and an action with the same unknown identity give the same `problems` entry, apart
    from `capability` and `kind`;
  - the decision-only `check_standing` is evaluated like any action (FR-014);
  - FR-017: read and action invocation records are serialized by the same canonical function,
    and `record_id` is recomputable by one formula for both kinds.

  It fails before T013.
- [X] T013 [US1] Implement `invoke_with_snapshot` in `crates/behavior-core/src/invocation.rs`:
  1. Resolve.
  2. On refusal, build the record with
     `outcome = {kind: "pre_evaluation_refusal", stage, problems}`, with no inner record.
  3. Otherwise build the existing request:
     - actions: `{action, data_version, state: resolved values, input, context}` through
       `evaluate_with(module, request, facts)`;
     - reads: through `evaluate_read_with`;
     - `facts` are the snapshot's facts.
  4. Build the record with `outcome = {kind: "evaluated", record_kind, record_id, record}`:
     - a decision record is identified by `canonical::tagged_hash("behavior.transition.v1",
       record)`, byte-equal to `CommitBundle.transition_hash` for the same record (asserted in
       T014);
     - a read record is identified by its `record_id`.

  Compute `record_id` (`invocation:sha256:…`, the tagged hash `behavior.invocation_record.v1`
  over the record without `record_id`). Make T012 pass.
- [X] T014 [P] [US1] Write `crates/behavior-store/tests/invocation_store.rs`, seeded from
  `snapshots/s1.json` through `genesis_for`. It asserts:
  - `Store::invoke` with zero to three bindings gives records equal to the plain path's records
    for the same state, apart from `data_version`, which is the store's;
  - an unknown or wrong-type identity gives a `pre_evaluation_refusal` record with stage
    `BINDING`, and never `Err`;
  - A1: for every evaluated action, the envelope's `record_id` equals the bundle's
    `transition_hash`; the decision record has no top-level `hash` key; and changing any
    top-level field of the record changes the hash, so the identity covers the whole record;
  - an `ALLOW` action at the head returns a commit bundle equal to the one `Store::evaluate`
    returns for the same bindings;
  - reads and past positions (`at`) never get a bundle;
  - after 10 refused invocations the head and history are unchanged (SC-007, FR-010).

  It fails before T015.
- [X] T015 [US1] Implement `Store::invoke(&self, module, &RequestedInvocation, commit_time,
  evidence, at: Option<&StateRef>) -> R<Invocation>` in `crates/behavior-store/src/store.rs`.
  - `StoreResolver` implements the core `Resolver` over the backend at the position, with the
    same existence and version reads as `Store::read`.
  - It evaluates through the same core function as `invoke_with_snapshot`, with `StoreFacts`.
    Factor the shared part as `invoke_resolved(module, resolved, &dyn EvaluationFacts)` in the
    core.
  - It builds the commit bundle exactly as `Store::evaluate` does (move the bundle construction
    into a private helper both use; `Store::evaluate`'s output must stay byte-identical).
  - `Err` only for backend failure, a schema mismatch or a foreign position.
  - Make T014 pass.
- [X] T016 [US1] Run the compatibility check: `scripts/conformance-digest.sh |
  scripts/digest-subset.py specs/012-unified-invocation-model/digest-before.json` must pass.
  Every existing test of `crates/behavior-store/tests/` and `crates/behavior-core/tests/` must
  pass unchanged.

**Checkpoint**: MVP. Reads and actions are invoked by identity through one pipeline, with
recorded refusals.

---

## Phase 4: User Story 2, every invocation leaves evidence (P1)

**Goal**: invocation records are self-consistent, replayable and tamper-evident.

**Independent Test**: quickstart §3. Replay of every golden record, including refused ones,
matches. Every altered field is reported. A contradiction between the envelope and the inner
record is invalid.

- [X] T017 [P] [US2] Write `crates/behavior-core/tests/invocation_replay.rs`. It asserts:
  - `replay_invocation(module, record)` matches for every T011 golden;
  - for each field (`requested_bindings.*.id`, `binding_facts[0].status`, `data_version`,
    `outcome.problems[0].reason`, `outcome.record.result`, `outcome.record_id`,
    `capability`), an altered copy is reported with its path;
  - a record whose envelope `data_version` or `capability` differs from the inner record's,
    with `record_id` recomputed so only the contradiction remains, is reported as
    `CONTRADICTORY_RECORD`, naming the field (FR-008b);
  - replay never needs a snapshot or store argument (FR-009).

  It fails before T018.
- [X] T018 [US2] Implement `replay_invocation(module, record_text) -> ReplayResult` in
  `crates/behavior-core/src/invocation.rs`, per research R7:
  1. recompute `record_id`;
  2. rebuild a `Resolver` from the recorded binding facts and the resolved values in the inner
     record's `state`, and re-run resolution;
  3. replay the inner record with the existing `replay` or `replay_read`;
  4. check consistency (`capability`, `behavior_version`, `data_version`, resolved bindings
     against the inner `state`).

  Make T017 pass.
- [X] T019 [P] [US2] Add to `crates/behavior-store/tests/invocation_store.rs` a test that
  `Store::replay_invocation` matches every record that `Store::invoke` produced. It reports a
  foreign `data_version`, and binding facts that differ from the store at that position (for
  example after tampering with `status`). It fails before T020.
- [X] T020 [US2] Implement `Store::replay_invocation(&self, module, record_text) ->
  R<ReplayResult>` in `crates/behavior-store/src/store.rs`: `replay_invocation` plus the store
  checks (`state_of_data_version`, and binding facts recomputed with `StoreResolver` at that
  position). Make T019 pass.

**Checkpoint**: every invocation, successful or refused, is replayable evidence that is never in
store history.

---

## Phase 5: User Story 3, one intent model for every capability (P1)

**Goal**: unified capability intents for reads and actions with zero to N bindings. The legacy
`targets` intents are frozen.

**Independent Test**: quickstart §4. Unified intents with zero, one and two bindings are
evaluated. Invalid ones are refused with every independently determinable problem listed and
recorded. Legacy intent
fixtures are byte-identical.

- [X] T021 [P] [US3] Write intent fixtures `tests/fixtures/invocation/intents/*.json` and
  expected records, using the T003 builder:
  - `register_no_bindings`, `suspend_one`, `transfer_two`, `summary_read`;
  - `missing_binding`, `extra_binding`, `unknown_capability`, `unknown_identity`, `wrong_type`;
  - `with_state` (`STATE_NOT_ALLOWED`), `with_targets` (`LEGACY_TARGETS`) and `with_context`
    (`CONTEXT_FROM_HOST`);
  - `with_metadata` (`metadata` is recorded as `intent_metadata` and does not change the inner
    record).
- [X] T022 [US3] Write `crates/behavior-core/tests/invocation_intents.rs`, for every T021 case.
  It asserts:
  - `check_capability_intent` lists every independently determinable problem, without
    cascading;
  - invoking the intent with a host context through the plain path equals the expected record;
  - semantic decode problems become a `pre_evaluation_refusal` record with stage `DECODE`
    (`UNEXPECTED_KEY`, `STATE_NOT_ALLOWED`, `INVALID_CAPABILITY`, …). Undecodable fields are
    kept as received, or `null`. A non-JSON intent text is an error with no record;
  - metadata never reaches evaluation: the inner record is byte-equal with and without it.

  It fails before T023.
- [X] T023 [US3] Implement `check_capability_intent(module, text) ->
  (Option<CapabilityIntent>, Vec<IntentError>)` and
  `invoke_intent_with_snapshot(module, text, context, &Snapshot) -> InvocationRecord` in
  `crates/behavior-core/src/invocation.rs`. The latter decodes, converts with
  `into_invocation(context)` and runs the same pipeline, recording `intent_metadata`. Make T022
  pass.
- [X] T024 [P] [US3] Add to `crates/behavior-store/tests/invocation_store.rs` a test that
  `Store::invoke_intent` gives, for every T021 intent, the same records as the plain path apart
  from `data_version`, and that an `ALLOW` action intent at the head returns a bundle. It fails
  before T025.
- [X] T025 [US3] Implement `Store::invoke_intent(&self, module, intent_text, context,
  commit_time, at) -> R<Invocation>` in `crates/behavior-store/src/store.rs`. Make T024 pass.
- [X] T026 [US3] Freeze the legacy intents, making compatibility conformance explicit. Write
  `crates/behavior-core/tests/legacy_intents_frozen.rs`, which asserts that:
  - every published `tests/fixtures/intents/*` and `tests/fixtures/read_intents/*` case still
    gives its expected bytes through `evaluate_intent` and `evaluate_read_intent`;
  - `Store::read_intent` on the `read_store_intent` cases gives the same records;
  - no legacy path produces an invocation record.

  Add the doc comment "Superseded by the unified capability intent (feature 012); frozen" to
  `evaluate_intent`, `evaluate_read_intent`, `Store::read_intent`, `Store::evaluate` and
  `Store::read`. No behavior or byte changes; doc comments only.

**Checkpoint**: agents have one intent shape, and legacy consumers see no difference.

---

## Phase 6: User Story 4, cross-capability conformance (P2)

**Goal**: the unification is a contract every binding reproduces, and verification and history
are indifferent to the number of bindings.

**Independent Test**: quickstart §2 and §6. Every read/action pair agrees on every binding
outcome for zero to three bindings, verification outcomes are as before, and a mixed history
replays.

- [X] T027 [P] [US4] Write `crates/behavior-core/tests/invocation_conformance.rs`, a
  table-driven test. For every binding outcome (resolved, unknown, wrong type, alias, missing,
  extra) × binding count (0–3, where the outcome applies) × kind (read, action), it asserts the
  same `outcome.stage` and the same problem code and reason for both kinds, and that every
  record replays (SC-001, SC-002). Use the `ledger.json` capabilities. Add a matching read where
  one is missing (for example `triple_total(a, b, c)` to pair with `settle`), through the T003
  builder.
- [X] T028 [P] [US4] Write `crates/behavior-store/tests/invocation_history.rs`. It commits a
  history of `Store::invoke` evaluations of `register_customer`, `suspend_customer`, `transfer`
  and `settle` (zero to three bindings), interleaved with refused invocations and reads, then
  asserts:
  - `replay_data` and `replay_behavior` succeed;
  - the history length equals the number of commits (SC-007);
  - every returned invocation record replays against the store.
- [X] T029 [P] [US4] Write `crates/behavior-verify/tests/invocation_bindings.rs`, which verifies
  `tests/fixtures/invocation/modules/ledger.json`.
  - It asserts the expected outcome per action. The fixture is built so that `register_customer`
    can break a module invariant (`unique` customer names), giving a counterexample confirmed by
    the evaluator.
  - It checks the outcomes are the same check kinds and classes as for single-binding actions
    (SC-006).
  - Store the expected attestation as `tests/fixtures/verify/invocation_ledger.expected.json`.
---

## Phase 7: Interfaces, documentation, release (polish)

- [X] T031 [P] Extend `consumer/tests/capabilities.rs` with `invokes_by_identity` and
  `invokes_an_intent`, using `behavior_engine::invocation::*` and `Store::invoke` /
  `invoke_intent` / `replay_invocation`. See them fail to compile until T032.
- [X] T032 Add explicit re-exports to `crates/behavior-engine/src/lib.rs` under
  `pub mod invocation { … }`:
  - `TypedIdentity`, `RequestedInvocation`, `CapabilityIntent`, `Snapshot`;
  - `InvocationRecord`, `Invocation`;
  - `invoke_with_snapshot`, `invoke_intent_with_snapshot`, `check_capability_intent`,
    `replay_invocation`;
  - `canonical::tagged_hash`.

  Update `api/engine-surface.txt`. Make T031 pass and `scripts/check-public-surface.sh` green.
- [X] T033 Add CLI commands to `crates/behavior-cli/src/lib.rs` per `contracts/cli.md`:
  - `invoke <wire> <invocation> <snapshot>` (exit 0 evaluated, 3 binding-refused, 2 invalid
    documents);
  - `invoke-intent <wire> <intent> <snapshot> --context <file>` (same exits);
  - `invoke-replay <wire> <record>` (0 match, 2 mismatch).

  Write `crates/behavior-cli/tests/cli_invoke.rs` first, covering each exit code with the
  T011/T021 fixtures, and see it fail.
- [X] T030 Add the new fixtures to `scripts/determinism-check.sh`: every
  `tests/fixtures/invocation/invocations/*` and `intents/*` runs twice through `behavior invoke`
  and `behavior invoke-intent`, and each output is replayed with `behavior invoke-replay`. This
  depends on T033.
- [X] T034 [P] Write `docs/invocation.md`:
  - requested vs resolved invocation;
  - typed identities;
  - the invocation record with its outcome stages and the consistency rule;
  - unified intents;
  - examples of reads and actions with zero, one and several bindings;
  - "refusals never enter store history";
  - plain evaluation as the resolved-level path;
  - the guidance "use a declared read for new observation-only capabilities" (FR-015);
  - the table of superseded formats.
- [X] T035 [P] Add §16 "Capabilities are invoked uniformly" to `PRINCIPLES.md`, with the
  FR-019 principles verbatim:
  - "Capabilities are invoked uniformly; capability kind determines what evaluation may
    produce."
  - "Requested bindings identify state; resolved bindings contain state."
  - "Every invocation produces evidence; only committed transitions produce store history."
  - "Invocation evidence describes how evaluation was reached; evaluation records describe what
    evaluation determined."
  - "A failure before evaluation must not be represented as though evaluation occurred."
  - "A binding carries the identity the caller requested, including its type; resolution
    determines whether that identity denotes state at the exact snapshot."
  - "Compatibility paths preserve old semantics; current paths define future semantics."

  Link `docs/invocation.md`.
- [X] T036 Release preparation: set `[workspace.package] version` in `Cargo.toml` to `0.11.0`.
  - Add the "Release 0.11.0 is a minor bump" paragraph and the superseded-format table to
    `docs/versioning.md`. The paragraph names the new formats and states that wire IR,
    admission, verifier version and existing formats are unchanged.
  - Update `.claude/skills/behavior-engine-development/SKILL.md` with the invocation module and
    the scope rule for capability-boundary changes.
- [X] T037 Final gate:
  - `scripts/gates.sh`;
  - `scripts/conformance-digest.sh | scripts/digest-subset.py
    specs/012-unified-invocation-model/digest-before.json`;
  - `cargo test --release -p behavior-store --test invocation_perf -- --ignored`. Write this
    perf test here: a 3-binding `Store::invoke` takes ≤ 1.1× `Store::evaluate` over 1,000 runs.
  - `scripts/release-check.sh --skip-gates`.

  Record the results in `specs/012-unified-invocation-model/checklists/implementation-review.md`:
  FR/SC tables, deviations and follow-ups (the effect rule for a later language version;
  optional bindings; the Python binding's adoption in an ecosystem feature numbered 500+).

---

## Dependencies & Execution Order

```text
Setup (T001–T003) → Foundational (T004–T010)
    → US1 (T011–T016)  MVP
        → US2 (T017–T020)      replay needs records
        → US3 (T021–T026)      intents reuse the pipeline
            → US4 (T027–T029)  conformance over all of it
                → Polish (T031–T033 → T030 → T034–T037)
```

- **Test first.** T004 before T005, T006 before T007, T009 before T010, T011–T012 before T013,
  T014 before T015, T017 before T018, T019 before T020, T021–T022 before T023, T024 before T025,
  T031 before T032, and the `cli_invoke.rs` part of T033 before its implementation.
- **The compatibility baseline (T001)** is taken before any code change. T016 and T037 check
  against it.
- **US2 and US3** can proceed in parallel after US1, since they touch different functions. The
  shared files `invocation.rs` and `store.rs` mean their implementation tasks are serialized per
  file.

## Parallel Opportunities

- **Setup:** T002 and T003.
- **Foundational:** T006 and T008 (separate files) while T004/T005 run.
- **US1:** T011 and T014 (fixtures and store test) alongside T012.
- **US2:** T017 and T019. **US3:** T021 and T024. **US4:** T027, T028 and T029.
- **Polish:** T031, T034 and T035; T030 after T033.

## Implementation Strategy

1. **MVP = Phases 1–3.** One pipeline, identity-bound actions, recorded refusals, and the
   digest unchanged. Review here.
2. **Then:**
   - US2: replay and the consistency rule.
   - US3: unified intents and frozen legacy intents.
   - US4: conformance, history and verification.
3. **Polish:** facade, CLI, docs, principles and release preparation. Tagging Core 0.11.0
   (`core-release`) and the ecosystem's adoption of it are separate outward steps that need the
   user's go-ahead.
