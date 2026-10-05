# Data Model: Unified Invocation Model

All documents below are canonical JSON: sorted keys, no insignificant whitespace, exact values as
the engine already writes them. Each format is new and versioned. No existing format changes
(FR-016).

## Typed identity

```json
{ "entity": "Customer", "id": "42" }
```

- `entity`: an entity type name. It is interpreted under the invocation's behavior and schema
  identity, never as a global name.
- `id`: any non-empty string. There are no separator or escaping rules.
- It represents `Id<T>`, not `Ref<T>`: it may name an entity that does not exist. Existence is
  decided by resolution.
- Exactly these two keys; anything else is a decode error.

## Requested invocation: `behavior.invocation.v1`

The trusted, host-side form at the capability boundary.

```json
{ "format": "behavior.invocation.v1",
  "capability": "transfer",
  "bindings": { "from": {"entity":"Account","id":"a1"}, "to": {"entity":"Account","id":"a2"} },
  "input": { "amount": "20.00" },
  "context": { "actor": {"id":"u1", "role":"clerk"} } }
```

| Field | Rule |
|---|---|
| `capability` | the name of a declared action or declared read of the module |
| `bindings` | parameter name → typed identity. Zero or more entries; values are always typed identities, never entity values (FR-004, FR-013) |
| `input` | as the existing request `input` |
| `context` | host-supplied, as the existing request `context` |

Like the existing resolved request, omitted input or context normalizes to an
empty object; canonical serialization writes both explicitly. The capability
intent has the same input default and never accepts a caller context.

The snapshot is not part of the document. It is the store position (store path) or the snapshot
document (plain path) the invocation runs against, and it is recorded in the invocation record.

## Capability intent: `behavior.capability_intent.v1`

The untrusted, agent-side form. It is the same as the requested invocation without `context`,
plus optional `metadata`.

```json
{ "format": "behavior.capability_intent.v1",
  "capability": "register_customer",
  "bindings": {},
  "input": { "customer_id": "c17", "name": "Ada" },
  "metadata": { "conversation": "t-42" } }
```

- `metadata` is any JSON object. It is recorded verbatim in the invocation record
  (`intent_metadata`), never passed to evaluation, and plays no part in resolution.
- A `context`, `state` or `targets` key, or a binding value that is not a typed identity, is a
  decode error listed as a problem (FR-013).

## Snapshot: `behavior.snapshot.v1` (plain and CLI path)

Explicit, caller-supplied snapshot evidence, the resolved level (FR-004a).

```json
{ "format": "behavior.snapshot.v1",
  "data_version": "test:7",
  "entities": [ {"entity":"Account","value":{"id":"a1","balance":"50.00"}} ],
  "facts": { "universe": [ ... ], "existence": [ ... ] } }
```

- `entities` are the values typed identities resolve to. Duplicate `(entity, id)` pairs are a
  decode error.
- The snapshot is host evidence, never capability input (FR-004b). It must be internally
  consistent: an entity value that contradicts the universe or existence facts, or two facts
  that contradict each other, is `INCONSISTENT_FACTS`, a `DECODE`-stage refusal.
- `facts` uses the existing evaluation facts format, passed to evaluation unchanged.

Consistent universe values extend the resolution map. Existence evidence without
an available value is insufficient to evaluate the bound entity and produces
`INCOMPLETE_SNAPSHOT` at DECODE. Incompleteness is distinguished from contradictory
facts; the original snapshot is archived in refusal evidence for replay.

## Resolved invocation (in memory, not a document)

- the capability and its kind (`action` or `read`);
- per state parameter, the entity value at the snapshot;
- input and context;
- the `data_version`;
- the binding facts.

It is built only when every binding resolves.

## Binding facts

One entry per requested binding, in parameter order:

```json
{ "param": "from", "expected": "Account", "requested": {"entity":"Account","id":"a1"},
  "status": "bound" }
```

`status` is one of:
- `bound`;
- `unknown` (the type matches, the entity is absent);
- `wrong_type` (the requested entity type is not the parameter's type).

Missing, extra and non-state bindings appear as problems, not facts.

## Invocation record: `behavior.invocation_record.v1`

```json
{ "format": "behavior.invocation_record.v1",
  "record_id": "invocation:sha256:…",
  "capability": "transfer", "kind": "action",
  "behavior_version": "sha256:…", "schema": "sha256:…",
  "data_version": "store:…;state:…;position:41",
  "requested_bindings": { "from": {…}, "to": {…} },
  "input": {…}, "context": {…},
  "binding_facts": [ … ],
  "intent_metadata": {…},
  "outcome": { … } }
```

`intent_metadata` is present only for intents.

Decode refusals archive `outcome.decode_evidence` when the envelope omits the
source of the error. It contains a source kind and original canonical document,
and, for snapshot errors, the original snapshot and explicit host context.
Replay re-decodes these documents and compares the reproduced refusal. A snapshot
with undecodable data version records `data_version: null`; it has no inner record.
The archive is evidence of refusal, not evidence that evaluation occurred.

**Outcome**: exactly one of two shapes (FR-008a, FR-008c).

```json
{ "kind": "pre_evaluation_refusal", "stage": "BINDING",
  "problems": [ {"stage":"BINDING","code":"INVALID_BINDING","reason":"UNKNOWN_BINDING",
                 "param":"customer","expected":"Customer",
                 "requested":{"entity":"Customer","id":"42"},"message":"…"} ] }

{ "kind": "evaluated", "record_kind": "decision",
  "record_id": "<transition_hash>", "record": { …existing decision record… } }
```

**Problems and stages.** Each problem carries its own `stage`; the outcome's `stage` is the
earliest stage among its problems.

- `DECODE`:
  - `UNSUPPORTED_FORMAT`, `UNEXPECTED_KEY`;
  - `INVALID_CAPABILITY` (absent or not a string), `UNKNOWN_CAPABILITY`;
  - `INVALID_IDENTITY`;
  - `STATE_NOT_ALLOWED`, `CONTEXT_FROM_HOST`, `LEGACY_TARGETS`;
  - `INCONSISTENT_FACTS` (a contradictory snapshot).
- `BINDING`:
  - `MISSING_BINDING`, `EXTRA_BINDING`, `NOT_A_STATE_PARAMETER`;
  - `INVALID_BINDING` with the reason `UNKNOWN_BINDING`, `WRONG_ENTITY_TYPE` or
    `STATE_ALIAS_NOT_ALLOWED`.

**Order and cascading.** Problems are reported in this canonical order, then by JSON path. A
check that needs an earlier step that failed is not run: for an invalid or unknown capability,
no binding checks; for an invalid identity, no existence or alias check for that binding.
Independent problems (for example, two bindings with invalid identities) are all reported.

**Undecodable fields.** Fields that are JSON but could not be decoded are recorded as received
(`requested_bindings`, `input`), or `null` when absent. If the capability is undecodable,
`capability` and `kind` are `null`. A document that is not JSON at all produces no record: that
is a transport or syntax error.

**Inner record identity** (research R2):
- a decision record: exactly the `transition_hash` string that the commit bundle for this
  record carries (`document_hash` with the tag `behavior.transition.v1`, which removes only a
  top-level `hash` key, and decision records have none, so it covers the whole record);
- a read record: its `record_id` (`read:sha256:…`).

**Identity**: `record_id` is `invocation:sha256:` followed by the tagged hash
(`behavior.invocation_record.v1`) of the record without `record_id`. The embedded inner record is
part of the hashed content.

**Consistency (FR-008b)**: `capability`, `behavior_version` and `data_version` must equal the
inner record's fields of the same meaning. The resolved bindings must equal the inner record's
`state` section. Any contradiction makes the record invalid in replay (`CONTRADICTORY_RECORD`,
naming the field). Neither side wins.

**Store history**:
- Only a committed `ALLOW` changes history, through the existing commit bundle and transition
  record, unchanged.
- The invocation record is never stored by the store (FR-010).

## Legacy (frozen) formats

The following stay unchanged and are marked superseded in `docs/versioning.md`:
- `targets` action intents (`evaluate_intent`) and read intents (`read_intent`);
- request documents with full `state`;
- `Store::evaluate`, `Store::read` and `Store::read_intent` bindings as bare ids.

Status table: format, status (`current`/`superseded`), introduced in, replacement.
